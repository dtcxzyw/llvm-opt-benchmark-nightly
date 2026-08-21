inline.NumInlined: 2118
inline.NumDeleted: 940
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect:bb.a
bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit.i.i unwind label %bb.n

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit5.i.i, %.lr.ph.i.i
  %i.an = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.be, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit5.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.ao, ptr %i.c, align 8, !noalias !2096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2096
  %i.ap = load i64, ptr %i.ai, align 8, !noalias !2096, !noundef !14
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !2096, !nonnull !14, !noundef !14
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.ar = cmpxchg ptr %i.aq, i64 0, i64 %i.ap acq_rel acquire, align 8
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.a, align 8, !noalias !2096, !nonnull !14, !noundef !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !14, !noundef !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.ax = atomicrmw xchg ptr %i.aw, i32 1 release, align 4
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.aw)
          to label %bb.k unwind label %bb.f       ; 0 uses

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  %i.ba = load ptr, ptr %i.a, align 8, !alias.scope !2124, !noalias !2096, !nonnull !14, !noundef !14
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !2124
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit5.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit5.i.i unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit.i.i: ; preds = %bb.m, %bb.g, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.aj, %bb.g ], [ %i.aj, %bb.f ]
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit5.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.be = load ptr, ptr %i.c, align 8, !noalias !2096, !nonnull !14, !noundef !14 ; 2 uses
  %i.bf = load ptr, ptr %i.ae, align 8, !noalias !2096, !nonnull !14, !noundef !14
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker6notify.exit.i, label %bb.h

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit.i.i, %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker6notify.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit5.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.q unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %.lr.ph.i
  %i.bi = load ptr, ptr %.sroa.0.03.i, align 8, !noalias !2093, !nonnull !14, !noundef !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !2093, !nonnull !14, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bm = atomicrmw xchg ptr %i.bl, i32 1 release, align 4, !noalias !2093
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.p, label %.noexc6

bb.p:                                             ; preds = %bb.o
  %i.bo = invoke noundef zeroext i1 @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys3pal4unix5futex10futex_wake(ptr noundef nonnull align 4 %i.bl)
          to label %.noexc6 unwind label %.loopexit ; 0 uses

.noexc6:                                          ; preds = %bb.p, %bb.o, %.lr.ph.i
  %i.bp = icmp eq ptr %i.z, %i.x
  br i1 %i.bp, label %._crit_edge.i, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker6notify.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECs8EvorvD8vmS_4ruff.exit.i.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs8EvorvD8vmS_4ruff(ptr nonnull %i.p, i8 %i.r) #31
          to label %common.resume unwind label %bb.x

bb.q:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB2_5Waker6notify.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2096
  %i.bq = load i64, ptr %i.v, align 8, !noundef !14 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 384307168202282326
  call void @llvm.assume(i1 %i.br)
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !14 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 384307168202282326
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp eq i64 %i.bu, 0
  %i.bx = zext i1 %i.bw to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0 = phi i8 [ %i.bx, %bb.r ], [ 0, %bb.q ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.by seq_cst, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br i1 %i.s, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cb = and i64 %i.ca, 9223372036854775807
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.u, !prof !72

bb.u:                                             ; preds = %bb.t
  %i.cd = call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.cd, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.bz monotonic, align 4
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ce = atomicrmw xchg ptr %i.p, i32 0 release, align 4
  %i.cf = icmp eq i32 %i.ce, 2
  br i1 %i.cf, label %bb.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs8EvorvD8vmS_4ruff.exit, !prof !71

bb.w:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.p)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs8EvorvD8vmS_4ruff.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECs8EvorvD8vmS_4ruff.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.w
  ret void

