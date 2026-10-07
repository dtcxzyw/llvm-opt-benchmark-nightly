Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.08?download=true
inline.NumInlined: 16156
inline.NumDeleted: 5265
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.az, %bb.aa, %bb.g, %bb.f, %bb.ag, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.bf ], [ %i.db, %bb.ag ], [ %i.cg, %bb.aa ], [ %i.z, %bb.f ], [ %i.el, %bb.az ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.04.2 = phi i1 [ false, %bb.bf ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.f ], [ false, %bb.az ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_IB26_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3K_5error5ErrorENtNtB4_6marker4SendEL_EEB4F_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %bb.b unwind label %bb.aw

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bn, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bj, %bb.bl
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bj ], [ false, %bb.bn ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bl ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !27950, !noalias !27951, !nonnull !21, !noundef !21
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !27950, !noalias !27951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !26, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au
  %i.bf = icmp slt i64 %i.bc, %i.au
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 3)
  br i1 %i.bi, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc38
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.br = load atomic i8, ptr %i.n acquire, align 16
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bu = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bu, 7                    ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bu, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod82 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !27897

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i, 1
  %i.bx = load atomic i8, ptr %i.n acquire, align 16
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !27953)
  %i.bz = load i64, ptr %i.g, align 8, !range !20, !alias.scope !27953, !noalias !27954, !noundef !21
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27955
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !27953, !noalias !27954, !nonnull !21, !align !22, !noundef !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !26, !alias.scope !27953, !noalias !27954, !noundef !21
  store ptr %i.cc, ptr %i.a, align 8, !noalias !27955
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ce, ptr %i.cf, align 8, !noalias !27955
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !27953

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !27953

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !27953
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !27953, !noalias !27954, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !26, !alias.scope !27953, !noalias !27954, !noundef !21 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !27956)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !27956, !noalias !27957, !nonnull !21, !noundef !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !27956, !noalias !27957, !noundef !21 ; 2 uses
  %.idx69 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx69
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68

bb.ae:                                            ; preds = %.lr.ph68
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cu, %bb.ae ], [ %i.cp, %bb.ad ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !27958, !noalias !27959, !noundef !21
  %.not.i.i42 = icmp eq i64 %i.da, %i.l
  br i1 %.not.i.i42, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph68
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cj, i8 %i.cl) #40
          to label %.body unwind label %bb.aw

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !27960)
  call void @llvm.experimental.noalias.scope.decl(metadata !27961)
  call void @llvm.experimental.noalias.scope.decl(metadata !27962)
  call void @llvm.experimental.noalias.scope.decl(metadata !27963)
  %i.dc = load ptr, ptr %i.i, align 8, !alias.scope !27964, !nonnull !21, !noundef !21
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !27964
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.c unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  br i1 %i.cm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dg = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dh = and i64 %i.dg, 9223372036854775807
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dj = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ak
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.al

bb.al:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.df monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.al, %.noexc46, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dk = atomicrmw xchg ptr %i.cj, i32 0 release, align 4
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dm, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bm ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !27965)
  call void @llvm.experimental.noalias.scope.decl(metadata !27966)
  call void @llvm.experimental.noalias.scope.decl(metadata !27967)
  %i.dn = load i64, ptr %i.j, align 16, !range !34, !alias.scope !27968, !noundef !21 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775742
  br i1 %i.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_IB26_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3K_5error5ErrorENtNtB4_6marker4SendEL_EEB4F_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !27969)
  %i.dp = icmp eq i64 %i.dn, -9223372036854775743
  br i1 %i.dp, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !27970 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.dq, align 16, !alias.scope !27970, !nonnull !21, !align !22, !noundef !21 ; 5 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ax, %bb.z, %bb.f, %bb.e, %bb.af, %bb.bd
  %.sroa.019.2 = phi i1 [ false, %bb.bd ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.ax ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.bd ], [ %i.dc, %bb.af ], [ %i.ch, %bb.z ], [ %i.aa, %bb.e ], [ %i.em, %bb.ax ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_IB26_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3K_5error5ErrorENtNtB4_6marker4SendEL_EEB4F_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %.body61 unwind label %bb.au

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc51
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread10, %bb.u, %bb.l, %bb.n, %bb.aj, %bb.al, %bb.bh, %bb.bj
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.aj ], [ false, %bb.bh ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bj ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.i ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !28047, !noalias !28048, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !28047, !noalias !28048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !range !26, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av
  %i.bg = icmp slt i64 %i.bd, %i.av
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 3)
  br i1 %i.bj, label %.thread10, label %.split7.us.i

bb.r:                                             ; preds = %.noexc50
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bm = extractvalue { i64, i32 } %i.bl, 0
  %i.bn = extractvalue { i64, i32 } %i.bl, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !100

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = load ptr, ptr %i.bo, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bp)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.br)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bs = load atomic i8, ptr %i.o acquire, align 16
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.bv = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bv, 7                    ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bv, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod81 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !27994

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %bb.w
  %i.bx = add i32 %.sroa.0.02.i, 1
  %i.by = load atomic i8, ptr %i.o acquire, align 16
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.x:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !28050)
  %i.ca = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28050, !noalias !28051, !noundef !21
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.y, label %bb.ac, !prof !36

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28052
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !28050, !noalias !28051, !nonnull !21, !align !22, !noundef !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !26, !alias.scope !28050, !noalias !28051, !noundef !21
  store ptr %i.cd, ptr %i.a, align 8, !noalias !28052
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !28052
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.aa unwind label %bb.z, !noalias !28050

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ab, !noalias !28050

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28050
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !28050, !noalias !28051, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !26, !alias.scope !28050, !noalias !28051, !noundef !21 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !28053)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !28053, !noalias !28054, !nonnull !21, !noundef !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !28053, !noalias !28054, !noundef !21 ; 2 uses
  %.idx68 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx68
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph67

bb.ad:                                            ; preds = %.lr.ph67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.ac, %bb.ad
  %i.cy = phi ptr [ %i.cv, %bb.ad ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !28055, !noalias !28056, !noundef !21
  %.not.i.i54 = icmp eq i64 %i.db, %i.m
  br i1 %.not.i.i54, label %bb.ae, label %bb.ad

bb.ae:                                            ; preds = %.lr.ph67
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.ck, i8 %i.cm) #40
          to label %.body unwind label %bb.au

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !prof !102

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28057)
  call void @llvm.experimental.noalias.scope.decl(metadata !28058)
  call void @llvm.experimental.noalias.scope.decl(metadata !28059)
  call void @llvm.experimental.noalias.scope.decl(metadata !28060)
  %i.dd = load ptr, ptr %i.i, align 8, !alias.scope !28061, !nonnull !21, !noundef !21
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !28061
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ag, %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br i1 %i.cn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aj, !prof !27

bb.aj:                                            ; preds = %bb.ai
  %i.dk = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ak

bb.ak:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.dg monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ak, %.noexc58, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dl = atomicrmw xchg ptr %i.ck, i32 0 release, align 4
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, !prof !36

bb.al:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 -9223372036854775742, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775742
  br i1 %.not26, label %.invoke, label %.thread48, !prof !36

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60
  %i.dn = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread48:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72
  %.sink = phi i128 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.08.0.copyload.sink = phi i64 [ %.sroa.08.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ], [ %.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.510.0..sroa_idx, i64 88, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.08.0.copyload.sink, ptr %.sroa.417.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_IB26_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3K_5error5ErrorENtNtB4_6marker4SendEL_EEB4F_EEECs14kWLkQVSKO_14deltalake_core.exit
end_hunk_1
begin_hunk_2_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.az, %bb.aa, %bb.g, %bb.f, %bb.ag, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.bf ], [ %i.db, %bb.ag ], [ %i.cg, %bb.aa ], [ %i.z, %bb.f ], [ %i.el, %bb.az ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.04.2 = phi i1 [ false, %bb.bf ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.f ], [ false, %bb.az ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3C_5error5ErrorENtNtB4_6marker4SendEL_EEB4d_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %bb.b unwind label %bb.aw

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bn, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bj, %bb.bl
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bj ], [ false, %bb.bn ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bl ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !28144, !noalias !28145, !nonnull !21, !noundef !21
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !28144, !noalias !28145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !26, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au
  %i.bf = icmp slt i64 %i.bc, %i.au
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 3)
  br i1 %i.bi, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc38
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.br = load atomic i8, ptr %i.n acquire, align 16
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bu = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bu, 7                    ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bu, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod82 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28091

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i, 1
  %i.bx = load atomic i8, ptr %i.n acquire, align 16
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !28147)
  %i.bz = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28147, !noalias !28148, !noundef !21
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28149
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !28147, !noalias !28148, !nonnull !21, !align !22, !noundef !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !26, !alias.scope !28147, !noalias !28148, !noundef !21
  store ptr %i.cc, ptr %i.a, align 8, !noalias !28149
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ce, ptr %i.cf, align 8, !noalias !28149
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !28147

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !28147

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28147
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !28147, !noalias !28148, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !26, !alias.scope !28147, !noalias !28148, !noundef !21 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !28150)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !28150, !noalias !28151, !nonnull !21, !noundef !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !28150, !noalias !28151, !noundef !21 ; 2 uses
  %.idx69 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx69
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68

bb.ae:                                            ; preds = %.lr.ph68
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cu, %bb.ae ], [ %i.cp, %bb.ad ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !28152, !noalias !28153, !noundef !21
  %.not.i.i42 = icmp eq i64 %i.da, %i.l
  br i1 %.not.i.i42, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph68
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cj, i8 %i.cl) #40
          to label %.body unwind label %bb.aw

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28154)
  call void @llvm.experimental.noalias.scope.decl(metadata !28155)
  call void @llvm.experimental.noalias.scope.decl(metadata !28156)
  call void @llvm.experimental.noalias.scope.decl(metadata !28157)
  %i.dc = load ptr, ptr %i.i, align 8, !alias.scope !28158, !nonnull !21, !noundef !21
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !28158
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.c unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  br i1 %i.cm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dg = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dh = and i64 %i.dg, 9223372036854775807
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dj = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ak
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.al

bb.al:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.df monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.al, %.noexc46, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dk = atomicrmw xchg ptr %i.cj, i32 0 release, align 4
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dm, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bm ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !28159)
  call void @llvm.experimental.noalias.scope.decl(metadata !28160)
  call void @llvm.experimental.noalias.scope.decl(metadata !28161)
  %i.dn = load i64, ptr %i.j, align 16, !range !34, !alias.scope !28162, !noundef !21 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775742
  br i1 %i.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3C_5error5ErrorENtNtB4_6marker4SendEL_EEB4d_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !28163)
  %i.dp = icmp eq i64 %i.dn, -9223372036854775743
  br i1 %i.dp, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !28164 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.dq, align 16, !alias.scope !28164, !nonnull !21, !align !22, !noundef !21 ; 5 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ax, %bb.z, %bb.f, %bb.e, %bb.af, %bb.bd
  %.sroa.019.2 = phi i1 [ false, %bb.bd ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.ax ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.bd ], [ %i.dc, %bb.af ], [ %i.ch, %bb.z ], [ %i.aa, %bb.e ], [ %i.em, %bb.ax ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3C_5error5ErrorENtNtB4_6marker4SendEL_EEB4d_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %.body61 unwind label %bb.au

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc51
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread10, %bb.u, %bb.l, %bb.n, %bb.aj, %bb.al, %bb.bh, %bb.bj
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.aj ], [ false, %bb.bh ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bj ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.i ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !28241, !noalias !28242, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !28241, !noalias !28242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !range !26, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av
  %i.bg = icmp slt i64 %i.bd, %i.av
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 3)
  br i1 %i.bj, label %.thread10, label %.split7.us.i

bb.r:                                             ; preds = %.noexc50
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bm = extractvalue { i64, i32 } %i.bl, 0
  %i.bn = extractvalue { i64, i32 } %i.bl, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !100

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = load ptr, ptr %i.bo, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bp)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.br)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bs = load atomic i8, ptr %i.o acquire, align 16
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.bv = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bv, 7                    ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bv, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod81 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28188

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %bb.w
  %i.bx = add i32 %.sroa.0.02.i, 1
  %i.by = load atomic i8, ptr %i.o acquire, align 16
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.x:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !28244)
  %i.ca = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28244, !noalias !28245, !noundef !21
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.y, label %bb.ac, !prof !36

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28246
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !28244, !noalias !28245, !nonnull !21, !align !22, !noundef !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !26, !alias.scope !28244, !noalias !28245, !noundef !21
  store ptr %i.cd, ptr %i.a, align 8, !noalias !28246
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !28246
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.aa unwind label %bb.z, !noalias !28244

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ab, !noalias !28244

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28244
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !28244, !noalias !28245, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !26, !alias.scope !28244, !noalias !28245, !noundef !21 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !28247)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !28247, !noalias !28248, !nonnull !21, !noundef !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !28247, !noalias !28248, !noundef !21 ; 2 uses
  %.idx68 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx68
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph67

