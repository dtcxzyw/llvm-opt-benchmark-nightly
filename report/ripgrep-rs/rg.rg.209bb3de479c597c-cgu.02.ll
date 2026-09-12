Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.02?download=true
inline.NumInlined: 983
inline.NumDeleted: 353
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE18disconnect_sendersBZ_:bb.a
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.phi.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !10659

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10660
  %i.r = load ptr, ptr %i.q, align 8, !dbg !10660, !alias.scope !10638, !noalias !10639, !nonnull !549, !align !647, !noundef !549 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10660
  %i.t = load i8, ptr %i.s, align 8, !dbg !10660, !range !604, !alias.scope !10638, !noalias !10639, !noundef !549 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1, !dbg !10660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10661
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !10662
  call void @llvm.experimental.noalias.scope.decl(metadata !10641), !dbg !10663
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !10664
  %i.x = load ptr, ptr %i.w, align 8, !dbg !10664, !alias.scope !10641, !nonnull !549, !noundef !549 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !10665 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !10665, !alias.scope !10641, !noundef !549 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24, !dbg !10666
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i, !dbg !10666
  %i.ab = icmp eq i64 %i.z, 0, !dbg !10667
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !10668

.lr.ph.i.i:                                       ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i, %.noexc5.i
  %.sroa.0.02.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24, !dbg !10669 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !dbg !10670, !noalias !10641, !nonnull !549, !noundef !549
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24, !dbg !10671
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !dbg !10672, !noalias !10641
  %i.af = extractvalue { i64, i1 } %i.ae, 1, !dbg !10672
  br i1 %i.af, label %bb.g, label %.noexc5.i, !dbg !10673

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i
  invoke fastcc void @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v) #36
          to label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.i, !dbg !10674

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %.sroa.0.02.i.i, align 8, !dbg !10675, !noalias !10641, !nonnull !549, !noundef !549
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !10676
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !10676, !noalias !10641, !nonnull !549, !noundef !549
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40, !dbg !10677 ; 2 uses
  %i.ak = atomicrmw xchg ptr %i.aj, i32 1 release, align 4, !dbg !10678, !noalias !10641
  %i.al = icmp eq i32 %i.ak, -1, !dbg !10679
  br i1 %i.al, label %bb.h, label %.noexc5.i, !dbg !10679

.noexc5.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.am = icmp eq ptr %i.ac, %i.aa, !dbg !10667
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !10668

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.aj)
          to label %.noexc5.i unwind label %.loopexit.i, !dbg !10680 ; 0 uses

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs2NzvFoTxuAy_2rg(ptr nonnull %i.r, i8 %i.t) #33
          to label %common.resume.i unwind label %bb.p, !dbg !10681

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i: ; preds = %._crit_edge.i.i
  %i.ao = load i64, ptr %i.y, align 8, !dbg !10682, !noundef !549 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326, !dbg !10683
  call void @llvm.assume(i1 %i.ap), !dbg !10684
  %i.aq = icmp eq i64 %i.ao, 0, !dbg !10685
  br i1 %i.aq, label %bb.j, label %bb.k, !dbg !10686

bb.j:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48, !dbg !10687
  %i.as = load i64, ptr %i.ar, align 8, !dbg !10687, !noundef !549 ; 2 uses
  %i.at = icmp ult i64 %i.as, 384307168202282326, !dbg !10688
  call void @llvm.assume(i1 %i.at), !dbg !10689
  %i.au = icmp eq i64 %i.as, 0, !dbg !10690
  %i.av = zext i1 %i.au to i8, !dbg !10690
  br label %bb.k, !dbg !10686

bb.k:                                             ; preds = %bb.j, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %.sroa.0.0.i = phi i8 [ %i.av, %bb.j ], [ 0, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i ], !dbg !10691
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !10692
  store atomic i8 %.sroa.0.0.i, ptr %i.aw seq_cst, align 8, !dbg !10693
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !10694
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l, !dbg !10695

