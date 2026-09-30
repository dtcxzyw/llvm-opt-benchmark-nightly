Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.14?download=true
inline.NumInlined: 1170
inline.NumDeleted: 492
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE18disconnect_sendersCsbaWXNhtWAp9_11foundations:bb.a
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.phi.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !12269

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12270
  %i.r = load ptr, ptr %i.q, align 8, !dbg !12270, !alias.scope !12248, !noalias !12249, !nonnull !733, !align !782, !noundef !733 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12270
  %i.t = load i8, ptr %i.s, align 8, !dbg !12270, !range !954, !alias.scope !12248, !noalias !12249, !noundef !733 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1, !dbg !12270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12271
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !12272
  call void @llvm.experimental.noalias.scope.decl(metadata !12251), !dbg !12273
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !12274
  %i.x = load ptr, ptr %i.w, align 8, !dbg !12274, !alias.scope !12251, !nonnull !733, !noundef !733 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !12275 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !dbg !12275, !alias.scope !12251, !noundef !733 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24, !dbg !12276
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i, !dbg !12276
  %i.ab = icmp eq i64 %i.z, 0, !dbg !12277
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !12278

.lr.ph.i.i:                                       ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbaWXNhtWAp9_11foundations.exit.i, %.noexc5.i
  %.sroa.0.02.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbaWXNhtWAp9_11foundations.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24, !dbg !12279 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !dbg !12280, !noalias !12251, !nonnull !733, !noundef !733
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24, !dbg !12281
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !dbg !12282, !noalias !12251
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.ae, 1, !dbg !12283
  br i1 %.sroa.18.0.in.i.i.i.i, label %bb.g, label %.noexc5.i, !dbg !12284

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsbaWXNhtWAp9_11foundations.exit.i
  invoke fastcc void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v) #34
          to label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.i, !dbg !12285

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.af = load ptr, ptr %.sroa.0.02.i.i, align 8, !dbg !12286, !noalias !12251, !nonnull !733, !noundef !733
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !12287
  %i.ah = load ptr, ptr %i.ag, align 8, !dbg !12287, !noalias !12251, !nonnull !733, !noundef !733
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40, !dbg !12288 ; 2 uses
  %i.aj = atomicrmw xchg ptr %i.ai, i32 1 release, align 4, !dbg !12289, !noalias !12251
  %i.ak = icmp eq i32 %i.aj, -1, !dbg !12290
  br i1 %i.ak, label %bb.h, label %.noexc5.i, !dbg !12290

.noexc5.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.al = icmp eq ptr %i.ac, %i.aa, !dbg !12277
  br i1 %i.al, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !12278

bb.h:                                             ; preds = %bb.g
  %i.am = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ai)
          to label %.noexc5.i unwind label %.loopexit.i, !dbg !12291 ; 0 uses

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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsbaWXNhtWAp9_11foundations(ptr nonnull %i.r, i8 %i.t) #31
          to label %common.resume.i unwind label %bb.p, !dbg !12292

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i: ; preds = %._crit_edge.i.i
  %i.an = load i64, ptr %i.y, align 8, !dbg !12293, !noundef !733 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 384307168202282326, !dbg !12294
  call void @llvm.assume(i1 %i.ao), !dbg !12295
  %i.ap = icmp eq i64 %i.an, 0, !dbg !12296
  br i1 %i.ap, label %bb.j, label %bb.k, !dbg !12297

bb.j:                                             ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 48, !dbg !12298
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !12298, !noundef !733 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 384307168202282326, !dbg !12299
  call void @llvm.assume(i1 %i.as), !dbg !12300
  %i.at = icmp eq i64 %i.ar, 0, !dbg !12301
  %i.au = zext i1 %i.at to i8, !dbg !12301
  br label %bb.k, !dbg !12297

bb.k:                                             ; preds = %bb.j, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %.sroa.0.0.i = phi i8 [ %i.au, %bb.j ], [ 0, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i ], !dbg !12302
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 312, !dbg !12303
  store atomic i8 %.sroa.0.0.i, ptr %i.av seq_cst, align 8, !dbg !12304
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !12305
  br i1 %i.u, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l, !dbg !12306

bb.l:                                             ; preds = %bb.k
  %i.ax = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !12307
  %i.ay = and i64 %i.ax, 9223372036854775807, !dbg !12308
  %i.az = icmp eq i64 %i.ay, 0, !dbg !12308
  br i1 %i.az, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !dbg !12308, !prof !765

bb.m:                                             ; preds = %bb.l
  %i.ba = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #32, !dbg !12309
  br i1 %i.ba, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n, !dbg !12310

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.aw monotonic, align 4, !dbg !12311
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, !dbg !12312

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bb = atomicrmw xchg ptr %i.r, i32 0 release, align 4, !dbg !12313
  %i.bc = icmp eq i32 %i.bb, 2, !dbg !12314
  br i1 %i.bc, label %bb.o, label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !12314, !prof !812

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.r), !dbg !12315
  br label %_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !dbg !12315

bb.p:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !dbg !12316
  unreachable, !dbg !12316

_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a
  ret i1 %i.f, !dbg !12317
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE20disconnect_receiversCsbaWXNhtWAp9_11foundations(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12318 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !12501 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8, !dbg !12502
  %i.c = and i64 %i.b, 1, !dbg !12503
  %i.d = icmp eq i64 %i.c, 0, !dbg !12503         ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.p, !dbg !12503

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128, !dbg !12504 ; 2 uses
  %i.f = and i64 %i.e, 62, !dbg !12505
  %i.g = icmp eq i64 %i.f, 62, !dbg !12505
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !dbg !12505

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.05056.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.05056.i, 7, !dbg !12506
  br i1 %i.h, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %bb.c, !dbg !12506

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !dbg !12507
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, !dbg !12507

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.05056.i, 0, !dbg !12508
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader, !dbg !12509

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw i32 %.sroa.0.05056.i, %.sroa.0.05056.i, !dbg !12510 ; 2 uses
  %xtraiter = and i32 %i.i, 7, !dbg !12509        ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.05056.i, 3, !dbg !12509
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new, !dbg !12509

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56, !dbg !12509
  br label %.lr.ph.i.i, !dbg !12509

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  %niter.next.7 = add i32 %niter, 8, !dbg !12509  ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter, !dbg !12509
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !dbg !12509

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !12509
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader, !dbg !12509

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter, 0, !dbg !12509
  tail call void @llvm.assume(i1 %lcmp.mod31), !dbg !12509
  br label %.lr.ph.i.i.epil, !dbg !12509

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !12511
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !12509 ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !12509
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !dbg !12509, !llvm.loop !12342

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.05056.i, 1, !dbg !12512 ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128, !dbg !12513 ; 2 uses
  %i.m = and i64 %i.l, 62, !dbg !12505
  %i.n = icmp eq i64 %i.m, 62, !dbg !12505
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i, !dbg !12505

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.050.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], !dbg !12514
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128, !dbg !12515 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12516 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !12517 ; 2 uses
  %i.s = lshr i64 %i.p, 1, !dbg !12518            ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o, !dbg !12518      ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false, !dbg !12518
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i, !dbg !12518

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], !dbg !12519 ; 2 uses
  br i1 %i.t, label %.lr.ph62.i, label %._crit_edge63.i, !dbg !12520

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], [ %.sroa.0.050.lcssa.i, %._crit_edge.i ], !dbg !12514 ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7, !dbg !12521
  br i1 %i.v, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i, label %bb.d, !dbg !12521

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !dbg !12522
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, !dbg !12522

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0, !dbg !12523
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader, !dbg !12524

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i, !dbg !12525 ; 2 uses
  %xtraiter32 = and i32 %i.w, 7, !dbg !12524      ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3, !dbg !12524
  br i1 %i.x, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new, !dbg !12524

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter36 = and i32 %i.w, 56, !dbg !12524
  br label %.lr.ph.i26.i, !dbg !12524

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  %niter37.next.7 = add i32 %niter37, 8, !dbg !12524 ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36, !dbg !12524
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i, !dbg !12524

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0, !dbg !12524
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader, !dbg !12524

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0, !dbg !12524
  tail call void @llvm.assume(i1 %lcmp.mod35), !dbg !12524
  br label %.lr.ph.i26.i.epil, !dbg !12524

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !12526
  %epil.iter33.next = add i32 %epil.iter33, 1, !dbg !12524 ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32, !dbg !12524
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !dbg !12524, !llvm.loop !12369

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.y = add i32 %.sroa.0.1.i, 1, !dbg !12527
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8, !dbg !12528 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null, !dbg !12529
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i, !dbg !12530

._crit_edge63.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i ], !dbg !12528 ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i ], !dbg !12531
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null, !dbg !12532
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE20discard_all_messagesCsbaWXNhtWAp9_11foundations.exit, label %bb.e, !dbg !12533

.lr.ph62.i:                                       ; preds = %.loopexit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i
  %i.ab = phi i64 [ %i.bq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i ], [ %i.s, %.loopexit.i ]
  %.sroa.05.060.i = phi i64 [ %i.bp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i ], [ %i.p, %.loopexit.i ]
  %.sroa.011.159.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.ac = and i64 %i.ab, 31, !dbg !12534          ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31, !dbg !12535
  br i1 %.not19.i, label %bb.f, label %bb.h, !dbg !12535

bb.e:                                             ; preds = %._crit_edge63.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 504, i64 noundef 8) #22, !dbg !12536
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2n_5boxed3BoxDNtNtB1M_5error5ErrorNtNtB1M_6marker4SendNtB3B_4SyncEL_EEEE20discard_all_messagesCsbaWXNhtWAp9_11foundations.exit, !dbg !12537

bb.f:                                             ; preds = %.lr.ph62.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.159.i, i64 496 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !12538
  %i.af = icmp eq ptr %i.ae, null, !dbg !12539
  br i1 %i.af, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2k_5boxed3BoxDNtNtB1J_5error5ErrorNtNtB1J_6marker4SendNtB3y_4SyncEL_EEEE9wait_nextCsbaWXNhtWAp9_11foundations.exit.i, !dbg !12540

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i.i, 7, !dbg !12541
  br i1 %i.ag, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g, !dbg !12541

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !dbg !12542
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, !dbg !12542

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0, !dbg !12543
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader, !dbg !12544

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ah = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i, !dbg !12545 ; 2 uses
  %xtraiter44 = and i32 %i.ah, 7, !dbg !12544     ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 3, !dbg !12544
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new, !dbg !12544

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter48 = and i32 %i.ah, 56, !dbg !12544
  br label %.lr.ph.i.i.i, !dbg !12544

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter49 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter49.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  %niter49.next.7 = add i32 %niter49, 8, !dbg !12544 ; 2 uses
  %niter49.ncmp.7 = icmp eq i32 %niter49.next.7, %unroll_iter48, !dbg !12544
  br i1 %niter49.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !dbg !12544

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod46.not = icmp eq i32 %xtraiter44, 0, !dbg !12544
  br i1 %lcmp.mod46.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader, !dbg !12544

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod47 = icmp ne i32 %xtraiter44, 0, !dbg !12544
  tail call void @llvm.assume(i1 %lcmp.mod47), !dbg !12544
  br label %.lr.ph.i.i.i.epil, !dbg !12544

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter45 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter45.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !dbg !12546
  %epil.iter45.next = add i32 %epil.iter45, 1, !dbg !12544 ; 2 uses
  %epil.iter45.cmp.not = icmp eq i32 %epil.iter45.next, %xtraiter44, !dbg !12544
  br i1 %epil.iter45.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !dbg !12544, !llvm.loop !12408

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.aj = add i32 %.sroa.0.02.i.i, 1, !dbg !12547
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !12538
  %i.al = icmp eq ptr %i.ak, null, !dbg !12539
  br i1 %i.al, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2k_5boxed3BoxDNtNtB1J_5error5ErrorNtNtB1J_6marker4SendNtB3y_4SyncEL_EEEE9wait_nextCsbaWXNhtWAp9_11foundations.exit.i, !dbg !12540

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2k_5boxed3BoxDNtNtB1J_5error5ErrorNtNtB1J_6marker4SendNtB3y_4SyncEL_EEEE9wait_nextCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.am = load atomic ptr, ptr %i.ad acquire, align 8, !dbg !12548
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.159.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.159.i, i64 noundef 504, i64 noundef 8) #22, !dbg !12549
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtB4_6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1M_5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB2Z_4SyncEL_EEEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !12550

bb.h:                                             ; preds = %.lr.ph62.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.159.i, i64 %i.ac, !dbg !12551 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !dbg !12552
  %i.aq = and i64 %i.ap, 1, !dbg !12553
  %i.ar = icmp eq i64 %i.aq, 0, !dbg !12553
  br i1 %i.ar, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot6SenderINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB2h_5boxed3BoxDNtNtB1G_5error5ErrorNtNtB1G_6marker4SendNtB3v_4SyncEL_EEEE10wait_writeCsbaWXNhtWAp9_11foundations.exit.i, !dbg !12553

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i33.i, 7, !dbg !12554
  br i1 %i.as, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i, !dbg !12554

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !dbg !12555
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, !dbg !12555

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0, !dbg !12556
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader, !dbg !12557

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i36.i
  %i.at = mul nuw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i, !dbg !12558 ; 2 uses
  %xtraiter38 = and i32 %i.at, 7, !dbg !12557     ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i33.i, 3, !dbg !12557
  br i1 %i.au, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new, !dbg !12557

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter42 = and i32 %i.at, 56, !dbg !12557
  br label %.lr.ph.i.i40.i, !dbg !12557

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter43 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter43.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  tail call void @llvm.x86.sse2.pause(), !dbg !12559
  %niter43.next.7 = add i32 %niter43, 8, !dbg !12557 ; 2 uses
  %niter43.ncmp.7 = icmp eq i32 %niter43.next.7, %unroll_iter42, !dbg !12557
  br i1 %niter43.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i, !dbg !12557

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod40.not = icmp eq i32 %xtraiter38, 0, !dbg !12557
  br i1 %lcmp.mod40.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader, !dbg !12557

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod41 = icmp ne i32 %xtraiter38, 0, !dbg !12557
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCsaCYLheajBls_5hyper6client4conn5http2INtB5_10ConnectionNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoNtNtB1f_4body4BodyNtNtB19_8executor10SharedExecENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations:bb.a
bb.h:                                             ; preds = %bb.h, %.preheader.i.i.i
  %i.bn = atomicrmw xchg ptr %i.bm, i8 1 seq_cst, align 1, !dbg !18078, !noalias !17995
  %.not.i.i.i.i = icmp eq i8 %i.bn, 0, !dbg !18079
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h, !dbg !18077

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24, !dbg !18080 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !18081, !noalias !17995, !align !782, !noundef !733 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32, !dbg !18081
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !18081, !noalias !17995
  store ptr null, ptr %i.bo, align 8, !dbg !18082, !noalias !17995
  %.not10.i.i.i = icmp eq ptr %i.bp, null, !dbg !18083
  store atomic i8 0, ptr %i.bm seq_cst, align 8, !dbg !18084, !noalias !17995
  br i1 %.not10.i.i.i, label %_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.thread.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5VMNzytNCo3_8try_lock6LockedINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i.i.i, !dbg !18085

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5VMNzytNCo3_8try_lock6LockedINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i.i.i: ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !18086
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !18086, !noalias !17995, !nonnull !733, !noundef !733
  call void %i.bt(ptr noundef %i.br), !dbg !18086, !noalias !17995, !inline_history !17776
  br label %_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.thread.i, !dbg !18086

_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.thread113.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18087, !noalias !17989
  br label %.thread, !dbg !18088

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18089, !noalias !17996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.b, ptr noundef nonnull align 8 dereferenceable(240) %i.c, i64 240, i1 false), !dbg !18090, !noalias !17996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !dbg !18090, !noalias !17996
  call void @llvm.experimental.noalias.scope.decl(metadata !17999), !dbg !18089
  store i64 2, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !dbg !18091, !alias.scope !17999, !noalias !18000
  %.not.i.i.i = icmp eq i64 %i.bg, 2, !dbg !18092
  br i1 %.not.i.i.i, label %bb.k, label %_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.i, !dbg !18093, !prof !812

common.resume:                                    ; preds = %bb.l, %.body106.i, %bb.bj, %bb.bk, %bb.bm, %.thread146.i, %.critedge84.i, %bb.bq, %bb.by, %bb.bz, %bb.ch, %bb.cj, %bb.cv
  %common.resume.op = phi { ptr, i32 } [ %.pn75164.i, %.body106.i ], [ %i.bu, %bb.l ], [ %i.gi, %bb.cv ], [ %i.eo, %.thread146.i ], [ %.pn79177.i, %bb.cj ], [ %.pn77188.i, %bb.ch ], [ %i.eg, %bb.bk ], [ %i.ex, %bb.by ], [ %i.ex, %bb.bz ], [ %i.eg, %bb.bj ], [ %.pn.i, %bb.bm ], [ %.pn71145.i, %bb.bq ], [ %.pn71145.i, %.critedge84.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !18094

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #30
          to label %bb.m unwind label %bb.l, !dbg !18095, !noalias !18003

bb.l:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1w_8response8ResponseNtNtNtBI_4body8incoming8IncomingEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.b) #31
          to label %common.resume unwind label %bb.n, !dbg !18096, !noalias !18004

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !dbg !18097, !noalias !18004
  unreachable, !dbg !18097

_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCs5VMNzytNCo3_8try_lock6LockedINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsbaWXNhtWAp9_11foundations.exit.i.i.i, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18087, !noalias !17989
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !18098
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !18099, !alias.scope !17986, !noalias !17990, !nonnull !733, !noundef !733
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !18100
  %i.bz = call noundef zeroext i1 @_RNvMs0_NtCs4QIrBFOvxlJ_15futures_channel7oneshotINtB5_5InnerzE4recvCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !18101, !noalias !17987
  br i1 %i.bz, label %_RNvXsc_NtNtNtCsaCYLheajBls_5hyper5proto2h26clientINtB5_10ClientTaskNtNtCsfUalJnHtWpm_5tonic4body4BodyNtNtNtNtNtB17_9transport7channel7service8executor10SharedExecNtNtB1F_2io7BoxedIoENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollCsbaWXNhtWAp9_11foundations.exit.thread, label %.thread, !dbg !18102

_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !18103, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.y, ptr noundef nonnull align 8 dereferenceable(240) %i.c, i64 240, i1 false), !dbg !18104, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !18105, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.240..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i64 16, i1 false), !dbg !18104, !noalias !17989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18106, !noalias !17996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18087, !noalias !17989
  store i64 %i.bg, ptr %i.x, align 8, !dbg !18105, !noalias !17989
  %i.ca = trunc nuw i64 %i.bg to i1, !dbg !18107
  %i.cb = load i64, ptr %.sroa.9.240..sroa_idx.i, align 8, !dbg !18108, !range !857, !alias.scope !18006, !noalias !17989, !noundef !733
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !18107  ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.p, !dbg !18107