bb.ad:                                            ; preds = %.lr.ph67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.ac, %bb.ad
  %i.cy = phi ptr [ %i.cv, %bb.ad ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !28249, !noalias !28250, !noundef !21
  %.not.i.i54 = icmp eq i64 %i.db, %i.m
  br i1 %.not.i.i54, label %bb.ae, label %bb.ad

bb.ae:                                            ; preds = %.lr.ph67
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.ck, i8 %i.cm) #40
          to label %.body unwind label %bb.au

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !prof !102

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28251)
  call void @llvm.experimental.noalias.scope.decl(metadata !28252)
  call void @llvm.experimental.noalias.scope.decl(metadata !28253)
  call void @llvm.experimental.noalias.scope.decl(metadata !28254)
  %i.dd = load ptr, ptr %i.i, align 8, !alias.scope !28255, !nonnull !21, !noundef !21
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !28255
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ag, %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br i1 %i.cn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aj, !prof !27

bb.aj:                                            ; preds = %bb.ai
  %i.dk = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ak

bb.ak:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.dg monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ak, %.noexc58, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dl = atomicrmw xchg ptr %i.ck, i32 0 release, align 4
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, !prof !36

bb.al:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 -9223372036854775742, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775742
  br i1 %.not26, label %.invoke, label %.thread48, !prof !36

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60
  %i.dn = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread48:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72
  %.sink = phi i128 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.08.0.copyload.sink = phi i64 [ %.sroa.08.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ], [ %.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.510.0..sroa_idx, i64 88, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.08.0.copyload.sink, ptr %.sroa.417.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3C_5error5ErrorENtNtB4_6marker4SendEL_EEB4d_EEECs14kWLkQVSKO_14deltalake_core.exit
end_hunk_3
begin_hunk_4_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.az, %bb.aa, %bb.g, %bb.f, %bb.ag, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.bf ], [ %i.db, %bb.ag ], [ %i.cg, %bb.aa ], [ %i.z, %bb.f ], [ %i.el, %bb.az ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.04.2 = phi i1 [ false, %bb.bf ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.f ], [ false, %bb.az ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4a_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %bb.b unwind label %bb.aw

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bn, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bj, %bb.bl
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bj ], [ false, %bb.bn ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bl ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !28338, !noalias !28339, !nonnull !21, !noundef !21
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !28338, !noalias !28339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !26, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au
  %i.bf = icmp slt i64 %i.bc, %i.au
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 3)
  br i1 %i.bi, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc38
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.br = load atomic i8, ptr %i.n acquire, align 16
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bu = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bu, 7                    ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bu, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod82 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28285

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i, 1
  %i.bx = load atomic i8, ptr %i.n acquire, align 16
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !28341)
  %i.bz = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28341, !noalias !28342, !noundef !21
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28343
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !28341, !noalias !28342, !nonnull !21, !align !22, !noundef !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !26, !alias.scope !28341, !noalias !28342, !noundef !21
  store ptr %i.cc, ptr %i.a, align 8, !noalias !28343
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ce, ptr %i.cf, align 8, !noalias !28343
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !28341

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !28341

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28341
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !28341, !noalias !28342, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !26, !alias.scope !28341, !noalias !28342, !noundef !21 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !28344)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !28344, !noalias !28345, !nonnull !21, !noundef !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !28344, !noalias !28345, !noundef !21 ; 2 uses
  %.idx69 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx69
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68

bb.ae:                                            ; preds = %.lr.ph68
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cu, %bb.ae ], [ %i.cp, %bb.ad ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !28346, !noalias !28347, !noundef !21
  %.not.i.i42 = icmp eq i64 %i.da, %i.l
  br i1 %.not.i.i42, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph68
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cj, i8 %i.cl) #40
          to label %.body unwind label %bb.aw

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28348)
  call void @llvm.experimental.noalias.scope.decl(metadata !28349)
  call void @llvm.experimental.noalias.scope.decl(metadata !28350)
  call void @llvm.experimental.noalias.scope.decl(metadata !28351)
  %i.dc = load ptr, ptr %i.i, align 8, !alias.scope !28352, !nonnull !21, !noundef !21
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !28352
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.c unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  br i1 %i.cm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dg = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dh = and i64 %i.dg, 9223372036854775807
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dj = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ak
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.al

bb.al:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.df monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.al, %.noexc46, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dk = atomicrmw xchg ptr %i.cj, i32 0 release, align 4
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dm, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bm ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !28353)
  call void @llvm.experimental.noalias.scope.decl(metadata !28354)
  call void @llvm.experimental.noalias.scope.decl(metadata !28355)
  %i.dn = load i64, ptr %i.j, align 16, !range !34, !alias.scope !28356, !noundef !21 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775742
  br i1 %i.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4a_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !28357)
  %i.dp = icmp eq i64 %i.dn, -9223372036854775743
  br i1 %i.dp, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i.i.i = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !28358 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.dq, align 16, !alias.scope !28358, !nonnull !21, !align !22, !noundef !21 ; 5 uses
end_hunk_4
begin_hunk_5_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ax, %bb.z, %bb.f, %bb.e, %bb.af, %bb.bd
  %.sroa.019.2 = phi i1 [ false, %bb.bd ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.ax ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.bd ], [ %i.dc, %bb.af ], [ %i.ch, %bb.z ], [ %i.aa, %bb.e ], [ %i.em, %bb.ax ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4a_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %.body61 unwind label %bb.au

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc51
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread10, %bb.u, %bb.l, %bb.n, %bb.aj, %bb.al, %bb.bh, %bb.bj
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.aj ], [ false, %bb.bh ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bj ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.i ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !28435, !noalias !28436, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !28435, !noalias !28436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !range !26, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av
  %i.bg = icmp slt i64 %i.bd, %i.av
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 3)
  br i1 %i.bj, label %.thread10, label %.split7.us.i

bb.r:                                             ; preds = %.noexc50
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bm = extractvalue { i64, i32 } %i.bl, 0
  %i.bn = extractvalue { i64, i32 } %i.bl, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !100

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = load ptr, ptr %i.bo, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bp)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.br)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bs = load atomic i8, ptr %i.o acquire, align 16
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.bv = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bv, 7                    ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bv, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod81 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28382

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %bb.w
  %i.bx = add i32 %.sroa.0.02.i, 1
  %i.by = load atomic i8, ptr %i.o acquire, align 16
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.x:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !28438)
  %i.ca = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28438, !noalias !28439, !noundef !21
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.y, label %bb.ac, !prof !36

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28440
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !28438, !noalias !28439, !nonnull !21, !align !22, !noundef !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !26, !alias.scope !28438, !noalias !28439, !noundef !21
  store ptr %i.cd, ptr %i.a, align 8, !noalias !28440
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !28440
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.aa unwind label %bb.z, !noalias !28438

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ab, !noalias !28438

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28438
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !28438, !noalias !28439, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !26, !alias.scope !28438, !noalias !28439, !noundef !21 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !28441)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !28441, !noalias !28442, !nonnull !21, !noundef !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !28441, !noalias !28442, !noundef !21 ; 2 uses
  %.idx68 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx68
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph67

bb.ad:                                            ; preds = %.lr.ph67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.ac, %bb.ad
  %i.cy = phi ptr [ %i.cv, %bb.ad ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !28443, !noalias !28444, !noundef !21
  %.not.i.i54 = icmp eq i64 %i.db, %i.m
  br i1 %.not.i.i54, label %bb.ae, label %bb.ad

bb.ae:                                            ; preds = %.lr.ph67
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.ck, i8 %i.cm) #40
          to label %.body unwind label %bb.au

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !prof !102

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28445)
  call void @llvm.experimental.noalias.scope.decl(metadata !28446)
  call void @llvm.experimental.noalias.scope.decl(metadata !28447)
  call void @llvm.experimental.noalias.scope.decl(metadata !28448)
  %i.dd = load ptr, ptr %i.i, align 8, !alias.scope !28449, !nonnull !21, !noundef !21
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !28449
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ag, %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br i1 %i.cn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aj, !prof !27

bb.aj:                                            ; preds = %bb.ai
  %i.dk = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ak

bb.ak:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.dg monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ak, %.noexc58, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dl = atomicrmw xchg ptr %i.ck, i32 0 release, align 4
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, !prof !36

bb.al:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 -9223372036854775742, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775742
  br i1 %.not26, label %.invoke, label %.thread48, !prof !36

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60
  %i.dn = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread48:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72
  %.sink = phi i128 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.08.0.copyload.sink = phi i64 [ %.sroa.08.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ], [ %.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.510.0..sroa_idx, i64 88, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.08.0.copyload.sink, ptr %.sroa.417.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB1u_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB4_6marker4SendEL_EEB4a_EEECs14kWLkQVSKO_14deltalake_core.exit
end_hunk_5
begin_hunk_6_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.av, %bb.aa, %bb.g, %bb.f, %bb.ag, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.bb ], [ %i.db, %bb.ag ], [ %i.cg, %bb.aa ], [ %i.z, %bb.f ], [ %i.eb, %bb.av ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.bb ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.f ], [ false, %bb.av ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %bb.b unwind label %bb.as

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bj, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bf, %bb.bh
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bf ], [ false, %bb.bj ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bh ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !28538, !noalias !28539, !nonnull !21, !noundef !21
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !28538, !noalias !28539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !26, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au
  %i.bf = icmp slt i64 %i.bc, %i.au
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 3)
  br i1 %i.bi, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc38
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.br = load atomic i8, ptr %i.n acquire, align 16
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bu = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bu, 7                    ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bu, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28479

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i, 1
  %i.bx = load atomic i8, ptr %i.n acquire, align 16
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !28541)
  %i.bz = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28541, !noalias !28542, !noundef !21
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28543
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !28541, !noalias !28542, !nonnull !21, !align !22, !noundef !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !26, !alias.scope !28541, !noalias !28542, !noundef !21
  store ptr %i.cc, ptr %i.a, align 8, !noalias !28543
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ce, ptr %i.cf, align 8, !noalias !28543
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !28541

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !28541

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28541
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !28541, !noalias !28542, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !26, !alias.scope !28541, !noalias !28542, !noundef !21 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !28544)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !28544, !noalias !28545, !nonnull !21, !noundef !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !28544, !noalias !28545, !noundef !21 ; 2 uses
  %.idx66 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx66
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

bb.ae:                                            ; preds = %.lr.ph65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cu, %bb.ae ], [ %i.cp, %bb.ad ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !28546, !noalias !28547, !noundef !21
  %.not.i.i42 = icmp eq i64 %i.da, %i.l
  br i1 %.not.i.i42, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph65
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cj, i8 %i.cl) #40
          to label %.body unwind label %bb.as

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28548)
  call void @llvm.experimental.noalias.scope.decl(metadata !28549)
  call void @llvm.experimental.noalias.scope.decl(metadata !28550)
  call void @llvm.experimental.noalias.scope.decl(metadata !28551)
  %i.dc = load ptr, ptr %i.i, align 8, !alias.scope !28552, !nonnull !21, !noundef !21
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !28552
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.c unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  br i1 %i.cm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dg = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dh = and i64 %i.dg, 9223372036854775807
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dj = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ak
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.al

bb.al:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.df monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.al, %.noexc46, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dk = atomicrmw xchg ptr %i.cj, i32 0 release, align 4
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dm, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit59, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bi ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit59 ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !28553)
  call void @llvm.experimental.noalias.scope.decl(metadata !28554)
  call void @llvm.experimental.noalias.scope.decl(metadata !28555)
  %i.dn = load i64, ptr %i.j, align 16, !range !34, !alias.scope !28556, !noundef !21 ; 2 uses
  %i.do = icmp eq i64 %i.dn, -9223372036854775742
  br i1 %i.do, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !28557)
  %i.dp = icmp eq i64 %i.dn, -9223372036854775743
  br i1 %i.dp, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !28558)
  call void @llvm.experimental.noalias.scope.decl(metadata !28559)
  call void @llvm.experimental.noalias.scope.decl(metadata !28560)
end_hunk_6
begin_hunk_7_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.at, %bb.z, %bb.f, %bb.e, %bb.af, %bb.az
  %.sroa.019.2 = phi i1 [ false, %bb.az ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.at ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.az ], [ %i.dc, %bb.af ], [ %i.ch, %bb.z ], [ %i.aa, %bb.e ], [ %i.ec, %bb.at ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit20, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit25, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.j) #40
          to label %bb.bg unwind label %bb.aq

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit20 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc51
  %lpad.loopexit25 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread10, %bb.u, %bb.l, %bb.n, %bb.aj, %bb.al, %bb.bd, %bb.bf
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.aj ], [ false, %bb.bd ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bf ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.i ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !28644, !noalias !28645, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !28644, !noalias !28645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load i8, ptr %i.aj, align 8, !range !26, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av
  %i.bg = icmp slt i64 %i.bd, %i.av
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 3)
  br i1 %i.bj, label %.thread10, label %.split7.us.i

