inline.NumInlined: 451
inline.NumDeleted: 297
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB7_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0CsgIpRO4v45SJ_7base_db:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryE8grow_oneCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.i unwind label %bb.e, !noalias !483

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !486
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #38
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.aq, %bb.y, %bb.f, %bb.e, %bb.ae, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.aw ], [ %i.cz, %bb.ae ], [ %i.ce, %bb.y ], [ %i.ac, %bb.e ], [ %i.ec, %bb.aq ], [ %i.ac, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.05.2 = phi i1 [ false, %bb.aw ], [ false, %bb.ae ], [ false, %bb.y ], [ true, %bb.e ], [ false, %bb.aq ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.05.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val30 = load ptr, ptr %i.k, align 8, !noundef !4
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsgIpRO4v45SJ_7base_db(ptr %.val30) #37
          to label %bb.bd unwind label %bb.an

.loopexit:                                        ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.o
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.p, %bb.r, %.noexc38
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.i, %bb.t, %.thread9, %bb.u, %bb.l, %bb.n, %bb.ai, %bb.ak, %bb.ba, %bb.bc
  %.sroa.05.3.ph.ph.ph = phi i1 [ false, %bb.t ], [ false, %bb.l ], [ false, %bb.ai ], [ false, %bb.ba ], [ false, %bb.u ], [ false, %bb.n ], [ false, %bb.bc ], [ false, %.invoke ], [ false, %.thread9 ], [ true, %bb.i ], [ false, %bb.ak ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !480, !noalias !483, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.aj = add i64 %i.z, 1
  store i64 %i.aj, ptr %i.y, align 8, !alias.scope !480, !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  invoke fastcc void @_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load i8, ptr %i.al, align 8, !range !91, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ao = trunc nuw i8 %i.am to i1
  br i1 %i.ao, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  %i.as = invoke noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  br i1 %i.as, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.at = atomicrmw xchg ptr %i.s, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit, !prof !37

bb.n:                                             ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit: ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !align !23, !noundef !4 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !range !495, !noundef !4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit, %bb.o
  %i.bc = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bc, label %.thread [
    i64 0, label %bb.o
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.o:                                             ; preds = %.split.us.i
  invoke void @_RNvMs_NtNtCscAsMj0W7j8b_3std6thread6threadNtB4_6Thread4park(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb)
          to label %.split.us.i unwind label %.loopexit.split-lp.loopexit

.split.i:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit, %.noexc38
  %i.bd = load atomic i64, ptr %i.ba acquire, align 8 ; 3 uses
  switch i64 %i.bd, label %.thread [
    i64 0, label %bb.p
    i64 1, label %.split7.us.i
    i64 2, label %.split7.us.i
  ]

bb.p:                                             ; preds = %.split.i
  %i.be = invoke { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now()
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc37:                                         ; preds = %bb.p
  %i.bf = extractvalue { i64, i32 } %i.be, 0      ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1      ; 2 uses
  %i.bh = icmp eq i64 %i.bf, %i.ax
  %i.bi = icmp slt i64 %i.bf, %i.ax
  %i.bj = icmp samesign ult i32 %i.bg, %i.az
  %spec.select.i = select i1 %i.bh, i1 %i.bj, i1 %i.bi
  br i1 %spec.select.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc37
  %i.bk = cmpxchg ptr %i.ba, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bk, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bk, 0
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.01.0.i.i.i, i64 3)
  br i1 %.sroa.18.0.in.i.i.i, label %.thread9, label %.split7.us.i

bb.r:                                             ; preds = %.noexc37
  %i.bl = invoke { i64, i32 } @_RNvXs3_NtCscAsMj0W7j8b_3std4timeNtB5_7InstantNtNtNtCshzWfHUSfYae_4core3ops5arith3Sub3sub(i64 noundef %i.ax, i32 noundef range(i32 -1, 1000000000) %i.az, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc38:                                         ; preds = %bb.r
  %i.bm = extractvalue { i64, i32 } %i.bl, 0
  %i.bn = extractvalue { i64, i32 } %i.bl, 1
  invoke void @_RNvMs_NtNtCscAsMj0W7j8b_3std6thread6threadNtB4_6Thread12park_timeout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, i64 noundef %i.bm, i32 noundef %i.bn)
          to label %.split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.split7.us.i:                                     ; preds = %.split.i, %.split.i, %.split.us.i, %.split.us.i, %bb.q
  %.sroa.03.1.i = phi i64 [ %spec.select.i.i, %bb.q ], [ %i.bc, %.split.us.i ], [ %i.bc, %.split.us.i ], [ %i.bd, %.split.i ], [ %i.bd, %.split.i ]
  switch i64 %.sroa.03.1.i, label %bb.s [
    i64 0, label %bb.t
    i64 1, label %.thread9
    i64 2, label %bb.u
    i64 3, label %.thread
  ], !prof !496

bb.s:                                             ; preds = %.split7.us.i
  unreachable

bb.t:                                             ; preds = %.split7.us.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #41
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread9:                                         ; preds = %bb.q, %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !align !23, !noundef !4
  invoke void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.bp)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %.split7.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !align !23, !noundef !4
  invoke void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.br)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split.i, %.split.us.i, %.split7.us.i
  %i.bs = load atomic i8, ptr %i.q acquire, align 8
  %.not2.i = icmp eq i8 %i.bs, 0
  br i1 %.not2.i, label %.lr.ph.i, label %_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10wait_readyCsgIpRO4v45SJ_7base_db.exit

.lr.ph.i:                                         ; preds = %.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.bv, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %.thread ] ; 6 uses
  %i.bt = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.bt, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.loopexit

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %1 = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i   ; 2 uses
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.bu = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.bu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %1, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod83 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod83)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !497

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.v, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.bv = add i32 %.sroa.0.03.i, 1
  %i.bw = load atomic i8, ptr %i.q acquire, align 8
  %.not.i40 = icmp eq i8 %i.bw, 0
  br i1 %.not.i40, label %.lr.ph.i, label %_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10wait_readyCsgIpRO4v45SJ_7base_db.exit

