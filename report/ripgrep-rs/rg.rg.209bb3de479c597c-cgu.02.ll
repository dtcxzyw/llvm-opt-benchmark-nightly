Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.02?download=true
inline.NumInlined: 983
inline.NumDeleted: 353
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvMs1_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB5_7FlagMap3new:bb.a

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE18disconnect_sendersBZ_(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10522 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10644
  %i.d = atomicrmw or ptr %i.c, i64 1 seq_cst, align 8, !dbg !10645
  %i.e = and i64 %i.d, 1, !dbg !10646
  %i.f = icmp eq i64 %i.e, 0, !dbg !10646         ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !10646

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !10647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10648
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.g), !dbg !10649
  call void @llvm.experimental.noalias.scope.decl(metadata !10636), !dbg !10650
  %i.h = load i64, ptr %i.b, align 8, !dbg !10651, !range !584, !alias.scope !10636, !noalias !10637, !noundef !549
  %i.i = trunc nuw i64 %i.h to i1, !dbg !10652
  br i1 %i.i, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i, !dbg !10652, !prof !586

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10653, !noalias !10638
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10653
  %i.k = load ptr, ptr %i.j, align 8, !dbg !10653, !alias.scope !10636, !noalias !10637, !nonnull !549, !align !647, !noundef !549
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10653
  %i.m = load i8, ptr %i.l, align 8, !dbg !10653, !range !604, !alias.scope !10636, !noalias !10637, !noundef !549
  store ptr %i.k, ptr %i.a, align 8, !dbg !10653, !noalias !10638
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10653
  store i8 %i.m, ptr %i.n, align 8, !dbg !10653, !noalias !10638
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #32
          to label %bb.e unwind label %bb.d, !dbg !10654, !noalias !10636

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %common.resume.i unwind label %bb.f, !dbg !10655, !noalias !10636

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !dbg !10656, !noalias !10636
  unreachable, !dbg !10656

common.resume.i:                                  ; preds = %bb.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.phi.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !10657

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10658
  %i.r = load ptr, ptr %i.q, align 8, !dbg !10658, !alias.scope !10636, !noalias !10637, !nonnull !549, !align !647, !noundef !549 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10658
  %i.t = load i8, ptr %i.s, align 8, !dbg !10658, !range !604, !alias.scope !10636, !noalias !10637, !noundef !549 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1, !dbg !10658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10659
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !10660
  call void @llvm.experimental.noalias.scope.decl(metadata !10639), !dbg !10661
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !10662
  %i.x = load ptr, ptr %i.w, align 8, !dbg !10662, !alias.scope !10639, !nonnull !549, !noundef !549 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !10663 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !10663, !alias.scope !10639, !noundef !549 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24, !dbg !10664
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i, !dbg !10664
  %i.ab = icmp eq i64 %i.z, 0, !dbg !10665
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !10666

.lr.ph.i.i:                                       ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i, %.noexc5.i
  %.sroa.0.02.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24, !dbg !10667 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !dbg !10668, !noalias !10639, !nonnull !549, !noundef !549
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24, !dbg !10669
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !dbg !10670, !noalias !10639
  %i.af = extractvalue { i64, i1 } %i.ae, 1, !dbg !10670
  br i1 %i.af, label %bb.g, label %.noexc5.i, !dbg !10671

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs2NzvFoTxuAy_2rg.exit.i
  invoke fastcc void @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v) #36
          to label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.i, !dbg !10672

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %.sroa.0.02.i.i, align 8, !dbg !10673, !noalias !10639, !nonnull !549, !noundef !549
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !10674
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !10674, !noalias !10639, !nonnull !549, !noundef !549
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40, !dbg !10675 ; 2 uses
  %i.ak = atomicrmw xchg ptr %i.aj, i32 1 release, align 4, !dbg !10676, !noalias !10639
  %i.al = icmp eq i32 %i.ak, -1, !dbg !10677
  br i1 %i.al, label %bb.h, label %.noexc5.i, !dbg !10677

.noexc5.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.am = icmp eq ptr %i.ac, %i.aa, !dbg !10665
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !10666

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.aj)
          to label %.noexc5.i unwind label %.loopexit.i, !dbg !10678 ; 0 uses

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
          to label %common.resume.i unwind label %bb.p, !dbg !10679

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i: ; preds = %._crit_edge.i.i
  %i.ao = load i64, ptr %i.y, align 8, !dbg !10680, !noundef !549 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326, !dbg !10681
  call void @llvm.assume(i1 %i.ap), !dbg !10682
  %i.aq = icmp eq i64 %i.ao, 0, !dbg !10683
  br i1 %i.aq, label %bb.j, label %bb.k, !dbg !10684

bb.j:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48, !dbg !10685
  %i.as = load i64, ptr %i.ar, align 8, !dbg !10685, !noundef !549 ; 2 uses
  %i.at = icmp ult i64 %i.as, 384307168202282326, !dbg !10686
  call void @llvm.assume(i1 %i.at), !dbg !10687
  %i.au = icmp eq i64 %i.as, 0, !dbg !10688
  %i.av = zext i1 %i.au to i8, !dbg !10688
  br label %bb.k, !dbg !10684

bb.k:                                             ; preds = %bb.j, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %.sroa.0.0.i = phi i8 [ %i.av, %bb.j ], [ 0, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i ], !dbg !10689
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !10690
  store atomic i8 %.sroa.0.0.i, ptr %i.aw seq_cst, align 8, !dbg !10691
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !10692
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l, !dbg !10693

bb.l:                                             ; preds = %bb.k
  %i.ay = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !10694
  %i.az = and i64 %i.ay, 9223372036854775807, !dbg !10695
  %i.ba = icmp eq i64 %i.az, 0, !dbg !10695
  br i1 %i.ba, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !dbg !10695, !prof !609

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #34, !dbg !10696
  br i1 %i.bb, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n, !dbg !10697

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.ax monotonic, align 4, !dbg !10698
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !10699

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bc = atomicrmw xchg ptr %i.r, i32 0 release, align 4, !dbg !10700
  %i.bd = icmp eq i32 %i.bc, 2, !dbg !10701
  br i1 %i.bd, label %bb.o, label %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !10701, !prof !586

bb.o:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.r), !dbg !10702
  br label %_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !10702

bb.p:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !dbg !10703
  unreachable, !dbg !10703

_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit: ; preds = %bb.o, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a
  ret i1 %i.f, !dbg !10704
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20disconnect_receiversBZ_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10705 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !10846 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8, !dbg !10847
  %i.c = and i64 %i.b, 1, !dbg !10848
  %i.d = icmp eq i64 %i.c, 0, !dbg !10848         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !10848

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128, !dbg !10849 ; 2 uses
  %i.f = and i64 %i.e, 62, !dbg !10850
  %i.g = icmp eq i64 %i.f, 62, !dbg !10850
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !dbg !10850

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04951.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04951.i, 7, !dbg !10851
  br i1 %i.h, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, label %bb.c, !dbg !10851

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10852
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !10852

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04951.i, 0, !dbg !10853
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !10854

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw nsw i32 %.sroa.0.04951.i, %.sroa.0.04951.i, !dbg !10855 ; 2 uses
  %xtraiter = and i32 %i.i, 7, !dbg !10854        ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04951.i, 3, !dbg !10854
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !10854

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56, !dbg !10854
  br label %.lr.ph.i.i, !dbg !10854

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  %niter.next.7 = add i32 %niter, 8, !dbg !10854  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !10854
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !10854

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !10854
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !10854

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod20 = icmp ne i32 %xtraiter, 0, !dbg !10854
  tail call void @llvm.assume(i1 %lcmp.mod20), !dbg !10854
  br label %.lr.ph.i.i.epil, !dbg !10854

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10856
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !10854 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !10854
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !10854, !llvm.loop !10729

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.04951.i, 1, !dbg !10857 ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128, !dbg !10858 ; 2 uses
  %i.m = and i64 %i.l, 62, !dbg !10850
  %i.n = icmp eq i64 %i.m, 62, !dbg !10850
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !dbg !10850

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.049.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !10859
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128, !dbg !10860 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10861 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10862 ; 2 uses
  %i.s = lshr i64 %i.p, 1, !dbg !10863            ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o, !dbg !10863      ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false, !dbg !10863
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i, !dbg !10863

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], !dbg !10864 ; 2 uses
  br i1 %i.t, label %.lr.ph57.i, label %._crit_edge58.i, !dbg !10865

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], [ %.sroa.0.049.lcssa.i, %._crit_edge.i ], !dbg !10859 ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7, !dbg !10866
  br i1 %i.v, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, label %bb.d, !dbg !10866

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10867
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, !dbg !10867

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0, !dbg !10868
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader, !dbg !10869

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i
  %i.w = mul nuw nsw i32 %.sroa.0.1.i, %.sroa.0.1.i, !dbg !10870 ; 2 uses
  %xtraiter21 = and i32 %i.w, 7, !dbg !10869      ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3, !dbg !10869
  br i1 %i.x, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new, !dbg !10869

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter25 = and i32 %i.w, 56, !dbg !10869
  br label %.lr.ph.i26.i, !dbg !10869

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter26 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter26.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  %niter26.next.7 = add i32 %niter26, 8, !dbg !10869 ; 2 uses
  %niter26.ncmp.7 = icmp eq i32 %niter26.next.7, %unroll_iter25, !dbg !10869
  br i1 %niter26.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i, !dbg !10869

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod23.not = icmp eq i32 %xtraiter21, 0, !dbg !10869
  br i1 %lcmp.mod23.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader, !dbg !10869

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter21, 0, !dbg !10869
  tail call void @llvm.assume(i1 %lcmp.mod24), !dbg !10869
  br label %.lr.ph.i26.i.epil, !dbg !10869

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter22 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter22.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10871
  %epil.iter22.next = add i32 %epil.iter22, 1, !dbg !10869 ; 2 uses
  %epil.iter22.cmp.not = icmp eq i32 %epil.iter22.next, %xtraiter21, !dbg !10869
  br i1 %epil.iter22.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !dbg !10869, !llvm.loop !10756

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.y = add i32 %.sroa.0.1.i, 1, !dbg !10872
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !10873 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null, !dbg !10874
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i, !dbg !10875

