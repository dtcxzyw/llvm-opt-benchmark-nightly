inline.NumInlined: 7127
inline.NumDeleted: 3581
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4recv17h446cc9c89cd30b13E":bb.a
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6342
  unreachable

common.resume:                                    ; preds = %bb.bh, %bb.q, %bb.r, %.body.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.c ], [ %lpad.phi, %bb.r ], [ %lpad.thr_comm, %bb.bh ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.phi, %bb.q ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit": ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6342, !noalias !6345, !nonnull !3, !align !50, !noundef !3 ; 19 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !321, !alias.scope !6342, !noalias !6345, !noundef !3 ; 5 uses
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !6348)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !6348, !noalias !6351, !noundef !3 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 384307168202282326
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.loopexit75, label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit"
  %i.ah = invoke noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17h9e37a3c07093f192E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @116)
          to label %.noexc unwind label %bb.bh

.noexc:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !6348, !noalias !6351, !nonnull !3, !noundef !3 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ae, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", %.noexc
  %.sroa.02.011.i.i = phi i64 [ %i.be, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i" ], [ 0, %.noexc ] ; 5 uses
  %i.al = phi ptr [ %i.am, %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i" ], [ %i.aj, %.noexc ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6353)
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !6353, !noalias !6356, !nonnull !3, !noundef !3 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !6360, !noundef !3
  %.not.i.i.i = icmp eq i64 %i.ap, %i.ah
  br i1 %.not.i.i.i, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !6353, !noalias !6356, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = cmpxchg ptr %i.as, i64 0, i64 %i.ar acq_rel acquire, align 8, !noalias !6360
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.h, label %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i"

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !6353, !noalias !6356, !noundef !3 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store atomic ptr %i.av, ptr %i.ax release, align 8, !noalias !6360
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !6360, !nonnull !3, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 2 uses
  %i.bb = atomicrmw xchg ptr %i.ba, i32 1 release, align 4, !noalias !6360
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"

bb.k:                                             ; preds = %bb.j
  %i.bd = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17he22b95dd57336362E(ptr noundef nonnull align 4 %i.ba)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i" unwind label %bb.bh ; 0 uses

"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i": ; preds = %bb.g, %.lr.ph.i.i
  %i.be = add nuw nsw i64 %.sroa.02.011.i.i, 1
  %i.bf = icmp eq ptr %i.am, %i.ak
  br i1 %i.bf, label %.loopexit75, label %.lr.ph.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i": ; preds = %bb.k, %bb.j
  %i.bg = icmp samesign ult i64 %.sroa.02.011.i.i, %i.ae
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !6361)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6364)
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.sroa.02.011.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.bh, align 8, !noalias !6367 ; 2 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6367
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = xor i64 %.sroa.02.011.i.i, -1
  %i.bk = add nsw i64 %i.ae, %i.bj
  %i.bl = mul nsw i64 %i.bk, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bh, ptr nonnull align 8 %i.bi, i64 %i.bl, i1 false), !noalias !6370
  %i.bm = add nsw i64 %i.ae, -1                   ; 2 uses
  store i64 %i.bm, ptr %i.ad, align 8, !alias.scope !6372, !noalias !6373
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", label %bb.l, !prof !6014

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %.sroa.02.011.i.i, i64 noundef %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #37
          to label %.noexc11 unwind label %bb.bh

.noexc11:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"
  unreachable

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.j, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noundef !3
  store ptr %i.bo, ptr %i.o, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br i1 %i.ac, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.n, !prof !77

bb.n:                                             ; preds = %bb.m
  %i.bt = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.n
  br i1 %i.bt, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc12
  store atomic i8 1, ptr %i.bp monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.o, %.noexc12, %bb.m, %bb.l
  %i.bu = atomicrmw xchg ptr %i.z, i32 0 release, align 4
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.p, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", !prof !121

bb.p:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.z)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit" unwind label %.loopexit.split-lp

.loopexit75:                                      ; preds = %"_ZN3std4sync4mpmc5waker5Waker10try_select28_$u7b$$u7b$closure$u7d$$u7d$17h3552e8a75d85a466E.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7608cc9219ec9f97E.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.bx = load i8, ptr %i.bw, align 8, !range !321, !noundef !3
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.bb, label %bb.ae