bb.x:                                             ; preds = %.body
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE18disconnect_sendersCs8EvorvD8vmS_4ruff(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20disconnect_receiversCs8EvorvD8vmS_4ruff(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %.sroa.0.04042.i = phi i32 [ %i.j, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 4 uses
  %1 = shl i32 %.sroa.0.04042.i, 1
  %2 = or i32 %1, 1
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04042.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
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
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !2125

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.j = add i32 %.sroa.0.04042.i, 1              ; 2 uses
  %i.k = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.l = and i64 %i.k, 62
  %i.m = icmp eq i64 %i.l, 62
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %2
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.j, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ] ; 4 uses
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
  %4 = mul i32 %.sroa.0.040.lcssa.i, %.sroa.0.040.lcssa.i
  %5 = shl i32 %.sroa.0.040.lcssa.i, 1
  %6 = or disjoint i32 %5, 1
  br label %.preheader.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.q, %._crit_edge.i ], [ %i.x, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.r, %i.n
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i
  %loop-unroll.iv22 = phi i32 [ %4, %.preheader.i.preheader ], [ %loop-unroll.iv.next23, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 4 uses
  %indvar = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.040.lcssa.i, %.preheader.i.preheader ], [ %i.w, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i ] ; 3 uses
  %7 = shl i32 %indvar, 1
  %8 = add i32 %6, %7
  %i.u = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i21.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i21.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.preheader

.lr.ph.i22.i.preheader:                           ; preds = %bb.f
  %9 = add i32 %loop-unroll.iv22, -1
  %xtraiter24 = and i32 %loop-unroll.iv22, 7      ; 3 uses
  %i.v = icmp ult i32 %9, 7
  br i1 %i.v, label %.lr.ph.i22.i.epil.preheader, label %.lr.ph.i22.i.preheader.new

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
  br i1 %niter29.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i22.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil.preheader

.lr.ph.i22.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i22.i.epil

.lr.ph.i22.i.epil:                                ; preds = %.lr.ph.i22.i.epil, %.lr.ph.i22.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i22.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i22.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i, label %.lr.ph.i22.i.epil, !llvm.loop !2127

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit25.i.loopexit.unr-lcssa, %.lr.ph.i22.i.epil, %bb.f, %bb.e
  %i.w = add i32 %.sroa.0.1.i, 1
  %i.x = atomicrmw xchg ptr %i.p, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.x, null
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next23 = add i32 %loop-unroll.iv22, %8
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.n, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.n ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.o, %.loopexit.i ], [ %i.av, %bb.n ]
  %i.y = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.y, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesCs8EvorvD8vmS_4ruff.exit, label %bb.g

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.n
  %i.z = phi i64 [ %i.aw, %bb.n ], [ %i.r, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.av, %bb.n ], [ %i.o, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.n ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.aa = and i64 %i.z, 31                        ; 2 uses
  %.not19.i = icmp eq i64 %i.aa, 31
  br i1 %.not19.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1992, i64 noundef 8) #24
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesCs8EvorvD8vmS_4ruff.exit

bb.h:                                             ; preds = %.lr.ph48.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 1984 ; 3 uses
  %i.ac = load atomic ptr, ptr %i.ab acquire, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv38 = phi i32 [ %loop-unroll.iv.next39, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %.sroa.0.02.i27.i = phi i32 [ %i.ag, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.h ] ; 4 uses
  %10 = shl i32 %.sroa.0.02.i27.i, 1
  %11 = or i32 %10, 1
  %i.ae = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i26.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i27.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %12 = add i32 %loop-unroll.iv38, -1
  %xtraiter40 = and i32 %loop-unroll.iv38, 7      ; 3 uses
  %i.af = icmp ult i32 %12, 7
  br i1 %i.af, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

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
  br i1 %niter45.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2128

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.ag = add i32 %.sroa.0.02.i27.i, 1
  %i.ah = load atomic ptr, ptr %i.ab acquire, align 8
  %i.ai = icmp eq ptr %i.ah, null
  %loop-unroll.iv.next39 = add i32 %loop-unroll.iv38, %11
  br i1 %i.ai, label %.lr.ph.i26.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.h
  %i.aj = load atomic ptr, ptr %i.ab acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 1992, i64 noundef 8) #24
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph48.i
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %.sroa.011.145.i, i64 %i.aa ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8
  %i.an = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i
  %loop-unroll.iv30 = phi i32 [ %loop-unroll.iv.next31, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %.sroa.0.02.i29.i = phi i32 [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i ], [ 0, %bb.k ] ; 4 uses
  %13 = shl i32 %.sroa.0.02.i29.i, 1
  %14 = or i32 %13, 1
  %i.ap = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i

bb.m:                                             ; preds = %.lr.ph.i28.i
  %.not.i.i31.i = icmp eq i32 %.sroa.0.02.i29.i, 0
  br i1 %.not.i.i31.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.preheader

.lr.ph.i.i32.i.preheader:                         ; preds = %bb.m
  %15 = add i32 %loop-unroll.iv30, -1
  %xtraiter32 = and i32 %loop-unroll.iv30, 7      ; 3 uses
  %i.aq = icmp ult i32 %15, 7
  br i1 %i.aq, label %.lr.ph.i.i32.i.epil.preheader, label %.lr.ph.i.i32.i.preheader.new

.lr.ph.i.i32.i.preheader.new:                     ; preds = %.lr.ph.i.i32.i.preheader
  %unroll_iter36 = and i32 %loop-unroll.iv30, -8
  br label %.lr.ph.i.i32.i

.lr.ph.i.i32.i:                                   ; preds = %.lr.ph.i.i32.i, %.lr.ph.i.i32.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i32.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i32.i ]
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
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, label %.lr.ph.i.i32.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i32.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil.preheader

.lr.ph.i.i32.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i32.i.epil

.lr.ph.i.i32.i.epil:                              ; preds = %.lr.ph.i.i32.i.epil, %.lr.ph.i.i32.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i32.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, label %.lr.ph.i.i32.i.epil, !llvm.loop !2129

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i.loopexit.unr-lcssa, %.lr.ph.i.i32.i.epil, %bb.m, %bb.l
  %i.ar = add i32 %.sroa.0.02.i29.i, 1
  %i.as = load atomic i64, ptr %i.al acquire, align 8
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  %loop-unroll.iv.next31 = add i32 %loop-unroll.iv30, %14
  br i1 %i.au, label %.lr.ph.i28.i, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i30.i, %bb.k
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(56) %i.ak)
  br label %bb.n