._crit_edge58.i:                                  ; preds = %bb.j, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.j ], !dbg !10873 ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.az, %bb.j ], !dbg !10876
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null, !dbg !10877
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20discard_all_messagesBZ_.exit, label %bb.e, !dbg !10878

.lr.ph57.i:                                       ; preds = %.loopexit.i, %bb.j
  %i.ab = phi i64 [ %i.ba, %bb.j ], [ %i.s, %.loopexit.i ]
  %.sroa.05.055.i = phi i64 [ %i.az, %bb.j ], [ %i.p, %.loopexit.i ]
  %.sroa.011.154.i = phi ptr [ %.sroa.011.2.i, %bb.j ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ac = and i64 %i.ab, 31, !dbg !10879          ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31, !dbg !10880
  br i1 %.not19.i, label %bb.f, label %bb.h, !dbg !10880

bb.e:                                             ; preds = %._crit_edge58.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !10881
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20discard_all_messagesBZ_.exit, !dbg !10882

bb.f:                                             ; preds = %.lr.ph57.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i, i64 3968 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !10883
  %i.af = icmp eq ptr %i.ae, null, !dbg !10884
  br i1 %i.af, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i, !dbg !10885

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i.i, 7, !dbg !10886
  br i1 %i.ag, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g, !dbg !10886

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10887
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !10887

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0, !dbg !10888
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !10889

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ah = mul nuw nsw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i, !dbg !10890 ; 2 uses
  %xtraiter33 = and i32 %i.ah, 7, !dbg !10889     ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 3, !dbg !10889
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !10889

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter37 = and i32 %i.ah, 56, !dbg !10889
  br label %.lr.ph.i.i.i, !dbg !10889

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter38 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter38.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  %niter38.next.7 = add i32 %niter38, 8, !dbg !10889 ; 2 uses
  %niter38.ncmp.7 = icmp eq i32 %niter38.next.7, %unroll_iter37, !dbg !10889
  br i1 %niter38.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !10889

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod35.not = icmp eq i32 %xtraiter33, 0, !dbg !10889
  br i1 %lcmp.mod35.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !10889

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod36 = icmp ne i32 %xtraiter33, 0, !dbg !10889
  tail call void @llvm.assume(i1 %lcmp.mod36), !dbg !10889
  br label %.lr.ph.i.i.i.epil, !dbg !10889

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter34 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter34.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10891
  %epil.iter34.next = add i32 %epil.iter34, 1, !dbg !10889 ; 2 uses
  %epil.iter34.cmp.not = icmp eq i32 %epil.iter34.next, %xtraiter33, !dbg !10889
  br i1 %epil.iter34.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !10889, !llvm.loop !10795

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.aj = add i32 %.sroa.0.02.i.i, 1, !dbg !10892
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !10883
  %i.al = icmp eq ptr %i.ak, null, !dbg !10884
  br i1 %i.al, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i, !dbg !10885

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.am = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !10893
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !10894
  br label %bb.j, !dbg !10895

bb.h:                                             ; preds = %.lr.ph57.i
  %i.an = getelementptr inbounds nuw [128 x i8], ptr %.sroa.011.154.i, i64 %i.ac, !dbg !10896 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 120 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !dbg !10897
  %i.aq = and i64 %i.ap, 1, !dbg !10898
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !10898
  br i1 %i.ar, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i, !dbg !10898

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i33.i, 7, !dbg !10899
  br i1 %i.as, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i, !dbg !10899

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !10900
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, !dbg !10900

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0, !dbg !10901
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader, !dbg !10902

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i
  %i.at = mul nuw nsw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i, !dbg !10903 ; 2 uses
  %xtraiter27 = and i32 %i.at, 7, !dbg !10902     ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i33.i, 3, !dbg !10902
  br i1 %i.au, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new, !dbg !10902

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter31 = and i32 %i.at, 56, !dbg !10902
  br label %.lr.ph.i.i40.i, !dbg !10902

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  %niter32.next.7 = add i32 %niter32, 8, !dbg !10902 ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31, !dbg !10902
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i, !dbg !10902

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0, !dbg !10902
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader, !dbg !10902

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0, !dbg !10902
  tail call void @llvm.assume(i1 %lcmp.mod30), !dbg !10902
  br label %.lr.ph.i.i40.i.epil, !dbg !10902

.lr.ph.i.i40.i.epil:                              ; preds = %.lr.ph.i.i40.i.epil, %.lr.ph.i.i40.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i.i40.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i.i40.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !10904
  %epil.iter28.next = add i32 %epil.iter28, 1, !dbg !10902 ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27, !dbg !10902
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil, !dbg !10902, !llvm.loop !10825

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i, %bb.i
  %i.av = add i32 %.sroa.0.02.i33.i, 1, !dbg !10905
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8, !dbg !10897
  %i.ax = and i64 %i.aw, 1, !dbg !10898
  %i.ay = icmp eq i64 %i.ax, 0, !dbg !10898
  br i1 %i.ay, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i, !dbg !10898

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, %bb.h
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEBF_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.an), !dbg !10906
  br label %bb.j, !dbg !10895

bb.j:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.154.i, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i ], [ %i.am, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i ], !dbg !10907 ; 2 uses
  %i.az = add i64 %.sroa.05.055.i, 2, !dbg !10908 ; 3 uses
  %i.ba = lshr i64 %i.az, 1, !dbg !10865          ; 2 uses
  %.not.i = icmp eq i64 %i.ba, %i.o, !dbg !10865
  br i1 %.not.i, label %._crit_edge58.i, label %.lr.ph57.i, !dbg !10865

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20discard_all_messagesBZ_.exit: ; preds = %._crit_edge58.i, %bb.e
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2, !dbg !10909
  store atomic i64 %i.bb, ptr %0 release, align 128, !dbg !10910
  br label %bb.k, !dbg !10911

bb.k:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE20discard_all_messagesBZ_.exit
  ret i1 %i.d, !dbg !10912
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsG258MDvU3F_3std4sync4mpmcINtB5_6SenderNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4sendBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10913 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5.i = alloca [112 x i8], align 8         ; 10 uses
  %.sroa.6.i = alloca [112 x i8], align 8         ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 4 uses
  %i.f = alloca [120 x i8], align 8               ; 10 uses
  %i.g = alloca [120 x i8], align 8               ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11287
  %i.i = load i64, ptr %1, align 8, !dbg !11288, !range !692, !noundef !549
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11288
  %i.k = load ptr, ptr %i.j, align 8, !dbg !11289, !noundef !549 ; 7 uses
  switch i64 %i.i, label %default.unreachable25 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.at
  ], !dbg !11287