bb.r:                                             ; preds = %.noexc50
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bm = extractvalue { i64, i32 } %i.bl, 0
  %i.bn = extractvalue { i64, i32 } %i.bl, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !100

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bp = load ptr, ptr %i.bo, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bp)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.br)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bs = load atomic i8, ptr %i.o acquire, align 16
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.bv = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bv, 7                    ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bv, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28585

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %bb.w
  %i.bx = add i32 %.sroa.0.02.i, 1
  %i.by = load atomic i8, ptr %i.o acquire, align 16
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.x:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !28647)
  %i.ca = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28647, !noalias !28648, !noundef !21
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.y, label %bb.ac, !prof !36

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28649
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !28647, !noalias !28648, !nonnull !21, !align !22, !noundef !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !26, !alias.scope !28647, !noalias !28648, !noundef !21
  store ptr %i.cd, ptr %i.a, align 8, !noalias !28649
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !28649
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.aa unwind label %bb.z, !noalias !28647

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ab, !noalias !28647

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28647
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !28647, !noalias !28648, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !26, !alias.scope !28647, !noalias !28648, !noundef !21 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !28650)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !28650, !noalias !28651, !nonnull !21, !noundef !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !28650, !noalias !28651, !noundef !21 ; 2 uses
  %.idx66 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx66
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

bb.ad:                                            ; preds = %.lr.ph65
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ac, %bb.ad
  %i.cy = phi ptr [ %i.cv, %bb.ad ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !28652, !noalias !28653, !noundef !21
  %.not.i.i54 = icmp eq i64 %i.db, %i.m
  br i1 %.not.i.i54, label %bb.ae, label %bb.ad

bb.ae:                                            ; preds = %.lr.ph65
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.ck, i8 %i.cm) #40
          to label %.body unwind label %bb.aq

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !prof !102

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28654)
  call void @llvm.experimental.noalias.scope.decl(metadata !28655)
  call void @llvm.experimental.noalias.scope.decl(metadata !28656)
  call void @llvm.experimental.noalias.scope.decl(metadata !28657)
  %i.dd = load ptr, ptr %i.i, align 8, !alias.scope !28658, !nonnull !21, !noundef !21
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !28658
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ag, %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br i1 %i.cn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aj, !prof !27

bb.aj:                                            ; preds = %bb.ai
  %i.dk = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ak

bb.ak:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.dg monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ak, %.noexc58, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dl = atomicrmw xchg ptr %i.ck, i32 0 release, align 4
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, !prof !36

bb.al:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 -9223372036854775742, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775742
  br i1 %.not26, label %.invoke, label %.thread46, !prof !36

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit71, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60
  %i.dn = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit71 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.thread46:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit71
  %.sink = phi i128 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit71 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.08.0.copyload.sink = phi i64 [ %.sroa.08.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit71 ], [ %.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ]
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.518.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.510.0..sroa_idx, i64 88, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.08.0.copyload.sink, ptr %.sroa.417.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit
end_hunk_7
begin_hunk_8_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.av, %bb.aa, %bb.g, %bb.f, %bb.ag, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.bb ], [ %i.db, %bb.ag ], [ %i.cg, %bb.aa ], [ %i.z, %bb.f ], [ %i.dz, %bb.av ], [ %i.z, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.04.2 = phi i1 [ false, %bb.bb ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.f ], [ false, %bb.av ], [ true, %bb.g ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.j) #40
          to label %bb.b unwind label %bb.as

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc39
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bj, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bf, %bb.bh
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bf ], [ false, %bb.bj ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.bh ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !28742, !noalias !28743, !nonnull !21, !noundef !21
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.w, 1
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !28742, !noalias !28743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !26, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.az, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc39
  %i.ba = load atomic i64, ptr %i.ay acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bb = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.q
  %i.bc = extractvalue { i64, i32 } %i.bb, 0      ; 3 uses
  %i.bd = extractvalue { i64, i32 } %i.bb, 1      ; 2 uses
  %i.be = icmp eq i64 %i.bc, %i.au
  %i.bf = icmp slt i64 %i.bc, %i.au
  %i.bg = icmp samesign ult i32 %i.bd, %i.aw
  %spec.select.i = select i1 %i.be, i1 %i.bg, i1 %i.bf
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc38
  %i.bh = cmpxchg ptr %i.ay, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  %i.bj = extractvalue { i64, i1 } %i.bh, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bj, i64 3)
  br i1 %i.bi, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc38
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bc, i32 noundef %i.bd)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.az, %.split.us.i ], [ %i.az, %.split.us.i ], [ %i.ba, %.split.i ], [ %i.ba, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.br = load atomic i8, ptr %i.n acquire, align 16
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bw, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bu = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bu, 7                    ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bu, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28691

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bw = add i32 %.sroa.0.02.i, 1
  %i.bx = load atomic i8, ptr %i.n acquire, align 16
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !28745)
  %i.bz = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28745, !noalias !28746, !noundef !21
  %i.ca = trunc nuw i64 %i.bz to i1
  br i1 %i.ca, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28747
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !28745, !noalias !28746, !nonnull !21, !align !22, !noundef !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !range !26, !alias.scope !28745, !noalias !28746, !noundef !21
  store ptr %i.cc, ptr %i.a, align 8, !noalias !28747
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ce, ptr %i.cf, align 8, !noalias !28747
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !28745

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !28745

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28745
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !28745, !noalias !28746, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !range !26, !alias.scope !28745, !noalias !28746, !noundef !21 ; 2 uses
  %i.cm = trunc nuw i8 %i.cl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !28748)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !28748, !noalias !28749, !nonnull !21, !noundef !21 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !28748, !noalias !28749, !noundef !21 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx65
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

bb.ae:                                            ; preds = %.lr.ph64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cu, %bb.ae ], [ %i.cp, %bb.ad ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !28750, !noalias !28751, !noundef !21
  %.not.i.i42 = icmp eq i64 %i.da, %i.l
  br i1 %.not.i.i42, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cn, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cj, i8 %i.cl) #40
          to label %.body unwind label %bb.as

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28752)
  call void @llvm.experimental.noalias.scope.decl(metadata !28753)
  call void @llvm.experimental.noalias.scope.decl(metadata !28754)
  call void @llvm.experimental.noalias.scope.decl(metadata !28755)
  %i.dc = load ptr, ptr %i.i, align 8, !alias.scope !28756, !nonnull !21, !noundef !21
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !28756
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.c unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  br i1 %i.cm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dg = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dh = and i64 %i.dg, 9223372036854775807
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dj = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ak
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.al

bb.al:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.df monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.al, %.noexc46, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dk = atomicrmw xchg ptr %i.cj, i32 0 release, align 4
  %i.dl = icmp eq i32 %i.dk, 2
  br i1 %i.dl, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dm, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bi ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 ], [ 2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit48 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  %i.dn = load i64, ptr %i.j, align 16, !range !28, !alias.scope !28757, !noundef !21
  switch i64 %i.dn, label %bb.ar [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit
    i64 0, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %.sroa.410.0..sroa_idx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %.sroa.410.0..sroa_idx)
          to label %.thread unwind label %bb.aq

end_hunk_8
begin_hunk_9_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #42
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.au, %bb.z, %bb.f, %bb.e, %bb.af, %bb.ba
  %.sroa.019.2 = phi i1 [ false, %bb.ba ], [ false, %bb.af ], [ false, %bb.z ], [ true, %bb.e ], [ false, %bb.au ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.ba ], [ %i.dc, %bb.af ], [ %i.ch, %bb.z ], [ %i.aa, %bb.e ], [ %i.ea, %bb.au ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.j) #40
          to label %.body61 unwind label %bb.ar

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc51
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread10, %bb.u, %bb.l, %bb.n, %bb.aj, %bb.al, %bb.be, %bb.bg
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.aj ], [ false, %bb.be ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bg ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.i ], [ false, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !28832, !noalias !28833, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = add i64 %i.x, 1
  store i64 %i.ah, ptr %i.w, align 8, !alias.scope !28832, !noalias !28833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ak = load i8, ptr %i.aj, align 8, !range !26, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ao = and i64 %i.an, 9223372036854775807
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.al monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ar = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ax, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.o
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.ba, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc51
  %i.bb = load atomic i64, ptr %i.az acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.bc = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc50:                                         ; preds = %bb.p
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 2 uses
  %i.bf = icmp eq i64 %i.bd, %i.av
  %i.bg = icmp slt i64 %i.bd, %i.av
  %i.bh = icmp samesign ult i32 %i.be, %i.ax
  %spec.select.i = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc50
  %i.bi = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = extractvalue { i64, i1 } %i.bi, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bk, i64 3)
  br i1 %i.bj, label %.thread10, label %.split7.us.i

bb.r:                                             ; preds = %.noexc50
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.av, i32 noundef range(i32 0, 1000000001) %i.ax, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.r
  %i.bm = extractvalue { i64, i32 } %i.bl, 0
  %i.bn = extractvalue { i64, i32 } %i.bl, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.ba, %.split.us.i ], [ %i.ba, %.split.us.i ], [ %i.bb, %.split.i ], [ %i.bb, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread10
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !100

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bp = load ptr, ptr %i.bo, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bp)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.br)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bs = load atomic i8, ptr %i.o acquire, align 16
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bx, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bu = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.bv = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bv, 7                    ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bv, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28781

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %bb.w
  %i.bx = add i32 %.sroa.0.02.i, 1
  %i.by = load atomic i8, ptr %i.o acquire, align 16
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.x:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !28835)
  %i.ca = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28835, !noalias !28836, !noundef !21
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.y, label %bb.ac, !prof !36

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28837
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !28835, !noalias !28836, !nonnull !21, !align !22, !noundef !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !26, !alias.scope !28835, !noalias !28836, !noundef !21
  store ptr %i.cd, ptr %i.a, align 8, !noalias !28837
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !28837
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.aa unwind label %bb.z, !noalias !28835

bb.z:                                             ; preds = %bb.y
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ab, !noalias !28835

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28835
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !28835, !noalias !28836, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !26, !alias.scope !28835, !noalias !28836, !noundef !21 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !28838)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !28838, !noalias !28839, !nonnull !21, !noundef !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !28838, !noalias !28839, !noundef !21 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.cs, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx64
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

bb.ad:                                            ; preds = %.lr.ph63
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  %i.cw = add nuw nsw i64 %i.cz, 1
  %i.cx = icmp eq ptr %i.cv, %i.ct
  br i1 %i.cx, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ac, %bb.ad
  %i.cy = phi ptr [ %i.cv, %bb.ad ], [ %i.cq, %bb.ac ] ; 2 uses
  %i.cz = phi i64 [ %i.cw, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !28840, !noalias !28841, !noundef !21
  %.not.i.i54 = icmp eq i64 %i.db, %i.m
  br i1 %.not.i.i54, label %bb.ae, label %bb.ad

bb.ae:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ae, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.ck, i8 %i.cm) #40
          to label %.body unwind label %bb.ar

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ae
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ag, !prof !102

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28842)
  call void @llvm.experimental.noalias.scope.decl(metadata !28843)
  call void @llvm.experimental.noalias.scope.decl(metadata !28844)
  call void @llvm.experimental.noalias.scope.decl(metadata !28845)
  %i.dd = load ptr, ptr %i.i, align 8, !alias.scope !28846, !nonnull !21, !noundef !21
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !28846
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.af

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ad, %bb.ac, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ag, %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br i1 %i.cn, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dh = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.di = and i64 %i.dh, 9223372036854775807
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.aj, !prof !27

bb.aj:                                            ; preds = %bb.ai
  %i.dk = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.aj
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, label %bb.ak

bb.ak:                                            ; preds = %.noexc58
  store atomic i8 1, ptr %i.dg monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57: ; preds = %bb.ak, %.noexc58, %bb.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dl = atomicrmw xchg ptr %i.ck, i32 0 release, align 4
  %i.dm = icmp eq i32 %i.dl, 2
  br i1 %i.dm, label %bb.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, !prof !36

bb.al:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ck)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i57, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 2, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not26, label %.invoke, label %bb.am, !prof !36

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  store i128 0, ptr %0, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1R_5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit73, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60
  %i.dn = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit73 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
