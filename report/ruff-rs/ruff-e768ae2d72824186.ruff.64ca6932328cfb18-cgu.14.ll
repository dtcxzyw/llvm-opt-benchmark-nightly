inline.NumInlined: 1609
inline.NumDeleted: 840
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0Cs8EvorvD8vmS_4ruff:bb.a
bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !2787
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.er, %bb.ay ], [ %i.da, %bb.ag ], [ %i.cf, %bb.aa ], [ %i.z, %bb.e ], [ %i.dw, %bb.as ], [ %i.z, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.04.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.04.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ad = load i64, ptr %i.j, align 8, !range !2796, !alias.scope !2797, !noundef !4
  %i.ae = icmp eq i64 %i.ad, -2
  br i1 %i.ae, label %.noexc, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
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
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !2782, !noalias !2785, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ai = add i64 %i.w, 1
  store i64 %i.ai, ptr %i.v, align 8, !alias.scope !2782, !noalias !2785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  invoke fastcc void @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !range !20, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !109

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.m
  br i1 %i.ar, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc36
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc36, %bb.l, %bb.k
  %i.as = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit, !prof !98

bb.o:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !align !702, !noundef !4 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !2804, !noundef !4 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ay, -1
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit, %bb.p
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bb, label %.thread12 [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCs2AWtUsOyxgP_3std6thread6threadNtB4_6Thread4park(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit, %.noexc40
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread12 [
    i64 0, label %bb.q
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.q:                                             ; preds = %.split.i
  %i.bd = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
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
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bj, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bj, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %.thread15, label %.split7.us.i

bb.s:                                             ; preds = %.noexc39
  %i.bk = invoke { i64, i32 } @_RNvXs3_NtCs2AWtUsOyxgP_3std4timeNtB5_7InstantNtNtNtCs4NRVxsYgnAr_4core3ops5arith3Sub3sub(i64 noundef %i.aw, i32 noundef range(i32 -1, 1000000000) %i.ay, i64 noundef %i.be, i32 noundef %i.bf)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc40:                                         ; preds = %bb.s
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_RNvMs_NtNtCs2AWtUsOyxgP_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.r
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.r ], [ %i.bb, %.split.us.i ], [ %i.bb, %.split.us.i ], [ %i.bc, %.split.i ], [ %i.bc, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.t [
    i64 0, label %bb.u
    i64 1, label %.thread15
    i64 2, label %bb.v
    i64 3, label %.thread12
  ], !prof !2805

bb.t:                                             ; preds = %.split7.us.i
  unreachable

bb.u:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #32
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread15:                                        ; preds = %bb.r, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !align !702, !noundef !4
  invoke void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !align !702, !noundef !4
  invoke void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread12:                                        ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.br = load atomic i8, ptr %i.n acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit

.lr.ph.i:                                         ; preds = %.thread12, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 4 uses
  %.sroa.0.02.i = phi i32 [ %i.bv, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread12 ] ; 4 uses
  %2 = shl i32 %.sroa.0.02.i, 1
  %3 = or i32 %2, 1
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %4 = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.bu = icmp ult i32 %4, 7
  br i1 %i.bu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !2806

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bv = add i32 %.sroa.0.02.i, 1
  %i.bw = load atomic i8, ptr %i.n acquire, align 8
  %i.bx = icmp eq i8 %i.bw, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %3
  br i1 %i.bx, label %.lr.ph.i, label %_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit

bb.y:                                             ; preds = %.thread15
  call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  %i.by = load i64, ptr %i.g, align 8, !range !5, !alias.scope !2807, !noalias !2810, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.z, label %bb.ad, !prof !98

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2812
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !2807, !noalias !2810, !nonnull !4, !align !702, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !range !20, !alias.scope !2807, !noalias !2810, !noundef !4
  store ptr %i.cb, ptr %i.a, align 8, !noalias !2812
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cd, ptr %i.ce, align 8, !noalias !2812
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #32
          to label %bb.ab unwind label %bb.aa, !noalias !2807

bb.aa:                                            ; preds = %bb.z
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %.body unwind label %bb.ac, !noalias !2807

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2807
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !2807, !noalias !2810, !nonnull !4, !align !702, !noundef !4 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !range !20, !alias.scope !2807, !noalias !2810, !noundef !4 ; 2 uses
  %i.cl = trunc nuw i8 %i.ck to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !2813, !noalias !2816, !nonnull !4, !noundef !4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !2813, !noalias !2816, !noundef !4 ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.cq, 24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx65
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

bb.ae:                                            ; preds = %.lr.ph64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cu = add nuw nsw i64 %i.cx, 1
  %i.cv = icmp eq ptr %i.ct, %i.cr
  br i1 %i.cv, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.ad, %bb.ae
  %i.cw = phi ptr [ %i.ct, %bb.ae ], [ %i.co, %bb.ad ] ; 2 uses
  %i.cx = phi i64 [ %i.cu, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !2818, !noalias !2823, !noundef !4
  %.not.i.i43 = icmp eq i64 %i.cz, %i.l
  br i1 %.not.i.i43, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph64
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryE6removeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cm, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85)
          to label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff(ptr nonnull %i.ci, i8 %i.ck) #33
          to label %.body unwind label %bb.ap

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.af
  %.pr = load ptr, ptr %i.h, align 8
  %.not14 = icmp eq ptr %.pr, null
  br i1 %.not14, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.ah, !prof !2828

bb.ah:                                            ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  call void @llvm.experimental.noalias.scope.decl(metadata !2832)
  call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  call void @llvm.experimental.noalias.scope.decl(metadata !2838)
  %i.db = load ptr, ptr %i.i, align 8, !alias.scope !2841, !nonnull !4, !noundef !4
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !2841
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit unwind label %bb.ag

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ae, %bb.ad, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #32
          to label %bb.b unwind label %bb.ag

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.ah, %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  br i1 %i.cl, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit
  %i.df = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dg = and i64 %i.df, 9223372036854775807
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.ak, !prof !109

bb.ak:                                            ; preds = %bb.aj
  %i.di = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb.ak
  br i1 %i.di, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, label %bb.al

bb.al:                                            ; preds = %.noexc47
  store atomic i8 1, ptr %i.de monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i46

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i46: ; preds = %bb.al, %.noexc47, %bb.aj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit
  %i.dj = atomicrmw xchg ptr %i.ci, i32 0 release, align 4
  %i.dk = icmp eq i32 %i.dj, 2
  br i1 %i.dk, label %bb.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit49, !prof !98

bb.am:                                            ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i46
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ci)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit49: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i46, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.dl, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit60, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit49
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.bf ], [ -2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit60 ], [ -2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit49 ]
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8
  %i.dm = load i64, ptr %i.j, align 8, !range !2796, !alias.scope !2842, !noundef !4
  %i.dn = icmp eq i64 %i.dm, -2
  br i1 %i.dn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEECs8EvorvD8vmS_4ruff.exit51, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEEECs8EvorvD8vmS_4ruff.exit51

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bi
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.aq:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  %i.dp = load i64, ptr %i.d, align 8, !range !5, !alias.scope !2849, !noalias !2852, !noundef !4
  %i.dq = trunc nuw i64 %i.dp to i1
  br i1 %i.dq, label %bb.ar, label %bb.av, !prof !98

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2854
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !2849, !noalias !2852, !nonnull !4, !align !702, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.du = load i8, ptr %i.dt, align 8, !range !20, !alias.scope !2849, !noalias !2852, !noundef !4
  store ptr %i.ds, ptr %i.b, align 8, !noalias !2854
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.du, ptr %i.dv, align 8, !noalias !2854
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #32
          to label %bb.at unwind label %bb.as, !noalias !2849

bb.as:                                            ; preds = %bb.ar
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #33
          to label %.body unwind label %bb.au, !noalias !2849

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2849
  unreachable

bb.av:                                            ; preds = %bb.aq
  %i.dy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !2849, !noalias !2852, !nonnull !4, !align !702, !noundef !4 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eb = load i8, ptr %i.ea, align 8, !range !20, !alias.scope !2849, !noalias !2852, !noundef !4 ; 2 uses
  %i.ec = trunc nuw i8 %i.eb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !2855, !noalias !2858, !nonnull !4, !noundef !4 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvCs8EvorvD8vmS_4ruff:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2921, !noalias !2924, !nonnull !4, !align !702, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !20, !alias.scope !2921, !noalias !2924, !noundef !4
  store ptr %i.t, ptr %i.i, align 8, !noalias !2926
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.v, ptr %i.w, align 8, !noalias !2926
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @79, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #32
          to label %bb.d unwind label %bb.c, !noalias !2921

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i) #33
          to label %common.resume unwind label %bb.e, !noalias !2921

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2921
  unreachable

common.resume:                                    ; preds = %bb.bf, %bb.p, %bb.q, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.c ], [ %lpad.phi, %bb.q ], [ %lpad.thr_comm, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2921, !noalias !2924, !nonnull !4, !align !702, !noundef !4 ; 20 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !range !20, !alias.scope !2921, !noalias !2924, !noundef !4 ; 5 uses
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2927)
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !2927, !noalias !2930, !noundef !4 ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326
  call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs8EvorvD8vmS_4ruff.exit
  %i.aj = invoke noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECs8EvorvD8vmS_4ruff(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @82)
          to label %.noexc unwind label %bb.bf