.loopexit:                                        ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %.invoke, %bb.n, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6374)
  call void @llvm.experimental.noalias.scope.decl(metadata !6377)
  call void @llvm.experimental.noalias.scope.decl(metadata !6380)
  call void @llvm.experimental.noalias.scope.decl(metadata !6383)
  %i.bz = load ptr, ptr %i.j, align 8, !alias.scope !6386, !nonnull !3, !noundef !3
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !6386
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.r, label %common.resume

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.ad

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.p
  %.val9 = load ptr, ptr %i.o, align 8, !noundef !3 ; 11 uses
  %i.cc = icmp eq ptr %.val9, null
  br i1 %i.cc, label %bb.z, label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit"
  %i.cd = getelementptr inbounds nuw i8, ptr %.val9, i64 129
  %i.ce = load i8, ptr %i.cd, align 1, !range !321, !noalias !6387, !noundef !3
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %.val9, i64 128 ; 2 uses
  %i.ch = load atomic i8, ptr %i.cg acquire, align 1, !noalias !6387
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i.i15, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"

.lr.ph.i.i15:                                     ; preds = %bb.t, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i = phi i32 [ %i.cl, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.t ] ; 4 uses
  %4 = shl i32 %.sroa.0.02.i.i, 1
  %5 = or i32 %4, 1
  %i.cj = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i15
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i unwind label %.loopexit

bb.v:                                             ; preds = %.lr.ph.i.i15
  %.not.i.i.i16 = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i16, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.v
  %6 = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.ck = icmp ult i32 %6, 7
  br i1 %i.ck, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #26, !noalias !6387
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6390

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.u, %bb.v
  %i.cl = add i32 %.sroa.0.02.i.i, 1
  %i.cm = load atomic i8, ptr %i.cg acquire, align 1, !noalias !6387
  %i.cn = icmp eq i8 %i.cm, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %5
  br i1 %i.cn, label %.lr.ph.i.i15, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, %bb.t
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !6387
  %i.co = load <2 x i64>, ptr %.val9, align 8, !noalias !6387
  store i64 -9223372036854775807, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !6387
  %.not.i = icmp eq i64 %.sroa.49.0.copyload.i, -9223372036854775807
  br i1 %.not.i, label %.invoke, label %bb.x, !prof !121

bb.w:                                             ; preds = %bb.s
  %.sroa.4.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %.val9, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !6387
  %i.cp = load <2 x i64>, ptr %.val9, align 8, !noalias !6387
  store i64 -9223372036854775807, ptr %.sroa.4.0..sroa_idx.i17, align 8, !noalias !6387
  %.not20.i = icmp eq i64 %.sroa.4.0.copyload.i, -9223372036854775807
  br i1 %.not20.i, label %.invoke, label %bb.y, !prof !121

.invoke:                                          ; preds = %bb.w, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"
  %i.cq = phi ptr [ @98, %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i" ], [ @99, %bb.w ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #37
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.i"
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.937, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.512.0..sroa_idx.i, i64 112, i1 false)
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef 136, i64 noundef 8) #26, !noalias !6387
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.937, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx.i, i64 112, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.val9, i64 128
  store atomic i8 1, ptr %i.cr release, align 8, !noalias !6387
  br label %bb.aa

bb.z:                                             ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit"
  store i8 1, ptr %0, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.cs, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.y
  %i.ct = phi <2 x i64> [ %i.cp, %bb.y ], [ %i.co, %bb.x ]
  store <2 x i64> %i.ct, ptr %0, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.558.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.937, i64 112, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  call void @llvm.experimental.noalias.scope.decl(metadata !6395)
  call void @llvm.experimental.noalias.scope.decl(metadata !6398)
  call void @llvm.experimental.noalias.scope.decl(metadata !6401)
  %i.cu = load ptr, ptr %i.j, align 8, !alias.scope !6404, !nonnull !3, !noundef !3
  %i.cv = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !6404
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.ac, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit22"

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit22"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit22": ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit28"