default.unreachable25:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !dbg !11290
  call void @_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4sendBZ_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.h, ptr noundef nonnull align 128 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.g, i64 undef, i32 noundef -1), !dbg !11291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11292
  br label %bb.au, !dbg !11293

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %2, i64 120, i1 false), !dbg !11294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11250), !dbg !11295
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11251), !dbg !11295
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128, !dbg !11296 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8, !dbg !11297, !noalias !11252 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 136, !dbg !11298 ; 4 uses
  %i.o = load atomic ptr, ptr %i.n acquire, align 8, !dbg !11299, !noalias !11252
  %i.p = and i64 %i.m, 1, !dbg !11300
  %i.q = icmp eq i64 %i.p, 0, !dbg !11300
  br i1 %i.q, label %.lr.ph.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_sendBZ_.exit.thread.i, !dbg !11300

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_sendBZ_.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !11302
  %.sroa.017.0.copyload38.i = load i64, ptr %i.f, align 8, !dbg !11302, !alias.scope !11251, !noalias !11250
  %.sroa.5.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx39.i, i64 112, i1 false), !dbg !11302, !noalias !11250
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE5writeBZ_.exit.i, !dbg !11303

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.d, !dbg !11300

bb.d:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.sroa.03.070.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.aa, %.backedge.i.i ] ; 3 uses
  %.sroa.07.069.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.ab, %.backedge.i.i ] ; 2 uses
  %.sroa.0.068.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.041.067.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.sroa.041.0.be.i.i, %.backedge.i.i ] ; 4 uses
  %i.s = lshr exact i64 %.sroa.03.070.i.i, 1, !dbg !11304
  %i.t = and i64 %i.s, 31, !dbg !11304            ; 3 uses
  %i.u = icmp eq i64 %i.t, 31, !dbg !11305
  br i1 %i.u, label %bb.e, label %bb.g, !dbg !11305

bb.e:                                             ; preds = %bb.d
  %i.v = icmp ult i32 %.sroa.0.068.i.i, 7, !dbg !11306
  br i1 %i.v, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.f, !dbg !11306

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
          to label %.loopexit.i.i unwind label %bb.r, !dbg !11307, !noalias !11252

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %.sroa.0.068.i.i, 0, !dbg !11308
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !11309

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.w = mul nuw nsw i32 %.sroa.0.068.i.i, %.sroa.0.068.i.i, !dbg !11310 ; 2 uses
  %xtraiter57 = and i32 %i.w, 7, !dbg !11309      ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.068.i.i, 3, !dbg !11309
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !11309

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter61 = and i32 %i.w, 56, !dbg !11309
  br label %.lr.ph.i.i.i, !dbg !11309

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter62 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter62.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  %niter62.next.7 = add i32 %niter62, 8, !dbg !11309 ; 2 uses
  %niter62.ncmp.7 = icmp eq i32 %niter62.next.7, %unroll_iter61, !dbg !11309
  br i1 %niter62.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !11309

bb.g:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.t, 30, !dbg !11312        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.041.067.i.i, null
  %or.cond.i.i = select i1 %i.y, i1 %.not.i.i, i1 false, !dbg !11312
  br i1 %or.cond.i.i, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEEB2l_.exit.i.i, !dbg !11312

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod59.not = icmp eq i32 %xtraiter57, 0, !dbg !11309
  br i1 %lcmp.mod59.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !11309

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod60 = icmp ne i32 %xtraiter57, 0, !dbg !11309
  tail call void @llvm.assume(i1 %lcmp.mod60), !dbg !11309
  br label %.lr.ph.i.i.i.epil, !dbg !11309

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter58 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter58.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11311, !noalias !11252
  %epil.iter58.next = add i32 %epil.iter58, 1, !dbg !11309 ; 2 uses
  %epil.iter58.cmp.not = icmp eq i32 %epil.iter58.next, %xtraiter57, !dbg !11309
  br i1 %epil.iter58.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.epil, !dbg !11309, !llvm.loop !10957

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, %bb.f
  %i.z = add i32 %.sroa.0.068.i.i, 1, !dbg !11313
  br label %.backedge.i.i, !dbg !11314

.backedge.i.i:                                    ; preds = %.loopexit62.i.i, %bb.m, %bb.l, %.loopexit.i.i
  %.sroa.041.0.be.i.i = phi ptr [ %.sroa.041.3.i.i, %.loopexit62.i.i ], [ %.sroa.041.067.i.i, %.loopexit.i.i ], [ %i.ag, %bb.l ], [ %i.ag, %bb.m ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ar, %.loopexit62.i.i ], [ %i.z, %.loopexit.i.i ], [ %.sroa.0.068.i.i, %bb.l ], [ %.sroa.0.068.i.i, %bb.m ]
  %i.aa = load atomic i64, ptr %i.l acquire, align 8, !dbg !11315, !noalias !11252 ; 2 uses
  %i.ab = load atomic ptr, ptr %i.n acquire, align 8, !dbg !11316, !noalias !11252
  %i.ac = and i64 %i.aa, 1, !dbg !11300
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !11300
  br i1 %i.ad, label %bb.d, label %._crit_edge.i.i, !dbg !11300

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEEB2l_.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.041.3.i.i = phi ptr [ %.sroa.041.067.i.i, %bb.g ], [ %i.af, %bb.h ], !dbg !11317 ; 8 uses
  %i.ae = icmp eq ptr %.sroa.07.069.i.i, null, !dbg !11318
  br i1 %i.ae, label %bb.i, label %bb.n, !dbg !11319

bb.h:                                             ; preds = %bb.g
  %i.af = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEE13new_zeroed_inB1v_()
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEEB2l_.exit.i.i unwind label %.body.loopexit.i, !dbg !11320, !noalias !11255

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEEB2l_.exit.i.i
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEE13new_zeroed_inB1v_()
          to label %bb.j unwind label %bb.r, !dbg !11321, !noalias !11252 ; 5 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = cmpxchg ptr %i.n, ptr null, ptr %i.ag release monotonic, align 8, !dbg !11322, !noalias !11252
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1, !dbg !11322
  br i1 %i.ai, label %bb.k, label %bb.l, !dbg !11323

bb.k:                                             ; preds = %bb.j
  store atomic ptr %i.ag, ptr %i.r release, align 8, !dbg !11324, !noalias !11252
  br label %bb.n, !dbg !11325

bb.l:                                             ; preds = %bb.j
  %i.aj = icmp eq ptr %.sroa.041.3.i.i, null, !dbg !11326
  br i1 %i.aj, label %.backedge.i.i, label %bb.m, !dbg !11326

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !11327, !noalias !11252
  br label %.backedge.i.i, !dbg !11326

bb.n:                                             ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEEB2l_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %.sroa.07.069.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackEEEEB2l_.exit.i.i ], [ %i.ag, %bb.k ], !dbg !11328 ; 3 uses
  %i.ak = add i64 %.sroa.03.070.i.i, 2, !dbg !11329
  %i.al = cmpxchg weak ptr %i.l, i64 %.sroa.03.070.i.i, i64 %i.ak seq_cst acquire, align 8, !dbg !11330, !noalias !11252
  %i.am = extractvalue { i64, i1 } %i.al, 1, !dbg !11330
  br i1 %i.am, label %bb.o, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i26.i.i, !dbg !11331

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i26.i.i: ; preds = %bb.n
  %..i.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i.i, i32 6), !dbg !11332 ; 2 uses
  %i.an = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i, !dbg !11333 ; 2 uses
  %.not.i27.i.i = icmp eq i32 %.sroa.0.068.i.i, 0, !dbg !11334
  br i1 %.not.i27.i.i, label %.loopexit62.i.i, label %.lr.ph.i30.i.i.preheader, !dbg !11335

.lr.ph.i30.i.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i26.i.i
  %xtraiter = and i32 %i.an, 5, !dbg !11335       ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.068.i.i, 3, !dbg !11335
  br i1 %i.ao, label %.lr.ph.i30.i.i.epil.preheader, label %.lr.ph.i30.i.i.preheader.new, !dbg !11335

.lr.ph.i30.i.i.preheader.new:                     ; preds = %.lr.ph.i30.i.i.preheader
  %unroll_iter = and i32 %i.an, 56, !dbg !11335
  br label %.lr.ph.i30.i.i, !dbg !11335

.lr.ph.i30.i.i:                                   ; preds = %.lr.ph.i30.i.i, %.lr.ph.i30.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  %niter.next.7 = add i32 %niter, 8, !dbg !11335  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !11335
  br i1 %niter.ncmp.7, label %.loopexit62.i.i.loopexit.unr-lcssa, label %.lr.ph.i30.i.i, !dbg !11335