end_hunk_9
begin_hunk_10_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.dd, %bb.ag ], [ %i.ci, %bb.aa ], [ %i.z, %bb.e ], [ %i.dz, %bb.as ], [ %i.z, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ad = load i64, ptr %i.j, align 16, !range !34, !alias.scope !28931, !noundef !21
  %i.ae = icmp ugt i64 %i.ad, -9223372036854775744
  br i1 %i.ae, label %.noexc, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.j)
          to label %.noexc unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc40
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bg, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.bg ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !28928, !noalias !28929, !nonnull !21, !noundef !21
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ai = add i64 %i.w, 1
  store i64 %i.ai, ptr %i.v, align 8, !alias.scope !28928, !noalias !28929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !26, !noundef !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.m
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc36
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc36, %bb.l, %bb.k
  %i.as = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !99, !noundef !21 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ay, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc40
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bd, 0      ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.aw
  %i.bh = icmp slt i64 %i.be, %i.aw
  %i.bi = icmp samesign ult i32 %i.bf, %i.ay
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc39
  %i.bj = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bl, i64 3)
  br i1 %i.bk, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc39
  %i.bm = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aw, i32 noundef range(i32 0, 1000000001) %i.ay, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc40:                                         ; preds = %bb.s
  %i.bn = extractvalue { i64, i32 } %i.bm, 0
  %i.bo = extractvalue { i64, i32 } %i.bm, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bn, i32 noundef %i.bo)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bb, %.split.us.i ], [ %i.bb, %.split.us.i ], [ %i.bc, %.split.i ], [ %i.bc, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bq)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bs)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bt = load atomic i8, ptr %i.n acquire, align 16
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.by, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bw = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bw, 7                    ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bw, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28877

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.by = add i32 %.sroa.0.02.i, 1
  %i.bz = load atomic i8, ptr %i.n acquire, align 16
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !28932)
  %i.cb = load i64, ptr %i.g, align 8, !range !20, !alias.scope !28932, !noalias !28933, !noundef !21
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28934
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !28932, !noalias !28933, !nonnull !21, !align !22, !noundef !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cg = load i8, ptr %i.cf, align 8, !range !26, !alias.scope !28932, !noalias !28933, !noundef !21
  store ptr %i.ce, ptr %i.a, align 8, !noalias !28934
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cg, ptr %i.ch, align 8, !noalias !28934
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !28932

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !28932

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !28932
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !28932, !noalias !28933, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !26, !alias.scope !28932, !noalias !28933, !noundef !21 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !28935)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !28935, !noalias !28936, !nonnull !21, !noundef !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !28935, !noalias !28936, !noundef !21 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx65
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

bb.ae:                                            ; preds = %.lr.ph64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.cx = add nuw nsw i64 %i.da, 1
  %i.cy = icmp eq ptr %i.cw, %i.cu
  br i1 %i.cy, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.ad, %bb.ae
  %i.cz = phi ptr [ %i.cw, %bb.ae ], [ %i.cr, %bb.ad ] ; 2 uses
  %i.da = phi i64 [ %i.cx, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !28937, !noalias !28938, !noundef !21
  %.not.i.i43 = icmp eq i64 %i.dc, %i.l
  br i1 %.not.i.i43, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cp, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cl, i8 %i.cn) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !28939)
  call void @llvm.experimental.noalias.scope.decl(metadata !28940)
  call void @llvm.experimental.noalias.scope.decl(metadata !28941)
  call void @llvm.experimental.noalias.scope.decl(metadata !28942)
  %i.de = load ptr, ptr %i.i, align 8, !alias.scope !28943, !nonnull !21, !noundef !21
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !28943
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br i1 %i.co, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.di = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dj = and i64 %i.di, 9223372036854775807
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dl = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ak
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.al

bb.al:                                            ; preds = %.noexc47
  store atomic i8 1, ptr %i.dh monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46: ; preds = %bb.al, %.noexc47, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dm = atomicrmw xchg ptr %i.cl, i32 0 release, align 4
  %i.dn = icmp eq i32 %i.dm, 2
  br i1 %i.dn, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.do, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bf ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ -9223372036854775742, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  %i.dp = load i64, ptr %i.j, align 16, !range !34, !alias.scope !28944, !noundef !21
  %i.dq = icmp ugt i64 %i.dp, -9223372036854775744
  br i1 %i.dq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit51, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit51

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aq:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !28945)
end_hunk_10
begin_hunk_11_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.sroa.019.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.de, %bb.ag ], [ %i.cj, %bb.aa ], [ %i.aa, %bb.e ], [ %i.dz, %bb.as ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ae = load i64, ptr %i.j, align 16, !range !34, !alias.scope !29028, !noundef !21
  %i.af = icmp ugt i64 %i.ae, -9223372036854775744
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc52
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.u, %.thread10, %bb.v, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !29025, !noalias !29026, !nonnull !21, !noundef !21
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aj = add i64 %i.x, 1
  store i64 %i.aj, ptr %i.w, align 8, !alias.scope !29025, !noalias !29026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load i8, ptr %i.al, align 8, !range !26, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.m
  br i1 %i.as, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc52
  %i.bd = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bd, label %.thread [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.be = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.bf = extractvalue { i64, i32 } %i.be, 0      ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bf, %i.ax
  %i.bi = icmp slt i64 %i.bf, %i.ax
  %i.bj = icmp samesign ult i32 %i.bg, %i.az
  %spec.select.i = select i1 %i.bh, i1 %i.bj, i1 %i.bi
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc51
  %i.bk = cmpxchg ptr %i.bb, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 3)
  br i1 %i.bl, label %.thread10, label %.split7.us.i

bb.s:                                             ; preds = %.noexc51
  %i.bn = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.s
  %i.bo = extractvalue { i64, i32 } %i.bn, 0
  %i.bp = extractvalue { i64, i32 } %i.bn, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, i64 noundef %i.bo, i32 noundef %i.bp)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bc, %.split.us.i ], [ %i.bc, %.split.us.i ], [ %i.bd, %.split.i ], [ %i.bd, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread10
    i64 2, label %bb.v
    i64 3, label %.thread
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.br)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bt = load ptr, ptr %i.bs, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bt)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bu = load atomic i8, ptr %i.o acquire, align 16
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bz, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bx = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bx, 7                    ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.by, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bx, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !28974

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bz = add i32 %.sroa.0.02.i, 1
  %i.ca = load atomic i8, ptr %i.o acquire, align 16
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.y:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !29029)
  %i.cc = load i64, ptr %i.g, align 8, !range !20, !alias.scope !29029, !noalias !29030, !noundef !21
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29031
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !29029, !noalias !29030, !nonnull !21, !align !22, !noundef !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !range !26, !alias.scope !29029, !noalias !29030, !noundef !21
  store ptr %i.cf, ptr %i.a, align 8, !noalias !29031
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ch, ptr %i.ci, align 8, !noalias !29031
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.ab unwind label %bb.aa, !noalias !29029

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !29029

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29029
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !29029, !noalias !29030, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !26, !alias.scope !29029, !noalias !29030, !noundef !21 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !29032)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !29032, !noalias !29033, !nonnull !21, !noundef !21 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !29032, !noalias !29033, !noundef !21 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.cu, 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx64
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

bb.ae:                                            ; preds = %.lr.ph63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.cy = add nuw nsw i64 %i.db, 1
  %i.cz = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cz, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ad, %bb.ae
  %i.da = phi ptr [ %i.cx, %bb.ae ], [ %i.cs, %bb.ad ] ; 2 uses
  %i.db = phi i64 [ %i.cy, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !29034, !noalias !29035, !noundef !21
  %.not.i.i55 = icmp eq i64 %i.dd, %i.m
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cq, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cm, i8 %i.co) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !29036)
  call void @llvm.experimental.noalias.scope.decl(metadata !29037)
  call void @llvm.experimental.noalias.scope.decl(metadata !29038)
  call void @llvm.experimental.noalias.scope.decl(metadata !29039)
  %i.df = load ptr, ptr %i.i, align 8, !alias.scope !29040, !nonnull !21, !noundef !21
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !29040
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  br i1 %i.cp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dm = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ak
  br i1 %i.dm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.al

bb.al:                                            ; preds = %.noexc59
  store atomic i8 1, ptr %i.di monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.al, %.noexc59, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dn = atomicrmw xchg ptr %i.cm, i32 0 release, align 4
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 -9223372036854775742, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775742
  br i1 %.not26, label %.invoke, label %bb.an, !prof !36

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  store i128 0, ptr %0, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEECs14kWLkQVSKO_14deltalake_core.exit63

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %i.dp = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
end_hunk_11
begin_hunk_12_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.dd, %bb.ag ], [ %i.ci, %bb.aa ], [ %i.z, %bb.e ], [ %i.dz, %bb.as ], [ %i.z, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ad = load i64, ptr %i.j, align 16, !range !49, !alias.scope !29125, !noundef !21
  %i.ae = icmp eq i64 %i.ad, -9223372036854775741
  br i1 %i.ae, label %.noexc, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.j)
          to label %.noexc unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc40
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bg, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.bg ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !29122, !noalias !29123, !nonnull !21, !noundef !21
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ai = add i64 %i.w, 1
  store i64 %i.ai, ptr %i.v, align 8, !alias.scope !29122, !noalias !29123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !26, !noundef !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.m
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc36
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc36, %bb.l, %bb.k
  %i.as = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !99, !noundef !21 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ay, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc40
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bd, 0      ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.aw
  %i.bh = icmp slt i64 %i.be, %i.aw
  %i.bi = icmp samesign ult i32 %i.bf, %i.ay
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc39
  %i.bj = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bl, i64 3)
  br i1 %i.bk, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc39
  %i.bm = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aw, i32 noundef range(i32 0, 1000000001) %i.ay, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc40:                                         ; preds = %bb.s
  %i.bn = extractvalue { i64, i32 } %i.bm, 0
  %i.bo = extractvalue { i64, i32 } %i.bm, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bn, i32 noundef %i.bo)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bb, %.split.us.i ], [ %i.bb, %.split.us.i ], [ %i.bc, %.split.i ], [ %i.bc, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bq)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bs)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bt = load atomic i8, ptr %i.n acquire, align 16
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.by, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bw = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bw, 7                    ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bw, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29071

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.by = add i32 %.sroa.0.02.i, 1
  %i.bz = load atomic i8, ptr %i.n acquire, align 16
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !29126)
  %i.cb = load i64, ptr %i.g, align 8, !range !20, !alias.scope !29126, !noalias !29127, !noundef !21
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29128
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !29126, !noalias !29127, !nonnull !21, !align !22, !noundef !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cg = load i8, ptr %i.cf, align 8, !range !26, !alias.scope !29126, !noalias !29127, !noundef !21
  store ptr %i.ce, ptr %i.a, align 8, !noalias !29128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cg, ptr %i.ch, align 8, !noalias !29128
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !29126

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !29126

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29126
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !29126, !noalias !29127, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !26, !alias.scope !29126, !noalias !29127, !noundef !21 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !29129)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !29129, !noalias !29130, !nonnull !21, !noundef !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !29129, !noalias !29130, !noundef !21 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx65
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

bb.ae:                                            ; preds = %.lr.ph64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.cx = add nuw nsw i64 %i.da, 1
  %i.cy = icmp eq ptr %i.cw, %i.cu
  br i1 %i.cy, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.ad, %bb.ae
  %i.cz = phi ptr [ %i.cw, %bb.ae ], [ %i.cr, %bb.ad ] ; 2 uses
  %i.da = phi i64 [ %i.cx, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !29131, !noalias !29132, !noundef !21
  %.not.i.i43 = icmp eq i64 %i.dc, %i.l
  br i1 %.not.i.i43, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cp, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cl, i8 %i.cn) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !29133)
  call void @llvm.experimental.noalias.scope.decl(metadata !29134)
  call void @llvm.experimental.noalias.scope.decl(metadata !29135)
  call void @llvm.experimental.noalias.scope.decl(metadata !29136)
  %i.de = load ptr, ptr %i.i, align 8, !alias.scope !29137, !nonnull !21, !noundef !21
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !29137
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br i1 %i.co, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.di = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dj = and i64 %i.di, 9223372036854775807
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dl = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ak
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.al