.noexc:                                           ; preds = %.lr.ph.i.preheader.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2927, !noalias !2930, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ag, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i, %.noexc
  %.sroa.02.012.i.i = phi i64 [ %i.bg, %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i ], [ 0, %.noexc ] ; 3 uses
  %i.an = phi ptr [ %i.ao, %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i ], [ %i.al, %.noexc ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  %i.ap = load ptr, ptr %i.an, align 8, !alias.scope !2932, !noalias !2935, !nonnull !4, !noundef !4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !2939, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !2932, !noalias !2935, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.av = cmpxchg ptr %i.au, i64 0, i64 %i.at acq_rel acquire, align 8, !noalias !2939
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.av, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.g, label %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !2932, !noalias !2935, !noundef !4 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic ptr %i.ay, ptr %i.ba release, align 8, !noalias !2939
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bb = load ptr, ptr %i.aw, align 8, !noalias !2939, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 2 uses
  %i.bd = atomicrmw xchg ptr %i.bc, i32 1 release, align 4, !noalias !2939
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.j, label %.noexc9

bb.j:                                             ; preds = %bb.i
  %i.bf = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bc)
          to label %.noexc9 unwind label %bb.bf   ; 0 uses

_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.bg = add nuw nsw i64 %.sroa.02.012.i.i, 1
  %i.bh = icmp eq ptr %i.ao, %i.am
  br i1 %i.bh, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %.lr.ph.i.i