bb.ad:                                            ; preds = %bb.r, %bb.bh
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.ae:                                            ; preds = %.loopexit75
  call void @llvm.experimental.noalias.scope.decl(metadata !6405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6408
  store ptr %i.l, ptr %i.h, align 8, !noalias !6405
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.m, ptr %.sroa.641.0..sroa_idx, align 8, !noalias !6405
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !6405
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.z, ptr %.sroa.850.0..sroa_idx, align 8, !noalias !6405
  %.sroa.955.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 5 uses
  store i8 %i.ab, ptr %.sroa.955.0..sroa_idx, align 8, !noalias !6405
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.cy = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h5dfd234b3fbb79b8E") ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i8, ptr %i.cz, align 8, !range !3362, !noalias !6410, !noundef !3
  %i.db = icmp eq i8 %i.da, 1
  br i1 %i.db, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !77

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.ae
  %i.dc = invoke noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.cy, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc.i unwind label %bb.au, !noalias !6408 ; 2 uses

.noexc.i:                                         ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h34885d049b920348E.exit.thread.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %.noexc.i, %bb.ae
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.cy, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6419
  %i.de = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6420, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6420
  %.not.i.i.i23 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i23, label %bb.af, label %bb.am, !prof !121

bb.af:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6420
  %i.df = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E()
          to label %bb.ag unwind label %bb.au, !noalias !6408 ; 4 uses

bb.ag:                                            ; preds = %bb.af
  store ptr %i.df, ptr %i.f, align 8, !noalias !6420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6420
  store i8 2, ptr %.sroa.955.0..sroa_idx, align 8, !noalias !6420
  store ptr %i.l, ptr %i.c, align 8, !noalias !6405
  %.sroa.641.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %.sroa.641.0..sroa_idx44, align 8, !noalias !6405
  %.sroa.7.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %.sroa.7.0..sroa_idx48, align 8, !noalias !6405
  %.sroa.850.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.z, ptr %.sroa.850.0..sroa_idx53, align 8, !noalias !6405
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.ab, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !6420
  invoke fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17hfc63614bf9b94d90E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr nonnull %i.df)
          to label %bb.aj unwind label %bb.ah, !noalias !6419

bb.ah:                                            ; preds = %bb.ag
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !6423
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.ai, label %.body.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.al, !noalias !6420

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6420
  %i.dj = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !6430
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ak, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit24.i.i.i"

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit24.i.i.i" unwind label %bb.au, !noalias !6408

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit24.i.i.i": ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6420
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h34885d049b920348E.exit.i"

bb.al:                                            ; preds = %bb.at, %bb.ar, %bb.ai
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6420
  unreachable

bb.am:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6420
  store ptr %i.de, ptr %i.e, align 8, !noalias !6420
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store atomic i64 0, ptr %i.dm release, align 8, !noalias !6420
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store atomic ptr null, ptr %i.dn release, align 8, !noalias !6420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6420
  store i8 2, ptr %.sroa.955.0..sroa_idx, align 8, !noalias !6420
  store ptr %i.l, ptr %i.b, align 8, !noalias !6405
  %.sroa.641.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.641.0..sroa_idx42, align 8, !noalias !6405
  %.sroa.7.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.7.0..sroa_idx46, align 8, !noalias !6405
  %.sroa.850.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.z, ptr %.sroa.850.0..sroa_idx51, align 8, !noalias !6405
  %.sroa.410.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %i.ab, ptr %.sroa.410.0..sroa_idx11.i.i.i, align 8, !noalias !6420
  invoke fastcc void @"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17hfc63614bf9b94d90E"(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b, ptr nonnull %i.de)
          to label %bb.an unwind label %bb.as, !noalias !6420

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6420
  %i.do = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6420, !noundef !3 ; 3 uses
  store ptr %i.do, ptr %i.a, align 8, !noalias !6420
  store ptr %i.de, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6420
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dq = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !6437
  %i.dr = icmp eq i64 %i.dq, 1