bb.al:                                            ; preds = %.noexc47
  store atomic i8 1, ptr %i.dh monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46: ; preds = %bb.al, %.noexc47, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dm = atomicrmw xchg ptr %i.cl, i32 0 release, align 4
  %i.dn = icmp eq i32 %i.dm, 2
  br i1 %i.dn, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.do, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bf ], [ -9223372036854775741, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ -9223372036854775741, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  %i.dp = load i64, ptr %i.j, align 16, !range !49, !alias.scope !29138, !noundef !21
  %i.dq = icmp eq i64 %i.dp, -9223372036854775741
  br i1 %i.dq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB2d_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit51, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB2d_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit51

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aq:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !29139)
end_hunk_12
begin_hunk_13_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.sroa.019.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.de, %bb.ag ], [ %i.cj, %bb.aa ], [ %i.aa, %bb.e ], [ %i.dz, %bb.as ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ae = load i64, ptr %i.j, align 16, !range !49, !alias.scope !29222, !noundef !21
  %i.af = icmp eq i64 %i.ae, -9223372036854775741
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB2d_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB23_5error5ErrorEEINtNtB4_3pin3PinIB1q_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB2d_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc52
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.u, %.thread10, %bb.v, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !29219, !noalias !29220, !nonnull !21, !noundef !21
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aj = add i64 %i.x, 1
  store i64 %i.aj, ptr %i.w, align 8, !alias.scope !29219, !noalias !29220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !26, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.m
  br i1 %i.as, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc52
  %i.bd = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bd, label %.thread [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.be = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.bf = extractvalue { i64, i32 } %i.be, 0      ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bf, %i.ax
  %i.bi = icmp slt i64 %i.bf, %i.ax
  %i.bj = icmp samesign ult i32 %i.bg, %i.az
  %spec.select.i = select i1 %i.bh, i1 %i.bj, i1 %i.bi
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc51
  %i.bk = cmpxchg ptr %i.bb, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 3)
  br i1 %i.bl, label %.thread10, label %.split7.us.i

bb.s:                                             ; preds = %.noexc51
  %i.bn = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.s
  %i.bo = extractvalue { i64, i32 } %i.bn, 0
  %i.bp = extractvalue { i64, i32 } %i.bn, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, i64 noundef %i.bo, i32 noundef %i.bp)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bc, %.split.us.i ], [ %i.bc, %.split.us.i ], [ %i.bd, %.split.i ], [ %i.bd, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread10
    i64 2, label %bb.v
    i64 3, label %.thread
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.br)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bt = load ptr, ptr %i.bs, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bt)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bu = load atomic i8, ptr %i.o acquire, align 16
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bz, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bx = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bx, 7                    ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.by, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bx, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29168

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bz = add i32 %.sroa.0.02.i, 1
  %i.ca = load atomic i8, ptr %i.o acquire, align 16
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.y:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !29223)
  %i.cc = load i64, ptr %i.g, align 8, !range !20, !alias.scope !29223, !noalias !29224, !noundef !21
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29225
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !29223, !noalias !29224, !nonnull !21, !align !22, !noundef !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !range !26, !alias.scope !29223, !noalias !29224, !noundef !21
  store ptr %i.cf, ptr %i.a, align 8, !noalias !29225
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ch, ptr %i.ci, align 8, !noalias !29225
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.ab unwind label %bb.aa, !noalias !29223

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !29223

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29223
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !29223, !noalias !29224, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !26, !alias.scope !29223, !noalias !29224, !noundef !21 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !29226)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !29226, !noalias !29227, !nonnull !21, !noundef !21 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !29226, !noalias !29227, !noundef !21 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.cu, 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx64
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

bb.ae:                                            ; preds = %.lr.ph63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.cy = add nuw nsw i64 %i.db, 1
  %i.cz = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cz, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ad, %bb.ae
  %i.da = phi ptr [ %i.cx, %bb.ae ], [ %i.cs, %bb.ad ] ; 2 uses
  %i.db = phi i64 [ %i.cy, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !29228, !noalias !29229, !noundef !21
  %.not.i.i55 = icmp eq i64 %i.dd, %i.m
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cq, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cm, i8 %i.co) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !29230)
  call void @llvm.experimental.noalias.scope.decl(metadata !29231)
  call void @llvm.experimental.noalias.scope.decl(metadata !29232)
  call void @llvm.experimental.noalias.scope.decl(metadata !29233)
  %i.df = load ptr, ptr %i.i, align 8, !alias.scope !29234, !nonnull !21, !noundef !21
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !29234
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  br i1 %i.cp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dm = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ak
  br i1 %i.dm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.al

bb.al:                                            ; preds = %.noexc59
  store atomic i8 1, ptr %i.di monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.al, %.noexc59, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dn = atomicrmw xchg ptr %i.cm, i32 0 release, align 4
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 -9223372036854775741, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775741
  br i1 %.not26, label %.invoke, label %bb.an, !prof !36

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  store i128 0, ptr %0, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2Q_5error5ErrorEEINtNtB4_3pin3PinIB2d_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit63

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %i.dp = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
end_hunk_13
begin_hunk_14_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.dd, %bb.ag ], [ %i.ci, %bb.aa ], [ %i.z, %bb.e ], [ %i.dz, %bb.as ], [ %i.z, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ad = load i64, ptr %i.j, align 16, !range !43, !alias.scope !29319, !noundef !21
  %i.ae = icmp eq i64 %i.ad, 3
  br i1 %i.ae, label %.noexc, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.j)
          to label %.noexc unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc40
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bg, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.bg ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !29316, !noalias !29317, !nonnull !21, !noundef !21
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ai = add i64 %i.w, 1
  store i64 %i.ai, ptr %i.v, align 8, !alias.scope !29316, !noalias !29317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !26, !noundef !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.m
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc36
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc36, %bb.l, %bb.k
  %i.as = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !99, !noundef !21 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ay, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc40
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bd, 0      ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.aw
  %i.bh = icmp slt i64 %i.be, %i.aw
  %i.bi = icmp samesign ult i32 %i.bf, %i.ay
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc39
  %i.bj = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bl, i64 3)
  br i1 %i.bk, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc39
  %i.bm = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aw, i32 noundef range(i32 0, 1000000001) %i.ay, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc40:                                         ; preds = %bb.s
  %i.bn = extractvalue { i64, i32 } %i.bm, 0
  %i.bo = extractvalue { i64, i32 } %i.bm, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bn, i32 noundef %i.bo)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bb, %.split.us.i ], [ %i.bb, %.split.us.i ], [ %i.bc, %.split.i ], [ %i.bc, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bq)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bs)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bt = load atomic i8, ptr %i.n acquire, align 16
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.by, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bw = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bw, 7                    ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bw, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29265

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.by = add i32 %.sroa.0.02.i, 1
  %i.bz = load atomic i8, ptr %i.n acquire, align 16
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !29320)
  %i.cb = load i64, ptr %i.g, align 8, !range !20, !alias.scope !29320, !noalias !29321, !noundef !21
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29322
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !29320, !noalias !29321, !nonnull !21, !align !22, !noundef !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cg = load i8, ptr %i.cf, align 8, !range !26, !alias.scope !29320, !noalias !29321, !noundef !21
  store ptr %i.ce, ptr %i.a, align 8, !noalias !29322
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cg, ptr %i.ch, align 8, !noalias !29322
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !29320

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !29320

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29320
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !29320, !noalias !29321, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !26, !alias.scope !29320, !noalias !29321, !noundef !21 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !29323)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !29323, !noalias !29324, !nonnull !21, !noundef !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !29323, !noalias !29324, !noundef !21 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx65
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

bb.ae:                                            ; preds = %.lr.ph64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.cx = add nuw nsw i64 %i.da, 1
  %i.cy = icmp eq ptr %i.cw, %i.cu
  br i1 %i.cy, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.ad, %bb.ae
  %i.cz = phi ptr [ %i.cw, %bb.ae ], [ %i.cr, %bb.ad ] ; 2 uses
  %i.da = phi i64 [ %i.cx, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !29325, !noalias !29326, !noundef !21
  %.not.i.i43 = icmp eq i64 %i.dc, %i.l
  br i1 %.not.i.i43, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cp, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cl, i8 %i.cn) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !29327)
  call void @llvm.experimental.noalias.scope.decl(metadata !29328)
  call void @llvm.experimental.noalias.scope.decl(metadata !29329)
  call void @llvm.experimental.noalias.scope.decl(metadata !29330)
  %i.de = load ptr, ptr %i.i, align 8, !alias.scope !29331, !nonnull !21, !noundef !21
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !29331
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br i1 %i.co, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.di = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dj = and i64 %i.di, 9223372036854775807
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dl = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ak
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.al

bb.al:                                            ; preds = %.noexc47
  store atomic i8 1, ptr %i.dh monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46: ; preds = %bb.al, %.noexc47, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dm = atomicrmw xchg ptr %i.cl, i32 0 release, align 4
  %i.dn = icmp eq i32 %i.dm, 2
  br i1 %i.dn, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.do, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bf ], [ 3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ 3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  %i.dp = load i64, ptr %i.j, align 16, !range !43, !alias.scope !29332, !noundef !21
  %i.dq = icmp eq i64 %i.dp, 3
  br i1 %i.dq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2e_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit51, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2e_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit51

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aq:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !29333)
end_hunk_14
begin_hunk_15_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.sroa.019.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.de, %bb.ag ], [ %i.cj, %bb.aa ], [ %i.aa, %bb.e ], [ %i.dz, %bb.as ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ae = load i64, ptr %i.j, align 16, !range !43, !alias.scope !29416, !noundef !21
  %i.af = icmp eq i64 %i.ae, 3
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2e_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1r_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2e_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc52
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.u, %.thread10, %bb.v, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !29413, !noalias !29414, !nonnull !21, !noundef !21
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aj = add i64 %i.x, 1
  store i64 %i.aj, ptr %i.w, align 8, !alias.scope !29413, !noalias !29414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.am = load i8, ptr %i.al, align 8, !range !26, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.m
  br i1 %i.as, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc52
  %i.bd = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bd, label %.thread [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.be = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.bf = extractvalue { i64, i32 } %i.be, 0      ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bf, %i.ax
  %i.bi = icmp slt i64 %i.bf, %i.ax
  %i.bj = icmp samesign ult i32 %i.bg, %i.az
  %spec.select.i = select i1 %i.bh, i1 %i.bj, i1 %i.bi
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc51
  %i.bk = cmpxchg ptr %i.bb, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 3)
  br i1 %i.bl, label %.thread10, label %.split7.us.i

bb.s:                                             ; preds = %.noexc51
  %i.bn = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.s
  %i.bo = extractvalue { i64, i32 } %i.bn, 0
  %i.bp = extractvalue { i64, i32 } %i.bn, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, i64 noundef %i.bo, i32 noundef %i.bp)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bc, %.split.us.i ], [ %i.bc, %.split.us.i ], [ %i.bd, %.split.i ], [ %i.bd, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread10
    i64 2, label %bb.v
    i64 3, label %.thread
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.br)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bt = load ptr, ptr %i.bs, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bt)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bu = load atomic i8, ptr %i.o acquire, align 16
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bz, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bx = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bx, 7                    ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.by, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bx, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29362

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bz = add i32 %.sroa.0.02.i, 1
  %i.ca = load atomic i8, ptr %i.o acquire, align 16
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.y:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !29417)
  %i.cc = load i64, ptr %i.g, align 8, !range !20, !alias.scope !29417, !noalias !29418, !noundef !21
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29419
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !29417, !noalias !29418, !nonnull !21, !align !22, !noundef !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !range !26, !alias.scope !29417, !noalias !29418, !noundef !21
  store ptr %i.cf, ptr %i.a, align 8, !noalias !29419
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ch, ptr %i.ci, align 8, !noalias !29419
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.ab unwind label %bb.aa, !noalias !29417

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !29417

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29417
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !29417, !noalias !29418, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !26, !alias.scope !29417, !noalias !29418, !noundef !21 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !29420)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !29420, !noalias !29421, !nonnull !21, !noundef !21 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !29420, !noalias !29421, !noundef !21 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.cu, 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx64
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

bb.ae:                                            ; preds = %.lr.ph63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.cy = add nuw nsw i64 %i.db, 1
  %i.cz = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cz, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ad, %bb.ae
  %i.da = phi ptr [ %i.cx, %bb.ae ], [ %i.cs, %bb.ad ] ; 2 uses
  %i.db = phi i64 [ %i.cy, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !29422, !noalias !29423, !noundef !21
  %.not.i.i55 = icmp eq i64 %i.dd, %i.m
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cq, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cm, i8 %i.co) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !29424)
  call void @llvm.experimental.noalias.scope.decl(metadata !29425)
  call void @llvm.experimental.noalias.scope.decl(metadata !29426)
  call void @llvm.experimental.noalias.scope.decl(metadata !29427)
  %i.df = load ptr, ptr %i.i, align 8, !alias.scope !29428, !nonnull !21, !noundef !21
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !29428
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  br i1 %i.cp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dm = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ak
  br i1 %i.dm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.al