bb.o:                                             ; preds = %_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.i
  br i1 %i.cc, label %bb.s, label %bb.r, !dbg !18107, !prof !765

bb.p:                                             ; preds = %_RNvMs1_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE9poll_recvCsbaWXNhtWAp9_11foundations.exit.i
  br i1 %i.cc, label %bb.q, label %bb.r, !dbg !18107, !prof !765

bb.q:                                             ; preds = %bb.p
  %.val.i95.i = load ptr, ptr %i.ai, align 8, !dbg !18109, !alias.scope !18006, !noalias !17989, !noundef !733 ; 2 uses
  %.not.i.i96.i = icmp eq ptr %.val.i95.i, null, !dbg !18110
  br i1 %.not.i.i96.i, label %.invoke.i, label %_RNvMs_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB4_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2g_5error5ErrorEE9is_closedCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !18111, !prof !812

bb.r:                                             ; preds = %bb.p, %bb.o
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #29
          to label %.noexc97.i unwind label %.body106.thread183.loopexit.split-lp.i, !dbg !18112, !noalias !17987

.noexc97.i:                                       ; preds = %bb.r
  unreachable, !dbg !18112

_RNvMs_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB4_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2g_5error5ErrorEE9is_closedCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.s, %bb.q
  %.val1.sink.i.i = phi ptr [ %.val1.i.i, %bb.s ], [ %.val.i95.i, %bb.q ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.val1.sink.i.i, i64 48, !dbg !18113
  %i.ce = invoke noundef i64 @_RNvMs9_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotNtB5_5State4load(ptr noundef nonnull align 8 %i.cd, i8 noundef 2)
          to label %bb.t unwind label %.body106.thread183.loopexit.i, !dbg !18113, !noalias !17987

bb.s:                                             ; preds = %bb.o
  %.val1.i.i = load ptr, ptr %i.ai, align 8, !dbg !18114, !alias.scope !18006, !noalias !17989, !noundef !733 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %.val1.i.i, null, !dbg !18115
  br i1 %.not.i2.i.i, label %.invoke.i, label %_RNvMs_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB4_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2g_5error5ErrorEE9is_closedCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !18116, !prof !812

.invoke.i:                                        ; preds = %bb.s, %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #29
          to label %.cont.i unwind label %.body106.thread183.loopexit.split-lp.i, !dbg !18113, !noalias !17987

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.body106.i:                                       ; preds = %.thread128.i
  br i1 %.sroa.053.5163.i, label %.body106.thread183.i, label %common.resume, !dbg !18117

.body106.thread183.loopexit.i:                    ; preds = %_RNvMs_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB4_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2g_5error5ErrorEE9is_closedCsbaWXNhtWAp9_11foundations.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body106.thread183.i

.body106.thread183.loopexit.split-lp.i:           ; preds = %.invoke.i, %bb.r
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body106.thread183.i

bb.t:                                             ; preds = %_RNvMs_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB4_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2g_5error5ErrorEE9is_closedCsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.0.0.in.in.i.i = and i64 %i.ce, 4, !dbg !18113
  %.sroa.0.0.in.i.not.i = icmp eq i64 %.sroa.0.0.in.in.i.i, 0, !dbg !18113
  br i1 %.sroa.0.0.in.i.not.i, label %bb.u, label %bb.v, !dbg !18118

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !18119, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.v, ptr noundef nonnull align 8 dereferenceable(224) %i.y, i64 224, i1 false), !dbg !18120, !noalias !17989
  %i.cf = load ptr, ptr %i.aj, align 8, !dbg !18120, !noalias !17989, !noundef !733 ; 7 uses
  %i.cg = load ptr, ptr %i.ak, align 8, !dbg !18120, !noalias !17989 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !18121, !noalias !17989
  store ptr %i.cf, ptr %i.w, align 8, !dbg !18121, !noalias !17989
  store ptr %i.cg, ptr %i.al, align 8, !dbg !18121, !noalias !17989
  invoke void @_RNvNtNtCsaCYLheajBls_5hyper5proto2h224strip_connection_headers(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.v, i1 noundef zeroext false)
          to label %bb.x unwind label %.thread133.i, !dbg !18122, !noalias !17987

bb.v:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaCYLheajBls_5hyper6client8dispatch8CallbackINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1w_8response8ResponseNtNtNtBI_4body8incoming8IncomingEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.ci unwind label %.thread174.i, !dbg !18117, !noalias !17987

.thread133.i:                                     ; preds = %bb.am, %bb.aj, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.x, %bb.u
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread120.i, !dbg !18123

bb.w:                                             ; preds = %bb.ak
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread128.i, !dbg !18123

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !18124, !noalias !17989
  invoke void @_RNvXs0_NtCsfUalJnHtWpm_5tonic4bodyNtB5_4BodyNtCshXnn1MjyudA_9http_body4Body9size_hint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %bb.y unwind label %.thread133.i, !dbg !18125, !noalias !17987

bb.y:                                             ; preds = %bb.x
  %i.ch = load i64, ptr %i.am, align 8, !dbg !18126, !noalias !17989, !noundef !733 ; 3 uses
  %i.ci = load i64, ptr %i.u, align 8, !dbg !18127, !range !857, !noalias !17989, !noundef !733
  %i.cj = trunc nuw i64 %i.ci to i1, !dbg !18128
  %i.ck = load i64, ptr %i.an, align 8, !noalias !17989
  %i.cl = icmp eq i64 %i.ch, %i.ck
  %or.cond.i = select i1 %i.cj, i1 %i.cl, i1 false, !dbg !18128
  br i1 %or.cond.i, label %bb.z, label %thread-pre-split.i, !dbg !18128

bb.z:                                             ; preds = %bb.y
  %i.cm = icmp eq i64 %i.ch, 0, !dbg !18129
  br i1 %i.cm, label %bb.aa, label %bb.ab, !dbg !18129

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i8, ptr %i.ao, align 8, !dbg !18130, !range !990, !noalias !17989, !noundef !733
  %switch.tableidx = add nsw i8 %i.cn, -1, !dbg !18131 ; 3 uses
  %i.co = icmp ult i8 %switch.tableidx, 7, !dbg !18131
  %switch.shifted = lshr i8 89, %switch.tableidx, !dbg !18131
  %switch.lobit = trunc i8 %switch.shifted to i1, !dbg !18131
  %or.cond = select i1 %i.co, i1 %switch.lobit, i1 false, !dbg !18131
  br i1 %or.cond, label %switch.lookup, label %bb.ab, !dbg !18131

bb.ab:                                            ; preds = %bb.aa, %bb.z
  invoke void @_RNvNtCsaCYLheajBls_5hyper7headers29set_content_length_if_missing(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.v, i64 noundef %i.ch)
          to label %thread-pre-split.i unwind label %.thread133.i, !dbg !18132, !noalias !17987

thread-pre-split.i:                               ; preds = %bb.ab, %bb.y
  %.val94.pr.i = load i8, ptr %i.ao, align 8, !dbg !18133, !noalias !17989
  br label %bb.ac, !dbg !18134

switch.lookup:                                    ; preds = %bb.aa
  %i.cp = shl nuw nsw i8 %switch.tableidx, 3, !dbg !18131
  %switch.shiftamt = zext nneg i8 %i.cp to i56, !dbg !18131
  %switch.downshift = lshr i56 1970346378919937, %switch.shiftamt, !dbg !18131
  %switch.masked = trunc i56 %switch.downshift to i8, !dbg !18131
  br label %bb.ac, !dbg !18131

bb.ac:                                            ; preds = %switch.lookup, %thread-pre-split.i
  %.val94.i = phi i8 [ %.val94.pr.i, %thread-pre-split.i ], [ %switch.masked, %switch.lookup ], !dbg !18133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !18134, !noalias !17989
  %i.cq = icmp eq i8 %.val94.i, 7, !dbg !18135    ; 3 uses
  %i.cr = invoke noundef zeroext i1 @_RNvXs0_NtCsfUalJnHtWpm_5tonic4bodyNtB5_4BodyNtCshXnn1MjyudA_9http_body4Body13is_end_stream(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %bb.ad unwind label %.thread133.i, !dbg !18136, !noalias !17987 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cq, label %bb.af, label %bb.ae, !dbg !18137

bb.ae:                                            ; preds = %bb.ag, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !18138, !noalias !17989
  invoke void @_RINvMs_NtCs74LoFwSioHw_4http10extensionsNtB5_10Extensions6removeNtNtCsaCYLheajBls_5hyper3ext8ProtocolECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.ai unwind label %.thread133.i, !dbg !18139, !noalias !17987

bb.af:                                            ; preds = %bb.ad
  %i.cs = invoke { i64, i64 } @_RNvNtCsaCYLheajBls_5hyper7headers24content_length_parse_all(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.v)
          to label %bb.ag unwind label %.thread133.i, !dbg !18140, !noalias !17987 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.ct = extractvalue { i64, i64 } %i.cs, 0, !dbg !18140
  %i.cu = extractvalue { i64, i64 } %i.cs, 1, !dbg !18140
  %i.cv = trunc nuw i64 %i.ct to i1, !dbg !18141
  %i.cw = icmp ne i64 %i.cu, 0
  %spec.select.i.i = select i1 %i.cv, i1 %i.cw, i1 false, !dbg !18141
  br i1 %spec.select.i.i, label %bb.ah, label %bb.ae, !dbg !18140

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !18142, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !18142, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !18143, !noalias !17989
  %i.cx = invoke noundef nonnull align 8 ptr @_RNvMNtCsaCYLheajBls_5hyper5errorNtB2_5Error24new_user_invalid_connect()
          to label %bb.cc unwind label %bb.cg, !dbg !18144, !noalias !17987

bb.ai:                                            ; preds = %bb.ae
  %i.cy = load ptr, ptr %i.r, align 8, !dbg !18138, !noalias !17989, !noundef !733
  %.not68.i = icmp eq ptr %i.cy, null, !dbg !18138
  br i1 %.not68.i, label %bb.ak, label %bb.aj, !dbg !18145

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !dbg !18146, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !18147, !noalias !17989
  invoke void @_RINvMs_NtCs74LoFwSioHw_4http10extensionsNtB5_10Extensions6insertNtNtCsb6T6P0NKlCh_2h23ext8ProtocolECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.al unwind label %.thread133.i, !dbg !18148, !noalias !17987

bb.ak:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6T6P0NKlCh_2h23ext8ProtocolEECsbaWXNhtWAp9_11foundations.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !18149, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !18150, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !18151, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.o, ptr noundef nonnull align 8 dereferenceable(224) %i.v, i64 224, i1 false), !dbg !18151, !noalias !17989
  %not..i = xor i1 %i.cq, true, !dbg !18152
  %..i = and i1 %i.cr, %not..i, !dbg !18152
  invoke void @_RNvMNtCsb6T6P0NKlCh_2h26clientINtB2_11SendRequestINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE12send_requestCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(224) %i.o, i1 noundef zeroext %..i)
          to label %bb.an unwind label %bb.w, !dbg !18153, !noalias !17987

bb.al:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !18021), !dbg !18154
  %i.cz = load ptr, ptr %i.q, align 8, !dbg !18155, !alias.scope !18021, !noalias !17989, !noundef !733 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null, !dbg !18155
  br i1 %i.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6T6P0NKlCh_2h23ext8ProtocolEECsbaWXNhtWAp9_11foundations.exit.i, label %bb.am, !dbg !18155

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !18022), !dbg !18155
  call void @llvm.experimental.noalias.scope.decl(metadata !18023), !dbg !18156
  call void @llvm.experimental.noalias.scope.decl(metadata !18024), !dbg !18157
  call void @llvm.experimental.noalias.scope.decl(metadata !18025), !dbg !18158
  %i.db = load ptr, ptr %i.aq, align 8, !dbg !18159, !alias.scope !18026, !noalias !17989, !noundef !733
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 32, !dbg !18160
  %i.dd = load ptr, ptr %i.dc, align 8, !dbg !18160, !noalias !18027, !nonnull !733, !noundef !733
  %i.de = load ptr, ptr %i.ar, align 8, !dbg !18161, !alias.scope !18026, !noalias !17989, !noundef !733
  %i.df = load i64, ptr %i.as, align 8, !dbg !18162, !alias.scope !18026, !noalias !17989, !noundef !733
  invoke void %i.dd(ptr noundef %i.db, ptr noundef %i.de, i64 noundef %i.df)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6T6P0NKlCh_2h23ext8ProtocolEECsbaWXNhtWAp9_11foundations.exit.i unwind label %.thread133.i, !dbg !18160, !noalias !17987, !inline_history !539

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb6T6P0NKlCh_2h23ext8ProtocolEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !18154, !noalias !17989
  br label %bb.ak, !dbg !18163

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !18164, !noalias !17989
  %i.dg = load i64, ptr %i.p, align 8, !dbg !18150, !range !857, !noalias !17989, !noundef !733
  %i.dh = trunc nuw i64 %i.dg to i1, !dbg !18165
  br i1 %i.dh, label %bb.ao, label %bb.ap, !dbg !18165

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !18166, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !dbg !18166, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !18167, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !18167, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !18168, !noalias !17989
  %i.di = invoke noundef nonnull align 8 ptr @_RNvMNtCsaCYLheajBls_5hyper5errorNtB2_5Error6new_h2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %bb.bs unwind label %bb.ca, !dbg !18169, !noalias !17987

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !18170, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !dbg !18171, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !dbg !18171, !noalias !17989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !18172, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !dbg !18173, !noalias !17989
  %i.dj = zext i1 %i.cq to i8, !dbg !18174
  store i8 %i.dj, ptr %i.av, align 8, !dbg !18174, !noalias !17989
  %i.dk = zext i1 %i.cr to i8, !dbg !18174
  store i8 %i.dk, ptr %i.aw, align 1, !dbg !18174, !noalias !17989
  store ptr %i.cf, ptr %i.az, align 8, !dbg !18174, !noalias !17989
  store ptr %i.cg, ptr %i.ba, align 8, !dbg !18174, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18175, !noalias !17989
  invoke void @_RNvMNtCsb6T6P0NKlCh_2h26clientINtB2_11SendRequestINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEE10poll_readyCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aq unwind label %.thread150.i, !dbg !18176, !noalias !17987

.thread150.i:                                     ; preds = %bb.ap
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.thread137.i, !dbg !18177

bb.aq:                                            ; preds = %bb.ap
  %i.dm = load i8, ptr %i.j, align 8, !dbg !18175, !range !1186, !noalias !17989, !noundef !733
  switch i8 %i.dm, label %bb.as [
    i8 -2, label %bb.ar
    i8 -1, label %bb.at
  ], !dbg !18178

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !dbg !18180, !noalias !17989
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaCYLheajBls_5hyper5proto2h26client6FutCtxNtNtCsfUalJnHtWpm_5tonic4body4BodyEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.bo unwind label %.thread146.i, !dbg !18181, !noalias !17987

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18182, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !dbg !18182, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18183, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !18183, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18184, !noalias !17989
  %i.dn = invoke noundef nonnull align 8 ptr @_RNvMNtCsaCYLheajBls_5hyper5errorNtB2_5Error6new_h2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %bb.av unwind label %bb.bn, !dbg !18185, !noalias !17987

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18186, !noalias !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18187, !noalias !17989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !dbg !18187, !noalias !17989
  call fastcc void @_RNvMs9_NtNtNtCsaCYLheajBls_5hyper5proto2h26clientINtB5_10ClientTaskNtNtCsfUalJnHtWpm_5tonic4body4BodyNtNtNtNtNtB17_9transport7channel7service8executor10SharedExecNtNtB1F_2io7BoxedIoE9poll_pipeCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1), !dbg !18188, !noalias !17987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18189, !noalias !17989
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic4body4BodyECsbaWXNhtWAp9_11foundations.exit.i, !dbg !18177

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic4body4BodyECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.bi, %bb.bh, %bb.be, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18177, !noalias !17989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !18123, !noalias !17989
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic4body4BodyECsbaWXNhtWAp9_11foundations.exit108.i, !dbg !18190

bb.au:                                            ; preds = %bb.av
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.thread137.i, !dbg !18191

bb.av:                                            ; preds = %bb.as
  store i64 -1, ptr %i.f, align 8, !dbg !18184, !noalias !17989
  store ptr %i.dn, ptr %.sroa.438.0..sroa_idx.i, align 8, !dbg !18184, !noalias !17989
  invoke fastcc void @_RNvMs5_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8CallbackINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE4sendCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(248) %i.f)
          to label %bb.aw unwind label %bb.au, !dbg !18192, !noalias !17987

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18191, !noalias !17989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18191, !noalias !17989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18193, !noalias !17989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18186, !noalias !17989
  invoke void @_RNvXsa_NtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.az unwind label %bb.ax, !dbg !18194, !noalias !17987

bb.ax:                                            ; preds = %bb.aw
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18028), !dbg !18194
  call void @llvm.experimental.noalias.scope.decl(metadata !18029), !dbg !18195
  %i.dq = load ptr, ptr %i.ax, align 8, !dbg !18196, !alias.scope !18030, !noalias !17989, !nonnull !733, !noundef !733
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !dbg !18197, !noalias !18031
  %i.ds = icmp eq i64 %i.dr, 1, !dbg !18198
  br i1 %i.ds, label %bb.ay, label %.body.i, !dbg !18198

bb.ay:                                            ; preds = %bb.ax
  fence acquire, !dbg !18199
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #32
          to label %.body.i unwind label %bb.bb, !dbg !18200, !noalias !17987

bb.az:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !18032), !dbg !18194
  call void @llvm.experimental.noalias.scope.decl(metadata !18033), !dbg !18201
  %i.dt = load ptr, ptr %i.ax, align 8, !dbg !18202, !alias.scope !18034, !noalias !17989, !nonnull !733, !noundef !733
  %i.du = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !dbg !18203, !noalias !18035
  %i.dv = icmp eq i64 %i.du, 1, !dbg !18204
  br i1 %i.dv, label %bb.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h26client14ResponseFutureECsbaWXNhtWAp9_11foundations.exit.i, !dbg !18204

bb.ba:                                            ; preds = %bb.az
  fence acquire, !dbg !18205
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #32
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h26client14ResponseFutureECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.bc, !dbg !18206, !noalias !17987

bb.bb:                                            ; preds = %bb.ay
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #33, !dbg !18194, !noalias !17987
  unreachable, !dbg !18194

bb.bc:                                            ; preds = %bb.ba
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !18177