bb.o:                                             ; preds = %bb.n
  br i1 %i.y, label %bb.p, label %._crit_edge.i.i, !dbg !11337

bb.p:                                             ; preds = %bb.o
  %.not15.i.i = icmp eq ptr %.sroa.041.3.i.i, null, !dbg !11338
  br i1 %.not15.i.i, label %bb.q, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_sendBZ_.exit.thread41.i, !dbg !11339, !prof !586

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #32
          to label %.noexc5.i unwind label %.body.loopexit.split-lp.i, !dbg !11340, !noalias !11255

.noexc5.i:                                        ; preds = %bb.q
  unreachable

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_sendBZ_.exit.thread41.i: ; preds = %bb.p
  store atomic ptr %.sroa.041.3.i.i, ptr %i.n release, align 8, !dbg !11341, !noalias !11252
  %i.ap = atomicrmw add ptr %i.l, i64 2 release, align 8, !dbg !11342, !noalias !11252 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 3968, !dbg !11343
  store atomic ptr %.sroa.041.3.i.i, ptr %i.aq release, align 8, !dbg !11344, !noalias !11252
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i), !dbg !11301
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !11302
  %.sroa.017.0.copyload44.i = load i64, ptr %i.f, align 8, !dbg !11302, !alias.scope !11251, !noalias !11250
  %.sroa.5.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !11302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx45.i, i64 112, i1 false), !dbg !11302, !noalias !11250
  br label %bb.t, !dbg !11303

.loopexit62.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i30.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !11335
  br i1 %lcmp.mod.not, label %.loopexit62.i.i, label %.lr.ph.i30.i.i.epil.preheader, !dbg !11335

.lr.ph.i30.i.i.epil.preheader:                    ; preds = %.loopexit62.i.i.loopexit.unr-lcssa, %.lr.ph.i30.i.i.preheader
  %lcmp.mod56 = icmp ne i32 %xtraiter, 0, !dbg !11335
  tail call void @llvm.assume(i1 %lcmp.mod56), !dbg !11335
  br label %.lr.ph.i30.i.i.epil, !dbg !11335

.lr.ph.i30.i.i.epil:                              ; preds = %.lr.ph.i30.i.i.epil, %.lr.ph.i30.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !11336, !noalias !11252
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !11335 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !11335
  br i1 %epil.iter.cmp.not, label %.loopexit62.i.i, label %.lr.ph.i30.i.i.epil, !dbg !11335, !llvm.loop !11018

.loopexit62.i.i:                                  ; preds = %.loopexit62.i.i.loopexit.unr-lcssa, %.lr.ph.i30.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i26.i.i
  %i.ar = add i32 %.sroa.0.068.i.i, 1, !dbg !11345
  br label %.backedge.i.i, !dbg !11346

bb.r:                                             ; preds = %bb.i, %bb.f
  %.sroa.041.1.ph.i.i = phi ptr [ %.sroa.041.067.i.i, %bb.f ], [ %.sroa.041.3.i.i, %bb.i ] ; 2 uses
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp eq ptr %.sroa.041.1.ph.i.i, null, !dbg !11347
  br i1 %i.as, label %.body.thread.i, label %.thread53.i.i, !dbg !11347

.thread53.i.i:                                    ; preds = %bb.r
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !11348, !noalias !11252
  br label %.body.thread.i, !dbg !11347

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.o
  %.sroa.9.0.i = phi i64 [ %i.t, %bb.o ], [ 0, %.backedge.i.i ], !dbg !11349
  %.sroa.413.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.o ], [ null, %.backedge.i.i ], !dbg !11350 ; 2 uses
  %.sroa.041.4.i.i = phi ptr [ %.sroa.041.3.i.i, %bb.o ], [ %.sroa.041.0.be.i.i, %.backedge.i.i ], !dbg !11317 ; 2 uses
  %i.at = icmp eq ptr %.sroa.041.4.i.i, null, !dbg !11351
  br i1 %i.at, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_sendBZ_.exit.i, label %bb.s, !dbg !11351

bb.s:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !11352, !noalias !11252
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_sendBZ_.exit.i, !dbg !11351

.body.loopexit.i:                                 ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.loopexit.split-lp.i:                        ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB4_6Parser10find_short:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #35, !dbg !11621
  unreachable, !dbg !11621
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB4_6Parser9find_long(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11626 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 48), align 8, !dbg !11748, !noalias !11712, !noundef !549
  %i.c = icmp eq i64 %i.b, 0, !dbg !11749
  br i1 %i.c, label %.loopexit, label %bb.b, !dbg !11750

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRShECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2), !dbg !11751 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11713), !dbg !11752
  %i.e = lshr i64 %i.d, 57, !dbg !11753
  %i.f = trunc nuw nsw i64 %i.e to i8, !dbg !11754
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 32), align 8, !dbg !11755, !alias.scope !11713, !noalias !11714, !noundef !549 ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 24), align 8, !alias.scope !11713, !noalias !11714, !nonnull !549, !noundef !549
  %i.i = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !11756

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.e ], !dbg !11757
  %.pn.i.i.i = phi i64 [ %i.d, %bb.b ], [ %i.ac, %bb.e ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.g, !dbg !11757 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i.i.i, !dbg !11758
  %.sroa.0.0.copyload.i16.i.i.i = load <16 x i8>, ptr %i.k, align 1, !dbg !11759, !noalias !11715 ; 2 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i16.i.i.i, %i.j, !dbg !11760
  %i.m = bitcast <16 x i1> %i.l to i16, !dbg !11761 ; 2 uses
  %.not.i.not20.i.i.i = icmp eq i16 %i.m, 0, !dbg !11762
  br i1 %.not.i.not20.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !11763

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %.sroa.06.0.i21.i.i.i = phi i16 [ %i.aa, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i21.i.i.i, i1 true), !dbg !11764
  %i.o = zext nneg i16 %i.n to i64, !dbg !11765
  %i.p = add i64 %.sroa.01.0.i.i.i.i, %i.o, !dbg !11766
  %i.q = and i64 %i.p, %i.g, !dbg !11766
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 24), align 8, !dbg !11767, !noalias !11716, !nonnull !549, !noundef !549
  %i.s = sub nsw i64 0, %i.q, !dbg !11768         ; 2 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %i.r, i64 %i.s, !dbg !11769
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32, !dbg !11770
  %i.v = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownShINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u), !dbg !11771, !noalias !11717
  br i1 %i.v, label %bb.f, label %bb.d, !dbg !11772, !prof !609

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i16.i.i.i, splat (i8 -1), !dbg !11773
  %i.x = bitcast <16 x i1> %i.w to i16, !dbg !11774
  %i.y = icmp eq i16 %i.x, 0, !dbg !11775
  br i1 %i.y, label %bb.e, label %.loopexit, !dbg !11775, !prof !586

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.z = add i16 %.sroa.06.0.i21.i.i.i, -1, !dbg !11776
  %i.aa = and i16 %i.z, %.sroa.06.0.i21.i.i.i, !dbg !11777 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.aa, 0, !dbg !11762
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !dbg !11763

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = add i64 %.sroa.9.0.i.i.i.i, 16, !dbg !11778 ; 2 uses
  %i.ac = add i64 %.sroa.01.0.i.i.i.i, %i.ab, !dbg !11779
  br label %bb.c, !dbg !11756

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 24), align 8, !dbg !11780, !noalias !11718, !nonnull !549
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.ad, i64 %i.s, !dbg !11780
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8, !dbg !11781
  %i.ag = load i64, ptr %i.af, align 8, !dbg !11782, !noundef !549 ; 3 uses
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 16), align 8, !dbg !11783, !noundef !549 ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah, !dbg !11784
  br i1 %i.ai, label %bb.g, label %bb.h, !dbg !11784

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11785
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !11785
  %i.aj = load i64, ptr %i.a, align 8, !dbg !11785, !range !584, !noundef !549
  %i.ak = trunc nuw i64 %i.aj to i1, !dbg !11786
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11787
  %i.am = load i64, ptr %i.al, align 8, !dbg !11787, !range !585, !noundef !549 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11787 ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k, !dbg !11786, !prof !586

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtCs2NzvFoTxuAy_2rg5flags5parseNtB6_6Parser3new1P, i64 8), align 8, !dbg !11788, !nonnull !549, !noundef !549
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.ag, !dbg !11789
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11790
  store ptr %i.ap, ptr %i.aq, align 8, !dbg !11790
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !11790
  br label %bb.i, !dbg !11791

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #35, !dbg !11784
  unreachable, !dbg !11784