bb.al:                                            ; preds = %.noexc59
  store atomic i8 1, ptr %i.di monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.al, %.noexc59, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dn = atomicrmw xchg ptr %i.cm, i32 0 release, align 4
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 3, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, 3
  br i1 %.not26, label %.invoke, label %bb.an, !prof !36

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx, i64 120, i1 false)
  store i128 0, ptr %0, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB2e_5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit63

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %i.dp = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
end_hunk_15
begin_hunk_16_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.dd, %bb.ag ], [ %i.ci, %bb.aa ], [ %i.z, %bb.e ], [ %i.dz, %bb.as ], [ %i.z, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ad = load i64, ptr %i.j, align 16, !range !49, !alias.scope !29513, !noundef !21
  %i.ae = icmp eq i64 %i.ad, -9223372036854775741
  br i1 %i.ae, label %.noexc, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.j)
          to label %.noexc unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc40
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.u, %.thread15, %bb.v, %bb.bg, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.04.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.bg ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.thread15 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !29510, !noalias !29511, !nonnull !21, !noundef !21
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ai = add i64 %i.w, 1
  store i64 %i.ai, ptr %i.v, align 8, !alias.scope !29510, !noalias !29511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !26, !noundef !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.m
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc36
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc36, %bb.l, %bb.k
  %i.as = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !99, !noundef !21 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ay, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc40
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc39:                                         ; preds = %bb.q
  %i.be = extractvalue { i64, i32 } %i.bd, 0      ; 3 uses
  %i.bf = extractvalue { i64, i32 } %i.bd, 1      ; 2 uses
  %i.bg = icmp eq i64 %i.be, %i.aw
  %i.bh = icmp slt i64 %i.be, %i.aw
  %i.bi = icmp samesign ult i32 %i.bf, %i.ay
  %spec.select.i = select i1 %i.bg, i1 %i.bi, i1 %i.bh
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc39
  %i.bj = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  %i.bl = extractvalue { i64, i1 } %i.bj, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bl, i64 3)
  br i1 %i.bk, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc39
  %i.bm = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.aw, i32 noundef range(i32 0, 1000000001) %i.ay, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc40:                                         ; preds = %bb.s
  %i.bn = extractvalue { i64, i32 } %i.bm, 0
  %i.bo = extractvalue { i64, i32 } %i.bm, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bn, i32 noundef %i.bo)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bb, %.split.us.i ], [ %i.bb, %.split.us.i ], [ %i.bc, %.split.i ], [ %i.bc, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bq)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bs)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bt = load atomic i8, ptr %i.n acquire, align 16
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.by, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 6 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bw = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bw, 7                    ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.bx, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bw, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29459

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.by = add i32 %.sroa.0.02.i, 1
  %i.bz = load atomic i8, ptr %i.n acquire, align 16
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !29514)
  %i.cb = load i64, ptr %i.g, align 8, !range !20, !alias.scope !29514, !noalias !29515, !noundef !21
  %i.cc = trunc nuw i64 %i.cb to i1
  br i1 %i.cc, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29516
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !29514, !noalias !29515, !nonnull !21, !align !22, !noundef !21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cg = load i8, ptr %i.cf, align 8, !range !26, !alias.scope !29514, !noalias !29515, !noundef !21
  store ptr %i.ce, ptr %i.a, align 8, !noalias !29516
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cg, ptr %i.ch, align 8, !noalias !29516
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #39
          to label %bb.ab unwind label %bb.aa, !noalias !29514

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !29514

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29514
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !29514, !noalias !29515, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cn = load i8, ptr %i.cm, align 8, !range !26, !alias.scope !29514, !noalias !29515, !noundef !21 ; 2 uses
  %i.co = trunc nuw i8 %i.cn to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !29517)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !29517, !noalias !29518, !nonnull !21, !noundef !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !29517, !noalias !29518, !noundef !21 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx65
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

bb.ae:                                            ; preds = %.lr.ph64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 2 uses
  %i.cx = add nuw nsw i64 %i.da, 1
  %i.cy = icmp eq ptr %i.cw, %i.cu
  br i1 %i.cy, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.ad, %bb.ae
  %i.cz = phi ptr [ %i.cw, %bb.ae ], [ %i.cr, %bb.ad ] ; 2 uses
  %i.da = phi i64 [ %i.cx, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !29519, !noalias !29520, !noundef !21
  %.not.i.i43 = icmp eq i64 %i.dc, %i.l
  br i1 %.not.i.i43, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cp, i64 noundef %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cl, i8 %i.cn) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !29521)
  call void @llvm.experimental.noalias.scope.decl(metadata !29522)
  call void @llvm.experimental.noalias.scope.decl(metadata !29523)
  call void @llvm.experimental.noalias.scope.decl(metadata !29524)
  %i.de = load ptr, ptr %i.i, align 8, !alias.scope !29525, !nonnull !21, !noundef !21
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !29525
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  br i1 %i.co, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.di = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dj = and i64 %i.di, 9223372036854775807
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dl = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ak
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.al

bb.al:                                            ; preds = %.noexc47
  store atomic i8 1, ptr %i.dh monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46: ; preds = %bb.al, %.noexc47, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dm = atomicrmw xchg ptr %i.cl, i32 0 release, align 4
  %i.dn = icmp eq i32 %i.dm, 2
  br i1 %i.dn, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.do, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bf ], [ -9223372036854775741, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit60 ], [ -9223372036854775741, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit49 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 16
  %i.dp = load i64, ptr %i.j, align 16, !range !49, !alias.scope !29526, !noundef !21
  %i.dq = icmp eq i64 %i.dp, -9223372036854775741
  br i1 %i.dq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit51, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit51

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bi
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.aq:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !29527)
end_hunk_16
begin_hunk_17_@_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4send0Cs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.sroa.019.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.019.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.eu, %bb.ay ], [ %i.de, %bb.ag ], [ %i.cj, %bb.aa ], [ %i.aa, %bb.e ], [ %i.dz, %bb.as ], [ %i.aa, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ae = load i64, ptr %i.j, align 16, !range !49, !alias.scope !29610, !noundef !21
  %i.af = icmp eq i64 %i.ae, -9223372036854775741
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB13_NtNtB4_6marker4SendEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit19 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.s, %.noexc52
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.u, %.thread10, %bb.v, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.019.3.ph.ph.ph = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.v ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.invoke ], [ false, %.thread10 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !29607, !noalias !29608, !nonnull !21, !noundef !21
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.aj = add i64 %i.x, 1
  store i64 %i.aj, ptr %i.w, align 8, !alias.scope !29607, !noalias !29608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  invoke fastcc void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !26, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.m
  br i1 %i.as, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc48
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc48, %bb.l, %bb.k
  %i.at = atomicrmw xchg ptr %i.q, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !21, !align !22, !noundef !21 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !99, !noundef !21 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, 1000000000
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %bb.p
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, %.noexc52
  %i.bd = load atomic i64, ptr %i.bb acquire, align 8 ; 3 uses
  switch i64 %i.bd, label %.thread [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.be = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc51:                                         ; preds = %bb.q
  %i.bf = extractvalue { i64, i32 } %i.be, 0      ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bf, %i.ax
  %i.bi = icmp slt i64 %i.bf, %i.ax
  %i.bj = icmp samesign ult i32 %i.bg, %i.az
  %spec.select.i = select i1 %i.bh, i1 %i.bj, i1 %i.bi
  br i1 %spec.select.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc51
  %i.bk = cmpxchg ptr %i.bb, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 3)
  br i1 %i.bl, label %.thread10, label %.split7.us.i

bb.s:                                             ; preds = %.noexc51
  %i.bn = invoke { i64, i32 } @_RNvXs3_NtCs2pqxYH9ZEk8_3std4timeNtB5_7InstantNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 0, 1000000001) %i.az, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc52:                                         ; preds = %bb.s
  %i.bo = extractvalue { i64, i32 } %i.bn, 0
  %i.bp = extractvalue { i64, i32 } %i.bn, 1
  invoke void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, i64 noundef %i.bo, i32 noundef %i.bp)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bc, %.split.us.i ], [ %i.bc, %.split.us.i ], [ %i.bd, %.split.i ], [ %i.bd, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread10
    i64 2, label %bb.v
    i64 3, label %.thread
  ], !prof !100

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #39
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread10:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.br = load ptr, ptr %i.bq, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.br)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bt = load ptr, ptr %i.bs, align 16, !nonnull !21, !align !22, !noundef !21
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bt)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bu = load atomic i8, ptr %i.o acquire, align 16
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.02.i = phi i32 [ %i.bz, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bw = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %i.bx = mul nuw i32 %.sroa.0.02.i, %.sroa.0.02.i ; 2 uses
  %xtraiter = and i32 %i.bx, 7                    ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.02.i, 3
  br i1 %i.by, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.bx, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod77 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !29556

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bz = add i32 %.sroa.0.02.i, 1
  %i.ca = load atomic i8, ptr %i.o acquire, align 16
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit

bb.y:                                             ; preds = %.thread10
  call void @llvm.experimental.noalias.scope.decl(metadata !29611)
  %i.cc = load i64, ptr %i.g, align 8, !range !20, !alias.scope !29611, !noalias !29612, !noundef !21
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %bb.ad, !prof !36

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29613
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !29611, !noalias !29612, !nonnull !21, !align !22, !noundef !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i8, ptr %i.cg, align 8, !range !26, !alias.scope !29611, !noalias !29612, !noundef !21
  store ptr %i.cf, ptr %i.a, align 8, !noalias !29613
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ch, ptr %i.ci, align 8, !noalias !29613
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @322, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @321, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #39
          to label %bb.ab unwind label %bb.aa, !noalias !29611

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtBL_4mpmc4zero5InnerEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #40
          to label %.body unwind label %bb.ac, !noalias !29611

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !29611
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !29611, !noalias !29612, !nonnull !21, !align !22, !noundef !21 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !26, !alias.scope !29611, !noalias !29612, !noundef !21 ; 2 uses
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !29614)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !29614, !noalias !29615, !nonnull !21, !noundef !21 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !29614, !noalias !29615, !noundef !21 ; 2 uses
  %.idx64 = mul nuw nsw i64 %i.cu, 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx64
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

bb.ae:                                            ; preds = %.lr.ph63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 2 uses
  %i.cy = add nuw nsw i64 %i.db, 1
  %i.cz = icmp eq ptr %i.cx, %i.cv
  br i1 %i.cz, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.ad, %bb.ae
  %i.da = phi ptr [ %i.cx, %bb.ae ], [ %i.cs, %bb.ad ] ; 2 uses
  %i.db = phi i64 [ %i.cy, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !29616, !noalias !29617, !noundef !21
  %.not.i.i55 = icmp eq i64 %i.dd, %i.m
  br i1 %.not.i.i55, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph63
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cq, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %i.cm, i8 %i.co) #40
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !102

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !29618)
  call void @llvm.experimental.noalias.scope.decl(metadata !29619)
  call void @llvm.experimental.noalias.scope.decl(metadata !29620)
  call void @llvm.experimental.noalias.scope.decl(metadata !29621)
  %i.df = load ptr, ptr %i.i, align 8, !alias.scope !29622, !nonnull !21, !noundef !21
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !29622
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ag

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #39
          to label %bb.b unwind label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah, %bb.ai
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  br i1 %i.cp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dj = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dk = and i64 %i.dj, 9223372036854775807
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ak, !prof !27

bb.ak:                                            ; preds = %bb.aj
  %i.dm = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.ak
  br i1 %i.dm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.al

bb.al:                                            ; preds = %.noexc59
  store atomic i8 1, ptr %i.di monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.al, %.noexc59, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit
  %i.dn = atomicrmw xchg ptr %i.cm, i32 0 release, align 4
  %i.do = icmp eq i32 %i.dn, 2
  br i1 %i.do, label %bb.am, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61, !prof !36

bb.am:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.cm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 16 ; 2 uses
  store i64 -9223372036854775741, ptr %i.j, align 16
  %.not26 = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775741
  br i1 %.not26, label %.invoke, label %bb.an, !prof !36

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, i64 104, i1 false)
  store i128 0, ptr %0, align 16
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.46.0..sroa_idx, align 16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zero6PacketTINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1Q_NtNtB4_6marker4SendEL_EEEEECs14kWLkQVSKO_14deltalake_core.exit63