.body.i:                                          ; preds = %bb.bc, %bb.ay, %bb.ax
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dx, %bb.bc ], [ %i.dp, %bb.ay ], [ %i.dp, %bb.ax ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb6T6P0NKlCh_2h25share10SendStreamINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #31
          to label %bb.bm unwind label %bb.bl, !dbg !18177, !noalias !17987

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h26client14ResponseFutureECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.ba, %bb.az
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsb6T6P0NKlCh_2h25share10SendStreamINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay)
          to label %bb.be unwind label %bb.bd, !dbg !18177, !noalias !17987

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h26client14ResponseFutureECsbaWXNhtWAp9_11foundations.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h26client14ResponseFutureECsbaWXNhtWAp9_11foundations.exit.i
  %.val92.i = load ptr, ptr %i.az, align 8, !dbg !18177, !noalias !17989, !noundef !733 ; 4 uses
  %.val93.i = load ptr, ptr %i.ba, align 8, !dbg !18177, !noalias !17989 ; 6 uses
  %i.dz = icmp eq ptr %.val92.i, null, !dbg !18207
  br i1 %i.dz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic4body4BodyECsbaWXNhtWAp9_11foundations.exit.i, label %bb.bf, !dbg !18207

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val93.i) ]
  %i.ea = load ptr, ptr %.val93.i, align 8, !dbg !18208, !invariant.load !733, !noalias !17987 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ea, null, !dbg !18208
  br i1 %.not.i.i.i.i.i.i, label %bb.bh, label %bb.bg, !dbg !18208

bb.bg:                                            ; preds = %bb.bf
  invoke void %i.ea(ptr noundef nonnull %.val92.i)
          to label %bb.bh unwind label %bb.bj, !dbg !18208, !noalias !17987

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.eb = getelementptr inbounds nuw i8, ptr %.val93.i, i64 8, !dbg !18209
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !18209, !range !888, !invariant.load !733, !noalias !17987 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0, !dbg !18210
  br i1 %i.ed, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic4body4BodyECsbaWXNhtWAp9_11foundations.exit.i, label %bb.bi, !dbg !18210

bb.bi:                                            ; preds = %bb.bh
  %i.ee = getelementptr inbounds nuw i8, ptr %.val93.i, i64 16, !dbg !18209
  %i.ef = load i64, ptr %i.ee, align 8, !dbg !18211, !range !889, !invariant.load !733, !noalias !17987
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val92.i, i64 noundef range(i64 1, 0) %i.ec, i64 noundef range(i64 1, 536870913) %i.ef) #22, !dbg !18212, !noalias !17987
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfUalJnHtWpm_5tonic4body4BodyECsbaWXNhtWAp9_11foundations.exit.i, !dbg !18213