bb.n:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.145.i, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i ], [ %i.aj, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i ] ; 2 uses
  %i.av = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.aw = lshr i64 %i.av, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.aw, %i.n
  br i1 %.not.i, label %._crit_edge49.i, label %.lr.ph48.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesCs8EvorvD8vmS_4ruff.exit: ; preds = %._crit_edge49.i, %bb.g
  %i.ax = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.ax, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE20discard_all_messagesCs8EvorvD8vmS_4ruff.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvCs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.419 = alloca [48 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uECs8EvorvD8vmS_4ruff.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !2130
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2130
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 15 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %.sroa.012.0.i.be, %.backedge.i.backedge ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %.sroa.07.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.backedge.i
  %i.u = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.u, label %bb.d, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.v = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter95 = and i32 %i.v, 7                   ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter99 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter100 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter100.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter100.next.7 = add i32 %niter100, 8         ; 2 uses
  %niter100.ncmp.7 = icmp eq i32 %niter100.next.7, %unroll_iter99
  br i1 %niter100.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %.backedge.i
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i: ; preds = %bb.j, %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !2130
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod97.not = icmp eq i32 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod98 = icmp ne i32 %xtraiter95, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter96 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter96.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter96.next = add i32 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i32 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i.i.epil, !llvm.loop !2133

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod91.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod91.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod92 = icmp ne i32 %xtraiter89, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter90 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter90.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter90.next = add i32 %epil.iter90, 1     ; 2 uses
  %epil.iter90.cmp.not = icmp eq i32 %epil.iter90.next, %xtraiter89
  br i1 %epil.iter90.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !2134

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, %.lr.ph.i19.i.epil, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.k, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i, %bb.d
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !2130
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2130
  %.sroa.0.1.i = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !2130 ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.r, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.unshifted.i = xor i64 %i.ac, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.af = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.x, %i.af
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = and i64 %i.ac, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ai, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.aj, label %bb.k, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.sink.split.i

bb.k:                                             ; preds = %bb.j
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.k
  %i.ak = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter89 = and i32 %i.ak, 7                  ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.al, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter93 = and i32 %i.ak, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter94 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter94.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter94.next.7 = add i32 %niter94, 8           ; 2 uses
  %niter94.ncmp.7 = icmp eq i32 %niter94.next.7, %unroll_iter93
  br i1 %niter94.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i.loopexit81.unr-lcssa, label %.lr.ph.i19.i

bb.l:                                             ; preds = %bb.i
  %i.am = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2130
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 65536) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %i.ao = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.m
  %xtraiter = and i32 %i.ao, 5                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ap, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i24.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i24.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil.preheader