bb.l:                                             ; preds = %bb.k
  %i.ay = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10696
  %i.az = and i64 %i.ay, 9223372036854775807, !dbg !10697
  %i.ba = icmp eq i64 %i.az, 0, !dbg !10697
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !dbg !10697, !prof !609

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #34, !dbg !10698
  br i1 %i.bb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n, !dbg !10699

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.ax monotonic, align 4, !dbg !10700
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !10701

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bc = atomicrmw xchg ptr %i.r, i32 0 release, align 4, !dbg !10702
  %i.bd = icmp eq i32 %i.bc, 2, !dbg !10703
  br i1 %i.bd, label %bb.o, label %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !10703, !prof !586

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.r), !dbg !10704
  br label %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !10704

bb.p:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !dbg !10705
  unreachable, !dbg !10705

_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit: ; preds = %bb.o, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a
  ret i1 %i.f, !dbg !10706
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20disconnect_receiversBZ_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10707 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10848 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8, !dbg !10849
  %i.c = and i64 %i.b, 1, !dbg !10850
  %i.d = icmp eq i64 %i.c, 0, !dbg !10850         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !10850

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128, !dbg !10851 ; 2 uses
  %i.f = and i64 %i.e, 62, !dbg !10852
  %i.g = icmp eq i64 %i.f, 62, !dbg !10852
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !dbg !10852

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04951.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04951.i, 7, !dbg !10853
  br i1 %i.h, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, label %bb.c, !dbg !10853

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10854
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !10854

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04951.i, 0, !dbg !10855
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !10856

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw i32 %.sroa.0.04951.i, %.sroa.0.04951.i, !dbg !10857 ; 2 uses
  %xtraiter = and i32 %i.i, 7, !dbg !10856        ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04951.i, 3, !dbg !10856
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10856

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56, !dbg !10856
  br label %.lr.ph.i.i, !dbg !10856

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  %niter.next.7 = add i32 %niter, 8, !dbg !10856  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10856
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10856

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10856
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10856

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod20 = icmp ne i32 %xtraiter, 0, !dbg !10856
  tail call void @llvm.assume(i1 %lcmp.mod20), !dbg !10856
  br label %.lr.ph.i.i.epil, !dbg !10856

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10858
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10856 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10856
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10856, !llvm.loop !10731

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.04951.i, 1, !dbg !10859 ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128, !dbg !10860 ; 2 uses
  %i.m = and i64 %i.l, 62, !dbg !10852
  %i.n = icmp eq i64 %i.m, 62, !dbg !10852
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !dbg !10852

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.049.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !10861
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128, !dbg !10862 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10863 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10864 ; 2 uses
  %i.s = lshr i64 %i.p, 1, !dbg !10865            ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o, !dbg !10865      ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false, !dbg !10865
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i, !dbg !10865

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], !dbg !10866 ; 2 uses
  br i1 %i.t, label %.lr.ph57.i, label %._crit_edge58.i, !dbg !10867

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], [ %.sroa.0.049.lcssa.i, %._crit_edge.i ], !dbg !10861 ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7, !dbg !10868
  br i1 %i.v, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, label %bb.d, !dbg !10868

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10869
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, !dbg !10869

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0, !dbg !10870
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader, !dbg !10871

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i, !dbg !10872 ; 2 uses
  %xtraiter21 = and i32 %i.w, 7, !dbg !10871      ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3, !dbg !10871
  br i1 %i.x, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new, !dbg !10871

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter25 = and i32 %i.w, 56, !dbg !10871
  br label %.lr.ph.i26.i, !dbg !10871

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter26 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter26.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  %niter26.next.7 = add i32 %niter26, 8, !dbg !10871 ; 2 uses
  %niter26.ncmp.7 = icmp eq i32 %niter26.next.7, %unroll_iter25, !dbg !10871
  br i1 %niter26.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i, !dbg !10871

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod23.not = icmp eq i32 %xtraiter21, 0, !dbg !10871
  br i1 %lcmp.mod23.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader, !dbg !10871

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter21, 0, !dbg !10871
  tail call void @llvm.assume(i1 %lcmp.mod24), !dbg !10871
  br label %.lr.ph.i26.i.epil, !dbg !10871

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter22 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter22.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10873
  %epil.iter22.next = add i32 %epil.iter22, 1, !dbg !10871 ; 2 uses
  %epil.iter22.cmp.not = icmp eq i32 %epil.iter22.next, %xtraiter21, !dbg !10871
  br i1 %epil.iter22.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !dbg !10871, !llvm.loop !10758

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.y = add i32 %.sroa.0.1.i, 1, !dbg !10874
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10875 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null, !dbg !10876
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i, !dbg !10877