.invoke:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61
  %i.dp = phi ptr [ @195, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit61 ], [ @198, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit72 ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #39
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
end_hunk_17
begin_hunk_18_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_IB1Q_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3t_5error5ErrorENtNtB11_6marker4SendEL_EEB4o_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !33893

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !33893
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !33893, !noalias !33894, !nonnull !21, !align !22, !noundef !21 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !33893, !noalias !33894, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !33896)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !33896, !noalias !33897, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !33896, !noalias !33897, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33898)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !33898, !noalias !33899, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !33900, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !33898, !noalias !33899, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !33900
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !33898, !noalias !33899, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !33900
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !33900, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !33900
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.az, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33901)
  call void @llvm.experimental.noalias.scope.decl(metadata !33902)
  call void @llvm.experimental.noalias.scope.decl(metadata !33903)
  call void @llvm.experimental.noalias.scope.decl(metadata !33904)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !33905, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !33905
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 97
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !33906, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 96 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !33906
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !33906
  call void @llvm.x86.sse2.pause(), !noalias !33906
  call void @llvm.x86.sse2.pause(), !noalias !33906
  call void @llvm.x86.sse2.pause(), !noalias !33906
  call void @llvm.x86.sse2.pause(), !noalias !33906
  call void @llvm.x86.sse2.pause(), !noalias !33906
  call void @llvm.x86.sse2.pause(), !noalias !33906
  call void @llvm.x86.sse2.pause(), !noalias !33906
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !33906
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !33845

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !33906
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !33906 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !33906
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775742
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !33906 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !33906
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775742
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_IB1P_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3s_5error5ErrorENtNtB10_6marker4SendEL_EEB4n_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx.i, i64 88, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 112, i64 noundef 16) #33, !noalias !33906
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i, i64 88, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 96
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !33906
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, i64 88, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !33907)
  call void @llvm.experimental.noalias.scope.decl(metadata !33908)
  call void @llvm.experimental.noalias.scope.decl(metadata !33909)
  call void @llvm.experimental.noalias.scope.decl(metadata !33910)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !33911, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !33911
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bf
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !33912)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !33913
  store ptr %i.m, ptr %i.h, align 8, !noalias !33912
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !33912
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !33912
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !33912
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !33912
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !33914, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !33913 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7B_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !33915
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !33916, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !33916
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !33916
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.as, !noalias !33913 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !33916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33916
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !33916
  store ptr %i.m, ptr %i.c, align 8, !noalias !33912
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !33912
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !33912
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !33912
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !33916
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_IB1S_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3v_5error5ErrorENtNtB13_6marker4SendEL_EEB4q_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !33915

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !33917
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !33916

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33916
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !33918
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.as, !noalias !33913

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33916
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_IB45_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB5J_5error5ErrorENtNtBZ_6marker4SendEL_EEB6E_EE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7B_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.ar, %bb.ap, %bb.ah
end_hunk_18
begin_hunk_19_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3l_5error5ErrorENtNtB11_6marker4SendEL_EEB3W_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !34116

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !34116
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34116, !noalias !34117, !nonnull !21, !align !22, !noundef !21 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !34116, !noalias !34117, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34119)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !34119, !noalias !34120, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !34119, !noalias !34120, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34121)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !34121, !noalias !34122, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !34123, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !34121, !noalias !34122, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !34123
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !34121, !noalias !34122, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !34123
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !34123, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !34123
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.az, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34124)
  call void @llvm.experimental.noalias.scope.decl(metadata !34125)
  call void @llvm.experimental.noalias.scope.decl(metadata !34126)
  call void @llvm.experimental.noalias.scope.decl(metadata !34127)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !34128, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !34128
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 97
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !34129, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 96 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34129
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34129
  call void @llvm.x86.sse2.pause(), !noalias !34129
  call void @llvm.x86.sse2.pause(), !noalias !34129
  call void @llvm.x86.sse2.pause(), !noalias !34129
  call void @llvm.x86.sse2.pause(), !noalias !34129
  call void @llvm.x86.sse2.pause(), !noalias !34129
  call void @llvm.x86.sse2.pause(), !noalias !34129
  call void @llvm.x86.sse2.pause(), !noalias !34129
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34129
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34068

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34129
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34129 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !34129
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775742
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34129 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !34129
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775742
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3k_5error5ErrorENtNtB10_6marker4SendEL_EEB3V_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx.i, i64 88, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 112, i64 noundef 16) #33, !noalias !34129
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i, i64 88, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 96
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !34129
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, i64 88, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !34130)
  call void @llvm.experimental.noalias.scope.decl(metadata !34131)
  call void @llvm.experimental.noalias.scope.decl(metadata !34132)
  call void @llvm.experimental.noalias.scope.decl(metadata !34133)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !34134, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !34134
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bf
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !34135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34136
  store ptr %i.m, ptr %i.h, align 8, !noalias !34135
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !34135
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !34135
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !34135
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34135
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !34137, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !34136 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B79_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34138
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34139, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34139
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34139
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.as, !noalias !34136 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !34139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34139
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34139
  store ptr %i.m, ptr %i.c, align 8, !noalias !34135
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !34135
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !34135
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !34135
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !34139
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3n_5error5ErrorENtNtB13_6marker4SendEL_EEB3Y_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !34138

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34140
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !34139

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34139
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34141
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.as, !noalias !34136

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34139
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB5B_5error5ErrorENtNtBZ_6marker4SendEL_EEB6c_EE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B79_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.ar, %bb.ap, %bb.ah
end_hunk_19
begin_hunk_20_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBX_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB11_6marker4SendEL_EEB3T_EE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !34339

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !34339
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34339, !noalias !34340, !nonnull !21, !align !22, !noundef !21 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !34339, !noalias !34340, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34342)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !34342, !noalias !34343, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !34342, !noalias !34343, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34344)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !34344, !noalias !34345, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !34346, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !34344, !noalias !34345, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !34346
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !34344, !noalias !34345, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !34346
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !34346, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !34346
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.az, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34347)
  call void @llvm.experimental.noalias.scope.decl(metadata !34348)
  call void @llvm.experimental.noalias.scope.decl(metadata !34349)
  call void @llvm.experimental.noalias.scope.decl(metadata !34350)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !34351, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !34351
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 97
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !34352, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 96 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34352
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34352
  call void @llvm.x86.sse2.pause(), !noalias !34352
  call void @llvm.x86.sse2.pause(), !noalias !34352
  call void @llvm.x86.sse2.pause(), !noalias !34352
  call void @llvm.x86.sse2.pause(), !noalias !34352
  call void @llvm.x86.sse2.pause(), !noalias !34352
  call void @llvm.x86.sse2.pause(), !noalias !34352
  call void @llvm.x86.sse2.pause(), !noalias !34352
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34352
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34291

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34352
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34352 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !34352
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775742
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34352 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !34352
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775742
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB10_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBW_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB10_6marker4SendEL_EEB3S_EE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx.i, i64 88, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 112, i64 noundef 16) #33, !noalias !34352
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i, i64 88, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 96
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !34352
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, i64 88, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !34353)
  call void @llvm.experimental.noalias.scope.decl(metadata !34354)
  call void @llvm.experimental.noalias.scope.decl(metadata !34355)
  call void @llvm.experimental.noalias.scope.decl(metadata !34356)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !34357, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !34357
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bf
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !34358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34359
  store ptr %i.m, ptr %i.h, align 8, !noalias !34358
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !34358
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !34358
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !34358
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34358
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !34360, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !34359 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7u_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34361
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34362, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34362
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34362
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.as, !noalias !34359 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !34362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34362
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34362
  store ptr %i.m, ptr %i.c, align 8, !noalias !34358
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !34358
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !34358
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !34358
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !34362
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB13_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBZ_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB13_6marker4SendEL_EEB3V_EE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !34361

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34363
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !34362

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34362
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34364
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.as, !noalias !34359

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34362
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB3t_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtBZ_6marker4SendEL_EEB69_EE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7u_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.ar, %bb.ap, %bb.ah
end_hunk_20
begin_hunk_21_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !34562

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !34562
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34562, !noalias !34563, !nonnull !21, !align !22, !noundef !21 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !34562, !noalias !34563, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34565)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !34565, !noalias !34566, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !34565, !noalias !34566, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34567)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !34567, !noalias !34568, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !34569, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !34567, !noalias !34568, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !34569
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !34567, !noalias !34568, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !34569
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !34569, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !34569
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.az, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34570)
  call void @llvm.experimental.noalias.scope.decl(metadata !34571)
  call void @llvm.experimental.noalias.scope.decl(metadata !34572)
  call void @llvm.experimental.noalias.scope.decl(metadata !34573)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !34574, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !34574
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 97
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !34575, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 96 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34575
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34575
  call void @llvm.x86.sse2.pause(), !noalias !34575
  call void @llvm.x86.sse2.pause(), !noalias !34575
  call void @llvm.x86.sse2.pause(), !noalias !34575
  call void @llvm.x86.sse2.pause(), !noalias !34575
  call void @llvm.x86.sse2.pause(), !noalias !34575
  call void @llvm.x86.sse2.pause(), !noalias !34575
  call void @llvm.x86.sse2.pause(), !noalias !34575
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34575
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34514

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34575
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34575 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !34575
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775742
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34575 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !34575
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775742
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx.i, i64 88, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 112, i64 noundef 16) #33, !noalias !34575
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i, i64 88, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 96
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !34575
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, i64 88, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !34576)
  call void @llvm.experimental.noalias.scope.decl(metadata !34577)
  call void @llvm.experimental.noalias.scope.decl(metadata !34578)
  call void @llvm.experimental.noalias.scope.decl(metadata !34579)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !34580, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !34580
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bf
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !34581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34582
  store ptr %i.m, ptr %i.h, align 8, !noalias !34581
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !34581
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !34581
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !34581
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34581
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !34583, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !34582 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B51_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34584
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34585, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34585
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34585
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.as, !noalias !34582 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !34585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34585
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34585
  store ptr %i.m, ptr %i.c, align 8, !noalias !34581
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !34581
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !34581
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !34581
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !34585
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !34584

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34586
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !34585

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34585
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34587
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.as, !noalias !34582

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34585
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel13ParquetFooterNtNtB3Q_5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B51_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.ar, %bb.ap, %bb.ah
end_hunk_21
begin_hunk_22_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1A_5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !34794

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !34794
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !34794, !noalias !34795, !nonnull !21, !align !22, !noundef !21 ; 19 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !34794, !noalias !34795, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !34797)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !34797, !noalias !34798, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !34797, !noalias !34798, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34799)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !34799, !noalias !34800, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !34801, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !34799, !noalias !34800, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !34801
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !34799, !noalias !34800, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !34801
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !34801, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !34801
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.az, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34802)
  call void @llvm.experimental.noalias.scope.decl(metadata !34803)
  call void @llvm.experimental.noalias.scope.decl(metadata !34804)
  call void @llvm.experimental.noalias.scope.decl(metadata !34805)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !34806, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !34806
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 113
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !34807, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 112 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34807
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34807
  call void @llvm.x86.sse2.pause(), !noalias !34807
  call void @llvm.x86.sse2.pause(), !noalias !34807
  call void @llvm.x86.sse2.pause(), !noalias !34807
  call void @llvm.x86.sse2.pause(), !noalias !34807
  call void @llvm.x86.sse2.pause(), !noalias !34807
  call void @llvm.x86.sse2.pause(), !noalias !34807
  call void @llvm.x86.sse2.pause(), !noalias !34807
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34807
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34746

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !34807
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34807 ; 2 uses
  store i64 2, ptr %.val8, align 16, !noalias !34807
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, 2
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !34807 ; 2 uses
  store i64 2, ptr %.val8, align 16, !noalias !34807
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1z_5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.56.0..sroa_idx.i, i64 104, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 128, i64 noundef 16) #33, !noalias !34807
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx.i, i64 104, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 112
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !34807
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 2, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, i64 104, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !34808)
  call void @llvm.experimental.noalias.scope.decl(metadata !34809)
  call void @llvm.experimental.noalias.scope.decl(metadata !34810)
  call void @llvm.experimental.noalias.scope.decl(metadata !34811)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !34812, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !34812
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bf
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !34813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34814
  store ptr %i.m, ptr %i.h, align 8, !noalias !34813
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !34813
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !34813
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !34813
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34813
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !34815, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !34814 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4V_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34816
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34817, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !34817
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34817
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.as, !noalias !34814 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !34817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34817
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !34817
  store ptr %i.m, ptr %i.c, align 8, !noalias !34813
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !34813
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !34813
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !34813
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !34817
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1C_5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !34816

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34818
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !34817

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34817
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !34819
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.as, !noalias !34814

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34817
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3Q_5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4V_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.ar, %bb.ap, %bb.ah
end_hunk_22
begin_hunk_23_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !35012

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !35012
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bg ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !35012, !noalias !35013, !nonnull !21, !align !22, !noundef !21 ; 20 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !35012, !noalias !35013, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35015)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !35015, !noalias !35016, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !35015, !noalias !35016, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35017)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !35017, !noalias !35018, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !35019, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !35017, !noalias !35018, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !35019
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !35017, !noalias !35018, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !35019
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !35019, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !35019
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bg   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bg

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.ba, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35020)
  call void @llvm.experimental.noalias.scope.decl(metadata !35021)
  call void @llvm.experimental.noalias.scope.decl(metadata !35022)
  call void @llvm.experimental.noalias.scope.decl(metadata !35023)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !35024, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !35024
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 97
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !35025, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 96 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35025
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !35025
  call void @llvm.x86.sse2.pause(), !noalias !35025
  call void @llvm.x86.sse2.pause(), !noalias !35025
  call void @llvm.x86.sse2.pause(), !noalias !35025
  call void @llvm.x86.sse2.pause(), !noalias !35025
  call void @llvm.x86.sse2.pause(), !noalias !35025
  call void @llvm.x86.sse2.pause(), !noalias !35025
  call void @llvm.x86.sse2.pause(), !noalias !35025
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !35025
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34962

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35025
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35025 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !35025
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775742
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35025 ; 2 uses
  store i64 -9223372036854775742, ptr %.val8, align 16, !noalias !35025
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775742
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.56.0..sroa_idx.i, i64 88, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 112, i64 noundef 16) #33, !noalias !35025
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i, i64 88, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 96
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !35025
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7, i64 88, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !35026)
  call void @llvm.experimental.noalias.scope.decl(metadata !35027)
  call void @llvm.experimental.noalias.scope.decl(metadata !35028)
  call void @llvm.experimental.noalias.scope.decl(metadata !35029)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !35030, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !35030
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bg
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !35031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35032
  store ptr %i.m, ptr %i.h, align 8, !noalias !35031
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !35031
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !35031
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !35031
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35031
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !35033, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.at, !noalias !35032 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4H_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35034
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35035, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35035
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35035
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.at, !noalias !35032 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !35035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35035
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35035
  store ptr %i.m, ptr %i.c, align 8, !noalias !35031
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !35031
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !35031
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !35031
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !35035
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !35034

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35036
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !35035

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35035
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35037
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.at, !noalias !35032

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !35035
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultuNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B4H_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.as, %bb.aq, %bb.ah
end_hunk_23
begin_hunk_24_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2A_5error5ErrorEEINtNtB12_3pin3PinIB1X_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !35248

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !35248
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bg ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !35248, !noalias !35249, !nonnull !21, !align !22, !noundef !21 ; 20 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !35248, !noalias !35249, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35251)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !35251, !noalias !35252, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !35251, !noalias !35252, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35253)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !35253, !noalias !35254, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !35255, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !35253, !noalias !35254, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !35255
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !35253, !noalias !35254, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !35255
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !35255, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !35255
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bg   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bg

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.ba, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35256)
  call void @llvm.experimental.noalias.scope.decl(metadata !35257)
  call void @llvm.experimental.noalias.scope.decl(metadata !35258)
  call void @llvm.experimental.noalias.scope.decl(metadata !35259)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !35260, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !35260
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 113
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !35261, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 112 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35261
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !35261
  call void @llvm.x86.sse2.pause(), !noalias !35261
  call void @llvm.x86.sse2.pause(), !noalias !35261
  call void @llvm.x86.sse2.pause(), !noalias !35261
  call void @llvm.x86.sse2.pause(), !noalias !35261
  call void @llvm.x86.sse2.pause(), !noalias !35261
  call void @llvm.x86.sse2.pause(), !noalias !35261
  call void @llvm.x86.sse2.pause(), !noalias !35261
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !35261
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !35198

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35261
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35261 ; 2 uses
  store i64 -9223372036854775741, ptr %.val8, align 16, !noalias !35261
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775741
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35261 ; 2 uses
  store i64 -9223372036854775741, ptr %.val8, align 16, !noalias !35261
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775741
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2z_5error5ErrorEEINtNtB11_3pin3PinIB1W_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.56.0..sroa_idx.i, i64 104, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 128, i64 noundef 16) #33, !noalias !35261
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx.i, i64 104, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 112
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !35261
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, i64 104, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !35262)
  call void @llvm.experimental.noalias.scope.decl(metadata !35263)
  call void @llvm.experimental.noalias.scope.decl(metadata !35264)
  call void @llvm.experimental.noalias.scope.decl(metadata !35265)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !35266, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !35266
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bg
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !35267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35268
  store ptr %i.m, ptr %i.h, align 8, !noalias !35267
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !35267
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !35267
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !35267
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35267
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !35269, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.at, !noalias !35268 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0IB3z_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7D_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35270
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35271, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35271
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35271
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.at, !noalias !35268 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !35271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35271
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35271
  store ptr %i.m, ptr %i.c, align 8, !noalias !35267
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !35267
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !35267
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !35267
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !35271
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2C_5error5ErrorEEINtNtB14_3pin3PinIB1Z_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !35270

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35272
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !35271

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35271
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35273
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.at, !noalias !35268

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !35271
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB4y_5error5ErrorEEINtNtBZ_3pin3PinIB3V_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0IB3z_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7D_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.as, %bb.aq, %bb.ah
end_hunk_24
begin_hunk_25_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1Y_5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !35478

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !35478
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bg ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !35478, !noalias !35479, !nonnull !21, !align !22, !noundef !21 ; 20 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !35478, !noalias !35479, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35481)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !35481, !noalias !35482, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !35481, !noalias !35482, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35483)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !35483, !noalias !35484, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !35485, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !35483, !noalias !35484, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !35485
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !35483, !noalias !35484, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !35485
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !35485, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !35485
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bg   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bg

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.ba, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35486)
  call void @llvm.experimental.noalias.scope.decl(metadata !35487)
  call void @llvm.experimental.noalias.scope.decl(metadata !35488)
  call void @llvm.experimental.noalias.scope.decl(metadata !35489)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !35490, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !35490
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 129
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !35491, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 128 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35491
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !35491
  call void @llvm.x86.sse2.pause(), !noalias !35491
  call void @llvm.x86.sse2.pause(), !noalias !35491
  call void @llvm.x86.sse2.pause(), !noalias !35491
  call void @llvm.x86.sse2.pause(), !noalias !35491
  call void @llvm.x86.sse2.pause(), !noalias !35491
  call void @llvm.x86.sse2.pause(), !noalias !35491
  call void @llvm.x86.sse2.pause(), !noalias !35491
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !35491
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !35428

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35491
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35491 ; 2 uses
  store i64 3, ptr %.val8, align 16, !noalias !35491
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, 3
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35491 ; 2 uses
  store i64 3, ptr %.val8, align 16, !noalias !35491
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, 3
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB1X_5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.56.0..sroa_idx.i, i64 120, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 144, i64 noundef 16) #33, !noalias !35491
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5.0..sroa_idx.i, i64 120, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 128
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !35491
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 3, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7, i64 120, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !35492)
  call void @llvm.experimental.noalias.scope.decl(metadata !35493)
  call void @llvm.experimental.noalias.scope.decl(metadata !35494)
  call void @llvm.experimental.noalias.scope.decl(metadata !35495)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !35496, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !35496
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bg
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !35497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35498
  store ptr %i.m, ptr %i.h, align 8, !noalias !35497
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !35497
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !35497
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !35497
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35497
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !35499, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.at, !noalias !35498 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0IB3z_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7b_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35500
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35501, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35501
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35501
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.at, !noalias !35498 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !35501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35501
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35501
  store ptr %i.m, ptr %i.c, align 8, !noalias !35497
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !35497
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !35497
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !35497
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !35501
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB20_5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !35500

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35502
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !35501

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35501
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35503
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.at, !noalias !35498

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !35501
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtNtB3W_5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0IB3z_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7b_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.as, %bb.aq, %bb.ah
end_hunk_25
begin_hunk_26_@_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB12_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB12_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1z_NtNtB12_6marker4SendEL_EEEE4recvCs14kWLkQVSKO_14deltalake_core:bb.a
          to label %common.resume unwind label %bb.e, !noalias !35708

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !35708
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bg ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !35708, !noalias !35709, !nonnull !21, !align !22, !noundef !21 ; 20 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !26, !alias.scope !35708, !noalias !35709, !noundef !21 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !35711)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !35711, !noalias !35712, !noundef !21 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @334)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !35711, !noalias !35712, !nonnull !21, !noundef !21 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bh, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35713)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !35713, !noalias !35714, !nonnull !21, !noundef !21 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !35715, !noundef !21
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !35713, !noalias !35714, !noundef !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !35715
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.g, label %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !35713, !noalias !35714, !noundef !21 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.az, ptr %i.bb release, align 8, !noalias !35715
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.ax, align 8, !noalias !35715, !nonnull !21, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = atomicrmw xchg ptr %i.bd, i32 1 release, align 4, !noalias !35715
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2pqxYH9ZEk8_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bd)
          to label %.noexc9 unwind label %bb.bg   ; 0 uses