.lr.ph.i24.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i24.i.preheader
  %lcmp.mod88 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !2135

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aq = add i32 %.sroa.0.037.i, 1
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.m
  %i.ar = phi i32 [ %i.aq, %._crit_edge.loopexit.i.i ], [ 1, %bb.m ]
  %i.as = load atomic i64, ptr %1 acquire, align 128, !noalias !2130
  %i.at = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2130
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i
  %.sroa.0.037.i.be = phi i32 [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.ar, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.012.0.i.be = phi ptr [ %i.ab, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.at, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  %.sroa.07.0.i.be = phi i64 [ %i.aa, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit22.i ], [ %i.as, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i ]
  br label %.backedge.i

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq i64 %i.s, 30
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8, !noalias !2130 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i29.i:                                     ; preds = %bb.o, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 4 uses
  %.sroa.0.02.i30.i = phi i32 [ %i.ba, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.o ] ; 4 uses
  %4 = shl i32 %.sroa.0.02.i30.i, 1
  %5 = or i32 %4, 1
  %i.ay = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i29.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !2130
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.q
  %6 = add i32 %loop-unroll.iv, -1
  %xtraiter101 = and i32 %loop-unroll.iv, 7       ; 3 uses
  %i.az = icmp ult i32 %6, 7
  br i1 %i.az, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter105 = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %niter106.next.7 = add i32 %niter106, 8         ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105
  br i1 %niter106.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2130
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2136

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.q, %bb.p
  %i.ba = add i32 %.sroa.0.02.i30.i, 1
  %i.bb = load atomic ptr, ptr %i.av acquire, align 8, !noalias !2130 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %5
  br i1 %i.bc, label %.lr.ph.i29.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.o
  %.lcssa.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.bb, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.bd = and i64 %.sroa.01.0.i, -2
  %i.be = add i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.bg = load atomic ptr, ptr %i.bf monotonic, align 8, !noalias !2130
  %i.bh = icmp ne ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i64
  %spec.select17.i = or disjoint i64 %i.be, %i.bi
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !2130
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !2130
  br label %bb.r

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.h
  %i.bj = load i32, ptr %i.i, align 8, !range !1872, !noundef !14 ; 2 uses
  %.not = icmp eq i32 %i.bj, -1
  br i1 %.not, label %bb.ac, label %bb.ab

bb.r:                                             ; preds = %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE9wait_nextCs8EvorvD8vmS_4ruff.exit.i, %bb.n
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !2130
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2130
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 3 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8, !noalias !2137
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.r, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5
  %loop-unroll.iv107 = phi i32 [ %loop-unroll.iv.next108, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.r ] ; 4 uses
  %.sroa.0.02.i.i4 = phi i32 [ %i.br, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5 ], [ 0, %bb.r ] ; 4 uses
  %7 = shl i32 %.sroa.0.02.i.i4, 1
  %8 = or i32 %7, 1
  %i.bp = icmp ult i32 %.sroa.0.02.i.i4, 7
  br i1 %i.bp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i3
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !2137
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5

bb.t:                                             ; preds = %.lr.ph.i.i3
  %.not.i.i.i6 = icmp eq i32 %.sroa.0.02.i.i4, 0
  br i1 %.not.i.i.i6, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.t
  %9 = add i32 %loop-unroll.iv107, -1
  %xtraiter109 = and i32 %loop-unroll.iv107, 7    ; 3 uses
  %i.bq = icmp ult i32 %9, 7
  br i1 %i.bq, label %.lr.ph.i.i.i7.epil.preheader, label %.lr.ph.i.i.i7.preheader.new

.lr.ph.i.i.i7.preheader.new:                      ; preds = %.lr.ph.i.i.i7.preheader
  %unroll_iter113 = and i32 %loop-unroll.iv107, -8
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i7.preheader.new
  %niter114 = phi i32 [ 0, %.lr.ph.i.i.i7.preheader.new ], [ %niter114.next.7, %.lr.ph.i.i.i7 ]
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  call void @llvm.x86.sse2.pause(), !noalias !2137
  %niter114.next.7 = add i32 %niter114, 8         ; 2 uses
  %niter114.ncmp.7 = icmp eq i32 %niter114.next.7, %unroll_iter113
  br i1 %niter114.ncmp.7, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, label %.lr.ph.i.i.i7

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i7
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  br i1 %lcmp.mod111.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil.preheader

.lr.ph.i.i.i7.epil.preheader:                     ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.preheader
  %lcmp.mod112 = icmp ne i32 %xtraiter109, 0
  call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.i.i.i7.epil

.lr.ph.i.i.i7.epil:                               ; preds = %.lr.ph.i.i.i7.epil, %.lr.ph.i.i.i7.epil.preheader
  %epil.iter110 = phi i32 [ 0, %.lr.ph.i.i.i7.epil.preheader ], [ %epil.iter110.next, %.lr.ph.i.i.i7.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2137
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, label %.lr.ph.i.i.i7.epil, !llvm.loop !2140

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5.loopexit.unr-lcssa, %.lr.ph.i.i.i7.epil, %bb.t, %bb.s
  %i.br = add i32 %.sroa.0.02.i.i4, 1
  %i.bs = load atomic i64, ptr %i.bl acquire, align 8, !noalias !2137
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  %loop-unroll.iv.next108 = add i32 %loop-unroll.iv107, %8
  br i1 %i.bu, label %.lr.ph.i.i3, label %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i

_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i5, %bb.r
  %.sroa.018.0.copyload = load i64, ptr %i.bk, align 8, !noalias !2137 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.419.0..sroa_idx, i64 48, i1 false)
  %i.bv = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 31
  br i1 %i.bw, label %.lr.ph.i2.i, label %bb.x

.lr.ph.i2.i:                                      ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i, %bb.w
  %.sroa.0.04.i.i = phi i64 [ %i.cf, %bb.w ], [ 0, %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 56 ; 2 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8, !noalias !2137
  %i.ca = and i64 %i.bz, 2
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %.lr.ph.i2.i.1

bb.u:                                             ; preds = %.lr.ph.i2.i
  %i.cc = atomicrmw or ptr %i.by, i64 4 acq_rel, align 8, !noalias !2137
  %i.cd = and i64 %i.cc, 2
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit, label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.u, %.lr.ph.i2.i
  %i.cf = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.cg = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 120 ; 2 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8, !noalias !2137
  %i.cj = and i64 %i.ci, 2
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i2.i.1
  %i.cl = atomicrmw or ptr %i.ch, i64 4 acq_rel, align 8, !noalias !2137
  %i.cm = and i64 %i.cl, 2
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i2.i.1
  %exitcond.not.i.i2.1 = icmp eq i64 %i.cf, 30
  br i1 %exitcond.not.i.i2.1, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyCs8EvorvD8vmS_4ruff.exit.sink.split.i, label %.lr.ph.i2.i

bb.x:                                             ; preds = %_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB2_4SlotINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10wait_writeCs8EvorvD8vmS_4ruff.exit.i
  %i.co = atomicrmw or ptr %i.bl, i64 2 acq_rel, align 8, !noalias !2137
  %i.cp = and i64 %i.co, 4
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit, label %bb.y

_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyCs8EvorvD8vmS_4ruff.exit.sink.split.i: ; preds = %bb.aa, %bb.w, %bb.y
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1992, i64 noundef 8) #24, !noalias !2137
  br label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit

bb.y:                                             ; preds = %bb.x
  %i.cr = icmp samesign ult i64 %i.s, 29
  br i1 %i.cr, label %.lr.ph.i4.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyCs8EvorvD8vmS_4ruff.exit.sink.split.i

.lr.ph.i4.i:                                      ; preds = %bb.y, %bb.aa
  %.sroa.0.04.i5.i = phi i64 [ %i.cs, %bb.aa ], [ %i.bv, %bb.y ] ; 2 uses
  %i.cs = add nuw nsw i64 %.sroa.0.04.i5.i, 1     ; 2 uses
  %i.ct = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.04.i5.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56 ; 2 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8, !noalias !2137
  %i.cw = and i64 %i.cv, 2
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i4.i
  %i.cy = atomicrmw or ptr %i.cu, i64 4 acq_rel, align 8, !noalias !2137
  %i.cz = and i64 %i.cy, 2
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.cs, 30
  br i1 %exitcond.not.i6.i, label %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyCs8EvorvD8vmS_4ruff.exit.sink.split.i, label %.lr.ph.i4.i

_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.z, %bb.u, %bb.v, %bb.x, %_RNvMs_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB4_5BlockINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE7destroyCs8EvorvD8vmS_4ruff.exit.sink.split.i
  %i.db = icmp eq i64 %.sroa.018.0.copyload, -2
  br i1 %i.db, label %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4readCs8EvorvD8vmS_4ruff.exit.thread, label %bb.as

bb.ab:                                            ; preds = %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit
  %i.dc = load i64, ptr %i.h, align 8, !noundef !14 ; 2 uses
  %i.dd = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.de = extractvalue { i64, i32 } %i.dd, 0      ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.dc
  br i1 %i.df, label %.split, label %bb.ap

bb.ac:                                            ; preds = %.split, %bb.ap, %_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB5_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE10start_recvCs8EvorvD8vmS_4ruff.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2141
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dg = load i8, ptr %i.o, align 8, !range !2031, !noalias !2144, !noundef !14
  %i.dh = icmp eq i8 %i.dg, 1
  br i1 %i.dh, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.i.i, !prof !72

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.i.i: ; preds = %bb.ac
  %i.di = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs8EvorvD8vmS_4ruff(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !2141 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uEs_0uECs8EvorvD8vmS_4ruff.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.i.i, %bb.ac
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.di, %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.i.i ], [ %i.n, %bb.ac ] ; 4 uses
  %i.dk = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2141, !noundef !14 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2141
  %.not.i.i.i10 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i10, label %bb.ad, label %bb.aj, !prof !71

bb.ad:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2141
  %i.dl = call noundef nonnull ptr @_RNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !2141 ; 2 uses
  store ptr %i.dl, ptr %i.e, align 8, !noalias !2141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2141
  store ptr %i.g, ptr %i.c, align 8, !noalias !2141
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0Cs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dl)
          to label %bb.ag unwind label %bb.ae, !noalias !2141

bb.ae:                                            ; preds = %bb.ad
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2151)
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %i.dn = load ptr, ptr %i.e, align 8, !alias.scope !2160, !noalias !2141, !nonnull !14, !noundef !14
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !2161
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit.i.i.i unwind label %bb.ai, !noalias !2141

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2141
  call void @llvm.experimental.noalias.scope.decl(metadata !2162)
  call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  %i.dq = load ptr, ptr %i.e, align 8, !alias.scope !2171, !noalias !2141, !nonnull !14, !noundef !14
  %i.dr = atomicrmw sub ptr %i.dq, i64 1 release, align 8, !noalias !2172
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit19.i.i.i

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !2141
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit19.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit19.i.i.i: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2141
  br label %_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0uECs8EvorvD8vmS_4ruff.exit