._crit_edge58.i:                                  ; preds = %bb.j, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.j ], !dbg !10875 ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.az, %bb.j ], !dbg !10878
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null, !dbg !10879
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20discard_all_messagesBZ_.exit, label %bb.e, !dbg !10880

.lr.ph57.i:                                       ; preds = %.loopexit.i, %bb.j
  %i.ab = phi i64 [ %i.ba, %bb.j ], [ %i.s, %.loopexit.i ]
  %.sroa.05.055.i = phi i64 [ %i.az, %bb.j ], [ %i.p, %.loopexit.i ]
  %.sroa.011.154.i = phi ptr [ %.sroa.011.2.i, %bb.j ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ac = and i64 %i.ab, 31, !dbg !10881          ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31, !dbg !10882
  br i1 %.not19.i, label %bb.f, label %bb.h, !dbg !10882

bb.e:                                             ; preds = %._crit_edge58.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !10883
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20discard_all_messagesBZ_.exit, !dbg !10884

bb.f:                                             ; preds = %.lr.ph57.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i, i64 3968 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !10885
  %i.af = icmp eq ptr %i.ae, null, !dbg !10886
  br i1 %i.af, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i, !dbg !10887

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i.i, 7, !dbg !10888
  br i1 %i.ag, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g, !dbg !10888

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10889
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !10889

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0, !dbg !10890
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !10891

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ah = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i, !dbg !10892 ; 2 uses
  %xtraiter33 = and i32 %i.ah, 7, !dbg !10891     ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 3, !dbg !10891
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !10891

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter37 = and i32 %i.ah, 56, !dbg !10891
  br label %.lr.ph.i.i.i, !dbg !10891

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter38 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter38.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  %niter38.next.7 = add i32 %niter38, 8, !dbg !10891 ; 2 uses
  %niter38.ncmp.7 = icmp eq i32 %niter38.next.7, %unroll_iter37, !dbg !10891
  br i1 %niter38.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !10891

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod35.not = icmp eq i32 %xtraiter33, 0, !dbg !10891
  br i1 %lcmp.mod35.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !10891

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod36 = icmp ne i32 %xtraiter33, 0, !dbg !10891
  tail call void @llvm.assume(i1 %lcmp.mod36), !dbg !10891
  br label %.lr.ph.i.i.i.epil, !dbg !10891

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter34 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter34.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10893
  %epil.iter34.next = add i32 %epil.iter34, 1, !dbg !10891 ; 2 uses
  %epil.iter34.cmp.not = icmp eq i32 %epil.iter34.next, %xtraiter33, !dbg !10891
  br i1 %epil.iter34.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !10891, !llvm.loop !10797

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.aj = add i32 %.sroa.0.02.i.i, 1, !dbg !10894
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !10885
  %i.al = icmp eq ptr %i.ak, null, !dbg !10886
  br i1 %i.al, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i, !dbg !10887

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.am = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !10895
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !10896
  br label %bb.j, !dbg !10897

bb.h:                                             ; preds = %.lr.ph57.i
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.154.i, i64 %i.ac, !dbg !10898 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !dbg !10899
  %i.aq = and i64 %i.ap, 1, !dbg !10900
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !10900
  br i1 %i.ar, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i, !dbg !10900

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i33.i, 7, !dbg !10901
  br i1 %i.as, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i, !dbg !10901

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10902
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, !dbg !10902

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0, !dbg !10903
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader, !dbg !10904

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i
  %i.at = mul nuw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i, !dbg !10905 ; 2 uses
  %xtraiter27 = and i32 %i.at, 7, !dbg !10904     ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i33.i, 3, !dbg !10904
  br i1 %i.au, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new, !dbg !10904

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter31 = and i32 %i.at, 56, !dbg !10904
  br label %.lr.ph.i.i40.i, !dbg !10904

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  tail call void @llvm.x86.sse2.pause(), !dbg !10906
  %niter32.next.7 = add i32 %niter32, 8, !dbg !10904 ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31, !dbg !10904
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i, !dbg !10904

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0, !dbg !10904
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader, !dbg !10904

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0, !dbg !10904
end_hunk_0