end_hunk_0
begin_hunk_1_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17hfc63614bf9b94d90E":bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !6462
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.ay ], [ %i.di, %bb.ag ], [ %i.cf, %bb.aa ], [ %i.x, %bb.e ], [ %i.ec, %bb.as ], [ %i.x, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit30, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit36, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.08.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.08.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ab = load i64, ptr %.sroa.416.0..sroa_idx, align 8, !range !65, !alias.scope !6471, !noundef !3
  %i.ac = icmp eq i64 %i.ab, -9223372036854775807
  br i1 %i.ac, label %.noexc, label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$GT$17h401136a7b363d140E"(ptr noalias noundef align 8 dereferenceable(120) %.sroa.416.0..sroa_idx)
          to label %.noexc unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.t, %.noexc47
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.v, %.thread16, %.thread23, %bb.bg, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.08.3.ph.ph.ph = phi i1 [ false, %bb.v ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %bb.bg ], [ false, %.thread23 ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.thread16 ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !6457, !noalias !6460, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = add i64 %i.u, 1
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !6457, !noalias !6460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17ha7ba72a62be85c43E(ptr noalias noundef align 8 dereferenceable(48) %i.ah)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !range !321, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.m, !prof !77

bb.m:                                             ; preds = %bb.l
  %i.ap = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.m
  br i1 %i.ap, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc43
  store atomic i8 1, ptr %i.ak monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.n, %.noexc43, %bb.l, %bb.k
  %i.aq = atomicrmw xchg ptr %i.n, i32 0 release, align 4
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.o, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", !prof !121

bb.o:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.n)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !3, !align !50, !noundef !3 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !range !6081, !noundef !3 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.aw, 1000000000
  %i.ay = icmp samesign ult i32 %i.aw, 1000000000
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split8.us.i, label %.split8.i

.split8.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", %bb.p
  %i.ba = load atomic i64, ptr %i.ax acquire, align 8
  switch i64 %i.ba, label %.thread20 [
    i64 0, label %bb.p
    i64 1, label %.thread16
    i64 2, label %.thread23
  ]

bb.p:                                             ; preds = %.split8.us.i
  invoke void @_ZN3std6thread6Thread4park17h537f656050d56d48E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az)
          to label %.split8.us.i unwind label %.loopexit.split-lp.loopexit

.split8.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", %.noexc47
  %i.bb = load atomic i64, ptr %i.ax acquire, align 8
  switch i64 %i.bb, label %.thread20 [
    i64 0, label %bb.q
    i64 1, label %.thread16
    i64 2, label %.thread23
  ]

bb.q:                                             ; preds = %.split8.i
  %i.bc = invoke { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE()
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc46:                                         ; preds = %bb.q
  %i.bd = extractvalue { i64, i32 } %i.bc, 0      ; 3 uses
  %i.be = extractvalue { i64, i32 } %i.bc, 1      ; 3 uses
  %i.bf = icmp eq i64 %i.bd, %i.au
  br i1 %i.bf, label %.split.i, label %bb.r

.split.i:                                         ; preds = %.noexc46
  %i.bg = icmp ult i32 %i.be, 1000000000
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.assume(i1 %i.ay)
  %i.bh = icmp samesign ult i32 %i.be, %i.aw
  br i1 %i.bh, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.noexc46
  %i.bi = icmp slt i64 %i.bd, %i.au
  br i1 %i.bi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.bj = cmpxchg ptr %i.ax, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bj, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread16, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bk = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.au, i32 noundef range(i32 0, 1000000001) %i.aw, i64 noundef %i.bd, i32 noundef %i.be)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc47:                                         ; preds = %bb.t
  %i.bl = extractvalue { i64, i32 } %i.bk, 0
  %i.bm = extractvalue { i64, i32 } %i.bk, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hc0e8a0d3add8dc16E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, i64 noundef %i.bl, i32 noundef %i.bm)
          to label %.split8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bj, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread20 [
    i64 0, label %bb.v
    i64 1, label %.thread16
    i64 2, label %.thread23
  ], !prof !6478

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #37
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread16:                                        ; preds = %.split8.i, %.split8.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.bo)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread23:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bq)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread20:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  %i.br = load atomic i8, ptr %i.l acquire, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit"

.lr.ph.i:                                         ; preds = %.thread20, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 0, %.thread20 ] ; 4 uses
  %.sroa.0.02.i = phi i32 [ %i.bv, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 0, %.thread20 ] ; 4 uses
  %2 = shl i32 %.sroa.0.02.i, 1
  %3 = or i32 %2, 1
  %i.bt = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bt, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

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
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #26
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !6479

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bv = add i32 %.sroa.0.02.i, 1
  %i.bw = load atomic i8, ptr %i.l acquire, align 8
  %i.bx = icmp eq i8 %i.bw, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %3
  br i1 %i.bx, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit"

bb.y:                                             ; preds = %.thread16
  call void @llvm.experimental.noalias.scope.decl(metadata !6480)
  %i.by = load i64, ptr %i.f, align 8, !range !4, !alias.scope !6480, !noalias !6483, !noundef !3
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.z, label %bb.ad, !prof !121

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6485
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !6480, !noalias !6483, !nonnull !3, !align !50, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !range !321, !alias.scope !6480, !noalias !6483, !noundef !3
  store ptr %i.cb, ptr %i.a, align 8, !noalias !6485
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cd, ptr %i.ce, align 8, !noalias !6485
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #37
          to label %bb.ab unwind label %bb.aa, !noalias !6480