bb.i:                                             ; preds = %bb.l, %bb.g
  ret void, !dbg !11791

bb.j:                                             ; preds = %.loopexit
  %i.ar = load i64, ptr %i.an, align 8, !dbg !11792
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ar) #32, !dbg !11793
  unreachable, !dbg !11793

bb.k:                                             ; preds = %.loopexit
  %i.as = load ptr, ptr %i.an, align 8, !dbg !11794, !nonnull !549, !noundef !549 ; 2 uses
  %i.at = icmp ule i64 %2, %i.am, !dbg !11795
  tail call void @llvm.assume(i1 %i.at), !dbg !11796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11797
  %.not = icmp eq i64 %2, 0, !dbg !11798
  br i1 %.not, label %bb.l, label %bb.m, !dbg !11798

bb.l:                                             ; preds = %bb.m, %bb.k
  store i64 %i.am, ptr %0, align 8, !dbg !11799
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11799
  store ptr %i.as, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !11799
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11799
  store i64 %2, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !11799
  br label %bb.i, !dbg !11800

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %1, i64 %2, i1 false), !dbg !11801
  br label %bb.l, !dbg !11802
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtNtCsG258MDvU3F_3std4sync4mpmcINtB5_8ReceiverNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvBT_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11803 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427.i = alloca [112 x i8], align 8       ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [120 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12205
  %i.j = load i64, ptr %1, align 8, !dbg !12206, !range !692, !noundef !549
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12206
  %i.l = load ptr, ptr %i.k, align 8, !dbg !12207, !noundef !549 ; 11 uses
  switch i64 %i.j, label %default.unreachable32 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.aq
  ], !dbg !12205

default.unreachable32:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvBZ_(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.i, ptr noundef nonnull align 128 %i.l, i64 undef, i32 noundef -1), !dbg !12208
  br label %bb.ar, !dbg !12209

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12166), !dbg !12210
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 -1, ptr %i.m, align 8, !noalias !12166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12211, !noalias !12166
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12212
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !12212
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false), !dbg !12212, !noalias !12166
  br label %bb.d, !dbg !12213

bb.d:                                             ; preds = %_RINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB18_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0uEB1B_.exit.i, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !12168), !dbg !12214
  %i.t = load atomic i64, ptr %i.l acquire, align 8, !dbg !12215, !noalias !12169
  %i.u = load atomic ptr, ptr %i.p acquire, align 8, !dbg !12216, !noalias !12169
  br label %bb.e, !dbg !12217

bb.e:                                             ; preds = %.backedge.i.i, %bb.d
  %.sroa.0.048.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.0.048.be.i.i, %.backedge.i.i ], !dbg !12218 ; 14 uses
  %.sroa.012.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.af, %.backedge.i.i ], !dbg !12219 ; 8 uses
  %.sroa.07.0.i.i = phi i64 [ %i.t, %bb.d ], [ %i.ae, %.backedge.i.i ], !dbg !12220 ; 5 uses
  %i.v = lshr i64 %.sroa.07.0.i.i, 1, !dbg !12221 ; 2 uses
  %i.w = and i64 %i.v, 31, !dbg !12221            ; 6 uses
  %i.x = icmp eq i64 %i.w, 31, !dbg !12222
  br i1 %i.x, label %bb.f, label %bb.g, !dbg !12222

bb.f:                                             ; preds = %bb.e
  %i.y = icmp ult i32 %.sroa.0.048.i.i, 7, !dbg !12223
  br i1 %i.y, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %.backedge.sink.split.i.i, !dbg !12223

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.048.i.i, 0, !dbg !12224
  br i1 %.not.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i.i.preheader, !dbg !12225

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.z = mul nuw nsw i32 %.sroa.0.048.i.i, %.sroa.0.048.i.i, !dbg !12226 ; 2 uses
  %xtraiter70 = and i32 %i.z, 7, !dbg !12225      ; 3 uses
  %i.aa = icmp ult i32 %.sroa.0.048.i.i, 3, !dbg !12225
  br i1 %i.aa, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !12225

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter74 = and i32 %i.z, 56, !dbg !12225
  br label %.lr.ph.i.i.i, !dbg !12225

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter75 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter75.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  %niter75.next.7 = add i32 %niter75, 8, !dbg !12225 ; 2 uses
  %niter75.ncmp.7 = icmp eq i32 %niter75.next.7, %unroll_iter74, !dbg !12225
  br i1 %niter75.ncmp.7, label %.backedge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !12225

bb.g:                                             ; preds = %bb.e
  %i.ab = add i64 %.sroa.07.0.i.i, 2, !dbg !12228 ; 2 uses
  %i.ac = and i64 %.sroa.07.0.i.i, 1, !dbg !12229
  %i.ad = icmp eq i64 %i.ac, 0, !dbg !12229
  br i1 %i.ad, label %bb.h, label %bb.k, !dbg !12229

.backedge.sink.split.i.i:                         ; preds = %bb.m, %bb.f
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !12230, !noalias !12169
  br label %.backedge.i.i, !dbg !12231

.backedge.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i
  %lcmp.mod72.not = icmp eq i32 %xtraiter70, 0, !dbg !12225
  br i1 %lcmp.mod72.not, label %.backedge.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !12225

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.backedge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod73 = icmp ne i32 %xtraiter70, 0, !dbg !12225
  call void @llvm.assume(i1 %lcmp.mod73), !dbg !12225
  br label %.lr.ph.i.i.i.epil, !dbg !12225

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter71 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter71.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12227, !noalias !12169
  %epil.iter71.next = add i32 %epil.iter71, 1, !dbg !12225 ; 2 uses
  %epil.iter71.cmp.not = icmp eq i32 %epil.iter71.next, %xtraiter70, !dbg !12225
  br i1 %epil.iter71.cmp.not, label %.backedge.i.i, label %.lr.ph.i.i.i.epil, !dbg !12225, !llvm.loop !11842

.backedge.i.i.loopexit55.unr-lcssa:               ; preds = %.lr.ph.i23.i.i
  %lcmp.mod66.not = icmp eq i32 %xtraiter64, 0, !dbg !12232
  br i1 %lcmp.mod66.not, label %.backedge.i.i, label %.lr.ph.i23.i.i.epil.preheader, !dbg !12232

.lr.ph.i23.i.i.epil.preheader:                    ; preds = %.backedge.i.i.loopexit55.unr-lcssa, %.lr.ph.i23.i.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter64, 0, !dbg !12232
  call void @llvm.assume(i1 %lcmp.mod67), !dbg !12232
  br label %.lr.ph.i23.i.i.epil, !dbg !12232