bb.bj:                                            ; preds = %bb.bg
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.usub.sat.i64
!4644 = distinct !DILocation(line: 874, column: 19, scope: !86, inlinedAt: !4642)
!4645 = distinct !DILocation(line: 1310, column: 30, scope: !89, inlinedAt: !4644)
!4646 = distinct !DILocation(line: 430, column: 16, scope: !92, inlinedAt: !4645)
!4647 = distinct !DILocation(line: 11, column: 18, scope: !91, inlinedAt: !4646)
!4648 = distinct !{!4648, !"_RNvXs0_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB5_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2h_5error5ErrorEENtNtNtBY_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!4649 = distinct !{!4649, !4648, !"_RNvXs0_NtNtCs3zuhHmEJ01l_5tokio4sync7oneshotINtB5_6SenderINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2h_5error5ErrorEENtNtNtBY_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!4650 = distinct !DILocation(line: 11, column: 9, scope: !91, inlinedAt: !4646)
!4651 = distinct !DILocation(line: 432, column: 13, scope: !96, inlinedAt: !4650)
!4652 = distinct !DILocation(line: 250, column: 5, scope: !94, inlinedAt: !4651)
!4653 = distinct !{!4653, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB3n_5error5ErrorEEEEECsbaWXNhtWAp9_11foundations"}
!4654 = distinct !{!4654, !4653, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB3n_5error5ErrorEEEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4655 = distinct !{!4655, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB31_5error5ErrorEEEECsbaWXNhtWAp9_11foundations"}
!4656 = distinct !{!4656, !4655, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB31_5error5ErrorEEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4657 = distinct !{!4657, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2O_5error5ErrorEEENtNtNtB1v_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!4658 = distinct !{!4658, !4657, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2O_5error5ErrorEEENtNtNtB1v_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!4659 = distinct !DILocation(line: 848, column: 1, scope: !87, inlinedAt: !4641)
!4660 = distinct !DILocation(line: 848, column: 1, scope: !101, inlinedAt: !4659)
!4661 = distinct !DILocation(line: 848, column: 1, scope: !100, inlinedAt: !4660)
!4662 = distinct !DILocation(line: 2928, column: 32, scope: !99, inlinedAt: !4661)
!4663 = distinct !DILocation(line: 3257, column: 26, scope: !98, inlinedAt: !4662)
!4664 = distinct !DILocation(line: 69, column: 9, scope: !99, inlinedAt: !4661)
!4665 = distinct !{!4665, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB3n_5error5ErrorEEEEECsbaWXNhtWAp9_11foundations"}
!4666 = distinct !{!4666, !4665, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB3n_5error5ErrorEEEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4667 = distinct !{!4667, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB31_5error5ErrorEEEECsbaWXNhtWAp9_11foundations"}
!4668 = distinct !{!4668, !4667, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtB4_6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB31_5error5ErrorEEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4669 = distinct !{!4669, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2O_5error5ErrorEEENtNtNtB1v_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!4670 = distinct !{!4670, !4669, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot5InnerINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs74LoFwSioHw_4http8response8ResponseNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingENtNtB2O_5error5ErrorEEENtNtNtB1v_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!4671 = distinct !DILocation(line: 848, column: 1, scope: !87, inlinedAt: !4641)
!4672 = distinct !DILocation(line: 848, column: 1, scope: !101, inlinedAt: !4671)
!4673 = distinct !DILocation(line: 848, column: 1, scope: !100, inlinedAt: !4672)
!4674 = distinct !DILocation(line: 2928, column: 32, scope: !99, inlinedAt: !4673)
!4675 = distinct !DILocation(line: 3257, column: 26, scope: !98, inlinedAt: !4674)
!4676 = distinct !DILocation(line: 69, column: 9, scope: !99, inlinedAt: !4673)
!4677 = !{!4596}
!4678 = !{!4599}
!4679 = !{!4599, !4596}
!4680 = !{!4608, !4599, !4596}
!4681 = !{!4617, !4615, !4613, !4599, !4596}
!4682 = !{!4629, !4627, !4625, !4599, !4596}
!4683 = !{!4637}
!4684 = !{!4640}
!4685 = !{!4640, !4637}
!4686 = !{!4649, !4640, !4637}
!4687 = !{!4658, !4656, !4654, !4640, !4637}
!4688 = !{!4670, !4668, !4666, !4640, !4637}
!4689 = !DILocation(line: 848, column: 1, scope: !4594)
!4690 = !DILocation(line: 848, column: 1, scope: !64, inlinedAt: !4597)
!4691 = !DILocation(line: 743, column: 15, scope: !65, inlinedAt: !4602)
!4692 = !DILocation(line: 743, column: 9, scope: !65, inlinedAt: !4602)
!4693 = !DILocation(line: 1301, column: 40, scope: !69, inlinedAt: !4603)
!4694 = !DILocation(line: 1301, column: 20, scope: !69, inlinedAt: !4603)
!4695 = !DILocation(line: 1303, column: 12, scope: !70, inlinedAt: !4603)
!4696 = !DILocation(line: 2437, column: 9, scope: !71, inlinedAt: !4606)
!4697 = !DILocation(line: 464, column: 18, scope: !74, inlinedAt: !4611)
!4698 = !DILocation(line: 464, column: 50, scope: !74, inlinedAt: !4611)
!4699 = !DILocation(line: 4053, column: 24, scope: !78, inlinedAt: !4622)
!4700 = !DILocation(line: 2928, column: 12, scope: !80, inlinedAt: !4620)
!4701 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4623)
!4702 = !DILocation(line: 2971, column: 18, scope: !80, inlinedAt: !4620)
!4703 = !DILocation(line: 4053, column: 24, scope: !78, inlinedAt: !4634)
!4704 = !DILocation(line: 2928, column: 12, scope: !80, inlinedAt: !4632)
!4705 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4635)
!4706 = !DILocation(line: 2971, column: 18, scope: !80, inlinedAt: !4632)
!4707 = !DILocation(line: 848, column: 1, scope: !68, inlinedAt: !4600)
!4708 = !DILocation(line: 848, column: 1, scope: !83, inlinedAt: !4638)
!4709 = !DILocation(line: 743, column: 15, scope: !84, inlinedAt: !4643)
!4710 = !DILocation(line: 743, column: 9, scope: !84, inlinedAt: !4643)
!4711 = !DILocation(line: 1301, column: 40, scope: !88, inlinedAt: !4644)
!4712 = !DILocation(line: 1301, column: 20, scope: !88, inlinedAt: !4644)
!4713 = !DILocation(line: 1303, column: 12, scope: !89, inlinedAt: !4644)
!4714 = !DILocation(line: 2437, column: 9, scope: !90, inlinedAt: !4647)
!4715 = !DILocation(line: 464, column: 18, scope: !93, inlinedAt: !4652)
!4716 = !DILocation(line: 464, column: 50, scope: !93, inlinedAt: !4652)
!4717 = !DILocation(line: 4053, column: 24, scope: !97, inlinedAt: !4663)
!4718 = !DILocation(line: 2928, column: 12, scope: !99, inlinedAt: !4661)
!4719 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4664)
!4720 = !DILocation(line: 2971, column: 18, scope: !99, inlinedAt: !4661)
!4721 = !DILocation(line: 4053, column: 24, scope: !97, inlinedAt: !4675)
!4722 = !DILocation(line: 2928, column: 12, scope: !99, inlinedAt: !4673)
!4723 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4676)
!4724 = !DILocation(line: 2971, column: 18, scope: !99, inlinedAt: !4673)
!4725 = !DILocation(line: 848, column: 1, scope: !87, inlinedAt: !4641)
!4726 = distinct !DISubprogram(name: "drop_glue<hyper::client::dispatch::Envelope<http::request::Request<tonic::body::Body>, http::response::Response<hyper::body::incoming::Incoming>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1w_8response8ResponseNtNtNtBI_4body8incoming8IncomingEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4727 = distinct !DILocation(line: 848, column: 1, scope: !4726)
!4728 = distinct !{!4728, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtNtCsaCYLheajBls_5hyper6client8dispatch8CallbackBY_INtNtB13_8response8ResponseNtNtNtB2i_4body8incoming8IncomingEEEEECsbaWXNhtWAp9_11foundations"}
!4729 = distinct !{!4729, !4728, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtNtCsaCYLheajBls_5hyper6client8dispatch8CallbackBY_INtNtB13_8response8ResponseNtNtNtB2i_4body8incoming8IncomingEEEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4730 = distinct !DILocation(line: 848, column: 1, scope: !157, inlinedAt: !4727)
!4731 = !{!4729}
!4732 = !DILocation(line: 848, column: 1, scope: !4726)
!4733 = !DILocation(line: 848, column: 1, scope: !157, inlinedAt: !4727)
!4734 = !DILocation(line: 848, column: 1, scope: !158, inlinedAt: !4730)
!4735 = distinct !DISubprogram(name: "drop_glue<hyper::client::dispatch::Receiver<http::request::Request<tonic::body::Body>, http::response::Response<hyper::body::incoming::Incoming>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaCYLheajBls_5hyper6client8dispatch8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB1w_8response8ResponseNtNtNtBI_4body8incoming8IncomingEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4736 = distinct !DISubprogram(name: "cancel", linkageName: "_RNvMs4_CscOlC5CHhnDM_4wantNtB5_5Taker6cancel", scope: !947, file: !945, line: 326, type: !734, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4737 = distinct !DISubprogram(name: "drop<http::request::Request<tonic::body::Body>, http::response::Response<hyper::body::incoming::Incoming>>", linkageName: "_RNvXs2_NtNtCsaCYLheajBls_5hyper6client8dispatchINtB5_8ReceiverINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations", scope: !4821, file: !948, line: 210, type: !811, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4738 = distinct !DILocation(line: 848, column: 1, scope: !4735)
!4739 = distinct !DILocation(line: 213, column: 20, scope: !4737, inlinedAt: !4738)
!4740 = distinct !DILocation(line: 327, column: 14, scope: !4736, inlinedAt: !4739)
!4741 = distinct !DILocation(line: 342, column: 42, scope: !401, inlinedAt: !4740)
!4742 = distinct !DILocation(line: 2981, column: 43, scope: !400, inlinedAt: !4741)
!4743 = distinct !DILocation(line: 3695, column: 24, scope: !399, inlinedAt: !4742)
!4744 = distinct !DILocation(line: 2981, column: 26, scope: !400, inlinedAt: !4741)
!4745 = distinct !DILocation(line: 342, column: 69, scope: !401, inlinedAt: !4740)
!4746 = distinct !DILocation(line: 347, column: 63, scope: !405, inlinedAt: !4740)
!4747 = distinct !DILocation(line: 144, column: 18, scope: !409, inlinedAt: !4746)
!4748 = distinct !DILocation(line: 166, column: 28, scope: !408, inlinedAt: !4747)
!4749 = distinct !DILocation(line: 830, column: 22, scope: !407, inlinedAt: !4748)
!4750 = distinct !DILocation(line: 348, column: 52, scope: !412, inlinedAt: !4740)
!4751 = distinct !DILocation(line: 1901, column: 9, scope: !411, inlinedAt: !4750)
!4752 = distinct !DILocation(line: 350, column: 34, scope: !412, inlinedAt: !4740)
!4753 = distinct !{null}
!4754 = distinct !DILocation(line: 848, column: 1, scope: !4735)
!4755 = distinct !DILocation(line: 848, column: 1, scope: !417, inlinedAt: !4754)
!4756 = distinct !{!4756, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2R_8response8ResponseNtNtNtB23_4body8incoming8IncomingEENtNtB1e_9unbounded9SemaphoreEEECsbaWXNhtWAp9_11foundations"}
!4757 = distinct !{!4757, !4756, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2R_8response8ResponseNtNtNtB23_4body8incoming8IncomingEENtNtB1e_9unbounded9SemaphoreEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4758 = distinct !{!4758, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2o_8response8ResponseNtNtNtB1A_4body8incoming8IncomingEENtNtBL_9unbounded9SemaphoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!4759 = distinct !{!4759, !4758, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2o_8response8ResponseNtNtNtB1A_4body8incoming8IncomingEENtNtBL_9unbounded9SemaphoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!4760 = distinct !DILocation(line: 848, column: 1, scope: !416, inlinedAt: !4755)
!4761 = distinct !{!4761, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc9unbounded17UnboundedReceiverINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2C_8response8ResponseNtNtNtB1O_4body8incoming8IncomingEEEECsbaWXNhtWAp9_11foundations"}
!4762 = distinct !{!4762, !4761, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc9unbounded17UnboundedReceiverINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2C_8response8ResponseNtNtNtB1O_4body8incoming8IncomingEEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4763 = distinct !{!4763, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan2RxINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2h_8response8ResponseNtNtNtB1t_4body8incoming8IncomingEENtNtBG_9unbounded9SemaphoreEECsbaWXNhtWAp9_11foundations"}
!4764 = distinct !{!4764, !4763, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan2RxINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2h_8response8ResponseNtNtNtB1t_4body8incoming8IncomingEENtNtBG_9unbounded9SemaphoreEECsbaWXNhtWAp9_11foundations: argument 0"}
!4765 = distinct !DILocation(line: 848, column: 1, scope: !392, inlinedAt: !4760)
!4766 = distinct !DILocation(line: 2928, column: 17, scope: !395, inlinedAt: !4765)
!4767 = distinct !DILocation(line: 2193, column: 27, scope: !394, inlinedAt: !4766)
!4768 = distinct !DILocation(line: 2928, column: 32, scope: !395, inlinedAt: !4765)
!4769 = distinct !DILocation(line: 3257, column: 26, scope: !397, inlinedAt: !4768)
!4770 = distinct !DILocation(line: 69, column: 9, scope: !395, inlinedAt: !4765)
!4771 = distinct !{!4771, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2R_8response8ResponseNtNtNtB23_4body8incoming8IncomingEENtNtB1e_9unbounded9SemaphoreEEECsbaWXNhtWAp9_11foundations"}
!4772 = distinct !{!4772, !4771, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2R_8response8ResponseNtNtNtB23_4body8incoming8IncomingEENtNtB1e_9unbounded9SemaphoreEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4773 = distinct !{!4773, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2o_8response8ResponseNtNtNtB1A_4body8incoming8IncomingEENtNtBL_9unbounded9SemaphoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!4774 = distinct !{!4774, !4773, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc4chan4ChanINtNtNtCsaCYLheajBls_5hyper6client8dispatch8EnvelopeINtNtCs74LoFwSioHw_4http7request7RequestNtNtCsfUalJnHtWpm_5tonic4body4BodyEINtNtB2o_8response8ResponseNtNtNtB1A_4body8incoming8IncomingEENtNtBL_9unbounded9SemaphoreEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!4775 = distinct !DILocation(line: 848, column: 1, scope: !416, inlinedAt: !4755)
!4776 = distinct !DILocation(line: 848, column: 1, scope: !392, inlinedAt: !4775)
!4777 = distinct !DILocation(line: 2928, column: 17, scope: !395, inlinedAt: !4776)
!4778 = distinct !DILocation(line: 2193, column: 27, scope: !394, inlinedAt: !4777)
!4779 = distinct !DILocation(line: 2928, column: 32, scope: !395, inlinedAt: !4776)
!4780 = distinct !DILocation(line: 3257, column: 26, scope: !397, inlinedAt: !4779)
!4781 = distinct !DILocation(line: 69, column: 9, scope: !395, inlinedAt: !4776)
!4782 = distinct !{!4782, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscOlC5CHhnDM_4want5TakerECsbaWXNhtWAp9_11foundations"}
!4783 = distinct !{!4783, !4782, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCscOlC5CHhnDM_4want5TakerECsbaWXNhtWAp9_11foundations: argument 0"}
!4784 = distinct !DILocation(line: 848, column: 1, scope: !4735)
!4785 = distinct !DILocation(line: 848, column: 1, scope: !418, inlinedAt: !4784)
!4786 = distinct !DILocation(line: 368, column: 14, scope: !419, inlinedAt: !4785)
!4787 = distinct !DILocation(line: 342, column: 42, scope: !401, inlinedAt: !4786)
!4788 = distinct !DILocation(line: 2981, column: 43, scope: !400, inlinedAt: !4787)
!4789 = distinct !DILocation(line: 3695, column: 24, scope: !399, inlinedAt: !4788)
!4790 = distinct !DILocation(line: 2981, column: 26, scope: !400, inlinedAt: !4787)
!4791 = distinct !DILocation(line: 342, column: 69, scope: !401, inlinedAt: !4786)
!4792 = distinct !DILocation(line: 347, column: 63, scope: !405, inlinedAt: !4786)
!4793 = distinct !DILocation(line: 144, column: 18, scope: !409, inlinedAt: !4792)
!4794 = distinct !DILocation(line: 166, column: 28, scope: !408, inlinedAt: !4793)
!4795 = distinct !DILocation(line: 830, column: 22, scope: !407, inlinedAt: !4794)
!4796 = distinct !DILocation(line: 348, column: 52, scope: !412, inlinedAt: !4786)
!4797 = distinct !DILocation(line: 1901, column: 9, scope: !411, inlinedAt: !4796)
!4798 = distinct !DILocation(line: 350, column: 34, scope: !412, inlinedAt: !4786)
!4799 = distinct !{!4799, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations"}
!4800 = distinct !{!4800, !4799, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations: argument 0"}
!4801 = distinct !{!4801, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!4802 = distinct !{!4802, !4801, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!4803 = distinct !DILocation(line: 848, column: 1, scope: !418, inlinedAt: !4784)
!4804 = distinct !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !4803)
!4805 = distinct !DILocation(line: 2928, column: 17, scope: !387, inlinedAt: !4804)
!4806 = distinct !DILocation(line: 2193, column: 27, scope: !386, inlinedAt: !4805)
!4807 = distinct !DILocation(line: 2928, column: 32, scope: !387, inlinedAt: !4804)
!4808 = distinct !DILocation(line: 3257, column: 26, scope: !389, inlinedAt: !4807)
!4809 = distinct !DILocation(line: 69, column: 9, scope: !387, inlinedAt: !4804)
!4810 = distinct !{!4810, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations"}
!4811 = distinct !{!4811, !4810, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations: argument 0"}
!4812 = distinct !{!4812, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!4813 = distinct !{!4813, !4812, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!4814 = distinct !DILocation(line: 848, column: 1, scope: !418, inlinedAt: !4784)
!4815 = distinct !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !4814)
!4816 = distinct !DILocation(line: 2928, column: 17, scope: !387, inlinedAt: !4815)
!4817 = distinct !DILocation(line: 2193, column: 27, scope: !386, inlinedAt: !4816)
!4818 = distinct !DILocation(line: 2928, column: 32, scope: !387, inlinedAt: !4815)
!4819 = distinct !DILocation(line: 3257, column: 26, scope: !389, inlinedAt: !4818)
!4820 = distinct !DILocation(line: 69, column: 9, scope: !387, inlinedAt: !4815)
!4821 = !DINamespace(name: "{impl#4}", scope: !949)
!4822 = !{!4757}
!4823 = !{!4759}
!4824 = !{!4759, !4757, !4764, !4762}
!4825 = !{!4759, !4757}
!4826 = !{!4772}
!4827 = !{!4774}
!4828 = !{!4774, !4772, !4764, !4762}
!4829 = !{!4774, !4772}
!4830 = !{!4783}
!4831 = !{!4800}
!4832 = !{!4802}
!4833 = !{!4802, !4800, !4783}
!4834 = !{!4811}
!4835 = !{!4813}
!4836 = !{!4813, !4811, !4783}
!4837 = !DILocation(line: 848, column: 1, scope: !4735)
!4838 = !DILocation(line: 2437, column: 9, scope: !398, inlinedAt: !4743)
!4839 = !DILocation(line: 4019, column: 23, scope: !402, inlinedAt: !4744)
!4840 = !DILocation(line: 780, column: 9, scope: !403, inlinedAt: !4745)
!4841 = !DILocation(line: 343, column: 9, scope: !404, inlinedAt: !4740)
!4842 = !DILocation(line: 347, column: 28, scope: !405, inlinedAt: !4740)
!4843 = !DILocation(line: 4019, column: 23, scope: !406, inlinedAt: !4749)
!4844 = !DILocation(line: 830, column: 22, scope: !407, inlinedAt: !4748)
!4845 = !DILocation(line: 347, column: 47, scope: !405, inlinedAt: !4740)
!4846 = !DILocation(line: 975, column: 22, scope: !410, inlinedAt: !4751)
!4847 = !DILocation(line: 976, column: 49, scope: !413, inlinedAt: !4751)
!4848 = !DILocation(line: 348, column: 45, scope: !412, inlinedAt: !4740)
!4849 = !DILocation(line: 0, scope: !404, inlinedAt: !4740)
!4850 = !DILocation(line: 348, column: 32, scope: !412, inlinedAt: !4740)
!4851 = !DILocation(line: 449, column: 18, scope: !415, inlinedAt: !4752)
!4852 = !DILocation(line: 848, column: 1, scope: !416, inlinedAt: !4755)
!4853 = !DILocation(line: 848, column: 1, scope: !392, inlinedAt: !4760)
!4854 = !DILocation(line: 454, column: 20, scope: !393, inlinedAt: !4767)
!4855 = !DILocation(line: 4053, column: 24, scope: !396, inlinedAt: !4769)
!4856 = !DILocation(line: 2928, column: 12, scope: !395, inlinedAt: !4765)
!4857 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4770)
!4858 = !DILocation(line: 2971, column: 18, scope: !395, inlinedAt: !4765)
!4859 = !DILocation(line: 848, column: 1, scope: !392, inlinedAt: !4775)
!4860 = !DILocation(line: 454, column: 20, scope: !393, inlinedAt: !4778)
!4861 = !DILocation(line: 4053, column: 24, scope: !396, inlinedAt: !4780)
!4862 = !DILocation(line: 2928, column: 12, scope: !395, inlinedAt: !4776)
!4863 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4781)
!4864 = !DILocation(line: 2971, column: 18, scope: !395, inlinedAt: !4776)
!4865 = !DILocation(line: 848, column: 1, scope: !418, inlinedAt: !4784)
!4866 = !DILocation(line: 2437, column: 9, scope: !398, inlinedAt: !4789)
!4867 = !DILocation(line: 4019, column: 23, scope: !402, inlinedAt: !4790)
!4868 = !DILocation(line: 780, column: 9, scope: !403, inlinedAt: !4791)
!4869 = !DILocation(line: 343, column: 9, scope: !404, inlinedAt: !4786)
!4870 = !DILocation(line: 347, column: 28, scope: !405, inlinedAt: !4786)
!4871 = !DILocation(line: 4019, column: 23, scope: !406, inlinedAt: !4795)
!4872 = !DILocation(line: 830, column: 22, scope: !407, inlinedAt: !4794)
!4873 = !DILocation(line: 347, column: 47, scope: !405, inlinedAt: !4786)
!4874 = !DILocation(line: 975, column: 22, scope: !410, inlinedAt: !4797)
!4875 = !DILocation(line: 976, column: 49, scope: !413, inlinedAt: !4797)
!4876 = !DILocation(line: 348, column: 45, scope: !412, inlinedAt: !4786)
!4877 = !DILocation(line: 0, scope: !404, inlinedAt: !4786)
!4878 = !DILocation(line: 348, column: 32, scope: !412, inlinedAt: !4786)
!4879 = !DILocation(line: 449, column: 18, scope: !415, inlinedAt: !4798)
!4880 = !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !4803)
!4881 = !DILocation(line: 454, column: 20, scope: !385, inlinedAt: !4806)
!4882 = !DILocation(line: 4053, column: 24, scope: !388, inlinedAt: !4808)
!4883 = !DILocation(line: 2928, column: 12, scope: !387, inlinedAt: !4804)
!4884 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4809)
!4885 = !DILocation(line: 2971, column: 18, scope: !387, inlinedAt: !4804)
!4886 = !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !4814)
!4887 = !DILocation(line: 454, column: 20, scope: !385, inlinedAt: !4817)
!4888 = !DILocation(line: 4053, column: 24, scope: !388, inlinedAt: !4819)
!4889 = !DILocation(line: 2928, column: 12, scope: !387, inlinedAt: !4815)
!4890 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !4820)
!4891 = !DILocation(line: 2971, column: 18, scope: !387, inlinedAt: !4815)
!4892 = distinct !DISubprogram(name: "drop_glue<std::sync::poison::PoisonError<std::sync::poison::mutex::MutexGuard<futures_channel::mpsc::SenderTask>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs4QIrBFOvxlJ_15futures_channel4mpsc10SenderTaskEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4893 = distinct !DILocation(line: 848, column: 1, scope: !4892)
!4894 = distinct !DILocation(line: 848, column: 1, scope: !422, inlinedAt: !4893)
!4895 = distinct !DILocation(line: 745, column: 30, scope: !421, inlinedAt: !4894)
!4896 = distinct !DILocation(line: 126, column: 32, scope: !423, inlinedAt: !4895)
!4897 = distinct !DILocation(line: 221, column: 5, scope: !427, inlinedAt: !4896)
!4898 = distinct !DILocation(line: 604, column: 6, scope: !426, inlinedAt: !4897)
!4899 = distinct !DILocation(line: 463, column: 31, scope: !425, inlinedAt: !4898)
!4900 = distinct !DILocation(line: 2920, column: 26, scope: !424, inlinedAt: !4899)
!4901 = distinct !DILocation(line: 127, column: 25, scope: !423, inlinedAt: !4895)
!4902 = distinct !DILocation(line: 795, column: 13, scope: !429, inlinedAt: !4901)
!4903 = distinct !DILocation(line: 746, column: 29, scope: !421, inlinedAt: !4894)
!4904 = distinct !DILocation(line: 90, column: 23, scope: !432, inlinedAt: !4903)
!4905 = distinct !DILocation(line: 2981, column: 26, scope: !431, inlinedAt: !4904)
!4906 = !DILocation(line: 848, column: 1, scope: !4892)
!4907 = !DILocation(line: 745, column: 13, scope: !421, inlinedAt: !4894)
!4908 = !DILocation(line: 126, column: 13, scope: !423, inlinedAt: !4895)
!4909 = !DILocation(line: 3998, column: 24, scope: !3, inlinedAt: !4900)
!4910 = !DILocation(line: 463, column: 12, scope: !425, inlinedAt: !4898)
!4911 = !DILocation(line: 475, column: 13, scope: !425, inlinedAt: !4898)
!4912 = !DILocation(line: 126, column: 32, scope: !423, inlinedAt: !4895)
!4913 = !DILocation(line: 3982, column: 24, scope: !428, inlinedAt: !4902)
!4914 = !DILocation(line: 126, column: 9, scope: !423, inlinedAt: !4895)
!4915 = !DILocation(line: 4017, column: 24, scope: !430, inlinedAt: !4905)
!4916 = !DILocation(line: 90, column: 12, scope: !432, inlinedAt: !4903)
!4917 = !DILocation(line: 95, column: 18, scope: !432, inlinedAt: !4903)
!4918 = distinct !DISubprogram(name: "drop_glue<std::sync::poison::PoisonError<std::sync::poison::mutex::MutexGuard<std::sync::mpmc::waker::Waker>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4919 = distinct !DILocation(line: 848, column: 1, scope: !4918)
!4920 = distinct !DILocation(line: 848, column: 1, scope: !434, inlinedAt: !4919)
!4921 = distinct !DILocation(line: 745, column: 30, scope: !433, inlinedAt: !4920)
!4922 = distinct !DILocation(line: 126, column: 32, scope: !423, inlinedAt: !4921)
!4923 = distinct !DILocation(line: 221, column: 5, scope: !427, inlinedAt: !4922)
!4924 = distinct !DILocation(line: 604, column: 6, scope: !426, inlinedAt: !4923)
!4925 = distinct !DILocation(line: 463, column: 31, scope: !425, inlinedAt: !4924)
!4926 = distinct !DILocation(line: 2920, column: 26, scope: !424, inlinedAt: !4925)
!4927 = distinct !DILocation(line: 127, column: 25, scope: !423, inlinedAt: !4921)
!4928 = distinct !DILocation(line: 795, column: 13, scope: !429, inlinedAt: !4927)
!4929 = distinct !DILocation(line: 746, column: 29, scope: !433, inlinedAt: !4920)
!4930 = distinct !DILocation(line: 90, column: 23, scope: !437, inlinedAt: !4929)
!4931 = distinct !DILocation(line: 2981, column: 26, scope: !436, inlinedAt: !4930)
!4932 = !DILocation(line: 848, column: 1, scope: !4918)
!4933 = !DILocation(line: 745, column: 13, scope: !433, inlinedAt: !4920)
!4934 = !DILocation(line: 126, column: 13, scope: !423, inlinedAt: !4921)
!4935 = !DILocation(line: 3998, column: 24, scope: !3, inlinedAt: !4926)
!4936 = !DILocation(line: 463, column: 12, scope: !425, inlinedAt: !4924)
!4937 = !DILocation(line: 475, column: 13, scope: !425, inlinedAt: !4924)
!4938 = !DILocation(line: 126, column: 32, scope: !423, inlinedAt: !4921)
!4939 = !DILocation(line: 3982, column: 24, scope: !428, inlinedAt: !4928)
!4940 = !DILocation(line: 126, column: 9, scope: !423, inlinedAt: !4921)
!4941 = !DILocation(line: 4017, column: 24, scope: !435, inlinedAt: !4931)
!4942 = !DILocation(line: 90, column: 12, scope: !437, inlinedAt: !4929)
!4943 = !DILocation(line: 95, column: 18, scope: !437, inlinedAt: !4929)
!4944 = distinct !DISubprogram(name: "drop_glue<h2::codec::framed_read::FramedRead<h2::codec::framed_write::FramedWrite<hyper::common::io::compat::Compat<tonic::transport::channel::service::io::BoxedIo>, h2::proto::streams::prioritize::Prioritized<hyper::proto::h2::SendBuf<bytes::bytes::Bytes>>>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsb6T6P0NKlCh_2h25codec11framed_read10FramedReadINtNtBG_12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtB2c_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4945 = distinct !{!4945, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgI8t0psmkwo_10tokio_util5codec11framed_read10FramedReadINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecEECsbaWXNhtWAp9_11foundations"}
!4946 = distinct !{!4946, !4945, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgI8t0psmkwo_10tokio_util5codec11framed_read10FramedReadINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecEECsbaWXNhtWAp9_11foundations: argument 0"}
!4947 = distinct !{!4947, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgI8t0psmkwo_10tokio_util5codec11framed_impl10FramedImplINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecNtBE_9ReadFrameEECsbaWXNhtWAp9_11foundations"}
!4948 = distinct !{!4948, !4947, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgI8t0psmkwo_10tokio_util5codec11framed_impl10FramedImplINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecNtBE_9ReadFrameEECsbaWXNhtWAp9_11foundations: argument 0"}
!4949 = distinct !DISubprogram(name: "drop_glue<tokio_util::codec::framed_read::FramedRead<h2::codec::framed_write::FramedWrite<hyper::common::io::compat::Compat<tonic::transport::channel::service::io::BoxedIo>, h2::proto::streams::prioritize::Prioritized<hyper::proto::h2::SendBuf<bytes::bytes::Bytes>>>, tokio_util::codec::length_delimited::LengthDelimitedCodec>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgI8t0psmkwo_10tokio_util5codec11framed_read10FramedReadINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4950 = distinct !DILocation(line: 848, column: 1, scope: !4944)
!4951 = distinct !DISubprogram(name: "drop_glue<tokio_util::codec::framed_impl::FramedImpl<h2::codec::framed_write::FramedWrite<hyper::common::io::compat::Compat<tonic::transport::channel::service::io::BoxedIo>, h2::proto::streams::prioritize::Prioritized<hyper::proto::h2::SendBuf<bytes::bytes::Bytes>>>, tokio_util::codec::length_delimited::LengthDelimitedCodec, tokio_util::codec::framed_impl::ReadFrame>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsgI8t0psmkwo_10tokio_util5codec11framed_impl10FramedImplINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtB1K_5proto7streams10prioritize11PrioritizedINtNtNtB2H_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEENtNtBG_16length_delimited20LengthDelimitedCodecNtBE_9ReadFrameEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4952 = distinct !DILocation(line: 848, column: 1, scope: !4949, inlinedAt: !4950)
!4953 = distinct !{!4953, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtB1F_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEECsbaWXNhtWAp9_11foundations"}
!4954 = distinct !{!4954, !4953, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write11FramedWriteINtNtNtNtCsaCYLheajBls_5hyper6common2io6compat6CompatNtNtNtNtNtCsfUalJnHtWpm_5tonic9transport7channel7service2io7BoxedIoEINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtB1F_5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEECsbaWXNhtWAp9_11foundations: argument 0"}
!4955 = distinct !DILocation(line: 848, column: 1, scope: !4951, inlinedAt: !4952)
!4956 = distinct !DILocation(line: 848, column: 1, scope: !438, inlinedAt: !4955)
!4957 = distinct !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !4956)
!4958 = distinct !DILocation(line: 848, column: 1, scope: !441, inlinedAt: !4957)
!4959 = distinct !DILocation(line: 848, column: 1, scope: !440, inlinedAt: !4958)
!4960 = distinct !DILocation(line: 848, column: 1, scope: !439, inlinedAt: !4959)
!4961 = distinct !DILocation(line: 1993, column: 26, scope: !446, inlinedAt: !4960)
!4962 = distinct !DILocation(line: 261, column: 43, scope: !444, inlinedAt: !4961)
!4963 = distinct !DILocation(line: 261, column: 70, scope: !444, inlinedAt: !4961)
!4964 = distinct !DILocation(line: 159, column: 30, scope: !449, inlinedAt: !4963)
!4965 = distinct !DILocation(line: 1995, column: 24, scope: !447, inlinedAt: !4960)
!4966 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !4965)
!4967 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !4966)
!4968 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !4967)
!4969 = distinct !DILocation(line: 848, column: 1, scope: !439, inlinedAt: !4959)
!4970 = distinct !DILocation(line: 1993, column: 26, scope: !446, inlinedAt: !4969)
!4971 = distinct !DILocation(line: 261, column: 43, scope: !444, inlinedAt: !4970)
!4972 = distinct !DILocation(line: 261, column: 70, scope: !444, inlinedAt: !4970)
!4973 = distinct !DILocation(line: 159, column: 30, scope: !449, inlinedAt: !4972)
!4974 = distinct !DILocation(line: 1995, column: 24, scope: !447, inlinedAt: !4969)
!4975 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !4974)
!4976 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !4975)
!4977 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !4976)
!4978 = distinct !DISubprogram(name: "drop_glue<tokio_util::codec::framed_impl::ReadFrame>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsgI8t0psmkwo_10tokio_util5codec11framed_impl9ReadFrameECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!4979 = distinct !DILocation(line: 848, column: 1, scope: !4951, inlinedAt: !4952)
!4980 = distinct !DILocation(line: 848, column: 1, scope: !4978, inlinedAt: !4979)
!4981 = distinct !DILocation(line: 848, column: 1, scope: !4951, inlinedAt: !4952)
!4982 = distinct !DILocation(line: 848, column: 1, scope: !4978, inlinedAt: !4981)
!4983 = distinct !DILocation(line: 848, column: 1, scope: !4944)
!4984 = distinct !DILocation(line: 848, column: 1, scope: !450, inlinedAt: !4983)
!4985 = distinct !DILocation(line: 848, column: 1, scope: !452, inlinedAt: !4984)
!4986 = distinct !DILocation(line: 848, column: 1, scope: !451, inlinedAt: !4985)
!4987 = distinct !DILocation(line: 848, column: 1, scope: !451, inlinedAt: !4985)
!4988 = distinct !DILocation(line: 848, column: 1, scope: !450, inlinedAt: !4983)
!4989 = distinct !DILocation(line: 848, column: 1, scope: !450, inlinedAt: !4983)
!4990 = !{!4946}
!4991 = !{!4948}
!4992 = !{!4954}
!4993 = !{!4954, !4948, !4946}
!4994 = !DILocation(line: 848, column: 1, scope: !4944)
!4995 = !DILocation(line: 848, column: 1, scope: !4949, inlinedAt: !4950)
!4996 = !DILocation(line: 848, column: 1, scope: !4951, inlinedAt: !4952)
!4997 = !DILocation(line: 848, column: 1, scope: !438, inlinedAt: !4955)
!4998 = !DILocation(line: 848, column: 1, scope: !439, inlinedAt: !4959)
!4999 = !DILocation(line: 468, column: 14, scope: !443, inlinedAt: !4962)
!5000 = !DILocation(line: 1994, column: 16, scope: !447, inlinedAt: !4960)
!5001 = !DILocation(line: 642, column: 14, scope: !448, inlinedAt: !4964)
!5002 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !4968)
!5003 = !DILocation(line: 1994, column: 13, scope: !447, inlinedAt: !4960)
!5004 = !DILocation(line: 468, column: 14, scope: !443, inlinedAt: !4971)
!5005 = !DILocation(line: 1994, column: 16, scope: !447, inlinedAt: !4969)
!5006 = !DILocation(line: 642, column: 14, scope: !448, inlinedAt: !4973)
!5007 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !4977)
!5008 = !DILocation(line: 1994, column: 13, scope: !447, inlinedAt: !4969)
!5009 = !DILocation(line: 848, column: 1, scope: !122, inlinedAt: !4980)
!5010 = !DILocation(line: 848, column: 1, scope: !122, inlinedAt: !4982)
!5011 = !DILocation(line: 848, column: 1, scope: !450, inlinedAt: !4983)
!5012 = !DILocation(line: 848, column: 1, scope: !451, inlinedAt: !4985)
!5013 = !DILocation(line: 848, column: 1, scope: !453, inlinedAt: !4986)
!5014 = !DILocation(line: 848, column: 1, scope: !453, inlinedAt: !4987)
!5015 = !DILocation(line: 848, column: 1, scope: !122, inlinedAt: !4988)
!5016 = !DILocation(line: 848, column: 1, scope: !122, inlinedAt: !4989)
!5017 = distinct !DILocation(line: 848, column: 1, scope: !438)
!5018 = distinct !DILocation(line: 848, column: 1, scope: !442, inlinedAt: !5017)
!5019 = distinct !DILocation(line: 848, column: 1, scope: !441, inlinedAt: !5018)
!5020 = distinct !DILocation(line: 848, column: 1, scope: !440, inlinedAt: !5019)
!5021 = distinct !DILocation(line: 848, column: 1, scope: !439, inlinedAt: !5020)
!5022 = distinct !DILocation(line: 1993, column: 26, scope: !446, inlinedAt: !5021)
!5023 = distinct !DILocation(line: 261, column: 43, scope: !444, inlinedAt: !5022)
!5024 = distinct !DILocation(line: 261, column: 70, scope: !444, inlinedAt: !5022)
!5025 = distinct !DILocation(line: 159, column: 30, scope: !449, inlinedAt: !5024)
!5026 = distinct !DILocation(line: 1995, column: 24, scope: !447, inlinedAt: !5021)
!5027 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !5026)
!5028 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !5027)
!5029 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !5028)
!5030 = distinct !DILocation(line: 848, column: 1, scope: !439, inlinedAt: !5020)
!5031 = distinct !DILocation(line: 1993, column: 26, scope: !446, inlinedAt: !5030)
!5032 = distinct !DILocation(line: 261, column: 43, scope: !444, inlinedAt: !5031)
!5033 = distinct !DILocation(line: 261, column: 70, scope: !444, inlinedAt: !5031)
!5034 = distinct !DILocation(line: 159, column: 30, scope: !449, inlinedAt: !5033)
!5035 = distinct !DILocation(line: 1995, column: 24, scope: !447, inlinedAt: !5030)
!5036 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !5035)
!5037 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !5036)
!5038 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !5037)
!5039 = !DILocation(line: 848, column: 1, scope: !438)
!5040 = !DILocation(line: 848, column: 1, scope: !439, inlinedAt: !5020)
!5041 = !DILocation(line: 468, column: 14, scope: !443, inlinedAt: !5023)
!5042 = !DILocation(line: 1994, column: 16, scope: !447, inlinedAt: !5021)
!5043 = !DILocation(line: 642, column: 14, scope: !448, inlinedAt: !5025)
!5044 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !5029)
!5045 = !DILocation(line: 1994, column: 13, scope: !447, inlinedAt: !5021)
!5046 = !DILocation(line: 468, column: 14, scope: !443, inlinedAt: !5032)
!5047 = !DILocation(line: 1994, column: 16, scope: !447, inlinedAt: !5030)
!5048 = !DILocation(line: 642, column: 14, scope: !448, inlinedAt: !5034)
!5049 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !5038)
!5050 = !DILocation(line: 1994, column: 13, scope: !447, inlinedAt: !5030)
!5051 = distinct !DISubprogram(name: "drop_glue<h2::codec::framed_write::Encoder<h2::proto::streams::prioritize::Prioritized<hyper::proto::h2::SendBuf<bytes::bytes::Bytes>>>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write7EncoderINtNtNtNtBI_5proto7streams10prioritize11PrioritizedINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!5052 = distinct !DISubprogram(name: "drop_glue<h2::hpack::encoder::Encoder>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb6T6P0NKlCh_2h25hpack7encoder7EncoderECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!5053 = distinct !DILocation(line: 848, column: 1, scope: !5051)
!5054 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<core::option::Option<h2::hpack::table::Pos>, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25hpack5table3PosEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!5055 = distinct !DISubprogram(name: "drop_glue<h2::hpack::table::Table>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsb6T6P0NKlCh_2h25hpack5table5TableECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!5056 = distinct !DILocation(line: 848, column: 1, scope: !5052, inlinedAt: !5053)
!5057 = distinct !DILocation(line: 848, column: 1, scope: !5055, inlinedAt: !5056)
!5058 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<core::option::Option<h2::hpack::table::Pos>, alloc::alloc::Global>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCsb6T6P0NKlCh_2h25hpack5table3PosEEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!5059 = distinct !DILocation(line: 848, column: 1, scope: !5054, inlinedAt: !5057)
!5060 = distinct !DILocation(line: 848, column: 1, scope: !5054, inlinedAt: !5057)
!5061 = distinct !DILocation(line: 848, column: 1, scope: !5055, inlinedAt: !5056)
!5062 = distinct !DILocation(line: 848, column: 1, scope: !346, inlinedAt: !5061)
!5063 = distinct !DILocation(line: 848, column: 1, scope: !346, inlinedAt: !5061)
!5064 = distinct !DILocation(line: 848, column: 1, scope: !5052, inlinedAt: !5053)
!5065 = distinct !DILocation(line: 848, column: 1, scope: !5052, inlinedAt: !5053)
!5066 = distinct !DISubprogram(name: "drop_glue<core::io::cursor::Cursor<bytes::bytes_mut::BytesMut>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorNtNtCs8QTyv2gZm5j_5bytes9bytes_mut8BytesMutEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!5067 = distinct !DILocation(line: 848, column: 1, scope: !5051)
!5068 = distinct !DILocation(line: 848, column: 1, scope: !5066, inlinedAt: !5067)
!5069 = distinct !DILocation(line: 848, column: 1, scope: !5051)
!5070 = distinct !DILocation(line: 848, column: 1, scope: !5066, inlinedAt: !5069)
!5071 = distinct !{!5071, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write4NextINtNtNtNtB14_5proto7streams10prioritize11PrioritizedINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations"}
!5072 = distinct !{!5072, !5071, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsb6T6P0NKlCh_2h25codec12framed_write4NextINtNtNtNtB14_5proto7streams10prioritize11PrioritizedINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesEEEEECsbaWXNhtWAp9_11foundations: argument 0"}
end_hunk_2
begin_hunk_3_@llvm.usub.sat.i64
!7247 = distinct !DILocation(line: 216, column: 9, scope: !7065)
!7248 = distinct !{!7248, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_ENtNtNtB1n_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!7249 = distinct !{!7249, !7248, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCsaCYLheajBls_5hyper2rt8ExecutorINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1n_6future6future6Futurep6OutputuNtNtB1n_6marker4SendEL_EEEB2L_NtB2N_4SyncEL_ENtNtNtB1n_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!7250 = distinct !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7247)
!7251 = distinct !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7250)
!7252 = distinct !DILocation(line: 2928, column: 17, scope: !33, inlinedAt: !7251)
!7253 = distinct !DILocation(line: 2193, column: 27, scope: !475, inlinedAt: !7252)
!7254 = distinct !DILocation(line: 2928, column: 32, scope: !33, inlinedAt: !7251)
!7255 = distinct !DILocation(line: 3257, column: 26, scope: !32, inlinedAt: !7254)
!7256 = distinct !DILocation(line: 69, column: 9, scope: !33, inlinedAt: !7251)
!7257 = !DILocation(line: 0, scope: !7065)
!7258 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7257)
!7259 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7258)
!7260 = !DILocation(line: 69, column: 9, scope: !33, inlinedAt: !7259)
!7261 = !{!7108}
!7262 = !{!7111}
!7263 = !{!7113}
!7264 = !{!7116}
!7265 = !{!7116, !7113, !7111, !7108}
!7266 = !{!7125}
!7267 = !{!7125, !7108}
!7268 = !{!7130, !7128, !7125}
!7269 = !{!7137}
!7270 = !{!7137, !7108}
!7271 = !{!7142, !7140, !7137}
!7272 = !{!7149}
!7273 = !{!7151}
!7274 = !{!7154}
!7275 = !{!7154, !7151, !7149}
!7276 = !{!7163}
!7277 = !{!7165}
!7278 = !{!7168}
!7279 = !{!7168, !7165, !7163}
!7280 = !{!7176}
!7281 = !{!7179}
!7282 = !{!7181}
!7283 = !{!7184}
!7284 = !{!7184, !7181, !7179, !7176}
!7285 = !{!7193}
!7286 = !{!7193, !7176}
!7287 = !{!7198, !7196, !7193}
!7288 = !{!7205}
!7289 = !{!7205, !7176}
!7290 = !{!7210, !7208, !7205}
!7291 = !{!7217}
!7292 = !{!7219}
!7293 = !{!7222}
!7294 = !{!7222, !7219, !7217}
!7295 = !{!7231}
!7296 = !{!7233}
!7297 = !{!7236}
!7298 = !{!7236, !7233, !7231}
!7299 = !{!7244}
!7300 = !{!7246}
!7301 = !{!7249}
!7302 = !{!7249, !7246, !7244}
!7303 = !DILocation(line: 202, column: 18, scope: !7065)
!7304 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7260)
!7305 = !DILocation(line: 2971, column: 18, scope: !33, inlinedAt: !7259)
!7306 = !DILocation(line: 848, column: 1, scope: !52, inlinedAt: !7067)
!7307 = !DILocation(line: 468, column: 14, scope: !53, inlinedAt: !7070)
!7308 = !DILocation(line: 1994, column: 16, scope: !57, inlinedAt: !7068)
!7309 = !DILocation(line: 642, column: 14, scope: !58, inlinedAt: !7072)
!7310 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !7076)
!7311 = !DILocation(line: 1994, column: 13, scope: !57, inlinedAt: !7068)
!7312 = !DILocation(line: 468, column: 14, scope: !53, inlinedAt: !7079)
!7313 = !DILocation(line: 1994, column: 16, scope: !57, inlinedAt: !7077)
!7314 = !DILocation(line: 642, column: 14, scope: !58, inlinedAt: !7081)
!7315 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !7085)
!7316 = !DILocation(line: 1994, column: 13, scope: !57, inlinedAt: !7077)
!7317 = !DILocation(line: 203, column: 30, scope: !7065)
!7318 = !DILocation(line: 848, column: 1, scope: !52, inlinedAt: !7087)
!7319 = !DILocation(line: 468, column: 14, scope: !53, inlinedAt: !7090)
!7320 = !DILocation(line: 1994, column: 16, scope: !57, inlinedAt: !7088)
!7321 = !DILocation(line: 642, column: 14, scope: !58, inlinedAt: !7092)
!7322 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !7096)
!7323 = !DILocation(line: 1994, column: 13, scope: !57, inlinedAt: !7088)
!7324 = !DILocation(line: 468, column: 14, scope: !53, inlinedAt: !7099)
!7325 = !DILocation(line: 1994, column: 16, scope: !57, inlinedAt: !7097)
!7326 = !DILocation(line: 642, column: 14, scope: !58, inlinedAt: !7101)
!7327 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !7105)
!7328 = !DILocation(line: 1994, column: 13, scope: !57, inlinedAt: !7097)
!7329 = !DILocation(line: 204, column: 66, scope: !7106)
!7330 = !DILocation(line: 848, column: 1, scope: !36, inlinedAt: !7109)
!7331 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7114)
!7332 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7117)
!7333 = !DILocation(line: 454, column: 20, scope: !474, inlinedAt: !7120)
!7334 = !DILocation(line: 4053, column: 24, scope: !31, inlinedAt: !7122)
!7335 = !DILocation(line: 2928, column: 12, scope: !33, inlinedAt: !7118)
!7336 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7123)
!7337 = !DILocation(line: 2971, column: 18, scope: !33, inlinedAt: !7118)
!7338 = !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !7126)
!7339 = !DILocation(line: 4053, column: 24, scope: !39, inlinedAt: !7134)
!7340 = !DILocation(line: 2928, column: 12, scope: !41, inlinedAt: !7132)
!7341 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7135)
!7342 = !DILocation(line: 2971, column: 18, scope: !41, inlinedAt: !7132)
!7343 = !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !7138)
!7344 = !DILocation(line: 4053, column: 24, scope: !39, inlinedAt: !7146)
!7345 = !DILocation(line: 2928, column: 12, scope: !41, inlinedAt: !7144)
!7346 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7147)
!7347 = !DILocation(line: 2971, column: 18, scope: !41, inlinedAt: !7144)
!7348 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7152)
!7349 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7155)
!7350 = !DILocation(line: 454, column: 20, scope: !474, inlinedAt: !7158)
!7351 = !DILocation(line: 4053, column: 24, scope: !31, inlinedAt: !7160)
!7352 = !DILocation(line: 2928, column: 12, scope: !33, inlinedAt: !7156)
!7353 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7161)
!7354 = !DILocation(line: 2971, column: 18, scope: !33, inlinedAt: !7156)
!7355 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7166)
!7356 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7169)
!7357 = !DILocation(line: 454, column: 20, scope: !474, inlinedAt: !7172)
!7358 = !DILocation(line: 4053, column: 24, scope: !31, inlinedAt: !7174)
!7359 = !DILocation(line: 2928, column: 12, scope: !33, inlinedAt: !7170)
!7360 = !DILocation(line: 216, column: 9, scope: !7065)
!7361 = !DILocation(line: 848, column: 1, scope: !36, inlinedAt: !7177)
!7362 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7182)
!7363 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7185)
!7364 = !DILocation(line: 454, column: 20, scope: !474, inlinedAt: !7188)
!7365 = !DILocation(line: 4053, column: 24, scope: !31, inlinedAt: !7190)
!7366 = !DILocation(line: 2928, column: 12, scope: !33, inlinedAt: !7186)
!7367 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7191)
!7368 = !DILocation(line: 2971, column: 18, scope: !33, inlinedAt: !7186)
!7369 = !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !7194)
!7370 = !DILocation(line: 4053, column: 24, scope: !39, inlinedAt: !7202)
!7371 = !DILocation(line: 2928, column: 12, scope: !41, inlinedAt: !7200)
!7372 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7203)
!7373 = !DILocation(line: 2971, column: 18, scope: !41, inlinedAt: !7200)
!7374 = !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !7206)
!7375 = !DILocation(line: 4053, column: 24, scope: !39, inlinedAt: !7214)
!7376 = !DILocation(line: 2928, column: 12, scope: !41, inlinedAt: !7212)
!7377 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7215)
!7378 = !DILocation(line: 2971, column: 18, scope: !41, inlinedAt: !7212)
!7379 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7220)
!7380 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7223)
!7381 = !DILocation(line: 454, column: 20, scope: !474, inlinedAt: !7226)
!7382 = !DILocation(line: 4053, column: 24, scope: !31, inlinedAt: !7228)
!7383 = !DILocation(line: 2928, column: 12, scope: !33, inlinedAt: !7224)
!7384 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7229)
!7385 = !DILocation(line: 2971, column: 18, scope: !33, inlinedAt: !7224)
!7386 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7234)
!7387 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7237)
!7388 = !DILocation(line: 454, column: 20, scope: !474, inlinedAt: !7240)
!7389 = !DILocation(line: 4053, column: 24, scope: !31, inlinedAt: !7242)
!7390 = !DILocation(line: 2928, column: 12, scope: !33, inlinedAt: !7238)
!7391 = !DILocation(line: 848, column: 1, scope: !35, inlinedAt: !7247)
!7392 = !DILocation(line: 848, column: 1, scope: !34, inlinedAt: !7250)
!7393 = !DILocation(line: 454, column: 20, scope: !474, inlinedAt: !7253)
!7394 = !DILocation(line: 4053, column: 24, scope: !31, inlinedAt: !7255)
!7395 = !DILocation(line: 2928, column: 12, scope: !33, inlinedAt: !7251)
!7396 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7256)
!7397 = !DILocation(line: 2971, column: 18, scope: !33, inlinedAt: !7251)
!7398 = distinct !DILocation(line: 848, column: 1, scope: !418)
!7399 = distinct !DILocation(line: 368, column: 14, scope: !419, inlinedAt: !7398)
!7400 = distinct !DILocation(line: 342, column: 42, scope: !401, inlinedAt: !7399)
!7401 = distinct !DILocation(line: 2981, column: 43, scope: !400, inlinedAt: !7400)
!7402 = distinct !DILocation(line: 3695, column: 24, scope: !399, inlinedAt: !7401)
!7403 = distinct !DILocation(line: 2981, column: 26, scope: !400, inlinedAt: !7400)
!7404 = distinct !DILocation(line: 342, column: 69, scope: !401, inlinedAt: !7399)
!7405 = distinct !DILocation(line: 347, column: 63, scope: !405, inlinedAt: !7399)
!7406 = distinct !DILocation(line: 144, column: 18, scope: !409, inlinedAt: !7405)
!7407 = distinct !DILocation(line: 166, column: 28, scope: !408, inlinedAt: !7406)
!7408 = distinct !DILocation(line: 830, column: 22, scope: !407, inlinedAt: !7407)
!7409 = distinct !DILocation(line: 348, column: 52, scope: !412, inlinedAt: !7399)
!7410 = distinct !DILocation(line: 1901, column: 9, scope: !411, inlinedAt: !7409)
!7411 = distinct !DILocation(line: 350, column: 34, scope: !412, inlinedAt: !7399)
!7412 = distinct !{!7412, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations"}
!7413 = distinct !{!7413, !7412, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations: argument 0"}
!7414 = distinct !{!7414, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!7415 = distinct !{!7415, !7414, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!7416 = distinct !DILocation(line: 848, column: 1, scope: !418)
!7417 = distinct !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !7416)
!7418 = distinct !DILocation(line: 2928, column: 17, scope: !387, inlinedAt: !7417)
!7419 = distinct !DILocation(line: 2193, column: 27, scope: !386, inlinedAt: !7418)
!7420 = distinct !DILocation(line: 2928, column: 32, scope: !387, inlinedAt: !7417)
!7421 = distinct !DILocation(line: 3257, column: 26, scope: !389, inlinedAt: !7420)
!7422 = distinct !DILocation(line: 69, column: 9, scope: !387, inlinedAt: !7417)
!7423 = distinct !{!7423, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations"}
!7424 = distinct !{!7424, !7423, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCscOlC5CHhnDM_4want5InnerEECsbaWXNhtWAp9_11foundations: argument 0"}
!7425 = distinct !{!7425, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!7426 = distinct !{!7426, !7425, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCscOlC5CHhnDM_4want5InnerENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!7427 = distinct !DILocation(line: 848, column: 1, scope: !418)
!7428 = distinct !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !7427)
!7429 = distinct !DILocation(line: 2928, column: 17, scope: !387, inlinedAt: !7428)
!7430 = distinct !DILocation(line: 2193, column: 27, scope: !386, inlinedAt: !7429)
!7431 = distinct !DILocation(line: 2928, column: 32, scope: !387, inlinedAt: !7428)
!7432 = distinct !DILocation(line: 3257, column: 26, scope: !389, inlinedAt: !7431)
!7433 = distinct !DILocation(line: 69, column: 9, scope: !387, inlinedAt: !7428)
!7434 = !{!7413}
!7435 = !{!7415}
!7436 = !{!7415, !7413}
!7437 = !{!7424}
!7438 = !{!7426}
!7439 = !{!7426, !7424}
!7440 = !DILocation(line: 848, column: 1, scope: !418)
!7441 = !DILocation(line: 2437, column: 9, scope: !398, inlinedAt: !7402)
!7442 = !DILocation(line: 4019, column: 23, scope: !402, inlinedAt: !7403)
!7443 = !DILocation(line: 780, column: 9, scope: !403, inlinedAt: !7404)
!7444 = !DILocation(line: 343, column: 9, scope: !404, inlinedAt: !7399)
!7445 = !DILocation(line: 347, column: 28, scope: !405, inlinedAt: !7399)
!7446 = !DILocation(line: 4019, column: 23, scope: !406, inlinedAt: !7408)
!7447 = !DILocation(line: 830, column: 22, scope: !407, inlinedAt: !7407)
!7448 = !DILocation(line: 347, column: 47, scope: !405, inlinedAt: !7399)
!7449 = !DILocation(line: 975, column: 22, scope: !410, inlinedAt: !7410)
!7450 = !DILocation(line: 976, column: 49, scope: !413, inlinedAt: !7410)
!7451 = !DILocation(line: 348, column: 45, scope: !412, inlinedAt: !7399)
!7452 = !DILocation(line: 0, scope: !404, inlinedAt: !7399)
!7453 = !DILocation(line: 348, column: 32, scope: !412, inlinedAt: !7399)
!7454 = !DILocation(line: 449, column: 18, scope: !415, inlinedAt: !7411)
!7455 = !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !7416)
!7456 = !DILocation(line: 454, column: 20, scope: !385, inlinedAt: !7419)
!7457 = !DILocation(line: 4053, column: 24, scope: !388, inlinedAt: !7421)
!7458 = !DILocation(line: 2928, column: 12, scope: !387, inlinedAt: !7417)
!7459 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7422)
!7460 = !DILocation(line: 2971, column: 18, scope: !387, inlinedAt: !7417)
!7461 = !DILocation(line: 848, column: 1, scope: !384, inlinedAt: !7427)
!7462 = !DILocation(line: 454, column: 20, scope: !385, inlinedAt: !7430)
!7463 = !DILocation(line: 4053, column: 24, scope: !388, inlinedAt: !7432)
!7464 = !DILocation(line: 2928, column: 12, scope: !387, inlinedAt: !7428)
!7465 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7433)
!7466 = !DILocation(line: 2971, column: 18, scope: !387, inlinedAt: !7428)
!7467 = distinct !DILocation(line: 848, column: 1, scope: !465)
!7468 = distinct !DILocation(line: 1463, column: 37, scope: !464, inlinedAt: !7467)
!7469 = distinct !DILocation(line: 17, column: 10, scope: !467, inlinedAt: !7468)
!7470 = distinct !{!7470, !"_RNvXs7_NtCs2xfK085Iyqb_7tracing4spanNtB5_4SpanNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!7471 = distinct !{!7471, !7470, !"_RNvXs7_NtCs2xfK085Iyqb_7tracing4spanNtB5_4SpanNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!7472 = distinct !{!7472, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2xfK085Iyqb_7tracing4span5InnerEECsbaWXNhtWAp9_11foundations"}
!7473 = distinct !{!7473, !7472, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2xfK085Iyqb_7tracing4span5InnerEECsbaWXNhtWAp9_11foundations: argument 0"}
!7474 = distinct !{!7474, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span5InnerECsbaWXNhtWAp9_11foundations"}
!7475 = distinct !{!7475, !7474, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2xfK085Iyqb_7tracing4span5InnerECsbaWXNhtWAp9_11foundations: argument 0"}
!7476 = distinct !DILocation(line: 848, column: 1, scope: !465)
!7477 = distinct !{!7477, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCshtG1HG2JiYb_12tracing_core10dispatcher8DispatchECsbaWXNhtWAp9_11foundations"}
!7478 = distinct !{!7478, !7477, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCshtG1HG2JiYb_12tracing_core10dispatcher8DispatchECsbaWXNhtWAp9_11foundations: argument 0"}
!7479 = distinct !DILocation(line: 848, column: 1, scope: !146, inlinedAt: !7476)
!7480 = distinct !{!7480, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshtG1HG2JiYb_12tracing_core10dispatcher4KindINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsbaWXNhtWAp9_11foundations"}
!7481 = distinct !{!7481, !7480, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshtG1HG2JiYb_12tracing_core10dispatcher4KindINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECsbaWXNhtWAp9_11foundations: argument 0"}
!7482 = distinct !DILocation(line: 848, column: 1, scope: !147, inlinedAt: !7479)
!7483 = distinct !DILocation(line: 848, column: 1, scope: !148, inlinedAt: !7482)
!7484 = distinct !{!7484, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCshtG1HG2JiYb_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsbaWXNhtWAp9_11foundations"}
!7485 = distinct !{!7485, !7484, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCshtG1HG2JiYb_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECsbaWXNhtWAp9_11foundations: argument 0"}
!7486 = distinct !{!7486, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCshtG1HG2JiYb_12tracing_core10subscriber10SubscriberNtNtCs3oUPovFnLWP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!7487 = distinct !{!7487, !7486, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtCshtG1HG2JiYb_12tracing_core10subscriber10SubscriberNtNtCs3oUPovFnLWP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!7488 = distinct !DILocation(line: 848, column: 1, scope: !149, inlinedAt: !7483)
!7489 = distinct !DILocation(line: 848, column: 1, scope: !150, inlinedAt: !7488)
!7490 = distinct !DILocation(line: 2928, column: 17, scope: !153, inlinedAt: !7489)
!7491 = distinct !DILocation(line: 2193, column: 27, scope: !152, inlinedAt: !7490)
!7492 = distinct !DILocation(line: 2928, column: 32, scope: !153, inlinedAt: !7489)
!7493 = distinct !DILocation(line: 3257, column: 26, scope: !155, inlinedAt: !7492)
!7494 = distinct !DILocation(line: 69, column: 9, scope: !153, inlinedAt: !7489)
!7495 = !{!7471}
!7496 = !{!7473}
!7497 = !{!7475}
!7498 = !{!7478}
!7499 = !{!7481}
!7500 = !{!7485}
!7501 = !{!7487}
!7502 = !{!7487, !7485, !7481, !7478, !7475, !7473}
!7503 = !DILocation(line: 1461, column: 14, scope: !464, inlinedAt: !7467)
!7504 = !DILocation(line: 1458, column: 16, scope: !464, inlinedAt: !7467)
!7505 = !DILocation(line: 178, column: 9, scope: !466, inlinedAt: !7469)
!7506 = !DILocation(line: 1463, column: 24, scope: !464, inlinedAt: !7467)
!7507 = !DILocation(line: 848, column: 1, scope: !465)
!7508 = !DILocation(line: 848, column: 1, scope: !146, inlinedAt: !7476)
!7509 = !DILocation(line: 848, column: 1, scope: !147, inlinedAt: !7479)
!7510 = !DILocation(line: 848, column: 1, scope: !148, inlinedAt: !7482)
!7511 = !DILocation(line: 848, column: 1, scope: !149, inlinedAt: !7483)
!7512 = !DILocation(line: 848, column: 1, scope: !150, inlinedAt: !7488)
!7513 = !DILocation(line: 454, column: 20, scope: !151, inlinedAt: !7491)
!7514 = !DILocation(line: 4053, column: 24, scope: !154, inlinedAt: !7493)
!7515 = !DILocation(line: 2928, column: 12, scope: !153, inlinedAt: !7489)
!7516 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !7494)
!7517 = !DILocation(line: 2971, column: 18, scope: !153, inlinedAt: !7489)
!7518 = distinct !DILocation(line: 848, column: 1, scope: !308)
!7519 = distinct !DILocation(line: 848, column: 1, scope: !307, inlinedAt: !7518)
!7520 = distinct !DILocation(line: 848, column: 1, scope: !312, inlinedAt: !7519)
!7521 = distinct !DILocation(line: 848, column: 1, scope: !311, inlinedAt: !7520)
!7522 = distinct !DILocation(line: 848, column: 1, scope: !310, inlinedAt: !7521)
!7523 = distinct !DILocation(line: 848, column: 1, scope: !312, inlinedAt: !7519)
!7524 = distinct !DILocation(line: 1995, column: 24, scope: !315, inlinedAt: !7523)
!7525 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !7524)
!7526 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !7525)
!7527 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !7526)
!7528 = distinct !DILocation(line: 848, column: 1, scope: !312, inlinedAt: !7519)
!7529 = distinct !DILocation(line: 1995, column: 24, scope: !315, inlinedAt: !7528)
!7530 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !7529)
!7531 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !7530)
!7532 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !7531)
!7533 = !DILocation(line: 848, column: 1, scope: !307, inlinedAt: !7518)
!7534 = !DILocation(line: 848, column: 1, scope: !309, inlinedAt: !7522)
!7535 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !7527)
!7536 = !DILocation(line: 848, column: 1, scope: !312, inlinedAt: !7519)
!7537 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !7532)
!7538 = !DILocation(line: 848, column: 1, scope: !308)
!7539 = distinct !DISubprogram(name: "drop_glue<http::uri::Uri>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http3uri3UriECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!7540 = distinct !DILocation(line: 848, column: 1, scope: !7539)
!7541 = distinct !DILocation(line: 848, column: 1, scope: !492, inlinedAt: !7540)
!7542 = distinct !{!7542, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations"}
!7543 = distinct !{!7543, !7542, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations: argument 0"}
!7544 = distinct !DILocation(line: 848, column: 1, scope: !491, inlinedAt: !7541)
!7545 = distinct !{!7545, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!7546 = distinct !{!7546, !7545, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!7547 = distinct !DILocation(line: 848, column: 1, scope: !493, inlinedAt: !7544)
!7548 = distinct !{!7548, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!7549 = distinct !{!7549, !7548, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!7550 = distinct !DILocation(line: 848, column: 1, scope: !494, inlinedAt: !7547)
!7551 = distinct !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !7550)
!7552 = distinct !DILocation(line: 669, column: 25, scope: !114, inlinedAt: !7551)
!7553 = distinct !DILocation(line: 658, column: 19, scope: !113, inlinedAt: !7552)
!7554 = distinct !DILocation(line: 20, column: 24, scope: !112, inlinedAt: !7553)
!7555 = distinct !DILocation(line: 1609, column: 29, scope: !111, inlinedAt: !7554)
!7556 = distinct !DILocation(line: 2539, column: 16, scope: !110, inlinedAt: !7555)
!7557 = distinct !DILocation(line: 20, column: 17, scope: !112, inlinedAt: !7553)
!7558 = distinct !DILocation(line: 848, column: 1, scope: !493, inlinedAt: !7544)
!7559 = distinct !DILocation(line: 1995, column: 24, scope: !498, inlinedAt: !7558)
!7560 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !7559)
!7561 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !7560)
!7562 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !7561)
!7563 = distinct !{!7563, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri9authority9AuthorityECsbaWXNhtWAp9_11foundations"}
!7564 = distinct !{!7564, !7563, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri9authority9AuthorityECsbaWXNhtWAp9_11foundations: argument 0"}
!7565 = distinct !{!7565, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations"}
!7566 = distinct !{!7566, !7565, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations: argument 0"}
!7567 = distinct !DILocation(line: 848, column: 1, scope: !7539)
!7568 = distinct !{!7568, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!7569 = distinct !{!7569, !7568, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!7570 = distinct !DILocation(line: 848, column: 1, scope: !499, inlinedAt: !7567)
!7571 = distinct !{!7571, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!7572 = distinct !{!7572, !7571, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!7573 = distinct !DILocation(line: 848, column: 1, scope: !494, inlinedAt: !7570)
!7574 = distinct !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !7573)
!7575 = distinct !DILocation(line: 669, column: 25, scope: !114, inlinedAt: !7574)
!7576 = distinct !DILocation(line: 658, column: 19, scope: !113, inlinedAt: !7575)
!7577 = distinct !DILocation(line: 20, column: 24, scope: !112, inlinedAt: !7576)
!7578 = distinct !DILocation(line: 1609, column: 29, scope: !111, inlinedAt: !7577)
!7579 = distinct !DILocation(line: 2539, column: 16, scope: !110, inlinedAt: !7578)
!7580 = distinct !DILocation(line: 20, column: 17, scope: !112, inlinedAt: !7576)
!7581 = distinct !DILocation(line: 848, column: 1, scope: !493, inlinedAt: !7544)
!7582 = distinct !DILocation(line: 1995, column: 24, scope: !498, inlinedAt: !7581)
!7583 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !7582)
!7584 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !7583)
!7585 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !7584)
!7586 = distinct !{!7586, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri9authority9AuthorityECsbaWXNhtWAp9_11foundations"}
!7587 = distinct !{!7587, !7586, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri9authority9AuthorityECsbaWXNhtWAp9_11foundations: argument 0"}
!7588 = distinct !{!7588, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations"}
!7589 = distinct !{!7589, !7588, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations: argument 0"}
!7590 = distinct !DILocation(line: 848, column: 1, scope: !7539)
!7591 = distinct !{!7591, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!7592 = distinct !{!7592, !7591, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!7593 = distinct !DILocation(line: 848, column: 1, scope: !499, inlinedAt: !7590)
!7594 = distinct !{!7594, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!7595 = distinct !{!7595, !7594, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!7596 = distinct !DILocation(line: 848, column: 1, scope: !494, inlinedAt: !7593)
!7597 = distinct !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !7596)
!7598 = distinct !DILocation(line: 669, column: 25, scope: !114, inlinedAt: !7597)
!7599 = distinct !DILocation(line: 658, column: 19, scope: !113, inlinedAt: !7598)
!7600 = distinct !DILocation(line: 20, column: 24, scope: !112, inlinedAt: !7599)
!7601 = distinct !DILocation(line: 1609, column: 29, scope: !111, inlinedAt: !7600)
!7602 = distinct !DILocation(line: 2539, column: 16, scope: !110, inlinedAt: !7601)
!7603 = distinct !DILocation(line: 20, column: 17, scope: !112, inlinedAt: !7599)
!7604 = distinct !{!7604, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri4path12PathAndQueryECsbaWXNhtWAp9_11foundations"}
!7605 = distinct !{!7605, !7604, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri4path12PathAndQueryECsbaWXNhtWAp9_11foundations: argument 0"}
!7606 = distinct !{!7606, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations"}
!7607 = distinct !{!7607, !7606, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations: argument 0"}
!7608 = distinct !DISubprogram(name: "drop_glue<http::uri::path::PathAndQuery>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri4path12PathAndQueryECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!7609 = distinct !DILocation(line: 848, column: 1, scope: !7539)
!7610 = distinct !{!7610, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!7611 = distinct !{!7611, !7610, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!7612 = distinct !DILocation(line: 848, column: 1, scope: !7608, inlinedAt: !7609)
!7613 = distinct !{!7613, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!7614 = distinct !{!7614, !7613, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!7615 = distinct !DILocation(line: 848, column: 1, scope: !494, inlinedAt: !7612)
!7616 = distinct !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !7615)
!7617 = distinct !DILocation(line: 669, column: 25, scope: !114, inlinedAt: !7616)
!7618 = distinct !DILocation(line: 658, column: 19, scope: !113, inlinedAt: !7617)
!7619 = distinct !DILocation(line: 20, column: 24, scope: !112, inlinedAt: !7618)
!7620 = distinct !DILocation(line: 1609, column: 29, scope: !111, inlinedAt: !7619)
!7621 = distinct !DILocation(line: 2539, column: 16, scope: !110, inlinedAt: !7620)
!7622 = distinct !DILocation(line: 20, column: 17, scope: !112, inlinedAt: !7618)
!7623 = distinct !{null}
!7624 = distinct !{!7624, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri4path12PathAndQueryECsbaWXNhtWAp9_11foundations"}
!7625 = distinct !{!7625, !7624, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http3uri4path12PathAndQueryECsbaWXNhtWAp9_11foundations: argument 0"}
!7626 = distinct !{!7626, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations"}
!7627 = distinct !{!7627, !7626, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs74LoFwSioHw_4http8byte_str7ByteStrECsbaWXNhtWAp9_11foundations: argument 0"}
!7628 = distinct !DILocation(line: 848, column: 1, scope: !7539)
!7629 = distinct !{!7629, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!7630 = distinct !{!7630, !7629, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!7631 = distinct !DILocation(line: 848, column: 1, scope: !7608, inlinedAt: !7628)
!7632 = distinct !{!7632, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!7633 = distinct !{!7633, !7632, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!7634 = distinct !DILocation(line: 848, column: 1, scope: !494, inlinedAt: !7631)
!7635 = distinct !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !7634)
!7636 = distinct !DILocation(line: 669, column: 25, scope: !114, inlinedAt: !7635)
!7637 = distinct !DILocation(line: 658, column: 19, scope: !113, inlinedAt: !7636)
!7638 = distinct !DILocation(line: 20, column: 24, scope: !112, inlinedAt: !7637)
!7639 = distinct !DILocation(line: 1609, column: 29, scope: !111, inlinedAt: !7638)
!7640 = distinct !DILocation(line: 2539, column: 16, scope: !110, inlinedAt: !7639)
!7641 = distinct !DILocation(line: 20, column: 17, scope: !112, inlinedAt: !7637)
!7642 = distinct !{null, null, null, null}
!7643 = !{!7543}
!7644 = !{!7546}
!7645 = !{!7549}
!7646 = !{!7549, !7546, !7543}
!7647 = !{!7564}
end_hunk_3
begin_hunk_4_@llvm.usub.sat.i64
!17879 = distinct !DILocation(line: 69, column: 9, scope: !131, inlinedAt: !17874)
!17880 = distinct !{!17880, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEEECsbaWXNhtWAp9_11foundations"}
!17881 = distinct !{!17881, !17880, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEEECsbaWXNhtWAp9_11foundations: argument 0"}
!17882 = distinct !{!17882, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations"}
!17883 = distinct !{!17883, !17882, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streams5InnerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations: argument 0"}
!17884 = distinct !DILocation(line: 848, column: 1, scope: !126, inlinedAt: !17864)
!17885 = distinct !DILocation(line: 848, column: 1, scope: !128, inlinedAt: !17884)
!17886 = distinct !DILocation(line: 2928, column: 17, scope: !131, inlinedAt: !17885)
!17887 = distinct !DILocation(line: 2193, column: 27, scope: !130, inlinedAt: !17886)
!17888 = distinct !DILocation(line: 2928, column: 32, scope: !131, inlinedAt: !17885)
!17889 = distinct !DILocation(line: 3257, column: 26, scope: !133, inlinedAt: !17888)
!17890 = distinct !DILocation(line: 69, column: 9, scope: !131, inlinedAt: !17885)
!17891 = distinct !DILocation(line: 776, column: 17, scope: !17860, inlinedAt: !17744)
!17892 = distinct !DILocation(line: 848, column: 1, scope: !135, inlinedAt: !17891)
!17893 = distinct !DILocation(line: 848, column: 1, scope: !134, inlinedAt: !17892)
!17894 = distinct !DILocation(line: 848, column: 1, scope: !138, inlinedAt: !17893)
!17895 = distinct !DILocation(line: 848, column: 1, scope: !137, inlinedAt: !17894)
!17896 = distinct !DILocation(line: 848, column: 1, scope: !136, inlinedAt: !17895)
!17897 = distinct !DILocation(line: 1993, column: 26, scope: !142, inlinedAt: !17896)
!17898 = distinct !DILocation(line: 261, column: 43, scope: !140, inlinedAt: !17897)
!17899 = distinct !DILocation(line: 261, column: 70, scope: !140, inlinedAt: !17897)
!17900 = distinct !DILocation(line: 159, column: 30, scope: !145, inlinedAt: !17899)
!17901 = distinct !DILocation(line: 1995, column: 24, scope: !143, inlinedAt: !17896)
!17902 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !17901)
!17903 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !17902)
!17904 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !17903)
!17905 = distinct !DILocation(line: 848, column: 1, scope: !136, inlinedAt: !17895)
!17906 = distinct !DILocation(line: 1993, column: 26, scope: !142, inlinedAt: !17905)
!17907 = distinct !DILocation(line: 261, column: 43, scope: !140, inlinedAt: !17906)
!17908 = distinct !DILocation(line: 261, column: 70, scope: !140, inlinedAt: !17906)
!17909 = distinct !DILocation(line: 159, column: 30, scope: !145, inlinedAt: !17908)
!17910 = distinct !DILocation(line: 1995, column: 24, scope: !143, inlinedAt: !17905)
!17911 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !17910)
!17912 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !17911)
!17913 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !17912)
!17914 = distinct !DILocation(line: 776, column: 17, scope: !17802, inlinedAt: !17744)
!17915 = distinct !DILocation(line: 848, column: 1, scope: !135, inlinedAt: !17914)
!17916 = distinct !DILocation(line: 848, column: 1, scope: !134, inlinedAt: !17915)
!17917 = distinct !DILocation(line: 848, column: 1, scope: !138, inlinedAt: !17916)
!17918 = distinct !DILocation(line: 848, column: 1, scope: !137, inlinedAt: !17917)
!17919 = distinct !DILocation(line: 848, column: 1, scope: !136, inlinedAt: !17918)
!17920 = distinct !DILocation(line: 1993, column: 26, scope: !142, inlinedAt: !17919)
!17921 = distinct !DILocation(line: 261, column: 43, scope: !140, inlinedAt: !17920)
!17922 = distinct !DILocation(line: 261, column: 70, scope: !140, inlinedAt: !17920)
!17923 = distinct !DILocation(line: 159, column: 30, scope: !145, inlinedAt: !17922)
!17924 = distinct !DILocation(line: 1995, column: 24, scope: !143, inlinedAt: !17919)
!17925 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !17924)
!17926 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !17925)
!17927 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !17926)
!17928 = distinct !DILocation(line: 848, column: 1, scope: !136, inlinedAt: !17918)
!17929 = distinct !DILocation(line: 1993, column: 26, scope: !142, inlinedAt: !17928)
!17930 = distinct !DILocation(line: 261, column: 43, scope: !140, inlinedAt: !17929)
!17931 = distinct !DILocation(line: 261, column: 70, scope: !140, inlinedAt: !17929)
!17932 = distinct !DILocation(line: 159, column: 30, scope: !145, inlinedAt: !17931)
!17933 = distinct !DILocation(line: 1995, column: 24, scope: !143, inlinedAt: !17928)
!17934 = distinct !DILocation(line: 554, column: 23, scope: !63, inlinedAt: !17933)
!17935 = distinct !DILocation(line: 436, column: 9, scope: !62, inlinedAt: !17934)
!17936 = distinct !DILocation(line: 321, column: 22, scope: !61, inlinedAt: !17935)
!17937 = distinct !DISubprogram(name: "drop_glue<http::request::Request<()>>", linkageName: "_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs74LoFwSioHw_4http7request7RequestuEECsbaWXNhtWAp9_11foundations", scope: !774, file: !856, line: 848, type: !734, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!17938 = distinct !DILocation(line: 776, column: 17, scope: !17816, inlinedAt: !17744)
!17939 = distinct !DILocation(line: 776, column: 17, scope: !17816, inlinedAt: !17744)
!17940 = distinct !DISubprogram(name: "branch<(), hyper::error::Error>", linkageName: "_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtCsaCYLheajBls_5hyper5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsbaWXNhtWAp9_11foundations", scope: !1042, file: !762, line: 2174, type: !734, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!17941 = distinct !DILocation(line: 683, column: 21, scope: !18036, inlinedAt: !17744)
!17942 = distinct !DISubprogram(name: "reason", linkageName: "_RNvMNtCsb6T6P0NKlCh_2h25errorNtB2_5Error6reason", scope: !18037, file: !1212, line: 52, type: !734, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!17943 = distinct !DILocation(line: 684, column: 35, scope: !17746, inlinedAt: !17744)
!17944 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs5_NtNtCsb6T6P0NKlCh_2h25frame6reasonNtB5_6ReasonNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq", scope: !18040, file: !18038, line: 18, type: !734, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!17945 = distinct !DISubprogram(name: "eq<h2::frame::reason::Reason>", linkageName: "_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsb6T6P0NKlCh_2h25frame6reason6ReasonENtNtB7_3cmp9PartialEq2eqCsbaWXNhtWAp9_11foundations", scope: !18011, file: !788, line: 2436, type: !734, scopeLine: 2436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!17946 = distinct !DILexicalBlock(scope: !17945, file: !788, line: 2440, column: 13)
!17947 = distinct !DILocation(line: 684, column: 31, scope: !17746, inlinedAt: !17744)
!17948 = distinct !DILocation(line: 2440, column: 35, scope: !17946, inlinedAt: !17947)
!17949 = distinct !DISubprogram(name: "branch<hyper::proto::Dispatched, hyper::error::Error>", linkageName: "_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsaCYLheajBls_5hyper5proto10DispatchedNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsbaWXNhtWAp9_11foundations", scope: !1042, file: !762, line: 2174, type: !734, scopeLine: 2174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
!17950 = distinct !{!17950, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h25error5ErrorECsbaWXNhtWAp9_11foundations"}
!17951 = distinct !{!17951, !17950, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h25error5ErrorECsbaWXNhtWAp9_11foundations: argument 0"}
!17952 = distinct !{!17952, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h25error4KindECsbaWXNhtWAp9_11foundations"}
!17953 = distinct !{!17953, !17952, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h25error4KindECsbaWXNhtWAp9_11foundations: argument 0"}
!17954 = distinct !DILocation(line: 690, column: 17, scope: !17743, inlinedAt: !17744)
!17955 = distinct !DILocation(line: 848, column: 1, scope: !516, inlinedAt: !17954)
!17956 = distinct !DILocation(line: 848, column: 1, scope: !517, inlinedAt: !17955)
!17957 = distinct !DILocation(line: 848, column: 1, scope: !520, inlinedAt: !17956)
!17958 = distinct !DILocation(line: 848, column: 1, scope: !519, inlinedAt: !17957)
!17959 = distinct !DILocation(line: 235, column: 21, scope: !518, inlinedAt: !17958)
!17960 = distinct !DILocation(line: 251, column: 29, scope: !522, inlinedAt: !17959)
!17961 = distinct !DILocation(line: 259, column: 24, scope: !525, inlinedAt: !17959)
!17962 = distinct !DILocation(line: 259, column: 56, scope: !525, inlinedAt: !17959)
!17963 = distinct !DILocation(line: 279, column: 39, scope: !523, inlinedAt: !17959)
!17964 = distinct !DILocation(line: 1228, column: 27, scope: !529, inlinedAt: !17963)
!17965 = distinct !DILocation(line: 1211, column: 14, scope: !528, inlinedAt: !17964)
!17966 = distinct !DILocation(line: 280, column: 31, scope: !532, inlinedAt: !17959)
!17967 = distinct !DILocation(line: 236, column: 39, scope: !531, inlinedAt: !17966)
!17968 = distinct !{!17968, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbaWXNhtWAp9_11foundations"}
!17969 = distinct !{!17969, !17968, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsbaWXNhtWAp9_11foundations: argument 0"}
!17970 = distinct !DILocation(line: 237, column: 15, scope: !518, inlinedAt: !17958)
!17971 = distinct !DILocation(line: 848, column: 1, scope: !534, inlinedAt: !17970)
!17972 = distinct !{!17972, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations"}
!17973 = distinct !{!17973, !17972, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesECsbaWXNhtWAp9_11foundations: argument 0"}
!17974 = distinct !{!17974, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop"}
!17975 = distinct !{!17975, !17974, !"_RNvXs1_NtCs8QTyv2gZm5j_5bytes5bytesNtB5_5BytesNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop: argument 0"}
!17976 = distinct !DILocation(line: 848, column: 1, scope: !517, inlinedAt: !17955)
!17977 = distinct !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !17976)
!17978 = distinct !DILocation(line: 669, column: 25, scope: !114, inlinedAt: !17977)
!17979 = distinct !DILocation(line: 658, column: 19, scope: !113, inlinedAt: !17978)
!17980 = distinct !DILocation(line: 20, column: 24, scope: !112, inlinedAt: !17979)
!17981 = distinct !DILocation(line: 1609, column: 29, scope: !111, inlinedAt: !17980)
!17982 = distinct !DILocation(line: 2539, column: 16, scope: !110, inlinedAt: !17981)
!17983 = distinct !DILocation(line: 20, column: 17, scope: !112, inlinedAt: !17979)
!17984 = distinct !{null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsb6T6P0NKlCh_2h25error5ErrorECsbaWXNhtWAp9_11foundations, null, null, null}
!17985 = !DINamespace(name: "{impl#6}", scope: !829)
!17986 = !{!17741}
!17987 = !{!17742}
!17988 = !DINamespace(name: "{impl#14}", scope: !849)
!17989 = !{!17742, !17741, !17745}
!17990 = !{!17742, !17745}
!17991 = !DILexicalBlockFile(scope: !17743, file: !1023, discriminator: 0)
!17992 = !{!17754}
!17993 = !DINamespace(name: "UnboundedReceiver", scope: !1022)
!17994 = !DINamespace(name: "Receiver", scope: !949)
!17995 = !{!17759, !17742}
!17996 = !{!17759, !17754, !17760, !17742, !17741, !17745}
!17997 = !{!17754, !17741}
!17998 = !{!17759, !17760, !17742, !17745}
!17999 = !{!17782}
!18000 = !{!17783, !17759, !17754, !17760, !17742, !17741, !17745}
!18001 = !DINamespace(name: "{impl#3}", scope: !949)
!18002 = !DINamespace(name: "poll_recv", scope: !18001)
!18003 = !{!17783, !17782, !17759, !17742}
!18004 = !{!17783, !17759, !17742}
!18005 = !DILexicalBlockFile(scope: !17796, file: !1208, discriminator: 2)
!18006 = !{!17805}
!18007 = !DIFile(filename: "src/size_hint.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-body-1.1.0", checksumkind: CSK_MD5, checksum: "170f3c54928c6d660fd74d975e26b833")
!18008 = !DINamespace(name: "http_body", scope: null)
!18009 = !DINamespace(name: "size_hint", scope: !18008)
!18010 = !DINamespace(name: "SizeHint", scope: !18009)
!18011 = !DINamespace(name: "{impl#17}", scope: !789)
!18012 = !DIFile(filename: "src/headers.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/hyper-1.11.0", checksumkind: CSK_MD5, checksum: "fc7f1cd48f0d98a04a061156744ee1a3")
!18013 = !DILexicalBlockFile(scope: !17824, file: !18012, discriminator: 0)
!18014 = !DINamespace(name: "headers", scope: !826)
!18015 = !DIFile(filename: "src/method.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.5.0", checksumkind: CSK_MD5, checksum: "b9376362ed9054ee26d6ca9c1e50732d")
!18016 = !DINamespace(name: "method", scope: !1211)
!18017 = !DINamespace(name: "{impl#23}", scope: !18016)
!18018 = !DINamespace(name: "{impl#9}", scope: !797)
!18019 = !DINamespace(name: "{impl#5}", scope: !18016)
!18020 = !DINamespace(name: "{impl#28}", scope: !18016)
!18021 = !{!17842}
!18022 = !{!17845}
!18023 = !{!17847}
!18024 = !{!17850}
!18025 = !{!17853}
!18026 = !{!17853, !17850, !17847, !17845, !17842}
!18027 = !{!17853, !17850, !17847, !17845, !17842, !17742}
!18028 = !{!17866}
!18029 = !{!17868}
!18030 = !{!17868, !17866, !17873, !17871}
!18031 = !{!17868, !17866, !17742}
!18032 = !{!17881}
!18033 = !{!17883}
!18034 = !{!17883, !17881, !17873, !17871}
!18035 = !{!17883, !17881, !17742}
!18036 = !DILexicalBlockFile(scope: !17746, file: !845, discriminator: 2)
!18037 = !DINamespace(name: "Error", scope: !1213)
!18038 = !DIFile(filename: "src/frame/reason.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/h2-0.4.19", checksumkind: CSK_MD5, checksum: "b0bfbd11976a2167808660db646c12e8")
!18039 = !DINamespace(name: "reason", scope: !753)
!18040 = !DINamespace(name: "{impl#7}", scope: !18039)
!18041 = !DILocation(line: 281, column: 15, scope: !17739)
!18042 = !{!17951}
!18043 = !{!17953}
!18044 = !{!17953, !17951}
!18045 = !{!17953, !17951, !17742, !17741, !17745}
!18046 = !{!17969}
!18047 = !{!17953, !17951, !17742}
!18048 = !{!17973}
!18049 = !{!17975}
!18050 = !{!17975, !17973, !17953, !17951}
!18051 = !{!17975, !17973, !17953, !17951, !17742}
!18052 = !DILocation(line: 281, column: 50, scope: !17739)
!18053 = !DILocation(line: 680, column: 37, scope: !17743, inlinedAt: !17744)
!18054 = !DILocation(line: 680, column: 26, scope: !17743, inlinedAt: !17744)
!18055 = !DILocation(line: 680, column: 19, scope: !17743, inlinedAt: !17744)
!18056 = !DILocation(line: 682, column: 21, scope: !17743, inlinedAt: !17744)
!18057 = !DILocation(line: 683, column: 21, scope: !17746, inlinedAt: !17744)
!18058 = !DILocation(line: 683, column: 31, scope: !17746, inlinedAt: !17744)
!18059 = !DILocation(line: 975, column: 22, scope: !17747, inlinedAt: !17751)
!18060 = !DILocation(line: 976, column: 49, scope: !17752, inlinedAt: !17751)
!18061 = !DILocation(line: 695, column: 30, scope: !17749, inlinedAt: !17744)
!18062 = !DILocation(line: 695, column: 20, scope: !17749, inlinedAt: !17744)
!18063 = !DILocation(line: 695, column: 25, scope: !17749, inlinedAt: !17744)
!18064 = !DILocation(line: 696, column: 22, scope: !17749, inlinedAt: !17744)
!18065 = !DILocation(line: 698, column: 13, scope: !17743, inlinedAt: !17744)
!18066 = !DILocation(line: 0, scope: !17991, inlinedAt: !17744)
!18067 = !DILocation(line: 700, column: 31, scope: !17743, inlinedAt: !17744)
!18068 = !DILocation(line: 435, column: 19, scope: !17755, inlinedAt: !17758)
!18069 = !DILocation(line: 183, column: 15, scope: !17756, inlinedAt: !17757)
!18070 = !DILocation(line: 183, column: 9, scope: !17756, inlinedAt: !17757)
!18071 = !DILocation(line: 188, column: 17, scope: !17756, inlinedAt: !17757)
!18072 = !DILocation(line: 337, column: 14, scope: !17761, inlinedAt: !17762)
!18073 = !DILocation(line: 2437, column: 9, scope: !398, inlinedAt: !17766)
!18074 = !DILocation(line: 4019, column: 23, scope: !402, inlinedAt: !17767)
!18075 = !DILocation(line: 780, column: 9, scope: !403, inlinedAt: !17768)
!18076 = !DILocation(line: 343, column: 9, scope: !404, inlinedAt: !17763)
!18077 = !DILocation(line: 347, column: 28, scope: !405, inlinedAt: !17763)
!18078 = !DILocation(line: 4019, column: 23, scope: !406, inlinedAt: !17772)
!18079 = !DILocation(line: 830, column: 22, scope: !407, inlinedAt: !17771)
!18080 = !DILocation(line: 347, column: 47, scope: !405, inlinedAt: !17763)
!18081 = !DILocation(line: 975, column: 22, scope: !410, inlinedAt: !17774)
!18082 = !DILocation(line: 976, column: 49, scope: !413, inlinedAt: !17774)
!18083 = !DILocation(line: 348, column: 45, scope: !412, inlinedAt: !17763)
!18084 = !DILocation(line: 0, scope: !404, inlinedAt: !17763)
!18085 = !DILocation(line: 348, column: 32, scope: !412, inlinedAt: !17763)
!18086 = !DILocation(line: 449, column: 18, scope: !415, inlinedAt: !17775)
!18087 = !DILocation(line: 192, column: 6, scope: !17756, inlinedAt: !17757)
!18088 = !DILocation(line: 780, column: 21, scope: !17743, inlinedAt: !17744)
!18089 = !DILocation(line: 1163, column: 29, scope: !17778, inlinedAt: !17780)
!18090 = !DILocation(line: 1163, column: 18, scope: !17777, inlinedAt: !17780)
!18091 = !DILocation(line: 976, column: 49, scope: !17785, inlinedAt: !17790)
!18092 = !DILocation(line: 967, column: 15, scope: !17791, inlinedAt: !17792)
!18093 = !DILocation(line: 967, column: 9, scope: !17791, inlinedAt: !17792)
!18094 = !DILocation(line: 0, scope: !17739)
!18095 = !DILocation(line: 969, column: 21, scope: !17791, inlinedAt: !17792)
!18096 = !DILocation(line: 185, column: 90, scope: !17787, inlinedAt: !17788)
!18097 = !DILocation(line: 185, column: 38, scope: !17787, inlinedAt: !17788)
!18098 = !DILocation(line: 783, column: 56, scope: !17743, inlinedAt: !17744)
!18099 = !DILocation(line: 454, column: 20, scope: !17793, inlinedAt: !17800)
!18100 = !DILocation(line: 2514, column: 9, scope: !17795, inlinedAt: !17798)
!18101 = !DILocation(line: 459, column: 20, scope: !17796, inlinedAt: !17797)
!18102 = !DILocation(line: 783, column: 40, scope: !17743, inlinedAt: !17744)
!18103 = !DILocation(line: 701, column: 35, scope: !17743, inlinedAt: !17744)
!18104 = !DILocation(line: 968, column: 18, scope: !17791, inlinedAt: !17792)
!18105 = !DILocation(line: 701, column: 40, scope: !17743, inlinedAt: !17744)
!18106 = !DILocation(line: 1163, column: 32, scope: !17778, inlinedAt: !17780)
!18107 = !DILocation(line: 269, column: 9, scope: !17801, inlinedAt: !17803)
!18108 = !DILocation(line: 269, column: 15, scope: !17801, inlinedAt: !17803)
!18109 = !DILocation(line: 270, column: 49, scope: !17806, inlinedAt: !17803)
!18110 = !DILocation(line: 743, column: 15, scope: !17807, inlinedAt: !17810)
!18111 = !DILocation(line: 743, column: 9, scope: !17807, inlinedAt: !17810)
!18112 = !DILocation(line: 272, column: 18, scope: !17801, inlinedAt: !17803)
!18113 = !DILocation(line: 0, scope: !17801, inlinedAt: !17803)
!18114 = !DILocation(line: 271, column: 51, scope: !17811, inlinedAt: !17803)
!18115 = !DILocation(line: 743, column: 15, scope: !17812, inlinedAt: !17815)
!18116 = !DILocation(line: 743, column: 9, scope: !17812, inlinedAt: !17815)
!18117 = !DILocation(line: 776, column: 17, scope: !17743, inlinedAt: !17744)
!18118 = !DILocation(line: 703, column: 24, scope: !17802, inlinedAt: !17744)
!18119 = !DILocation(line: 708, column: 25, scope: !17816, inlinedAt: !17744)
!18120 = !DILocation(line: 707, column: 40, scope: !17802, inlinedAt: !17744)
!18121 = !DILocation(line: 707, column: 32, scope: !17802, inlinedAt: !17744)
!18122 = !DILocation(line: 709, column: 21, scope: !17817, inlinedAt: !17744)
!18123 = !DILocation(line: 776, column: 17, scope: !17816, inlinedAt: !17744)
!18124 = !DILocation(line: 710, column: 40, scope: !17818, inlinedAt: !17744)
!18125 = !DILocation(line: 710, column: 45, scope: !17818, inlinedAt: !17744)
!18126 = !DILocation(line: 71, column: 17, scope: !17819, inlinedAt: !17820)
!18127 = !DILocation(line: 2439, column: 15, scope: !17821, inlinedAt: !17822)
!18128 = !DILocation(line: 2439, column: 9, scope: !17821, inlinedAt: !17822)
!18129 = !DILocation(line: 711, column: 28, scope: !17818, inlinedAt: !17744)
!18130 = !DILocation(line: 100, column: 9, scope: !18013, inlinedAt: !17825)
!18131 = !DILocation(line: 99, column: 6, scope: !18013, inlinedAt: !17825)
!18132 = !DILocation(line: 712, column: 29, scope: !17818, inlinedAt: !17744)
!18133 = !DILocation(line: 44, column: 17, scope: !17826, inlinedAt: !17831)
!18134 = !DILocation(line: 714, column: 21, scope: !17817, inlinedAt: !17744)
!18135 = !DILocation(line: 52, column: 17, scope: !17834, inlinedAt: !17835)
!18136 = !DILocation(line: 717, column: 36, scope: !17836, inlinedAt: !17744)
!18137 = !DILocation(line: 719, column: 24, scope: !17837, inlinedAt: !17744)
!18138 = !DILocation(line: 731, column: 45, scope: !17838, inlinedAt: !17744)
!18139 = !DILocation(line: 731, column: 66, scope: !17838, inlinedAt: !17744)
!18140 = !DILocation(line: 720, column: 28, scope: !17837, inlinedAt: !17744)
!18141 = !DILocation(line: 1227, column: 9, scope: !17839, inlinedAt: !17840)
!18142 = !DILocation(line: 724, column: 25, scope: !17837, inlinedAt: !17744)
!18143 = !DILocation(line: 724, column: 33, scope: !17837, inlinedAt: !17744)
!18144 = !DILocation(line: 725, column: 36, scope: !17837, inlinedAt: !17744)
!18145 = !DILocation(line: 731, column: 28, scope: !17838, inlinedAt: !17744)
!18146 = !DILocation(line: 731, column: 33, scope: !17838, inlinedAt: !17744)
!18147 = !DILocation(line: 732, column: 25, scope: !17838, inlinedAt: !17744)
!18148 = !DILocation(line: 732, column: 46, scope: !17838, inlinedAt: !17744)
!18149 = !DILocation(line: 733, column: 21, scope: !17837, inlinedAt: !17744)
!18150 = !DILocation(line: 735, column: 48, scope: !17837, inlinedAt: !17744)
!18151 = !DILocation(line: 735, column: 72, scope: !17837, inlinedAt: !17744)
!18152 = !DILocation(line: 735, column: 77, scope: !17837, inlinedAt: !17744)
!18153 = !DILocation(line: 735, column: 59, scope: !17837, inlinedAt: !17744)
!18154 = !DILocation(line: 732, column: 75, scope: !17838, inlinedAt: !17744)
!18155 = !DILocation(line: 848, column: 1, scope: !537, inlinedAt: !17843)
!18156 = !DILocation(line: 848, column: 1, scope: !538, inlinedAt: !17848)
!18157 = !DILocation(line: 848, column: 1, scope: !536, inlinedAt: !17851)
!18158 = !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !17854)
!18159 = !DILocation(line: 658, column: 32, scope: !115, inlinedAt: !17858)
!18160 = !DILocation(line: 670, column: 18, scope: !116, inlinedAt: !17855)
!18161 = !DILocation(line: 670, column: 43, scope: !116, inlinedAt: !17855)
!18162 = !DILocation(line: 670, column: 53, scope: !116, inlinedAt: !17855)
!18163 = !DILocation(line: 731, column: 21, scope: !17837, inlinedAt: !17744)
!18164 = !DILocation(line: 735, column: 95, scope: !17837, inlinedAt: !17744)
!18165 = !DILocation(line: 735, column: 42, scope: !17837, inlinedAt: !17744)
!18166 = !DILocation(line: 737, column: 29, scope: !17837, inlinedAt: !17744)
!18167 = !DILocation(line: 739, column: 29, scope: !17859, inlinedAt: !17744)
!18168 = !DILocation(line: 739, column: 37, scope: !17859, inlinedAt: !17744)
!18169 = !DILocation(line: 740, column: 40, scope: !17859, inlinedAt: !17744)
!18170 = !DILocation(line: 747, column: 25, scope: !17860, inlinedAt: !17744)
!18171 = !DILocation(line: 736, column: 28, scope: !17837, inlinedAt: !17744)
!18172 = !DILocation(line: 745, column: 22, scope: !17837, inlinedAt: !17744)
!18173 = !DILocation(line: 753, column: 25, scope: !17860, inlinedAt: !17744)
!18174 = !DILocation(line: 747, column: 29, scope: !17860, inlinedAt: !17744)
!18175 = !DILocation(line: 759, column: 27, scope: !17861, inlinedAt: !17744)
!18176 = !DILocation(line: 759, column: 38, scope: !17861, inlinedAt: !17744)
!18177 = !DILocation(line: 776, column: 17, scope: !17860, inlinedAt: !17744)
!18178 = !DILocation(line: 759, column: 21, scope: !17861, inlinedAt: !17744)
!18179 = !DILocation(line: 762, column: 44, scope: !17861, inlinedAt: !17744)
!18180 = !DILocation(line: 762, column: 49, scope: !17861, inlinedAt: !17744)
!18181 = !DILocation(line: 762, column: 29, scope: !17861, inlinedAt: !17744)
!18182 = !DILocation(line: 766, column: 41, scope: !17861, inlinedAt: !17744)
!18183 = !DILocation(line: 767, column: 29, scope: !17862, inlinedAt: !17744)
!18184 = !DILocation(line: 767, column: 39, scope: !17862, inlinedAt: !17744)
!18185 = !DILocation(line: 768, column: 40, scope: !17862, inlinedAt: !17744)
!18186 = !DILocation(line: 773, column: 21, scope: !17861, inlinedAt: !17744)
!18187 = !DILocation(line: 774, column: 36, scope: !17861, inlinedAt: !17744)
!18188 = !DILocation(line: 774, column: 26, scope: !17861, inlinedAt: !17744)
!18189 = !DILocation(line: 774, column: 41, scope: !17861, inlinedAt: !17744)
!18190 = !DILocation(line: 776, column: 17, scope: !17802, inlinedAt: !17744)
!18191 = !DILocation(line: 770, column: 31, scope: !17862, inlinedAt: !17744)
!18192 = !DILocation(line: 767, column: 34, scope: !17862, inlinedAt: !17744)
!18193 = !DILocation(line: 772, column: 25, scope: !17861, inlinedAt: !17744)
!18194 = !DILocation(line: 848, column: 1, scope: !126, inlinedAt: !17864)
!18195 = !DILocation(line: 848, column: 1, scope: !128, inlinedAt: !17869)
!18196 = !DILocation(line: 454, column: 20, scope: !129, inlinedAt: !17876)
!18197 = !DILocation(line: 4053, column: 24, scope: !132, inlinedAt: !17878)
!18198 = !DILocation(line: 2928, column: 12, scope: !131, inlinedAt: !17874)
!18199 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !17879)
!18200 = !DILocation(line: 2971, column: 18, scope: !131, inlinedAt: !17874)
!18201 = !DILocation(line: 848, column: 1, scope: !128, inlinedAt: !17884)
!18202 = !DILocation(line: 454, column: 20, scope: !129, inlinedAt: !17887)
!18203 = !DILocation(line: 4053, column: 24, scope: !132, inlinedAt: !17889)
!18204 = !DILocation(line: 2928, column: 12, scope: !131, inlinedAt: !17885)
!18205 = !DILocation(line: 4497, column: 24, scope: !37, inlinedAt: !17890)
!18206 = !DILocation(line: 2971, column: 18, scope: !131, inlinedAt: !17885)
!18207 = !DILocation(line: 848, column: 1, scope: !134, inlinedAt: !17892)
!18208 = !DILocation(line: 848, column: 1, scope: !136, inlinedAt: !17895)
!18209 = !DILocation(line: 468, column: 14, scope: !139, inlinedAt: !17898)
!18210 = !DILocation(line: 1994, column: 16, scope: !143, inlinedAt: !17896)
!18211 = !DILocation(line: 642, column: 14, scope: !144, inlinedAt: !17900)
!18212 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !17904)
!18213 = !DILocation(line: 1994, column: 13, scope: !143, inlinedAt: !17896)
!18214 = !DILocation(line: 468, column: 14, scope: !139, inlinedAt: !17907)
!18215 = !DILocation(line: 1994, column: 16, scope: !143, inlinedAt: !17905)
!18216 = !DILocation(line: 642, column: 14, scope: !144, inlinedAt: !17909)
!18217 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !17913)
!18218 = !DILocation(line: 1994, column: 13, scope: !143, inlinedAt: !17905)
!18219 = !DILocation(line: 678, column: 5, scope: !17743, inlinedAt: !17744)
!18220 = !DILocation(line: 762, column: 50, scope: !17861, inlinedAt: !17744)
!18221 = !DILocation(line: 742, column: 31, scope: !17859, inlinedAt: !17744)
!18222 = !DILocation(line: 739, column: 32, scope: !17859, inlinedAt: !17744)
!18223 = !DILocation(line: 744, column: 25, scope: !17837, inlinedAt: !17744)
!18224 = !DILocation(line: 848, column: 1, scope: !134, inlinedAt: !17915)
!18225 = !DILocation(line: 848, column: 1, scope: !136, inlinedAt: !17918)
!18226 = !DILocation(line: 468, column: 14, scope: !139, inlinedAt: !17921)
!18227 = !DILocation(line: 1994, column: 16, scope: !143, inlinedAt: !17919)
!18228 = !DILocation(line: 642, column: 14, scope: !144, inlinedAt: !17923)
!18229 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !17927)
!18230 = !DILocation(line: 1994, column: 13, scope: !143, inlinedAt: !17919)
!18231 = !DILocation(line: 468, column: 14, scope: !139, inlinedAt: !17930)
!18232 = !DILocation(line: 1994, column: 16, scope: !143, inlinedAt: !17928)
!18233 = !DILocation(line: 642, column: 14, scope: !144, inlinedAt: !17932)
!18234 = !DILocation(line: 175, column: 14, scope: !60, inlinedAt: !17936)
!18235 = !DILocation(line: 1994, column: 13, scope: !143, inlinedAt: !17928)
!18236 = !DILocation(line: 727, column: 27, scope: !17837, inlinedAt: !17744)
!18237 = !DILocation(line: 724, column: 28, scope: !17837, inlinedAt: !17744)
!18238 = !DILocation(line: 848, column: 1, scope: !17937, inlinedAt: !17938)
!18239 = !DILocation(line: 848, column: 1, scope: !17937, inlinedAt: !17939)
!18240 = !DILocation(line: 2175, column: 15, scope: !17940, inlinedAt: !17941)
!18241 = !DILocation(line: 2175, column: 9, scope: !17940, inlinedAt: !17941)
!18242 = !DILocation(line: 53, column: 9, scope: !17942, inlinedAt: !17943)
!18243 = !DILocation(line: 54, column: 28, scope: !17942, inlinedAt: !17943)
!18244 = !DILocation(line: 54, column: 57, scope: !17942, inlinedAt: !17943)
!18245 = !DILocation(line: 54, column: 83, scope: !17942, inlinedAt: !17943)
!18246 = !DILocation(line: 54, scope: !17942, inlinedAt: !17943)
!18247 = !DILocation(line: 18, column: 10, scope: !17944, inlinedAt: !17948)
!18248 = !DILocation(line: 684, column: 31, scope: !17746, inlinedAt: !17744)
!18249 = !DILocation(line: 688, column: 62, scope: !17746, inlinedAt: !17744)
!18250 = !DILocation(line: 688, column: 41, scope: !17746, inlinedAt: !17744)
!18251 = !DILocation(line: 688, column: 65, scope: !17746, inlinedAt: !17744)
!18252 = !DILocation(line: 690, column: 17, scope: !17743, inlinedAt: !17744)
!18253 = !DILocation(line: 2175, column: 9, scope: !17949, inlinedAt: !18041)
!18254 = !DILocation(line: 848, column: 1, scope: !516, inlinedAt: !17954)
!18255 = !DILocation(line: 848, column: 1, scope: !517, inlinedAt: !17955)
!18256 = !DILocation(line: 235, column: 21, scope: !518, inlinedAt: !17958)
!18257 = !DILocation(line: 150, column: 18, scope: !521, inlinedAt: !17960)
!18258 = !DILocation(line: 252, column: 11, scope: !523, inlinedAt: !17959)
!18259 = !DILocation(line: 252, column: 5, scope: !523, inlinedAt: !17959)
!18260 = !DILocation(line: 1074, column: 28, scope: !524, inlinedAt: !17961)
!18261 = !DILocation(line: 1063, column: 15, scope: !526, inlinedAt: !17962)
!18262 = !DILocation(line: 1063, column: 9, scope: !526, inlinedAt: !17962)
!18263 = !DILocation(line: 270, column: 9, scope: !523, inlinedAt: !17959)
!18264 = !DILocation(line: 474, column: 18, scope: !527, inlinedAt: !17965)
!18265 = !DILocation(line: 247, column: 13, scope: !530, inlinedAt: !17967)
!18266 = !DILocation(line: 280, column: 13, scope: !532, inlinedAt: !17959)
!18267 = !DILocation(line: 0, scope: !523, inlinedAt: !17959)
!18268 = !DILocation(line: 848, column: 1, scope: !533, inlinedAt: !17971)
!18269 = !DILocation(line: 848, column: 1, scope: !534, inlinedAt: !17970)
!18270 = !DILocation(line: 237, column: 15, scope: !518, inlinedAt: !17958)
!18271 = !DILocation(line: 848, column: 1, scope: !108, inlinedAt: !17976)
!18272 = !DILocation(line: 2437, column: 9, scope: !109, inlinedAt: !17982)
!18273 = !DILocation(line: 658, column: 32, scope: !115, inlinedAt: !17983)
!18274 = !DILocation(line: 670, column: 18, scope: !116, inlinedAt: !17977)
!18275 = !DILocation(line: 670, column: 43, scope: !116, inlinedAt: !17977)
!18276 = !DILocation(line: 670, column: 53, scope: !116, inlinedAt: !17977)
!18277 = !DILocation(line: 795, column: 6, scope: !17743, inlinedAt: !17744)
!18278 = !DILocation(line: 286, column: 6, scope: !17739)
!18279 = distinct !DISubprogram(name: "fmt", linkageName: "_RNvXs5_NtNtCsb6T6P0NKlCh_2h25codec5errorNtB5_9UserErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt", scope: !18283, file: !18281, line: 13, type: !734, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !733)
end_hunk_4