bb.aa:                                            ; preds = %bb.z
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %.body unwind label %bb.ac, !noalias !6480

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6480
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !6480, !noalias !6483, !nonnull !3, !align !50, !noundef !3 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !range !321, !alias.scope !6480, !noalias !6483, !noundef !3 ; 2 uses
  %i.cl = trunc nuw i8 %i.ck to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !6486)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !6486, !noalias !6489, !nonnull !3, !noundef !3 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 72 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !6486, !noalias !6489, !noundef !3 ; 7 uses
  %.idx67 = mul nuw nsw i64 %i.cp, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx67
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %._crit_edge66, label %.lr.ph65

bb.ae:                                            ; preds = %.lr.ph65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.ct = add nuw nsw i64 %i.cw, 1
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ad, %bb.ae
  %i.cv = phi ptr [ %i.cs, %bb.ae ], [ %i.cn, %bb.ad ] ; 2 uses
  %i.cw = phi i64 [ %i.ct, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !6491, !noalias !6496, !noundef !3
  %.not.i.i50 = icmp eq i64 %i.cy, %i.j
  br i1 %.not.i.i50, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph65
  call void @llvm.experimental.noalias.scope.decl(metadata !6501)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6504)
  %i.cz = icmp ult i64 %i.cp, 384307168202282326
  call void @llvm.assume(i1 %i.cz)
  %.not.i.i.i = icmp samesign ult i64 %i.cw, %i.cp
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i": ; preds = %bb.af
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.da, align 8, !noalias !6507 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6507
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = xor i64 %i.cw, -1
  %i.dd = add nsw i64 %i.cp, %i.dc
  %i.de = mul nsw i64 %i.dd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 8 %i.db, i64 %i.de, i1 false), !noalias !6510
  %i.df = add nsw i64 %i.cp, -1                   ; 2 uses
  store i64 %i.df, ptr %i.co, align 8, !alias.scope !6512, !noalias !6513
  %.not.i5.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", label %bb.ah, !prof !6014

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", %bb.af
  %i.dg = phi i64 [ %i.cp, %bb.af ], [ %i.df, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i" ] ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %i.cw, i64 noundef %i.dg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #37
          to label %.noexc51 unwind label %bb.ag

.noexc51:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"
  unreachable

bb.ag:                                            ; preds = %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", %._crit_edge66
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.ci, i8 %i.ck) #35
          to label %.body unwind label %bb.ap

bb.ah:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.g, align 8
  %i.dj = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !6514
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.ai, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit" unwind label %bb.ag

._crit_edge66:                                    ; preds = %bb.ae, %bb.ad
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #37
          to label %bb.b unwind label %bb.ag

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.ah, %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  br i1 %i.cl, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.dm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.dn = and i64 %i.dm, 9223372036854775807
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, label %bb.ak, !prof !77

bb.ak:                                            ; preds = %bb.aj
  %i.dp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.ak
  br i1 %i.dp, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, label %bb.al

bb.al:                                            ; preds = %.noexc54
  store atomic i8 1, ptr %i.dl monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53: ; preds = %bb.al, %.noexc54, %bb.aj, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.dq = atomicrmw xchg ptr %i.ci, i32 0 release, align 4
  %i.dr = icmp eq i32 %i.dq, 2
  br i1 %i.dr, label %bb.am, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56", !prof !121

bb.am:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.ci)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i53, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 0, ptr %0, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.bf, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit77", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56"
  %.sroa.4.0.copyload.sink = phi i64 [ %.sroa.4.0.copyload, %bb.bf ], [ -9223372036854775807, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit77" ], [ -9223372036854775807, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit56" ]
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.copyload.sink, ptr %.sroa.46.0..sroa_idx, align 8
  %i.ds = load i64, ptr %.sroa.416.0..sroa_idx, align 8, !range !65, !alias.scope !6523, !noundef !3
  %i.dt = icmp eq i64 %i.ds, -9223372036854775807
  br i1 %i.dt, label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit58", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$GT$17h401136a7b363d140E"(ptr noalias noundef align 8 dereferenceable(120) %.sroa.416.0..sroa_idx)
  br label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit58"

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bi
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.aq:                                            ; preds = %.thread23
  call void @llvm.experimental.noalias.scope.decl(metadata !6530)
  %i.dv = load i64, ptr %i.d, align 8, !range !4, !alias.scope !6530, !noalias !6533, !noundef !3
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.ar, label %bb.av, !prof !121

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6535
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !6530, !noalias !6533, !nonnull !3, !align !50, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ea = load i8, ptr %i.dz, align 8, !range !321, !alias.scope !6530, !noalias !6533, !noundef !3
  store ptr %i.dy, ptr %i.b, align 8, !noalias !6535
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.ea, ptr %i.eb, align 8, !noalias !6535
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #37
          to label %bb.at unwind label %bb.as, !noalias !6530