.lr.ph.i23.i.i.epil:                              ; preds = %.lr.ph.i23.i.i.epil, %.lr.ph.i23.i.i.epil.preheader
  %epil.iter65 = phi i32 [ 0, %.lr.ph.i23.i.i.epil.preheader ], [ %epil.iter65.next, %.lr.ph.i23.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  %epil.iter65.next = add i32 %epil.iter65, 1, !dbg !12232 ; 2 uses
  %epil.iter65.cmp.not = icmp eq i32 %epil.iter65.next, %xtraiter64, !dbg !12232
  br i1 %epil.iter65.cmp.not, label %.backedge.i.i, label %.lr.ph.i23.i.i.epil, !dbg !12232, !llvm.loop !11848

.backedge.i.i.loopexit56.unr-lcssa:               ; preds = %.lr.ph.i35.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !12234
  br i1 %lcmp.mod.not, label %.backedge.i.i, label %.lr.ph.i35.i.i.epil.preheader, !dbg !12234

.lr.ph.i35.i.i.epil.preheader:                    ; preds = %.backedge.i.i.loopexit56.unr-lcssa, %.lr.ph.i35.i.i.preheader
  %lcmp.mod63 = icmp ne i32 %xtraiter, 0, !dbg !12234
  call void @llvm.assume(i1 %lcmp.mod63), !dbg !12234
  br label %.lr.ph.i35.i.i.epil, !dbg !12234

.lr.ph.i35.i.i.epil:                              ; preds = %.lr.ph.i35.i.i.epil, %.lr.ph.i35.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i35.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i35.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !12234 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !12234
  br i1 %epil.iter.cmp.not, label %.backedge.i.i, label %.lr.ph.i35.i.i.epil, !dbg !12234, !llvm.loop !11854

.backedge.i.i:                                    ; preds = %.backedge.i.i.loopexit56.unr-lcssa, %.lr.ph.i35.i.i.epil, %.backedge.i.i.loopexit55.unr-lcssa, %.lr.ph.i23.i.i.epil, %.backedge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i31.i.i, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i.i, %.backedge.sink.split.i.i, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ae = load atomic i64, ptr %i.l acquire, align 8, !dbg !12231, !noalias !12169
  %i.af = load atomic ptr, ptr %i.p acquire, align 8, !dbg !12236, !noalias !12169
  %.sroa.0.048.be.i.i = add i32 %.sroa.0.048.i.i, 1, !dbg !12237
  br label %bb.e, !dbg !12221

bb.h:                                             ; preds = %bb.g
  fence seq_cst, !dbg !12238
  %i.ag = load atomic i64, ptr %i.q monotonic, align 8, !dbg !12239, !noalias !12169 ; 3 uses
  %i.ah = lshr i64 %i.ag, 1, !dbg !12240
  %i.ai = icmp eq i64 %i.v, %i.ah, !dbg !12241
  br i1 %i.ai, label %bb.j, label %bb.i, !dbg !12241

bb.i:                                             ; preds = %bb.h
  %.not.unshifted.i.i = xor i64 %i.ag, %.sroa.07.0.i.i, !dbg !12242
  %.not.i.i = icmp ugt i64 %.not.unshifted.i.i, 63, !dbg !12242
  %i.aj = zext i1 %.not.i.i to i64, !dbg !12242
  %spec.select.i.i = or disjoint i64 %i.ab, %i.aj, !dbg !12242
  br label %bb.k, !dbg !12242

bb.j:                                             ; preds = %bb.h
  %i.ak = and i64 %i.ag, 1, !dbg !12243
  %i.al = icmp eq i64 %i.ak, 0, !dbg !12243
  br i1 %i.al, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_recvBZ_.exit.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.thread.i, !dbg !12243

bb.k:                                             ; preds = %bb.i, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.ab, %bb.g ], [ %spec.select.i.i, %bb.i ], !dbg !12237 ; 2 uses
  %i.am = icmp eq ptr %.sroa.012.0.i.i, null, !dbg !12244
  br i1 %i.am, label %bb.m, label %bb.l, !dbg !12245

bb.l:                                             ; preds = %bb.k
  %i.an = cmpxchg weak ptr %i.l, i64 %.sroa.07.0.i.i, i64 %.sroa.01.0.i.i seq_cst acquire, align 8, !dbg !12246, !noalias !12169
  %i.ao = extractvalue { i64, i1 } %i.an, 1, !dbg !12246
  br i1 %i.ao, label %bb.n, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i31.i.i, !dbg !12247

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp ult i32 %.sroa.0.048.i.i, 7, !dbg !12248
  br i1 %i.ap, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i.i, label %.backedge.sink.split.i.i, !dbg !12248

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i.i: ; preds = %bb.m
  %.not.i20.i.i = icmp eq i32 %.sroa.0.048.i.i, 0, !dbg !12249
  br i1 %.not.i20.i.i, label %.backedge.i.i, label %.lr.ph.i23.i.i.preheader, !dbg !12232

.lr.ph.i23.i.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i.i
  %i.aq = mul nuw nsw i32 %.sroa.0.048.i.i, %.sroa.0.048.i.i, !dbg !12250 ; 2 uses
  %xtraiter64 = and i32 %i.aq, 7, !dbg !12232     ; 3 uses
  %i.ar = icmp ult i32 %.sroa.0.048.i.i, 3, !dbg !12232
  br i1 %i.ar, label %.lr.ph.i23.i.i.epil.preheader, label %.lr.ph.i23.i.i.preheader.new, !dbg !12232

.lr.ph.i23.i.i.preheader.new:                     ; preds = %.lr.ph.i23.i.i.preheader
  %unroll_iter68 = and i32 %i.aq, 56, !dbg !12232
  br label %.lr.ph.i23.i.i, !dbg !12232

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i23.i.i, %.lr.ph.i23.i.i.preheader.new
  %niter69 = phi i32 [ 0, %.lr.ph.i23.i.i.preheader.new ], [ %niter69.next.7, %.lr.ph.i23.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12233, !noalias !12169
  %niter69.next.7 = add i32 %niter69, 8, !dbg !12232 ; 2 uses
  %niter69.ncmp.7 = icmp eq i32 %niter69.next.7, %unroll_iter68, !dbg !12232
  br i1 %niter69.ncmp.7, label %.backedge.i.i.loopexit55.unr-lcssa, label %.lr.ph.i23.i.i, !dbg !12232

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i31.i.i: ; preds = %bb.l
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.048.i.i, i32 6), !dbg !12251 ; 2 uses
  %i.as = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i, !dbg !12252 ; 2 uses
  %.not.i32.i.i = icmp eq i32 %.sroa.0.048.i.i, 0, !dbg !12253
  br i1 %.not.i32.i.i, label %.backedge.i.i, label %.lr.ph.i35.i.i.preheader, !dbg !12234

.lr.ph.i35.i.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i31.i.i
  %xtraiter = and i32 %i.as, 5, !dbg !12234       ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.048.i.i, 3, !dbg !12234
  br i1 %i.at, label %.lr.ph.i35.i.i.epil.preheader, label %.lr.ph.i35.i.i.preheader.new, !dbg !12234

.lr.ph.i35.i.i.preheader.new:                     ; preds = %.lr.ph.i35.i.i.preheader
  %unroll_iter = and i32 %i.as, 56, !dbg !12234
  br label %.lr.ph.i35.i.i, !dbg !12234

.lr.ph.i35.i.i:                                   ; preds = %.lr.ph.i35.i.i, %.lr.ph.i35.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i35.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i35.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12235, !noalias !12169
  %niter.next.7 = add i32 %niter, 8, !dbg !12234  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !12234
  br i1 %niter.ncmp.7, label %.backedge.i.i.loopexit56.unr-lcssa, label %.lr.ph.i35.i.i, !dbg !12234

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq i64 %i.w, 30, !dbg !12254
  br i1 %i.au, label %bb.o, label %bb.q, !dbg !12254

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 3968 ; 2 uses
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8, !dbg !12255, !noalias !12169 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null, !dbg !12256
  br i1 %i.ax, label %.lr.ph.i41.i.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i.i, !dbg !12257

.lr.ph.i41.i.i:                                   ; preds = %bb.o, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i
  %.sroa.0.02.i.i.i = phi i32 [ %i.bb, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], [ 0, %bb.o ] ; 6 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i.i.i, 7, !dbg !12258
  br i1 %i.ay, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i.i, label %bb.p, !dbg !12258

bb.p:                                             ; preds = %.lr.ph.i41.i.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !12259, !noalias !12169
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, !dbg !12259

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i.i: ; preds = %.lr.ph.i41.i.i
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i, 0, !dbg !12260
  br i1 %.not.i.i.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader, !dbg !12261

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i.i
  %i.az = mul nuw nsw i32 %.sroa.0.02.i.i.i, %.sroa.0.02.i.i.i, !dbg !12262 ; 2 uses
  %xtraiter76 = and i32 %i.az, 7, !dbg !12261     ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02.i.i.i, 3, !dbg !12261
  br i1 %i.ba, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new, !dbg !12261

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter80 = and i32 %i.az, 56, !dbg !12261
  br label %.lr.ph.i.i.i.i, !dbg !12261

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter81 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter81.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  %niter81.next.7 = add i32 %niter81, 8, !dbg !12261 ; 2 uses
  %niter81.ncmp.7 = icmp eq i32 %niter81.next.7, %unroll_iter80, !dbg !12261
  br i1 %niter81.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !dbg !12261

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod78.not = icmp eq i32 %xtraiter76, 0, !dbg !12261
  br i1 %lcmp.mod78.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader, !dbg !12261

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter76, 0, !dbg !12261
  call void @llvm.assume(i1 %lcmp.mod79), !dbg !12261
  br label %.lr.ph.i.i.i.i.epil, !dbg !12261

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter77 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter77.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12263, !noalias !12169
  %epil.iter77.next = add i32 %epil.iter77, 1, !dbg !12261 ; 2 uses
  %epil.iter77.cmp.not = icmp eq i32 %epil.iter77.next, %xtraiter76, !dbg !12261
  br i1 %epil.iter77.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !dbg !12261, !llvm.loop !11897

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i.i, %bb.p
  %i.bb = add i32 %.sroa.0.02.i.i.i, 1, !dbg !12264
  %i.bc = load atomic ptr, ptr %i.av acquire, align 8, !dbg !12255, !noalias !12169 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null, !dbg !12256
  br i1 %i.bd, label %.lr.ph.i41.i.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i.i, !dbg !12257

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i, %bb.o
  %.lcssa.i.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.bc, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i ], !dbg !12255 ; 2 uses
  %i.be = and i64 %.sroa.01.0.i.i, -2, !dbg !12265
  %i.bf = add i64 %i.be, 2, !dbg !12266
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i, i64 3968, !dbg !12267
  %i.bh = load atomic ptr, ptr %i.bg monotonic, align 8, !dbg !12268, !noalias !12169
  %i.bi = icmp ne ptr %i.bh, null, !dbg !12269
  %i.bj = zext i1 %i.bi to i64, !dbg !12270
  %spec.select17.i.i = or disjoint i64 %i.bf, %i.bj, !dbg !12270
  store atomic ptr %.lcssa.i.i.i, ptr %i.p release, align 8, !dbg !12271, !noalias !12169
  store atomic i64 %spec.select17.i.i, ptr %i.l release, align 8, !dbg !12272, !noalias !12169
  br label %bb.q, !dbg !12273

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_recvBZ_.exit.i: ; preds = %bb.j
  %i.bk = load i32, ptr %i.m, align 8, !dbg !12274, !range !767, !noalias !12166, !noundef !549 ; 2 uses
  %.not.i = icmp eq i32 %i.bk, -1, !dbg !12274
  br i1 %.not.i, label %bb.aa, label %bb.z, !dbg !12275