.noexc9:                                          ; preds = %bb.j, %bb.i
  %i.bi = icmp samesign ult i64 %.sroa.02.012.i.i, %i.ag
  call void @llvm.assume(i1 %i.bi)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryE6removeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae, i64 noundef %.sroa.02.012.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit unwind label %bb.bf

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit: ; preds = %.noexc9
  %.pr = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !4
  store ptr %i.bk, ptr %i.p, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br i1 %i.ad, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bn = and i64 %i.bm, 9223372036854775807
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m, !prof !109

bb.m:                                             ; preds = %bb.l
  %i.bp = invoke noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.m
  br i1 %i.bp, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc11
  store atomic i8 1, ptr %i.bl monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc11, %bb.l, %bb.k
  %i.bq = atomicrmw xchg ptr %i.aa, i32 0 release, align 4
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit, !prof !98

bb.o:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit unwind label %.loopexit.split-lp

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread: ; preds = %_RNCNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Cs8EvorvD8vmS_4ruff.exit.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCs8EvorvD8vmS_4ruff.exit, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.bt = load i8, ptr %i.bs, align 8, !range !20, !noundef !4
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.az, label %bb.ac

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
  call void @llvm.experimental.noalias.scope.decl(metadata !2940)
  call void @llvm.experimental.noalias.scope.decl(metadata !2943)
  call void @llvm.experimental.noalias.scope.decl(metadata !2946)
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  %i.bv = load ptr, ptr %i.j, align 8, !alias.scope !2952, !nonnull !4, !noundef !4
  %i.bw = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !2952
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %common.resume

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ab

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.o
  %.val8 = load ptr, ptr %i.p, align 8, !noundef !4 ; 11 uses
  %i.by = icmp eq ptr %.val8, null
  br i1 %i.by, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.val8, i64 57
  %i.ca = load i8, ptr %i.bz, align 1, !range !20, !noalias !2953, !noundef !4
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.val8, i64 56 ; 2 uses
  %i.cd = load atomic i8, ptr %i.cc acquire, align 1, !noalias !2953
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i.i14:                                     ; preds = %bb.s, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 4 uses
  %.sroa.0.02.i.i = phi i32 [ %i.ch, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.s ] ; 4 uses
  %4 = shl i32 %.sroa.0.02.i.i, 1
  %5 = or i32 %4, 1
  %i.cf = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i14
  invoke void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i unwind label %.loopexit