bb.as:                                            ; preds = %bb.ar
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #35
          to label %.body unwind label %bb.au, !noalias !6530
end_hunk_1
begin_hunk_2_@"_ZN3std4sync4mpmc4zero16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h9b6d0770e390459dE":bb.a
          cleanup                                 ; 2 uses
  %i.z = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !6708
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.f, label %.body

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.as, %bb.aa, %bb.f, %bb.e, %bb.ag, %bb.ay
  %.sroa.029.2 = phi i1 [ false, %bb.ay ], [ false, %bb.ag ], [ false, %bb.aa ], [ true, %bb.e ], [ false, %bb.as ], [ true, %bb.f ], [ false, %.loopexit ], [ false, %.loopexit.split-lp.loopexit ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.029.3.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.ay ], [ %i.dk, %bb.ag ], [ %i.ch, %bb.aa ], [ %i.y, %bb.e ], [ %i.eg, %bb.as ], [ %i.y, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit29, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit35, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !65, !alias.scope !6717, !noundef !3
  %i.ae = icmp eq i64 %i.ad, -9223372036854775807
  br i1 %i.ae, label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit", label %bb.i

bb.i:                                             ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$GT$17h401136a7b363d140E"(ptr noalias noundef align 8 dereferenceable(120) %i.ac)
          to label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit" unwind label %bb.ap

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.q, %bb.t, %.noexc62
  %lpad.loopexit35 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.j, %bb.v, %.thread, %.thread19, %bb.m, %bb.o, %bb.ak, %bb.am, %bb.bc, %bb.be
  %.sroa.029.3.ph.ph.ph = phi i1 [ false, %bb.v ], [ false, %bb.m ], [ false, %bb.ak ], [ false, %bb.bc ], [ false, %.thread19 ], [ false, %bb.o ], [ false, %bb.be ], [ false, %.invoke ], [ false, %.thread ], [ true, %bb.j ], [ false, %bb.am ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !6703, !noalias !6706, !nonnull !3, !noundef !3
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ai = add i64 %i.v, 1
  store i64 %i.ai, ptr %i.u, align 8, !alias.scope !6703, !noalias !6706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17ha7ba72a62be85c43E(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.al = load i8, ptr %i.ak, align 8, !range !321, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.ap = and i64 %i.ao, 9223372036854775807
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.m, !prof !77

bb.m:                                             ; preds = %bb.l
  %i.ar = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %bb.m
  br i1 %i.ar, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc58
  store atomic i8 1, ptr %i.am monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.n, %.noexc58, %bb.l, %bb.k
  %i.as = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.o, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", !prof !121

bb.o:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.o)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !3, !align !50, !noundef !3 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !range !6081, !noundef !3 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %.not.i = icmp eq i32 %i.ay, 1000000000
  %i.ba = icmp samesign ult i32 %i.ay, 1000000000
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  br i1 %.not.i, label %.split8.us.i, label %.split8.i

.split8.us.i:                                     ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", %bb.p
  %i.bc = load atomic i64, ptr %i.az acquire, align 8
  switch i64 %i.bc, label %.thread16 [
    i64 0, label %bb.p
    i64 1, label %.thread
    i64 2, label %.thread19
  ]

bb.p:                                             ; preds = %.split8.us.i
  invoke void @_ZN3std6thread6Thread4park17h537f656050d56d48E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb)
          to label %.split8.us.i unwind label %.loopexit.split-lp.loopexit

.split8.i:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit", %.noexc62
  %i.bd = load atomic i64, ptr %i.az acquire, align 8
  switch i64 %i.bd, label %.thread16 [
    i64 0, label %bb.q
    i64 1, label %.thread
    i64 2, label %.thread19
  ]

bb.q:                                             ; preds = %.split8.i
  %i.be = invoke { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE()
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc61:                                         ; preds = %bb.q
  %i.bf = extractvalue { i64, i32 } %i.be, 0      ; 3 uses
  %i.bg = extractvalue { i64, i32 } %i.be, 1      ; 3 uses
  %i.bh = icmp eq i64 %i.bf, %i.aw
  br i1 %i.bh, label %.split.i, label %bb.r

.split.i:                                         ; preds = %.noexc61
  %i.bi = icmp ult i32 %i.bg, 1000000000
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.ba)
  %i.bj = icmp samesign ult i32 %i.bg, %i.ay
  br i1 %i.bj, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.noexc61
  %i.bk = icmp slt i64 %i.bf, %i.aw
  br i1 %i.bk, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.split.i
  %i.bl = cmpxchg ptr %i.az, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bl, 1
  br i1 %.sroa.18.0.in.i.i.i, label %.thread, label %bb.u

bb.t:                                             ; preds = %bb.r, %.split.i
  %i.bm = invoke { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.aw, i32 noundef range(i32 0, 1000000001) %i.ay, i64 noundef %i.bf, i32 noundef %i.bg)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc62:                                         ; preds = %bb.t
  %i.bn = extractvalue { i64, i32 } %i.bm, 0
  %i.bo = extractvalue { i64, i32 } %i.bm, 1
  invoke void @_ZN3std6thread6Thread12park_timeout17hc0e8a0d3add8dc16E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, i64 noundef %i.bn, i32 noundef %i.bo)
          to label %.split8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.s
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bl, 0
  switch i64 %.sroa.01.0.i.i.i, label %.thread16 [
    i64 0, label %bb.v
    i64 1, label %.thread
    i64 2, label %.thread19
  ], !prof !6478

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #37
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread:                                          ; preds = %.split8.i, %.split8.us.i, %bb.s, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.bq)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread19:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !3, !align !50, !noundef !3
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5f1b259bcb11cf17E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.bs)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread16:                                        ; preds = %.split8.i, %.split8.us.i, %bb.u
  %i.bt = load atomic i8, ptr %i.m acquire, align 16
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit"