bb.q:                                             ; preds = %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE9wait_nextBW_.exit.i.i, %bb.n
  store ptr %.sroa.012.0.i.i, ptr %i.n, align 8, !dbg !12276, !alias.scope !12168, !noalias !12166
  store i64 %i.w, ptr %i.o, align 8, !dbg !12277, !alias.scope !12168, !noalias !12166
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %.sroa.012.0.i.i, i64 %i.w, !dbg !12278 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 120 ; 3 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8, !dbg !12279, !noalias !12177
  %i.bo = and i64 %i.bn, 1, !dbg !12280
  %i.bp = icmp eq i64 %i.bo, 0, !dbg !12280
  br i1 %i.bp, label %.lr.ph.i.i6.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i.i, !dbg !12280

.lr.ph.i.i6.i:                                    ; preds = %bb.q, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i
  %.sroa.0.02.i.i7.i = phi i32 [ %i.bt, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i ], [ 0, %bb.q ] ; 6 uses
  %i.bq = icmp ult i32 %.sroa.0.02.i.i7.i, 7, !dbg !12281
  br i1 %i.bq, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10.i, label %bb.r, !dbg !12281

bb.r:                                             ; preds = %.lr.ph.i.i6.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !dbg !12282, !noalias !12177
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i, !dbg !12282

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10.i: ; preds = %.lr.ph.i.i6.i
  %.not.i.i.i11.i = icmp eq i32 %.sroa.0.02.i.i7.i, 0, !dbg !12283
  br i1 %.not.i.i.i11.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i, label %.lr.ph.i.i.i14.i.preheader, !dbg !12284

.lr.ph.i.i.i14.i.preheader:                       ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10.i
  %i.br = mul nuw nsw i32 %.sroa.0.02.i.i7.i, %.sroa.0.02.i.i7.i, !dbg !12285 ; 2 uses
  %xtraiter82 = and i32 %i.br, 7, !dbg !12284     ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.02.i.i7.i, 3, !dbg !12284
  br i1 %i.bs, label %.lr.ph.i.i.i14.i.epil.preheader, label %.lr.ph.i.i.i14.i.preheader.new, !dbg !12284

.lr.ph.i.i.i14.i.preheader.new:                   ; preds = %.lr.ph.i.i.i14.i.preheader
  %unroll_iter86 = and i32 %i.br, 56, !dbg !12284
  br label %.lr.ph.i.i.i14.i, !dbg !12284

.lr.ph.i.i.i14.i:                                 ; preds = %.lr.ph.i.i.i14.i, %.lr.ph.i.i.i14.i.preheader.new
  %niter87 = phi i32 [ 0, %.lr.ph.i.i.i14.i.preheader.new ], [ %niter87.next.7, %.lr.ph.i.i.i14.i ]
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  %niter87.next.7 = add i32 %niter87, 8, !dbg !12284 ; 2 uses
  %niter87.ncmp.7 = icmp eq i32 %niter87.next.7, %unroll_iter86, !dbg !12284
  br i1 %niter87.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i, !dbg !12284

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i
  %lcmp.mod84.not = icmp eq i32 %xtraiter82, 0, !dbg !12284
  br i1 %lcmp.mod84.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i, label %.lr.ph.i.i.i14.i.epil.preheader, !dbg !12284

.lr.ph.i.i.i14.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.preheader
  %lcmp.mod85 = icmp ne i32 %xtraiter82, 0, !dbg !12284
  call void @llvm.assume(i1 %lcmp.mod85), !dbg !12284
  br label %.lr.ph.i.i.i14.i.epil, !dbg !12284

.lr.ph.i.i.i14.i.epil:                            ; preds = %.lr.ph.i.i.i14.i.epil, %.lr.ph.i.i.i14.i.epil.preheader
  %epil.iter83 = phi i32 [ 0, %.lr.ph.i.i.i14.i.epil.preheader ], [ %epil.iter83.next, %.lr.ph.i.i.i14.i.epil ]
  call void @llvm.x86.sse2.pause(), !dbg !12286, !noalias !12177
  %epil.iter83.next = add i32 %epil.iter83, 1, !dbg !12284 ; 2 uses
  %epil.iter83.cmp.not = icmp eq i32 %epil.iter83.next, %xtraiter82, !dbg !12284
  br i1 %epil.iter83.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i, label %.lr.ph.i.i.i14.i.epil, !dbg !12284, !llvm.loop !11943

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10.i, %bb.r
  %i.bt = add i32 %.sroa.0.02.i.i7.i, 1, !dbg !12287
  %i.bu = load atomic i64, ptr %i.bm acquire, align 8, !dbg !12279, !noalias !12177
  %i.bv = and i64 %i.bu, 1, !dbg !12280
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !12280
  br i1 %i.bw, label %.lr.ph.i.i6.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i.i, !dbg !12280

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i, %bb.q
  %.sroa.026.0.copyload.i = load i64, ptr %i.bl, align 8, !dbg !12288, !noalias !12177 ; 2 uses
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8, !dbg !12288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.427.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.427.0..sroa_idx.i, i64 112, i1 false), !dbg !12288, !noalias !12166
  %i.bx = add nuw nsw i64 %i.w, 1, !dbg !12289    ; 2 uses
  %i.by = icmp eq i64 %i.bx, 31, !dbg !12289
  br i1 %i.by, label %.lr.ph.i1.i.i, label %bb.v, !dbg !12289

