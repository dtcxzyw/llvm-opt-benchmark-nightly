inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !28832
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #58
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable

bb.k:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.n, i8 %i.p) #54
          to label %common.resume unwind label %bb.s

bb.l:                                             ; preds = %bb.g, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !28827, !noalias !28830, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ah = add nsw i64 %i.x, 1                     ; 2 uses
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !28827, !noalias !28830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = icmp slt i64 %i.x, 384307168202282325
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3 ; 2 uses
  %i.am = icmp ult i64 %i.al, 384307168202282326
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.al, 0
  %i.ao = zext i1 %i.an to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0 = phi i8 [ %i.ao, %bb.m ], [ 0, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ap seq_cst, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br i1 %i.q, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.as = and i64 %i.ar, 9223372036854775807
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p, !prof !696

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #58
  br i1 %i.au, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store atomic i8 1, ptr %i.aq monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.av = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !6

bb.r:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc5waker5WakerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.r
  ret void

bb.s:                                             ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04044.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04044.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04044.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04044.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28841

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04044.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not46.i = icmp eq i64 %i.u, %i.q
  br i1 %.not46.i, label %._crit_edge51.i, label %.lr.ph50.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv25 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next26, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv25, -1
  %xtraiter27 = and i32 %loop-unroll.iv25, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter31 = and i32 %loop-unroll.iv25, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter32.next.7 = add i32 %niter32, 8           ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter28.next = add i32 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !28843

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next26 = add i32 %loop-unroll.iv25, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge51.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph50.i:                                       ; preds = %.loopexit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = phi i64 [ %i.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.u, %.loopexit.i ]
  %.sroa.05.048.i = phi i64 [ %i.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.r, %.loopexit.i ]
  %.sroa.011.147.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge51.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph50.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.147.i, i64 3472 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv41 = phi i32 [ %loop-unroll.iv.next42, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv41, -1
  %xtraiter43 = and i32 %loop-unroll.iv41, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter47 = and i32 %loop-unroll.iv41, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter48 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter48.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter48.next.7 = add i32 %niter48, 8           ; 2 uses
  %niter48.ncmp.7 = icmp eq i32 %niter48.next.7, %unroll_iter47
  br i1 %niter48.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter43, 0
  br i1 %lcmp.mod45.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod46 = icmp ne i32 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28844

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next42 = add i32 %loop-unroll.iv41, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_IB1M_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorENtNtBY_6marker4SendEL_EEB4k_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph50.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.147.i, i64 %i.aj ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_IB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3m_5error5ErrorENtNtBV_6marker4SendEL_EEB4h_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv33 = phi i32 [ %loop-unroll.iv.next34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv33, -1
  %xtraiter35 = and i32 %loop-unroll.iv33, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter39 = and i32 %loop-unroll.iv33, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4sendCs14kWLkQVSKO_14deltalake_core:bb.a

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28908
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28908
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28916)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !28913
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !28913
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !28918 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !28918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_IB1j_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2W_5error5ErrorENtNtB4_6marker4SendEL_EEB3R_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04044.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04044.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04044.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04044.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28919

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04044.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not46.i = icmp eq i64 %i.u, %i.q
  br i1 %.not46.i, label %._crit_edge51.i, label %.lr.ph50.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv25 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next26, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv25, -1
  %xtraiter27 = and i32 %loop-unroll.iv25, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter31 = and i32 %loop-unroll.iv25, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter32.next.7 = add i32 %niter32, 8           ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter28.next = add i32 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !28920

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next26 = add i32 %loop-unroll.iv25, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge51.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph50.i:                                       ; preds = %.loopexit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = phi i64 [ %i.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.u, %.loopexit.i ]
  %.sroa.05.048.i = phi i64 [ %i.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.r, %.loopexit.i ]
  %.sroa.011.147.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge51.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph50.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.147.i, i64 3472 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv41 = phi i32 [ %loop-unroll.iv.next42, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv41, -1
  %xtraiter43 = and i32 %loop-unroll.iv41, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter47 = and i32 %loop-unroll.iv41, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter48 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter48.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter48.next.7 = add i32 %niter48, 8           ; 2 uses
  %niter48.ncmp.7 = icmp eq i32 %niter48.next.7, %unroll_iter47
  br i1 %niter48.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter43, 0
  br i1 %lcmp.mod45.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod46 = icmp ne i32 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28921

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next42 = add i32 %loop-unroll.iv41, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3h_5error5ErrorENtNtBY_6marker4SendEL_EEB3S_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph50.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.147.i, i64 %i.aj ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3e_5error5ErrorENtNtBV_6marker4SendEL_EEB3P_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv33 = phi i32 [ %loop-unroll.iv.next34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv33, -1
  %xtraiter35 = and i32 %loop-unroll.iv33, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter39 = and i32 %loop-unroll.iv33, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4sendCs14kWLkQVSKO_14deltalake_core:bb.a

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28985
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !28985
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28993)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !28990
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !28990
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !28995 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !28995
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2O_5error5ErrorENtNtB4_6marker4SendEL_EEB3p_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04044.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04044.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04044.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04044.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28996

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04044.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not46.i = icmp eq i64 %i.u, %i.q
  br i1 %.not46.i, label %._crit_edge51.i, label %.lr.ph50.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv25 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next26, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv25, -1
  %xtraiter27 = and i32 %loop-unroll.iv25, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter31 = and i32 %loop-unroll.iv25, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter32.next.7 = add i32 %niter32, 8           ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter28.next = add i32 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !28997

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next26 = add i32 %loop-unroll.iv25, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge51.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph50.i:                                       ; preds = %.loopexit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = phi i64 [ %i.cb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.u, %.loopexit.i ]
  %.sroa.05.048.i = phi i64 [ %i.ca, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.r, %.loopexit.i ]
  %.sroa.011.147.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge51.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph50.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.147.i, i64 3472 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv41 = phi i32 [ %loop-unroll.iv.next42, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv41, -1
  %xtraiter43 = and i32 %loop-unroll.iv41, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter47 = and i32 %loop-unroll.iv41, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter48 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter48.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter48.next.7 = add i32 %niter48, 8           ; 2 uses
  %niter48.ncmp.7 = icmp eq i32 %niter48.next.7, %unroll_iter47
  br i1 %niter48.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter43, 0
  br i1 %lcmp.mod45.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod46 = icmp ne i32 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter44 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter44.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter44.next = add i32 %epil.iter44, 1     ; 2 uses
  %epil.iter44.cmp.not = icmp eq i32 %epil.iter44.next, %xtraiter43
  br i1 %epil.iter44.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !28998

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next42 = add i32 %loop-unroll.iv41, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBY_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBU_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBY_6marker4SendEL_EEB3P_EE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.147.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph50.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.147.i, i64 %i.aj ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBV_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBR_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBV_6marker4SendEL_EEB3M_EE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv33 = phi i32 [ %loop-unroll.iv.next34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv33, -1
  %xtraiter35 = and i32 %loop-unroll.iv33, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter39 = and i32 %loop-unroll.iv33, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4sendCs14kWLkQVSKO_14deltalake_core:bb.a

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29062
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29062
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29070)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29067
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29067
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29072 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29072
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB3m_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04042.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04042.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29073

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.u, %i.q
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv22 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next23, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv22, -1
  %xtraiter24 = and i32 %loop-unroll.iv22, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter28 = and i32 %loop-unroll.iv22, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !29074

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next23 = add i32 %loop-unroll.iv22, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = phi i64 [ %i.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.u, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.r, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 3472 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29075

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_3
begin_hunk_4_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29149
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29149
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29157)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29154
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29154
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29159 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04045.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04045.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04045.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04045.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod26 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29160

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04045.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not47.i = icmp eq i64 %i.u, %i.q
  br i1 %.not47.i, label %._crit_edge52.i, label %.lr.ph51.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv27 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv27, -1
  %xtraiter29 = and i32 %loop-unroll.iv27, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter33 = and i32 %loop-unroll.iv27, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter34 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter34.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter34.next.7 = add i32 %niter34, 8           ; 2 uses
  %niter34.ncmp.7 = icmp eq i32 %niter34.next.7, %unroll_iter33
  br i1 %niter34.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod31.not = icmp eq i32 %xtraiter29, 0
  br i1 %lcmp.mod31.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod32 = icmp ne i32 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter30 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter30.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter30.next = add i32 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i32 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !29161

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next28 = add i32 %loop-unroll.iv27, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge52.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph51.i:                                       ; preds = %.loopexit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = phi i64 [ %i.br, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.u, %.loopexit.i ]
  %.sroa.05.049.i = phi i64 [ %i.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.r, %.loopexit.i ]
  %.sroa.011.148.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge52.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3984, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph51.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.148.i, i64 3968 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv43 = phi i32 [ %loop-unroll.iv.next44, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv43, -1
  %xtraiter45 = and i32 %loop-unroll.iv43, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter49 = and i32 %loop-unroll.iv43, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29162

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next44 = add i32 %loop-unroll.iv43, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1x_5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.148.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.148.i, i64 noundef 3984, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph51.i
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.148.i, i64 %i.aj ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1u_5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv35 = phi i32 [ %loop-unroll.iv.next36, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv35, -1
  %xtraiter37 = and i32 %loop-unroll.iv35, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter41 = and i32 %loop-unroll.iv35, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_4
begin_hunk_5_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29226
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29226
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29234)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29231
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29231
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29236 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29236
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, 2
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB14_5error5ErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04042.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04042.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29237

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.u, %i.q
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv22 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next23, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv22, -1
  %xtraiter24 = and i32 %loop-unroll.iv22, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter28 = and i32 %loop-unroll.iv22, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !29238

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next23 = add i32 %loop-unroll.iv22, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ai = phi i64 [ %i.bn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.u, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.r, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 3472 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29239

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3488, i64 noundef 16) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [112 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_5
begin_hunk_6_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a
.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.48.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3488, i64 noundef 16) #48, !noalias !29303
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread24:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.012.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29311)
  %i.aw = icmp eq ptr %.sroa.48.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.012.0.copyload39 = phi i64 [ %.sroa.012.0.copyload35, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.138 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.48.137 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread32 ], [ %.sroa.48.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.138, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [112 x i8], ptr %.sroa.48.137, i64 %.sroa.9.138 ; 3 uses
  store i64 %.sroa.012.0.copyload39, ptr %i.ay, align 16, !noalias !29308
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !noalias !29308
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29313 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.012.0.copyload31 = phi i64 [ %.sroa.012.0.copyload29, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.012.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5, i64 88, i1 false), !alias.scope !29313
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.012.0.copyload31, -9223372036854775742
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6, i64 88, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.012.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body.thread, %bb.v
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread24
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread24 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  %i.bc = load i64, ptr %2, align 16, !range !635, !alias.scope !29314, !noundef !3
  %i.bd = icmp eq i64 %i.bc, -9223372036854775743
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.v

bb.v:                                             ; preds = %.body.thread
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04042.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04042.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29317

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.u, %i.q
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv22 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next23, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv22, -1
  %xtraiter24 = and i32 %loop-unroll.iv22, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter28 = and i32 %loop-unroll.iv22, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !29318

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next23 = add i32 %loop-unroll.iv22, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.n, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.n ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.bk, %bb.n ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.n
  %i.ai = phi i64 [ %i.bl, %bb.n ], [ %i.u, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bk, %bb.n ], [ %i.r, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.n ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3984, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 3968 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29319

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2w_5error5ErrorEEINtNtBZ_3pin3PinIB1T_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3984, i64 noundef 16) #48
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2t_5error5ErrorEEINtNtBW_3pin3PinIB1Q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_6
begin_hunk_7_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29380
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 3984, i64 noundef 16) #48, !noalias !29380
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29388)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29385
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !29385
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29390 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !alias.scope !29390
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, -9223372036854775741
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6, i64 104, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04042.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04042.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29391

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.u, %i.q
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv22 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next23, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv22, -1
  %xtraiter24 = and i32 %loop-unroll.iv22, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter28 = and i32 %loop-unroll.iv22, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !29392

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next23 = add i32 %loop-unroll.iv22, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.n, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.n ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.bk, %bb.n ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.n
  %i.ai = phi i64 [ %i.bl, %bb.n ], [ %i.u, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bk, %bb.n ], [ %i.r, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.n ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 4480, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 4464 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29393

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1U_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 4480, i64 noundef 16) #48
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [144 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_7
begin_hunk_8_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4sendCs14kWLkQVSKO_14deltalake_core:bb.a

.thread50.i:                                      ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29454
  br label %.body.thread

.outer._crit_edge.i:                              ; preds = %.outer.backedge.i, %.loopexit.i, %bb.n
  %.sroa.47.0 = phi ptr [ %.sroa.07.1.i, %bb.n ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %.lcssa, %bb.n ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.038.3.i = phi ptr [ %.sroa.038.2.i, %bb.n ], [ %.sroa.038.0.ph81.i, %.loopexit.i ], [ %.sroa.038.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.av, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.r

bb.r:                                             ; preds = %.outer._crit_edge.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 4480, i64 noundef 16) #48, !noalias !29454
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit

.body.thread23:                                   ; preds = %bb.p, %.noexc21.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.outer._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29462)
  %i.aw = icmp eq ptr %.sroa.47.0, null
  br i1 %i.aw, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.011.0.copyload38 = phi i64 [ %.sroa.011.0.copyload34, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.47.136 = phi ptr [ %.sroa.07.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread31 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.ax = icmp samesign ult i64 %.sroa.9.137, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [144 x i8], ptr %.sroa.47.136, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload38, ptr %i.ay, align 16, !noalias !29459
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false), !noalias !29459
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !29464 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bb) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.t

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread
  %.sroa.011.0.copyload30 = phi i64 [ %.sroa.011.0.copyload28, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE10start_sendCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5, i64 120, i1 false), !alias.scope !29464
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload30, 3
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6, i64 120, i1 false)
  store i128 1, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.011.0.copyload30, ptr %.sroa.4.0..sroa_idx, align 16
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE5writeCs14kWLkQVSKO_14deltalake_core.exit
  store i128 2, ptr %0, align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.v:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body21

.body.thread:                                     ; preds = %bb.q, %.thread50.i, %.body.thread23
  %eh.lpad-body21 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread23 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.q ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %2) #54
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body.thread
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE18disconnect_sendersCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20disconnect_receiversCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04042.i = phi i32 [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %i.h = shl i32 %.sroa.0.04042.i, 1
  %i.i = or i32 %i.h, 1
  %i.j = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.k = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.l = icmp ult i32 %i.k, 7
  br i1 %i.l, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29465

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.m = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = and i64 %i.n, 62
  %i.p = icmp eq i64 %i.o, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.i
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.m, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.q = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.r = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %i.u = lshr i64 %i.r, 1                         ; 3 uses
  %i.v = icmp ne i64 %i.u, %i.q
  %i.w = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %i.x = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %i.y = shl i32 %.sroa.0.040.lcssa.i, 1
  %i.z = or disjoint i32 %i.y, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.ag, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.u, %i.q
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv22 = phi i32 [ %i.x, %.preheader.i.preheader ], [ %loop-unroll.iv.next23, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.af, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %i.aa = shl i32 %indvar, 1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %i.ad = add i32 %loop-unroll.iv22, -1
  %xtraiter24 = and i32 %loop-unroll.iv22, 7      ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 7
  br i1 %i.ae, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

.lr.ph.i22.i.preheader.new:                       ; preds = %.lr.ph.i22.i.preheader
  %unroll_iter28 = and i32 %loop-unroll.iv22, -8
  br label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i, %.lr.ph.i22.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i22.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i22.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !29466

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.af = add i32 %.sroa.0.1.i, 1
  %i.ag = atomicrmw xchg ptr %i.s, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ag, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next23 = add i32 %loop-unroll.iv22, %i.ab
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.n, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.n ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.r, %.loopexit.i ], [ %i.bk, %bb.n ]
  %i.ah = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.n
  %i.ai = phi i64 [ %i.bl, %bb.n ], [ %i.u, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bk, %bb.n ], [ %i.r, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.n ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.aj = and i64 %i.ai, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.aj, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3984, i64 noundef 16) #48
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE20discard_all_messagesCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 3968 ; 3 uses
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %i.an = shl i32 %.sroa.0.02.i27.i, 1
  %i.ao = or i32 %i.an, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.aq = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.ar = icmp ult i32 %i.aq, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %loop-unroll.iv38, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !29467

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.as = add i32 %.sroa.0.02.i27.i, 1
  %i.at = load atomic ptr, ptr %i.ak acquire, align 8
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %i.ao
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB4_5BlockTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1w_NtNtBZ_6marker4SendEL_EEEE9wait_nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.av = load atomic ptr, ptr %i.ak acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3984, i64 noundef 16) #48
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.145.i, i64 %i.aj ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112 ; 2 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8
  %i.az = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4listINtB2_4SlotTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1t_NtNtBW_6marker4SendEL_EEEE10wait_writeCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.bg, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %i.bb = shl i32 %.sroa.0.02.i29.i, 1
  %i.bc = or i32 %i.bb, 1
  %i.bd = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %i.be = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.bf = icmp ult i32 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
end_hunk_8