.lr.ph.i:                                         ; preds = %.thread16, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 0, %.thread16 ] ; 4 uses
  %.sroa.0.02.i = phi i32 [ %i.bx, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 0, %.thread16 ] ; 4 uses
  %2 = shl i32 %.sroa.0.02.i, 1
  %3 = or i32 %2, 1
  %i.bv = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.bv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i unwind label %.loopexit

bb.x:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.02.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.x
  %4 = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.bw = icmp ult i32 %4, 7
  br i1 %i.bw, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  call void @llvm.x86.sse2.pause() #26
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod74 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod74)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #26
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !6724

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.w, %bb.x
  %i.bx = add i32 %.sroa.0.02.i, 1
  %i.by = load atomic i8, ptr %i.m acquire, align 16
  %i.bz = icmp eq i8 %i.by, 0
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %3
  br i1 %i.bz, label %.lr.ph.i, label %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit"

bb.y:                                             ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !6725)
  %i.ca = load i64, ptr %i.f, align 8, !range !4, !alias.scope !6725, !noalias !6728, !noundef !3
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.z, label %bb.ad, !prof !121

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6730
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !6725, !noalias !6728, !nonnull !3, !align !50, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !321, !alias.scope !6725, !noalias !6728, !noundef !3
  store ptr %i.cd, ptr %i.a, align 8, !noalias !6730
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.cf, ptr %i.cg, align 8, !noalias !6730
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #37
          to label %bb.ab unwind label %bb.aa, !noalias !6725

bb.aa:                                            ; preds = %bb.z
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17h0ee759e34ddf9466E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #35
          to label %.body unwind label %bb.ac, !noalias !6725

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36, !noalias !6725
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !6725, !noalias !6728, !nonnull !3, !align !50, !noundef !3 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cm = load i8, ptr %i.cl, align 8, !range !321, !alias.scope !6725, !noalias !6728, !noundef !3 ; 2 uses
  %i.cn = trunc nuw i8 %i.cm to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !6731)
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !6731, !noalias !6734, !nonnull !3, !noundef !3 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !6731, !noalias !6734, !noundef !3 ; 7 uses
  %.idx67 = mul nuw nsw i64 %i.cr, 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx67
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %._crit_edge66, label %.lr.ph65