bb.ai:                                            ; preds = %bb.ao, %bb.af
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !2141
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextECs8EvorvD8vmS_4ruff.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.af, %bb.ae
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dm, %bb.ae ], [ %i.ea, %bb.an ], [ %i.dm, %bb.af ], [ %i.ea, %bb.ao ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.aj:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs8EvorvD8vmS_4ruff.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2141
  store ptr %i.dk, ptr %i.d, align 8, !noalias !2141
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store atomic i64 0, ptr %i.du release, align 8, !noalias !2141
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  store atomic ptr null, ptr %i.dv release, align 8, !noalias !2141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2141
  store ptr %i.g, ptr %i.b, align 8, !noalias !2141
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCs2AWtUsOyxgP_3std4sync4mpmc4listINtB7_7ChannelINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsfp3zoMtR5VJ_12notify_types5event5EventNtNtCsgNynMj4ykPw_6notify5error5ErrorEE4recvs_0Cs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dk)
          to label %bb.ak unwind label %bb.an, !noalias !2141

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2141
  %i.dw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2141, !noundef !14 ; 3 uses
  store ptr %i.dw, ptr %i.a, align 8, !noalias !2141
  store ptr %i.dk, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2141
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECs8EvorvD8vmS_4ruff.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !2173
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECs8EvorvD8vmS_4ruff.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2141
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECs8EvorvD8vmS_4ruff.exit.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context7ContextEECs8EvorvD8vmS_4ruff.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
end_hunk_0