.lr.ph.i1.i.i:                                    ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i.i, %bb.u
  %.sroa.0.03.i.i4.i = phi i64 [ %i.ch, %bb.u ], [ 0, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [128 x i8], ptr %.sroa.012.0.i.i, i64 %.sroa.0.03.i.i4.i, !dbg !12290
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120, !dbg !12291 ; 2 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8, !dbg !12292, !noalias !12177
  %i.cc = and i64 %i.cb, 2, !dbg !12293
  %i.cd = icmp eq i64 %i.cc, 0, !dbg !12293
  br i1 %i.cd, label %bb.s, label %.lr.ph.i1.i.i.1, !dbg !12293

bb.s:                                             ; preds = %.lr.ph.i1.i.i
  %i.ce = atomicrmw or ptr %i.ca, i64 4 acq_rel, align 8, !dbg !12294, !noalias !12177
  %i.cf = and i64 %i.ce, 2, !dbg !12295
  %i.cg = icmp eq i64 %i.cf, 0, !dbg !12295
  br i1 %i.cg, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.i, label %.lr.ph.i1.i.i.1, !dbg !12295

.lr.ph.i1.i.i.1:                                  ; preds = %bb.s, %.lr.ph.i1.i.i
  %i.ch = add nuw nsw i64 %.sroa.0.03.i.i4.i, 2, !dbg !12296 ; 2 uses
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %.sroa.012.0.i.i, i64 %.sroa.0.03.i.i4.i, !dbg !12290
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 248, !dbg !12291 ; 2 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8, !dbg !12292, !noalias !12177
  %i.cl = and i64 %i.ck, 2, !dbg !12293
  %i.cm = icmp eq i64 %i.cl, 0, !dbg !12293
  br i1 %i.cm, label %bb.t, label %bb.u, !dbg !12293

bb.t:                                             ; preds = %.lr.ph.i1.i.i.1
  %i.cn = atomicrmw or ptr %i.cj, i64 4 acq_rel, align 8, !dbg !12294, !noalias !12177
  %i.co = and i64 %i.cn, 2, !dbg !12295
  %i.cp = icmp eq i64 %i.co, 0, !dbg !12295
  br i1 %i.cp, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.i, label %bb.u, !dbg !12295

bb.u:                                             ; preds = %bb.t, %.lr.ph.i1.i.i.1
  %exitcond.not.i.i5.i.1 = icmp eq i64 %i.ch, 30, !dbg !12297
  br i1 %exitcond.not.i.i5.i.1, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE7destroyBW_.exit.sink.split.i.i, label %.lr.ph.i1.i.i, !dbg !12298

bb.v:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10wait_writeBT_.exit.i.i
  %i.cq = atomicrmw or ptr %i.bm, i64 2 acq_rel, align 8, !dbg !12299, !noalias !12177
  %i.cr = and i64 %i.cq, 4, !dbg !12300
  %i.cs = icmp eq i64 %i.cr, 0, !dbg !12300
  br i1 %i.cs, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.i, label %bb.w, !dbg !12300

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE7destroyBW_.exit.sink.split.i.i: ; preds = %bb.y, %bb.u, %bb.w
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i, i64 noundef 3976, i64 noundef 8) #28, !dbg !12301, !noalias !12177
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.i, !dbg !12302

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp samesign ult i64 %i.w, 29, !dbg !12303
  br i1 %i.ct, label %.lr.ph.i3.i.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE7destroyBW_.exit.sink.split.i.i, !dbg !12304

.lr.ph.i3.i.i:                                    ; preds = %bb.w, %bb.y
  %.sroa.0.03.i4.i.i = phi i64 [ %i.cu, %bb.y ], [ %i.bx, %bb.w ] ; 2 uses
  %i.cu = add nuw nsw i64 %.sroa.0.03.i4.i.i, 1, !dbg !12305 ; 2 uses
  %i.cv = getelementptr inbounds nuw [128 x i8], ptr %.sroa.012.0.i.i, i64 %.sroa.0.03.i4.i.i, !dbg !12306
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 120, !dbg !12307 ; 2 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8, !dbg !12308, !noalias !12177
  %i.cy = and i64 %i.cx, 2, !dbg !12309
  %i.cz = icmp eq i64 %i.cy, 0, !dbg !12309
  br i1 %i.cz, label %bb.x, label %bb.y, !dbg !12309

bb.x:                                             ; preds = %.lr.ph.i3.i.i
  %i.da = atomicrmw or ptr %i.cw, i64 4 acq_rel, align 8, !dbg !12310, !noalias !12177
  %i.db = and i64 %i.da, 2, !dbg !12311
  %i.dc = icmp eq i64 %i.db, 0, !dbg !12311
  br i1 %i.dc, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.i, label %bb.y, !dbg !12311

bb.y:                                             ; preds = %bb.x, %.lr.ph.i3.i.i
  %exitcond.not.i5.i.i = icmp eq i64 %i.cu, 30, !dbg !12303
  br i1 %exitcond.not.i5.i.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE7destroyBW_.exit.sink.split.i.i, label %.lr.ph.i3.i.i, !dbg !12304

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.i: ; preds = %bb.x, %bb.s, %bb.t, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE7destroyBW_.exit.sink.split.i.i, %bb.v
  %i.dd = icmp eq i64 %.sroa.026.0.copyload.i, -1, !dbg !12312
  br i1 %i.dd, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4readBZ_.exit.thread.i, label %bb.ap, !dbg !12313

bb.z:                                             ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_recvBZ_.exit.i
  %i.de = load i64, ptr %i.h, align 8, !dbg !12314, !noalias !12166, !noundef !549 ; 2 uses
  %i.df = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now(), !dbg !12315, !noalias !12166 ; 2 uses
  %i.dg = extractvalue { i64, i32 } %i.df, 0, !dbg !12315 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.de, !dbg !12316
  br i1 %i.dh, label %.split.i, label %bb.an, !dbg !12316

bb.aa:                                            ; preds = %bb.an, %.split.i, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE10start_recvBZ_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12317, !noalias !12179
  store ptr %i.g, ptr %i.f, align 8, !dbg !12318, !noalias !12166
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12318, !noalias !12166
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !12318, !noalias !12166
  %i.di = load i8, ptr %i.s, align 8, !dbg !12319, !range !894, !noalias !12180, !noundef !549
  %i.dj = icmp eq i8 %i.di, 1, !dbg !12320
  br i1 %i.dj, label %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !12320, !prof !609

_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.aa
  %i.dk = call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1i_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2a_B28_4with7CONTEXT27___rust_std_internal_init_fnECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %i.r, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !dbg !12321, !noalias !12179 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null, !dbg !12322
  br i1 %i.dl, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1P_B1N_4withNCNvMs1_NtB1R_4listINtB31_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0uEs_0uEB3v_.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.thread.i.i.i, !dbg !12323

_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.aa
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.dk, %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.i.i.i ], [ %i.r, %bb.aa ] ; 4 uses
  %i.dm = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !12324, !noalias !12179, !noundef !549 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !dbg !12325, !noalias !12179
  %.not.i.i.i18.i = icmp eq ptr %i.dm, null, !dbg !12326
  br i1 %.not.i.i.i18.i, label %bb.ab, label %bb.ah, !dbg !12327, !prof !586

bb.ab:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCs2NzvFoTxuAy_2rg.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12328, !noalias !12179
  %i.dn = call noundef nonnull ptr @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB2_7Context3new(), !dbg !12328, !noalias !12179 ; 2 uses
  store ptr %i.dn, ptr %i.e, align 8, !dbg !12328, !noalias !12179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12329, !noalias !12179
  store ptr %i.g, ptr %i.c, align 8, !dbg !12330, !noalias !12179
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !dbg !12330, !noalias !12166
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !dbg !12330, !noalias !12166
  invoke fastcc void @_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB7_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0B11_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dn)
          to label %bb.ae unwind label %bb.ac, !dbg !12331, !noalias !12179

bb.ac:                                            ; preds = %bb.ab
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12188), !dbg !12332
  call void @llvm.experimental.noalias.scope.decl(metadata !12189), !dbg !12333
  call void @llvm.experimental.noalias.scope.decl(metadata !12190), !dbg !12334
  %i.dp = load ptr, ptr %i.e, align 8, !dbg !12335, !alias.scope !12191, !noalias !12179, !nonnull !549, !noundef !549
  %i.dq = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !dbg !12336, !noalias !12192
  %i.dr = icmp eq i64 %i.dq, 1, !dbg !12337
  br i1 %i.dr, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit.i.i.i.i, !dbg !12337

bb.ad:                                            ; preds = %bb.ac
  fence acquire, !dbg !12338
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit.i.i.i.i unwind label %bb.ag, !dbg !12339, !noalias !12179

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12340, !noalias !12179
  call void @llvm.experimental.noalias.scope.decl(metadata !12193), !dbg !12332
  call void @llvm.experimental.noalias.scope.decl(metadata !12194), !dbg !12341
  call void @llvm.experimental.noalias.scope.decl(metadata !12195), !dbg !12342
  %i.ds = load ptr, ptr %i.e, align 8, !dbg !12343, !alias.scope !12196, !noalias !12179, !nonnull !549, !noundef !549
  %i.dt = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !dbg !12344, !noalias !12197
  %i.du = icmp eq i64 %i.dt, 1, !dbg !12345
  br i1 %i.du, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit19.i.i.i.i, !dbg !12345

bb.af:                                            ; preds = %bb.ae
  fence acquire, !dbg !12346
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #34, !dbg !12347, !noalias !12179
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit19.i.i.i.i, !dbg !12347

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECs2NzvFoTxuAy_2rg.exit19.i.i.i.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !12332, !noalias !12179
  br label %_RINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB18_7ChannelNtNtCs2NzvFoTxuAy_2rg8haystack8HaystackE4recvs_0uEB1B_.exit.i, !dbg !12332

bb.ag:                                            ; preds = %bb.am, %bb.ad
end_hunk_1