bb.u:                                             ; preds = %.lr.ph.i.i14
  %.not.i.i.i15 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i15, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.u
  %6 = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.cg = icmp ult i32 %6, 7
  br i1 %i.cg, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2953
  call void @llvm.x86.sse2.pause(), !noalias !2953
  call void @llvm.x86.sse2.pause(), !noalias !2953
  call void @llvm.x86.sse2.pause(), !noalias !2953
  call void @llvm.x86.sse2.pause(), !noalias !2953
  call void @llvm.x86.sse2.pause(), !noalias !2953
  call void @llvm.x86.sse2.pause(), !noalias !2953
  call void @llvm.x86.sse2.pause(), !noalias !2953
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2953
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2956

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.t, %bb.u
  %i.ch = add i32 %.sroa.0.02.i.i, 1
  %i.ci = load atomic i8, ptr %i.cc acquire, align 1, !noalias !2953
  %i.cj = icmp eq i8 %i.ci, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %5
  br i1 %i.cj, label %.lr.ph.i.i14, label %_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit.i

_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.s
  %.sroa.04.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !2953 ; 2 uses
  store i64 -2, ptr %.val8, align 8, !noalias !2953
  %.not.i = icmp eq i64 %.sroa.04.0.copyload.i, -2
  br i1 %.not.i, label %.invoke, label %bb.w, !prof !98

bb.v:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i64, ptr %.val8, align 8, !noalias !2953 ; 2 uses
  store i64 -2, ptr %.val8, align 8, !noalias !2953
  %.not11.i = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %.not11.i, label %.invoke, label %bb.x, !prof !98

.invoke:                                          ; preds = %bb.v, %_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit.i
  %i.ck = phi ptr [ @87, %_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit.i ], [ @88, %bb.v ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck) #32
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_6PacketINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_readyCs8EvorvD8vmS_4ruff.exit.i
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56.0..sroa_idx.i, i64 48, i1 false)
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 64, i64 noundef 8) #26, !noalias !2953
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i, i64 48, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %.val8, i64 56
  store atomic i8 1, ptr %i.cl release, align 8, !noalias !2953
  br label %bb.y

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cm, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.032.0.ph = phi i64 [ %.sroa.0.0.copyload.i, %bb.x ], [ %.sroa.04.0.copyload.i, %bb.w ]
  store i64 %.sroa.032.0.ph, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2957)
  call void @llvm.experimental.noalias.scope.decl(metadata !2960)
  call void @llvm.experimental.noalias.scope.decl(metadata !2963)
  call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  %i.cn = load ptr, ptr %i.j, align 8, !alias.scope !2969, !nonnull !4, !noundef !4
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !2969
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit20