bb.ae:                                            ; preds = %.lr.ph65
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cv = add nuw nsw i64 %i.cy, 1
  %i.cw = icmp eq ptr %i.cu, %i.cs
  br i1 %i.cw, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.ad, %bb.ae
  %i.cx = phi ptr [ %i.cu, %bb.ae ], [ %i.cp, %bb.ad ] ; 2 uses
  %i.cy = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !6736, !noalias !6741, !noundef !3
  %.not.i.i65 = icmp eq i64 %i.da, %i.k
  br i1 %.not.i.i65, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph65
  call void @llvm.experimental.noalias.scope.decl(metadata !6746)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !6749)
  %i.db = icmp ult i64 %i.cr, 384307168202282326
  call void @llvm.assume(i1 %i.db)
  %.not.i.i.i = icmp samesign ult i64 %i.cy, %i.cr
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i": ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %i.cy ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.dc, align 8, !noalias !6752 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !6752
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = xor i64 %i.cy, -1
  %i.df = add nsw i64 %i.cr, %i.de
  %i.dg = mul nsw i64 %i.df, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr nonnull align 8 %i.dd, i64 %i.dg, i1 false), !noalias !6755
  %i.dh = add nsw i64 %i.cr, -1                   ; 2 uses
  store i64 %i.dh, ptr %i.cq, align 8, !alias.scope !6757, !noalias !6758
  %.not.i5.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i5.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", label %bb.ah, !prof !6014

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i", %bb.af
  %i.di = phi i64 [ %i.cr, %bb.af ], [ %i.dh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i" ] ; 2 uses
  %i.dj = icmp samesign ult i64 %i.di, 384307168202282326
  call void @llvm.assume(i1 %i.dj)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17hdd0e456ceb323c6cE"(i64 noundef %i.cy, i64 noundef %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #37
          to label %.noexc66 unwind label %bb.ag

.noexc66:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i"
  unreachable

bb.ag:                                            ; preds = %bb.ai, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.thread.i.i", %._crit_edge66
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E"(ptr nonnull %i.ck, i8 %i.cm) #35
          to label %.body unwind label %bb.ap

bb.ah:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10try_remove17hf1204ea8ea824f02E.exit.i.i"
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.g, align 8
  %i.dl = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !6759
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.ai, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit" unwind label %bb.ag

._crit_edge66:                                    ; preds = %bb.ae, %bb.ad
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #37
          to label %bb.b unwind label %bb.ag

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.ah, %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br i1 %i.cn, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, label %bb.aj

bb.aj:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.do = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.dp = and i64 %i.do, 9223372036854775807
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, label %bb.ak, !prof !77

bb.ak:                                            ; preds = %bb.aj
  %i.dr = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.ak
  br i1 %i.dr, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, label %bb.al

bb.al:                                            ; preds = %.noexc69
  store atomic i8 1, ptr %i.dn monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68: ; preds = %bb.al, %.noexc69, %bb.aj, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  %i.ds = atomicrmw xchg ptr %i.ck, i32 0 release, align 4
  %i.dt = icmp eq i32 %i.ds, 2
  br i1 %i.dt, label %bb.am, label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71", !prof !121

bb.am:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.ck)
          to label %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i68, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.du = load <2 x i64>, ptr %i.h, align 16
  store i64 -9223372036854775807, ptr %.sroa.4.0..sroa_idx, align 8
  %.not36 = icmp eq i64 %.sroa.4.0.copyload, -9223372036854775807
  br i1 %.not36, label %.invoke, label %bb.an, !prof !121

bb.an:                                            ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71"
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5.0..sroa_idx, i64 112, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.du, ptr %.sroa.410.0..sroa_idx, align 8
  br label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73"

.invoke:                                          ; preds = %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92", %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71"
  %i.dv = phi ptr [ @112, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit71" ], [ @115, %"_ZN4core3ptr93drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$17haf2ab244955518d2E.exit92" ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dv) #37
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, %.thread16
  store i64 2, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !65, !alias.scope !6768
  %i.dw = icmp eq i64 %.pre, -9223372036854775807
  br i1 %i.dw, label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73", label %bb.ao

bb.ao:                                            ; preds = %"_ZN3std4sync4mpmc4zero15Packet$LT$T$GT$10wait_ready17h9f4320483b1f1e90E.exit.loopexit"
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$GT$17h401136a7b363d140E"(ptr noalias noundef align 8 dereferenceable(120) %i.dx)
  br label %"_ZN4core3ptr159drop_in_place$LT$std..sync..mpmc..zero..Packet$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$17hfd5238dbb6a55a64E.exit73"

bb.ap:                                            ; preds = %bb.i, %bb.ag, %bb.ay, %bb.bh
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.aq:                                            ; preds = %.thread19
  call void @llvm.experimental.noalias.scope.decl(metadata !6775)
end_hunk_2
