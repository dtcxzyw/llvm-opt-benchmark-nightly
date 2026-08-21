inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertE32forget_allocation_drop_remainingCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #12 {
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.a, align 8
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE18disconnect_sendersCsa5QsYiPB8Gl_5image(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 1 seq_cst, align 8
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  %i.h = load i64, ptr %i.b, align 8, !range !199, !alias.scope !2734, !noalias !2737, !noundef !12
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, !prof !161

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2739
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2734, !noalias !2737, !nonnull !12, !align !141, !noundef !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !102, !alias.scope !2734, !noalias !2737, !noundef !12
  store ptr %i.k, ptr %i.a, align 8, !noalias !2739
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.m, ptr %i.n, align 8, !noalias !2739
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #36
          to label %bb.e unwind label %bb.d, !noalias !2734

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %common.resume.i unwind label %bb.f, !noalias !2734

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2734
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.phi.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !2734, !noalias !2737, !nonnull !12, !align !141, !noundef !12 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !102, !alias.scope !2734, !noalias !2737, !noundef !12 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2740)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2740, !nonnull !12, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2740, !noundef !12 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, %.noexc5.i
  %.sroa.0.02.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !2740, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !noalias !2740
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %bb.g, label %.noexc5.i

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  invoke fastcc void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.v) #41
          to label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i unwind label %.loopexit.split-lp.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %.sroa.0.02.i.i, align 8, !noalias !2740, !nonnull !12, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !2740, !nonnull !12, !noundef !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.ak = atomicrmw xchg ptr %i.aj, i32 1 release, align 4, !noalias !2740
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
  %i.ao = load i64, ptr %i.y, align 8, !noundef !12 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noundef !12 ; 2 uses
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
  br i1 %i.ba, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m, !prof !58

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
  br i1 %i.bb, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.ax monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bc = atomicrmw xchg ptr %i.r, i32 0 release, align 4
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.o, label %_RNvMs0_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect.exit, !prof !161

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
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.05055.i = phi i32 [ %i.j, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %1 = shl i32 %.sroa.0.05055.i, 1
  %2 = or i32 %1, 1
  %i.h = icmp ult i32 %.sroa.0.05055.i, 7
  br i1 %i.h, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.05055.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %3 = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.i = icmp ult i32 %3, 7
  br i1 %i.i, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

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
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !2743

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.j = add i32 %.sroa.0.05055.i, 1              ; 2 uses
  %i.k = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.l = and i64 %i.k, 62
  %i.m = icmp eq i64 %i.l, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %2
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.050.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.j, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
  %i.n = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.o = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = atomicrmw xchg ptr %i.p, ptr null acq_rel, align 8 ; 2 uses
  %i.r = lshr i64 %i.o, 1                         ; 3 uses
  %i.s = icmp ne i64 %i.r, %i.n
  %i.t = icmp eq ptr %i.q, null
  %or.cond.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %4 = mul i32 %.sroa.0.050.lcssa.i, %.sroa.0.050.lcssa.i
  %5 = shl i32 %.sroa.0.050.lcssa.i, 1
  %6 = or disjoint i32 %5, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.q, %._crit_edge.i ], [ %i.x, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 2 uses
  %.not57.i = icmp eq i64 %i.r, %i.n
  br i1 %.not57.i, label %._crit_edge62.i, label %.lr.ph61.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %loop-unroll.iv26 = phi i32 [ %4, %.preheader.i.preheader ], [ %loop-unroll.iv.next27, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.050.lcssa.i, %.preheader.i.preheader ], [ %i.w, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 3 uses
  %7 = shl i32 %indvar, 1
  %8 = add i32 %6, %7
  %i.u = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.u, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i
  %9 = add i32 %loop-unroll.iv26, -1
  %xtraiter28 = and i32 %loop-unroll.iv26, 7      ; 3 uses
  %i.v = icmp ult i32 %9, 7
  br i1 %i.v, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter32 = and i32 %loop-unroll.iv26, -8
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter33.next.7 = add i32 %niter33, 8           ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32
  br i1 %niter33.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !llvm.loop !2744

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.w = add i32 %.sroa.0.1.i, 1
  %i.x = atomicrmw xchg ptr %i.p, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.x, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next27 = add i32 %loop-unroll.iv26, %8
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge62.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.o, %.loopexit.i ], [ %i.bc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ]
  %i.y = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.y, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit, label %bb.e

.lr.ph61.i:                                       ; preds = %.loopexit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i
  %i.z = phi i64 [ %i.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.r, %.loopexit.i ]
  %.sroa.05.059.i = phi i64 [ %i.bc, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.o, %.loopexit.i ]
  %.sroa.011.158.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 8 uses
  %i.aa = and i64 %i.z, 31                        ; 2 uses
  %.not19.i = icmp eq i64 %i.aa, 31
  br i1 %.not19.i, label %bb.f, label %bb.h

bb.e:                                             ; preds = %._crit_edge62.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 2736, i64 noundef 8) #33
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit

bb.f:                                             ; preds = %.lr.ph61.i
  %i.ab = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv42 = phi i32 [ %loop-unroll.iv.next43, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 4 uses
  %.sroa.0.02.i.i = phi i32 [ %i.af, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 4 uses
  %10 = shl i32 %.sroa.0.02.i.i, 1
  %11 = or i32 %10, 1
  %i.ad = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ad, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i
  %12 = add i32 %loop-unroll.iv42, -1
  %xtraiter44 = and i32 %loop-unroll.iv42, 7      ; 3 uses
  %i.ae = icmp ult i32 %12, 7
  br i1 %i.ae, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter48 = and i32 %loop-unroll.iv42, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter49 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter49.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter49.next.7 = add i32 %niter49, 8           ; 2 uses
  %niter49.ncmp.7 = icmp eq i32 %niter49.next.7, %unroll_iter48
  br i1 %niter49.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod46.not = icmp eq i32 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod47 = icmp ne i32 %xtraiter44, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter45 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter45.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter45.next = add i32 %epil.iter45, 1     ; 2 uses
  %epil.iter45.cmp.not = icmp eq i32 %epil.iter45.next, %xtraiter44
  br i1 %epil.iter45.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2745

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.af = add i32 %.sroa.0.02.i.i, 1
  %i.ag = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  %i.ah = icmp eq ptr %i.ag, null
  %loop-unroll.iv.next43 = add i32 %loop-unroll.iv42, %11
  br i1 %i.ah, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.ai = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.158.i, i64 noundef 2736, i64 noundef 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

bb.h:                                             ; preds = %.lr.ph61.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.011.158.i, i64 8
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %i.aj, i64 %i.aa ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 2 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8
  %i.an = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %loop-unroll.iv34 = phi i32 [ %loop-unroll.iv.next35, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i33.i = phi i32 [ %i.ar, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 4 uses
  %13 = shl i32 %.sroa.0.02.i33.i, 1
  %14 = or i32 %13, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i33.i, 7
  br i1 %i.ap, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i
  %15 = add i32 %loop-unroll.iv34, -1
  %xtraiter36 = and i32 %loop-unroll.iv34, 7      ; 3 uses
  %i.aq = icmp ult i32 %15, 7
  br i1 %i.aq, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter40 = and i32 %loop-unroll.iv34, -8
  br label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter41 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter41.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter41.next.7 = add i32 %niter41, 8           ; 2 uses
  %niter41.ncmp.7 = icmp eq i32 %niter41.next.7, %unroll_iter40
  br i1 %niter41.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod38.not = icmp eq i32 %xtraiter36, 0
  br i1 %lcmp.mod38.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod39 = icmp ne i32 %xtraiter36, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.i40.i.epil

.lr.ph.i.i40.i.epil:                              ; preds = %.lr.ph.i.i40.i.epil, %.lr.ph.i.i40.i.epil.preheader
  %epil.iter37 = phi i32 [ 0, %.lr.ph.i.i40.i.epil.preheader ], [ %epil.iter37.next, %.lr.ph.i.i40.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter37.next = add i32 %epil.iter37, 1     ; 2 uses
  %epil.iter37.cmp.not = icmp eq i32 %epil.iter37.next, %xtraiter36
  br i1 %epil.iter37.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil, !llvm.loop !2746

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i, %bb.i
  %i.ar = add i32 %.sroa.0.02.i33.i, 1
  %i.as = load atomic i64, ptr %i.al acquire, align 8
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  %loop-unroll.iv.next35 = add i32 %loop-unroll.iv34, %14
  br i1 %i.au, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, %bb.h
  %i.av = load i64, ptr %i.ak, align 8, !range !237, !alias.scope !2747, !noundef !12
  %.not.i44.i = icmp eq i64 %i.av, -1
  br i1 %.not.i44.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ak)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !2750 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !2757, !nonnull !12, !noundef !12
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2758
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.m:                                             ; preds = %bb.j
  %.val.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !2750 ; 2 uses
  %i.az = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.az, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !2757, !nonnull !12, !noundef !12
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2761
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bb)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.011.2.i = phi ptr [ %i.ai, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.011.158.i, %bb.m ], [ %.sroa.011.158.i, %bb.n ], [ %.sroa.011.158.i, %bb.o ] ; 2 uses
  %i.bc = add i64 %.sroa.05.059.i, 2              ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bd, %i.n
  br i1 %.not.i, label %._crit_edge62.i, label %.lr.ph61.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit: ; preds = %._crit_edge62.i, %bb.e
  %i.be = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.be, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4recvCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427 = alloca [72 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !2764
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2764
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %bb.b
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %.backedge.i ], [ 0, %bb.b ] ; 7 uses
  %.sroa.0.048.i = phi i32 [ %.sroa.0.048.be.i, %.backedge.i ], [ 0, %bb.b ] ; 9 uses
  %.sroa.012.0.i = phi ptr [ %i.aa, %.backedge.i ], [ %i.q, %bb.b ] ; 9 uses
  %.sroa.07.0.i = phi i64 [ %i.z, %.backedge.i ], [ %i.p, %bb.b ] ; 5 uses
  %4 = shl i32 %.sroa.0.048.i, 1
  %5 = or i32 %4, 1
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.048.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %umin, %umin               ; 2 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %.sroa.0.048.i, 7
  br i1 %i.u, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %7 = add i32 %loop-unroll.iv, -1
  %xtraiter108 = and i32 %loop-unroll.iv, 7       ; 3 uses
  %i.v = icmp ult i32 %7, 7
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter112 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter113 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter113.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %niter113.next.7 = add i32 %niter113, 8         ; 2 uses
  %niter113.ncmp.7 = icmp eq i32 %niter113.next.7, %unroll_iter112
  br i1 %niter113.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.x = and i64 %.sroa.07.0.i, 1
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.i

.backedge.sink.split.i:                           ; preds = %bb.k, %bb.d
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !2764
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod110.not = icmp eq i32 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %.backedge.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod111 = icmp ne i32 %xtraiter108, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter109 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter109.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %epil.iter109.next = add i32 %epil.iter109, 1   ; 2 uses
  %epil.iter109.cmp.not = icmp eq i32 %epil.iter109.next, %xtraiter108
  br i1 %epil.iter109.cmp.not, label %.backedge.i, label %.lr.ph.i.i.epil, !llvm.loop !2767

.backedge.i.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.i23.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %.backedge.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %.backedge.i, label %.lr.ph.i23.i.epil, !llvm.loop !2768

.backedge.i.loopexit94.unr-lcssa:                 ; preds = %.lr.ph.i35.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i, label %.lr.ph.i35.i.epil.preheader

.lr.ph.i35.i.epil.preheader:                      ; preds = %.backedge.i.loopexit94.unr-lcssa, %.lr.ph.i35.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i35.i.epil

.lr.ph.i35.i.epil:                                ; preds = %.lr.ph.i35.i.epil, %.lr.ph.i35.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i35.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i35.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i, label %.lr.ph.i35.i.epil, !llvm.loop !2769

.backedge.i:                                      ; preds = %.backedge.i.loopexit94.unr-lcssa, %.lr.ph.i35.i.epil, %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i23.i.epil, %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i, %.backedge.sink.split.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %i.z = load atomic i64, ptr %1 acquire, align 128, !noalias !2764
  %i.aa = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2764
  %.sroa.0.048.be.i = add i32 %.sroa.0.048.i, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %5
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !2764 ; 3 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.r, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.unshifted.i = xor i64 %i.ab, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.ae = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.w, %i.ae
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = and i64 %i.ab, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.w, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2764
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp ult i32 %.sroa.0.048.i, 7
  br i1 %i.ak, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i, label %.backedge.sink.split.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i: ; preds = %bb.k
  %.not.i20.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i20.i, label %.backedge.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i
  %8 = add i32 %loop-unroll.iv, -1
  %xtraiter102 = and i32 %loop-unroll.iv, 7       ; 3 uses
  %i.al = icmp ult i32 %8, 7
  br i1 %i.al, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter106 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %.backedge.i.loopexit93.unr-lcssa, label %.lr.ph.i23.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i: ; preds = %bb.j
  %.not.i32.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i32.i, label %.backedge.i, label %.lr.ph.i35.i.preheader

.lr.ph.i35.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i
  %xtraiter = and i32 %6, 7                       ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.048.i, 3
  br i1 %i.am, label %.lr.ph.i35.i.epil.preheader, label %.lr.ph.i35.i.preheader.new

.lr.ph.i35.i.preheader.new:                       ; preds = %.lr.ph.i35.i.preheader
  %unroll_iter = and i32 %6, 56
  br label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i35.i, %.lr.ph.i35.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i35.i.preheader.new ], [ %niter.next.7, %.lr.ph.i35.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.loopexit94.unr-lcssa, label %.lr.ph.i35.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.s, 30
  br i1 %i.an, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ao = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !2764 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.lr.ph.i41.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i41.i:                                     ; preds = %bb.m, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv114 = phi i32 [ %loop-unroll.iv.next115, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.m ] ; 4 uses
  %.sroa.0.02.i.i = phi i32 [ %i.as, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.m ] ; 4 uses
  %9 = shl i32 %.sroa.0.02.i.i, 1
  %10 = or i32 %9, 1
  %i.aq = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.aq, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i41.i
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !2764
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i41.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i
  %11 = add i32 %loop-unroll.iv114, -1
  %xtraiter116 = and i32 %loop-unroll.iv114, 7    ; 3 uses
  %i.ar = icmp ult i32 %11, 7
  br i1 %i.ar, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter120 = and i32 %loop-unroll.iv114, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter121 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter121.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %niter121.next.7 = add i32 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i32 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod118.not = icmp eq i32 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod119 = icmp ne i32 %xtraiter116, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter117 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2764
  %epil.iter117.next = add i32 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i32 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2770

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, %bb.n
  %i.as = add i32 %.sroa.0.02.i.i, 1
  %i.at = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !2764 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  %loop-unroll.iv.next115 = add i32 %loop-unroll.iv114, %10
  br i1 %i.au, label %.lr.ph.i41.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.m
  %.lcssa.i.i = phi ptr [ %i.ao, %bb.m ], [ %i.at, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.av = and i64 %.sroa.01.0.i, -2
  %i.aw = add i64 %i.av, 2
  %i.ax = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !2764
  %i.ay = icmp ne ptr %i.ax, null
  %i.az = zext i1 %i.ay to i64
  %spec.select17.i = or disjoint i64 %i.aw, %i.az
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !2764
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !2764
  br label %bb.o

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.h
  %i.ba = load i32, ptr %i.i, align 8, !range !2587, !noundef !12 ; 2 uses
  %.not = icmp eq i32 %i.ba, -1
  br i1 %.not, label %bb.y, label %bb.x

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i, %bb.l
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !2764
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2764
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8
  %i.bc = getelementptr inbounds nuw [88 x i8], ptr %i.bb, i64 %i.s ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 3 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8, !noalias !2771
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i.i6:                                      ; preds = %bb.o, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8
  %loop-unroll.iv122 = phi i32 [ %loop-unroll.iv.next123, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 4 uses
  %.sroa.0.02.i.i7 = phi i32 [ %i.bj, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 4 uses
  %12 = shl i32 %.sroa.0.02.i.i7, 1
  %13 = or i32 %12, 1
  %i.bh = icmp ult i32 %.sroa.0.02.i.i7, 7
  br i1 %i.bh, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i6
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !2771
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10: ; preds = %.lr.ph.i.i6
  %.not.i.i.i11 = icmp eq i32 %.sroa.0.02.i.i7, 0
  br i1 %.not.i.i.i11, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10
  %14 = add i32 %loop-unroll.iv122, -1
  %xtraiter124 = and i32 %loop-unroll.iv122, 7    ; 3 uses
  %i.bi = icmp ult i32 %14, 7
  br i1 %i.bi, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter128 = and i32 %loop-unroll.iv122, -8
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter129 = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter129.next.7, %.lr.ph.i.i.i14 ]
  call void @llvm.x86.sse2.pause(), !noalias !2771
  call void @llvm.x86.sse2.pause(), !noalias !2771
  call void @llvm.x86.sse2.pause(), !noalias !2771
  call void @llvm.x86.sse2.pause(), !noalias !2771
  call void @llvm.x86.sse2.pause(), !noalias !2771
  call void @llvm.x86.sse2.pause(), !noalias !2771
  call void @llvm.x86.sse2.pause(), !noalias !2771
  call void @llvm.x86.sse2.pause(), !noalias !2771
  %niter129.next.7 = add i32 %niter129, 8         ; 2 uses
  %niter129.ncmp.7 = icmp eq i32 %niter129.next.7, %unroll_iter128
  br i1 %niter129.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14
  %lcmp.mod126.not = icmp eq i32 %xtraiter124, 0
  br i1 %lcmp.mod126.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod127 = icmp ne i32 %xtraiter124, 0
  call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter125 = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter125.next, %.lr.ph.i.i.i14.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2771
  %epil.iter125.next = add i32 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i32 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil, !llvm.loop !2774

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10, %bb.p
  %i.bj = add i32 %.sroa.0.02.i.i7, 1
  %i.bk = load atomic i64, ptr %i.bd acquire, align 8, !noalias !2771
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  %loop-unroll.iv.next123 = add i32 %loop-unroll.iv122, %13
  br i1 %i.bm, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, %bb.o
  %.sroa.026.0.copyload = load i64, ptr %i.bc, align 8, !noalias !2771 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427.0..sroa_idx, i64 72, i1 false)
  %i.bn = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 31
  br i1 %i.bo, label %.lr.ph.i1.i, label %bb.t

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i, %bb.s
  %.sroa.0.03.i.i4 = phi i64 [ %i.bx, %bb.s ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 88 ; 2 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8, !noalias !2771
  %i.bs = and i64 %i.br, 2
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %.lr.ph.i1.i.1

bb.q:                                             ; preds = %.lr.ph.i1.i
  %i.bu = atomicrmw or ptr %i.bq, i64 4 acq_rel, align 8, !noalias !2771
  %i.bv = and i64 %i.bu, 2
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.q, %.lr.ph.i1.i
  %i.bx = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.by = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 176 ; 2 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8, !noalias !2771
  %i.cb = and i64 %i.ca, 2
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i1.i.1
  %i.cd = atomicrmw or ptr %i.bz, i64 4 acq_rel, align 8, !noalias !2771
  %i.ce = and i64 %i.cd, 2
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i1.i.1
  %exitcond.not.i.i5.1 = icmp eq i64 %i.bx, 30
  br i1 %exitcond.not.i.i5.1, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i, label %.lr.ph.i1.i

bb.t:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i
  %i.cg = atomicrmw or ptr %i.bd, i64 2 acq_rel, align 8, !noalias !2771
  %i.ch = and i64 %i.cg, 4
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.u

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i: ; preds = %bb.w, %bb.s, %bb.u
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2771
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit

bb.u:                                             ; preds = %bb.t
  %i.cj = icmp samesign ult i64 %i.s, 29
  br i1 %i.cj, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.u, %bb.w
  %.sroa.0.03.i4.i = phi i64 [ %i.ck, %bb.w ], [ %i.bn, %bb.u ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cl = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 88 ; 2 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8, !noalias !2771
  %i.co = and i64 %i.cn, 2
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i3.i
  %i.cq = atomicrmw or ptr %i.cm, i64 4 acq_rel, align 8, !noalias !2771
  %i.cr = and i64 %i.cq, 2
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.ck, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.v, %bb.q, %bb.r, %bb.t, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i
  %i.ct = icmp eq i64 %.sroa.026.0.copyload, -2
  br i1 %i.ct, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread, label %bb.ao

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit
  %i.cu = load i64, ptr %i.h, align 8, !noundef !12 ; 2 uses
  %i.cv = call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.cw = extractvalue { i64, i32 } %i.cv, 0      ; 2 uses
  %i.cx = icmp eq i64 %i.cw, %i.cu
  br i1 %i.cx, label %.split, label %bb.al

bb.y:                                             ; preds = %.split, %bb.al, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2775
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cy = load i8, ptr %i.o, align 8, !range !90, !noalias !2778, !noundef !12
  %i.cz = icmp eq i8 %i.cy, 1
  br i1 %i.cz, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i, !prof !58

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.y
  %i.da = call noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !2775 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i, %bb.y
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.da, %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.dc = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2775, !noundef !12 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2775
  %.not.i.i.i18 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i18, label %bb.z, label %bb.af, !prof !161

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2775
  %i.dd = call noundef nonnull ptr @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !2775 ; 2 uses
  store ptr %i.dd, ptr %i.e, align 8, !noalias !2775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2775
  store ptr %i.g, ptr %i.c, align 8, !noalias !2775
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dd)
          to label %bb.ac unwind label %bb.aa, !noalias !2775

bb.aa:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2785)
  call void @llvm.experimental.noalias.scope.decl(metadata !2788)
  call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  %i.df = load ptr, ptr %i.e, align 8, !alias.scope !2794, !noalias !2775, !nonnull !12, !noundef !12
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !2795
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ab, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.ae, !noalias !2775

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2775
  call void @llvm.experimental.noalias.scope.decl(metadata !2796)
  call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  call void @llvm.experimental.noalias.scope.decl(metadata !2802)
  %i.di = load ptr, ptr %i.e, align 8, !alias.scope !2805, !noalias !2775, !nonnull !12, !noundef !12
  %i.dj = atomicrmw sub ptr %i.di, i64 1 release, align 8, !noalias !2806
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #38, !noalias !2775
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2775
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit

bb.ae:                                            ; preds = %bb.ak, %bb.ab
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2775
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ab, %bb.aa
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.de, %bb.aa ], [ %i.ds, %bb.aj ], [ %i.de, %bb.ab ], [ %i.ds, %bb.ak ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.af:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2775
  store ptr %i.dc, ptr %i.d, align 8, !noalias !2775
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store atomic i64 0, ptr %i.dm release, align 8, !noalias !2775
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store atomic ptr null, ptr %i.dn release, align 8, !noalias !2775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2775
  store ptr %i.g, ptr %i.b, align 8, !noalias !2775
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dc)
          to label %bb.ag unwind label %bb.aj, !noalias !2775

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2775
  %i.do = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2775, !noundef !12 ; 3 uses
  store ptr %i.do, ptr %i.a, align 8, !noalias !2775
  store ptr %i.dc, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2775
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dq = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !2807
  %i.dr = icmp eq i64 %i.dq, 1
  br i1 %i.dr, label %bb.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #38, !noalias !2775
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
end_hunk_0