bb.aa:                                            ; preds = %bb.z
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit20

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit20: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECs8EvorvD8vmS_4ruff.exit25

bb.ab:                                            ; preds = %bb.q, %bb.bf
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ac:                                            ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !2970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2973
  store ptr %i.m, ptr %i.h, align 8, !noalias !2970
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !2970
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx, align 8, !noalias !2970
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !2970
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ac, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !2970
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cr = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i8, ptr %i.cs, align 8, !range !3, !noalias !2975, !noundef !4
  %i.cu = icmp eq i8 %i.ct, 1
  br i1 %i.cu, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.i.i, !prof !109

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.i.i: ; preds = %bb.ac
  %i.cv = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs8EvorvD8vmS_4ruff(ptr noundef nonnull align 8 %i.cr, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.as, !noalias !2973 ; 2 uses

.noexc.i:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.i.i
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5h_ECs8EvorvD8vmS_4ruff.exit.thread.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i: ; preds = %.noexc.i, %bb.ac
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.cv, %.noexc.i ], [ %i.cr, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2984
  %i.cx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2985, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2985
  %.not.i.i.i21 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i21, label %bb.ad, label %bb.ak, !prof !98

bb.ad:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2985
  %i.cy = invoke noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.ae unwind label %bb.as, !noalias !2973 ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.cy, ptr %i.f, align 8, !noalias !2985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2985
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !2985
  store ptr %i.m, ptr %i.c, align 8, !noalias !2970
  %.sroa.636.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx39, align 8, !noalias !2970
  %.sroa.741.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx44, align 8, !noalias !2970
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx48, align 8, !noalias !2970
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !2985
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0Cs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.cy)
          to label %bb.ah unwind label %bb.af, !noalias !2984

bb.af:                                            ; preds = %bb.ae
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !2988
  %i.db = icmp eq i64 %i.da, 1
  br i1 %i.db, label %bb.ag, label %.body.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.aj, !noalias !2985

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2985
  %i.dc = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !2995
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ai, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit24.i.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit24.i.i.i unwind label %bb.as, !noalias !2973

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit24.i.i.i: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2985
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4zeroINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0IB3t_B3s_NtNtB1U_4mpsc16RecvTimeoutErrorEEs_0B5h_ECs8EvorvD8vmS_4ruff.exit.i

bb.aj:                                            ; preds = %bb.ar, %bb.ap, %bb.ag
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !2985
  unreachable

bb.ak:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2985
  store ptr %i.cx, ptr %i.e, align 8, !noalias !2985
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store atomic i64 0, ptr %i.df release, align 8, !noalias !2985
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store atomic ptr null, ptr %i.dg release, align 8, !noalias !2985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2985
  store i8 2, ptr %.sroa.950.0..sroa_idx, align 8, !noalias !2985
  store ptr %i.m, ptr %i.b, align 8, !noalias !2970
  %.sroa.636.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %.sroa.636.0..sroa_idx37, align 8, !noalias !2970
  %.sroa.741.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.741.0..sroa_idx42, align 8, !noalias !2970
  %.sroa.8.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aa, ptr %.sroa.8.0..sroa_idx46, align 8, !noalias !2970
  %.sroa.410.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.ac, ptr %.sroa.410.0..sroa_idx11.i.i.i, align 8, !noalias !2985
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0Cs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr nonnull %i.cx)
          to label %bb.al unwind label %bb.aq, !noalias !2985

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2985
  %i.dh = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2985, !noundef !4 ; 3 uses
  store ptr %i.dh, ptr %i.a, align 8, !noalias !2985
  store ptr %i.cx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2985
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECs8EvorvD8vmS_4ruff.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dj = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !3002
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECs8EvorvD8vmS_4ruff.exit.i.i.i

bb.an:                                            ; preds = %bb.am
end_hunk_1