bb.w:                                             ; preds = %.thread9
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.bx = load i64, ptr %i.h, align 8, !range !22, !alias.scope !498, !noalias !501, !noundef !4
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.x, label %bb.ab, !prof !37

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !503
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !498, !noalias !501, !nonnull !4, !align !23, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !range !91, !alias.scope !498, !noalias !501, !noundef !4
  store ptr %i.ca, ptr %i.b, align 8, !noalias !503
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.cc, ptr %i.cd, align 8, !noalias !503
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #41
          to label %bb.z unwind label %bb.y, !noalias !498

bb.y:                                             ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc4zero5InnerEEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #37
          to label %.body unwind label %bb.aa, !noalias !498

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39, !noalias !498
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !498, !noalias !501, !nonnull !4, !align !23, !noundef !4 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !range !91, !alias.scope !498, !noalias !501, !noundef !4 ; 2 uses
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !504, !noalias !507, !nonnull !4, !noundef !4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !504, !noalias !507, !noundef !4 ; 2 uses
  %.idx70 = mul nuw nsw i64 %i.cp, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx70
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph69

bb.ac:                                            ; preds = %.lr.ph69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.ct = add nuw nsw i64 %i.cw, 1
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.ab, %bb.ac
  %i.cv = phi ptr [ %i.cs, %bb.ac ], [ %i.cn, %bb.ab ] ; 2 uses
  %i.cw = phi i64 [ %i.ct, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !509, !noalias !514, !noundef !4
  %.not.i.i42 = icmp eq i64 %i.cy, %i.m
  br i1 %.not.i.i42, label %bb.ad, label %bb.ac

bb.ad:                                            ; preds = %.lr.ph69
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryE6removeCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cl, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
          to label %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %bb.ad, %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db(ptr nonnull %i.ch, i8 %i.cj) #37
          to label %.body unwind label %bb.an

_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit: ; preds = %bb.ad
  %.pr = load ptr, ptr %i.i, align 8
  %.not10 = icmp eq ptr %.pr, null
  br i1 %.not10, label %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread, label %bb.af, !prof !519

bb.af:                                            ; preds = %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.da = load ptr, ptr %i.j, align 8, !alias.scope !532, !nonnull !4, !noundef !4
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !532
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsgIpRO4v45SJ_7base_db.exit

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsgIpRO4v45SJ_7base_db.exit unwind label %bb.ae

_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit.thread: ; preds = %bb.ac, %bb.ab, %_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB2_5Waker10unregister.exit
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #41
          to label %bb.b unwind label %bb.ae

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.af, %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  br i1 %i.ck, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsgIpRO4v45SJ_7base_db.exit
  %i.de = load atomic i64, ptr @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.df = and i64 %i.de, 9223372036854775807
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.ai, !prof !36

bb.ai:                                            ; preds = %bb.ah
  %i.dh = invoke noundef zeroext i1 @_RNvNtNtCscAsMj0W7j8b_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ai
  br i1 %i.dh, label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, label %bb.aj

bb.aj:                                            ; preds = %.noexc46
  store atomic i8 1, ptr %i.dd monotonic, align 4
  br label %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i45

_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i45: ; preds = %bb.aj, %.noexc46, %bb.ah, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsgIpRO4v45SJ_7base_db.exit
  %i.di = atomicrmw xchg ptr %i.ch, i32 0 release, align 4
  %i.dj = icmp eq i32 %i.di, 2
  br i1 %i.dj, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit48, !prof !37

bb.ak:                                            ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i45
  invoke void @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ch)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit48: ; preds = %_RNvMNtNtCscAsMj0W7j8b_3std4sync6poisonNtB2_4Flag4done.exit.i.i45, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dk = load ptr, ptr %i.k, align 8, !noundef !4 ; 2 uses
  store ptr null, ptr %i.k, align 8
  %.not11 = icmp eq ptr %i.dk, null
  br i1 %.not11, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsgIpRO4v45SJ_7base_db.exit, !prof !37