_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bh = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bi = icmp eq ptr %i.ao, %i.am
  br i1 %i.bi, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bj = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryE6removeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336)
          to label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bg

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !21
  store ptr %i.bl, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #42
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bm monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.br = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit, !prof !36

bb.o:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bu = load i8, ptr %i.bt, align 8, !range !26, !noundef !21
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.ba, label %bb.ad

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %.invoke, %bb.m, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35716)
  call void @llvm.experimental.noalias.scope.decl(metadata !35717)
  call void @llvm.experimental.noalias.scope.decl(metadata !35718)
  call void @llvm.experimental.noalias.scope.decl(metadata !35719)
  %i.bw = load ptr, ptr %i.j, align 8, !alias.scope !35720, !nonnull !21, !noundef !21
  %i.bx = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !35720
  %i.by = icmp eq i64 %i.bx, 1
  br i1 %i.by, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %common.resume unwind label %bb.ac

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !21 ; 11 uses
  %i.bz = icmp eq ptr %.val8, null
  br i1 %i.bz, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.val8, i64 113
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noalias !35721, !noundef !21
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8, i64 112 ; 2 uses
  %i.ce = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35721
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.cj, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 6 uses
  %i.cg = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %i.ch = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter = and i32 %i.ch, 7                    ; 3 uses
  %i.ci = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ci, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %i.ch, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !35721
  call void @llvm.x86.sse2.pause(), !noalias !35721
  call void @llvm.x86.sse2.pause(), !noalias !35721
  call void @llvm.x86.sse2.pause(), !noalias !35721
  call void @llvm.x86.sse2.pause(), !noalias !35721
  call void @llvm.x86.sse2.pause(), !noalias !35721
  call void @llvm.x86.sse2.pause(), !noalias !35721
  call void @llvm.x86.sse2.pause(), !noalias !35721
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !35721
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !35658

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.cj = add i32 %.sroa.0.02.i.i, 1
  %i.ck = load atomic i8, ptr %i.cd acquire, align 1, !noalias !35721
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35721 ; 2 uses
  store i64 -9223372036854775741, ptr %.val8, align 16, !noalias !35721
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -9223372036854775741
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 16, !noalias !35721 ; 2 uses
  store i64 -9223372036854775741, ptr %.val8, align 16, !noalias !35721
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775741
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !36

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cm = phi ptr [ @597, %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i ], [ @598, %bb.v ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB5_6PacketTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB11_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB11_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1y_NtNtB11_6marker4SendEL_EEEE10wait_readyCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.56.0..sroa_idx.i, i64 104, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 128, i64 noundef 16) #33, !noalias !35721
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx.i, i64 104, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %.val8, i64 112
  store atomic i8 1, ptr %i.cn release, align 16, !noalias !35721
  br label %bb.z

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.co, align 8
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 16
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7, i64 104, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !35722)
  call void @llvm.experimental.noalias.scope.decl(metadata !35723)
  call void @llvm.experimental.noalias.scope.decl(metadata !35724)
  call void @llvm.experimental.noalias.scope.decl(metadata !35725)
  %i.cp = load ptr, ptr %i.j, align 8, !alias.scope !35726, !nonnull !21, !noundef !21
  %i.cq = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !35726
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtBN_4mpmc4zero5InnerEECs14kWLkQVSKO_14deltalake_core.exit25

bb.ac:                                            ; preds = %bb.q, %bb.bg
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ad:                                            ; preds = %_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !35727)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35728
  store ptr %i.m, ptr %i.h, align 8, !noalias !35727
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !35727
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !35727
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !35727
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35727
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ct = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i8, ptr %i.cu, align 8, !range !24, !noalias !35729, !noundef !21
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !27

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ad
  %i.cx = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ct, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.at, !noalias !35728 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0IB3z_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7w_ECs14kWLkQVSKO_14deltalake_core.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %.noexc.i, %bb.ad
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cx, %.noexc.i ], [ %i.ct, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35730
  %i.cz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35731, !noundef !21 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !35731
  %.not.i.i.i21 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.al, !prof !36

bb.ae:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35731
  %i.da = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.af unwind label %bb.at, !noalias !35728 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  store ptr %i.da, ptr %i.f, align 8, !noalias !35731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35731
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !35731
  store ptr %i.m, ptr %i.c, align 8, !noalias !35727
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !35727
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !35727
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !35727
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !35731
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc4zeroINtB7_7ChannelTINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB14_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtB14_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB1B_NtNtB14_6marker4SendEL_EEEE4recvs_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.da)
          to label %bb.ai unwind label %bb.ag, !noalias !35730

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35732
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %.body.i unwind label %bb.ak, !noalias !35731

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35731
  %i.de = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !35733
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i unwind label %bb.at, !noalias !35728

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs14kWLkQVSKO_14deltalake_core.exit24.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !35731
  br label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelTIB1t_INtNtBZ_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEINtNtBZ_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemB3y_NtNtBZ_6marker4SendEL_EEEE4recvs_0IB3z_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B7w_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ak:                                            ; preds = %bb.as, %bb.aq, %bb.ah
end_hunk_26
