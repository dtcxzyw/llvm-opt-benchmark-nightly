Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE18disconnect_sendersCsa5QsYiPB8Gl_5image:bb.a
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.phi.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !2741, !noalias !2742, !nonnull !7, !align !16, !noundef !7 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !14, !alias.scope !2741, !noalias !2742, !noundef !7 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2744)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2744, !nonnull !7, !noundef !7 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2744, !noundef !7 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, %.noexc5.i
  %.sroa.0.02.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !2744, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !noalias !2744
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %bb.g, label %.noexc5.i

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  invoke fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v) #41
          to label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !2744, !nonnull !7, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2744, !nonnull !7, !noundef !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.ak = atomicrmw xchg ptr %i.aj, i32 1 release, align 4, !noalias !2744
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.h, label %.noexc5.i

.noexc5.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.am = icmp eq ptr %i.ac, %i.aa
  br i1 %i.am, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i1 @_RNvNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.aj)
          to label %.noexc5.i unwind label %.loopexit.i ; 0 uses

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
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.r, i8 %i.t) #37
          to label %common.resume.i unwind label %bb.p

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i: ; preds = %._crit_edge.i.i
  %i.ao = load i64, ptr %i.y, align 8, !noundef !7 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noundef !7 ; 2 uses
  %i.at = icmp ult i64 %i.as, 384307168202282326
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.as, 0
  %i.av = zext i1 %i.au to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %.sroa.0.0.i = phi i8 [ %i.av, %bb.j ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i8 %.sroa.0.0.i, ptr %i.aw seq_cst, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br i1 %i.u, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.az = and i64 %i.ay, 9223372036854775807
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.bb, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.ax monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bc = atomicrmw xchg ptr %i.r, i32 0 release, align 4
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.o, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !prof !18

bb.o:                                             ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.r)
  br label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit

bb.p:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit: ; preds = %bb.o, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20disconnect_receiversCsa5QsYiPB8Gl_5image(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.05055.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.05055.i, 7
  br i1 %i.h, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.05055.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw i32 %.sroa.0.05055.i, %.sroa.0.05055.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.05055.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod25 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !2745

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.05055.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.050.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 3 uses
  %i.t = icmp ne i64 %i.s, %i.o
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 2 uses
  %.not = icmp eq i64 %i.s, %i.o
  br i1 %.not, label %._crit_edge62.i, label %.lr.ph61.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], [ %.sroa.0.050.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i   ; 2 uses
  %xtraiter26 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter30 = and i32 %i.w, 56
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter31 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter31.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter31.next.7 = add i32 %niter31, 8           ; 2 uses
  %niter31.ncmp.7 = icmp eq i32 %niter31.next.7, %unroll_iter30
  br i1 %niter31.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod28.not = icmp eq i32 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod29 = icmp ne i32 %xtraiter26, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter27 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter27.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter27.next = add i32 %epil.iter27, 1     ; 2 uses
  %epil.iter27.cmp.not = icmp eq i32 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !llvm.loop !2746

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge62.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.bg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit, label %bb.e

.lr.ph61.i:                                       ; preds = %.loopexit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i
  %i.ab = phi i64 [ %i.bh, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %.loopexit.i ]
  %.sroa.05.059.i = phi i64 [ %i.bg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.p, %.loopexit.i ]
  %.sroa.011.158.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 8 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.f, label %bb.h

bb.e:                                             ; preds = %._crit_edge62.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 2736, i64 noundef 8) #33
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %.lr.ph61.i
  %i.ad = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.ai, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 6 uses
  %i.af = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.af, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i
  %i.ag = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter38 = and i32 %i.ag, 7                  ; 3 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ah, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter42 = and i32 %i.ag, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter43 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter43.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter43.next.7 = add i32 %niter43, 8           ; 2 uses
  %niter43.ncmp.7 = icmp eq i32 %niter43.next.7, %unroll_iter42
  br i1 %niter43.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod40.not = icmp eq i32 %xtraiter38, 0
  br i1 %lcmp.mod40.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod41 = icmp ne i32 %xtraiter38, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter39 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter39.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter39.next = add i32 %epil.iter39, 1     ; 2 uses
  %epil.iter39.cmp.not = icmp eq i32 %epil.iter39.next, %xtraiter38
  br i1 %epil.iter39.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2747

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.ai = add i32 %.sroa.0.02.i.i, 1
  %i.aj = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.al = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.158.i, i64 noundef 2736, i64 noundef 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

bb.h:                                             ; preds = %.lr.ph61.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.158.i, i64 8
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.am, i64 %i.ac ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i33.i, 7
  br i1 %i.as, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i
  %i.at = mul nuw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i ; 2 uses
  %xtraiter32 = and i32 %i.at, 7                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i33.i, 3
  br i1 %i.au, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter36 = and i32 %i.at, 56
  br label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
end_hunk_0