.invoke:                                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit58, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit48
  %i.dl = phi ptr [ @18, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit48 ], [ @21, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsgIpRO4v45SJ_7base_db.exit58 ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl) #41
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10wait_readyCsgIpRO4v45SJ_7base_db.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %.thread
  %.val29.pr = load ptr, ptr %i.k, align 8        ; 4 uses
  %i.dm = icmp eq ptr %.val29.pr, null
  br i1 %i.dm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsgIpRO4v45SJ_7base_db.exit, label %bb.al

bb.al:                                            ; preds = %_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB5_6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10wait_readyCsgIpRO4v45SJ_7base_db.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val29.pr, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !4
  store ptr %.val29.pr, ptr %i.a, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.do, ptr %i.dp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.dq = atomicrmw sub ptr %.val29.pr, i64 1 release, align 8, !noalias !539
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsgIpRO4v45SJ_7base_db.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.ds = load ptr, ptr %i.a, align 8, !alias.scope !539, !nonnull !4, !noundef !4
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8, !noalias !539 ; 0 uses
  call void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #38
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsgIpRO4v45SJ_7base_db.exit.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsgIpRO4v45SJ_7base_db.exit.i.i.i: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero6PacketNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsgIpRO4v45SJ_7base_db.exit

bb.an:                                            ; preds = %.body, %bb.ae, %bb.aw, %bb.bf
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ao:                                            ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.dv = load i64, ptr %i.e, align 8, !range !22, !alias.scope !540, !noalias !543, !noundef !4
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.ap, label %bb.at, !prof !37

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !545
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !540, !noalias !543, !nonnull !4, !align !23, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ea = load i8, ptr %i.dz, align 8, !range !91, !alias.scope !540, !noalias !543, !noundef !4
  store ptr %i.dy, ptr %i.c, align 8, !noalias !545
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.ea, ptr %i.eb, align 8, !noalias !545
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41
          to label %bb.ar unwind label %bb.aq, !noalias !540

end_hunk_0
