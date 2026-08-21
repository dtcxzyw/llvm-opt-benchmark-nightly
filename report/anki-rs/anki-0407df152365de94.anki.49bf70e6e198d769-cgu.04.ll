inline.NumInlined: 4750
inline.NumDeleted: 2179
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E:bb.a
  %i.l = load i8, ptr %i.k, align 8, !range !4924, !noundef !13
  br label %_ZN3std3sys3pal4unix17decode_error_kind17h212b88707a6037f9E.exit

switch.lookup:                                    ; preds = %bb.b
  %i.m = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E, i64 %i.m
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN3std3sys3pal4unix17decode_error_kind17h212b88707a6037f9E.exit

_ZN3std3sys3pal4unix17decode_error_kind17h212b88707a6037f9E.exit: ; preds = %bb.b, %switch.lookup, %bb.e, %bb.d, %bb.c
  %.sroa.0.0 = phi i8 [ %i.l, %bb.e ], [ %spec.select.i.i, %bb.c ], [ %i.j, %bb.d ], [ %switch.load, %switch.lookup ], [ 41, %bb.b ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$18disconnect_senders17h9821d7f135e9d134E"(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 1 seq_cst, align 8
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17hb947c4e6ba83d9a3E.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h0a39386b69d7fcf9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  %i.h = load i64, ptr %i.b, align 8, !range !31, !alias.scope !4925, !noalias !4928, !noundef !13
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i", !prof !33

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4930
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4925, !noalias !4928, !nonnull !13, !align !82, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !83, !alias.scope !4925, !noalias !4928, !noundef !13
  store ptr %i.k, ptr %i.a, align 8, !noalias !4930
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.m, ptr %i.n, align 8, !noalias !4930
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @457, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #38
          to label %bb.e unwind label %bb.d, !noalias !4925

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$$GT$17hca07328d973630c7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #39
          to label %common.resume.i unwind label %bb.f, !noalias !4925

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4925
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %lpad.phi.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i": ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !4925, !noalias !4928, !nonnull !13, !align !82, !noundef !13 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !83, !alias.scope !4925, !noalias !4928, !noundef !13 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4931)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !4931, !nonnull !13, !noundef !13 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !4931, !noundef !13 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.z, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i.i
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i", %.noexc5.i
  %.sroa.0.03.i.i = phi ptr [ %i.ac, %.noexc5.i ], [ %i.x, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i" ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 24 ; 2 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.03.i.i, align 8, !noalias !4931, !nonnull !13, !noundef !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24
  %i.ae = cmpxchg ptr %i.ad, i64 0, i64 2 acq_rel acquire, align 8, !noalias !4931
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %bb.g, label %.noexc5.i

._crit_edge.i.i:                                  ; preds = %.noexc5.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i"
  invoke fastcc void @_ZN3std4sync4mpmc5waker5Waker6notify17ha7ba72a62be85c43E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit.i unwind label %.loopexit.split-lp.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ag = load ptr, ptr %.sroa.0.03.i.i, align 8, !noalias !4931, !nonnull !13, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !4931, !nonnull !13, !noundef !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.ak = atomicrmw xchg ptr %i.aj, i32 1 release, align 4, !noalias !4931
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.h, label %.noexc5.i

bb.h:                                             ; preds = %bb.g
  %i.am = invoke noundef zeroext i1 @_ZN3std3sys3pal4unix5futex10futex_wake17he22b95dd57336362E(ptr noundef nonnull align 4 %i.aj)
          to label %.noexc5.i unwind label %.loopexit.i ; 0 uses

.noexc5.i:                                        ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.an = icmp eq ptr %i.ac, %i.aa
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i

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
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h61ca16a178f299d1E"(ptr nonnull %i.r, i8 %i.t) #39
          to label %common.resume.i unwind label %bb.p

_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit.i: ; preds = %._crit_edge.i.i
  %i.ao = load i64, ptr %i.y, align 8, !noundef !13 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 384307168202282326
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !noundef !13 ; 2 uses
  %i.at = icmp ult i64 %i.as, 384307168202282326
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.as, 0
  %i.av = zext i1 %i.au to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit.i
  %.sroa.0.0.i = phi i8 [ %i.av, %bb.j ], [ 0, %_ZN3std4sync4mpmc5waker5Waker10disconnect17haca2cb57024ce43cE.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic i8 %.sroa.0.0.i, ptr %i.aw seq_cst, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br i1 %i.u, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.az = and i64 %i.ay, 9223372036854775807
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.m, !prof !85

bb.m:                                             ; preds = %bb.l
  %i.bb = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
  br i1 %i.bb, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store atomic i8 1, ptr %i.ax monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bc = atomicrmw xchg ptr %i.r, i32 0 release, align 4
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.o, label %_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17hb947c4e6ba83d9a3E.exit, !prof !33

bb.o:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.r)
  br label %_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17hb947c4e6ba83d9a3E.exit

bb.p:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17hb947c4e6ba83d9a3E.exit: ; preds = %bb.o, %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i, %bb.a
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20disconnect_receivers17he07f40d757a57fd3E"(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %.not43.i = icmp eq i64 %i.f, 62
  br i1 %.not43.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.04144.i = phi i32 [ %i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.g = icmp ult i32 %.sroa.0.04144.i, 7
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04144.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %1 = mul nuw i32 %.sroa.0.04144.i, %.sroa.0.04144.i ; 2 uses
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.h = icmp ult i32 %.sroa.0.04144.i, 3
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %1, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4934

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.i = add i32 %.sroa.0.04144.i, 1              ; 2 uses
  %i.j = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.k = and i64 %i.j, 62
  %.not.i = icmp eq i64 %i.k, 62
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.j, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ]
  %.sroa.0.041.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ]
  %i.l = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.m = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = atomicrmw xchg ptr %i.n, ptr null acq_rel, align 8 ; 2 uses
  %i.p = lshr i64 %i.m, 1                         ; 3 uses
  %i.q = icmp ne i64 %i.p, %i.l
  %i.r = icmp eq ptr %i.o, null
  %or.cond.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.o, %._crit_edge.i ], [ %i.v, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i ] ; 2 uses
  %.not1946.i = icmp eq i64 %i.p, %i.l
  br i1 %.not1946.i, label %._crit_edge51.i, label %.lr.ph50.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i
  %.sroa.0.1.i = phi i32 [ %i.u, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i ], [ %.sroa.0.041.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.s = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  tail call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i

bb.f:                                             ; preds = %.preheader.i
  %.not.i22.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i22.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %bb.f
  %2 = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i     ; 2 uses
  %xtraiter24 = and i32 %2, 7                     ; 3 uses
  %i.t = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.t, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter28 = and i32 %2, 56
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %niter29 = phi i32 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter29.next.7, %.lr.ph.i23.i ]
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  %niter29.next.7 = add i32 %niter29, 8           ; 2 uses
  %niter29.ncmp.7 = icmp eq i32 %niter29.next.7, %unroll_iter28
  br i1 %niter29.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i.loopexit.unr-lcssa, label %.lr.ph.i23.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i23.i
  %lcmp.mod26.not = icmp eq i32 %xtraiter24, 0
  br i1 %lcmp.mod26.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i.loopexit.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod27 = icmp ne i32 %xtraiter24, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter25 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter25.next, %.lr.ph.i23.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30
  %epil.iter25.next = add i32 %epil.iter25, 1     ; 2 uses
  %epil.iter25.cmp.not = icmp eq i32 %epil.iter25.next, %xtraiter24
  br i1 %epil.iter25.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i, label %.lr.ph.i23.i.epil, !llvm.loop !4936

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit26.i.loopexit.unr-lcssa, %.lr.ph.i23.i.epil, %bb.f, %bb.e
  %i.u = add i32 %.sroa.0.1.i, 1
  %i.v = atomicrmw xchg ptr %i.n, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.v, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge51.i:                                  ; preds = %bb.n, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.n ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.m, %.loopexit.i ], [ %i.at, %bb.n ]
  %i.w = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.w, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf32fc90c04a5965dE.exit", label %bb.g

.lr.ph50.i:                                       ; preds = %.loopexit.i, %bb.n
  %i.x = phi i64 [ %i.au, %bb.n ], [ %i.p, %.loopexit.i ]
  %.sroa.05.048.i = phi i64 [ %i.at, %bb.n ], [ %i.m, %.loopexit.i ]
  %.sroa.011.147.i = phi ptr [ %.sroa.011.2.i, %bb.n ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.y = and i64 %i.x, 31                         ; 2 uses
  %.not20.i = icmp eq i64 %i.y, 31
  br i1 %.not20.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %._crit_edge51.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 4224, i64 noundef 8) #30
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf32fc90c04a5965dE.exit"

bb.h:                                             ; preds = %.lr.ph50.i
  %i.z = load atomic ptr, ptr %.sroa.011.147.i acquire, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.lr.ph.i27.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

.lr.ph.i27.i:                                     ; preds = %bb.h, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.ad, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.ab = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i27.i
  tail call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %3 = mul nuw i32 %.sroa.0.02.i28.i, %.sroa.0.02.i28.i ; 2 uses
  %xtraiter40 = and i32 %3, 7                     ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.02.i28.i, 3
  br i1 %i.ac, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter44 = and i32 %3, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter45 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter45.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  %niter45.next.7 = add i32 %niter45, 8           ; 2 uses
  %niter45.ncmp.7 = icmp eq i32 %niter45.next.7, %unroll_iter44
  br i1 %niter45.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod42.not = icmp eq i32 %xtraiter40, 0
  br i1 %lcmp.mod42.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod43 = icmp ne i32 %xtraiter40, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter41 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter41.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30
  %epil.iter41.next = add i32 %epil.iter41, 1     ; 2 uses
  %epil.iter41.cmp.not = icmp eq i32 %epil.iter41.next, %xtraiter40
  br i1 %epil.iter41.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !4937

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.ad = add i32 %.sroa.0.02.i28.i, 1
  %i.ae = load atomic ptr, ptr %.sroa.011.147.i acquire, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph.i27.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, %bb.h
  %i.ag = load atomic ptr, ptr %.sroa.011.147.i acquire, align 8
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 4224, i64 noundef 8) #30
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph50.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.011.147.i, i64 8
  %i.ai = getelementptr inbounds nuw [136 x i8], ptr %i.ah, i64 %i.y ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

.lr.ph.i29.i:                                     ; preds = %bb.k, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i
  %.sroa.0.02.i30.i = phi i32 [ %i.ap, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i ], [ 0, %bb.k ] ; 6 uses
  %i.an = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i29.i
  tail call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i

bb.m:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i32.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i32.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, label %.lr.ph.i.i33.i.preheader

.lr.ph.i.i33.i.preheader:                         ; preds = %bb.m
  %4 = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter32 = and i32 %4, 7                     ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.ao, label %.lr.ph.i.i33.i.epil.preheader, label %.lr.ph.i.i33.i.preheader.new

.lr.ph.i.i33.i.preheader.new:                     ; preds = %.lr.ph.i.i33.i.preheader
  %unroll_iter36 = and i32 %4, 56
  br label %.lr.ph.i.i33.i

.lr.ph.i.i33.i:                                   ; preds = %.lr.ph.i.i33.i, %.lr.ph.i.i33.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i33.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i33.i ]
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa, label %.lr.ph.i.i33.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i33.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, label %.lr.ph.i.i33.i.epil.preheader

.lr.ph.i.i33.i.epil.preheader:                    ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa, %.lr.ph.i.i33.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i33.i.epil

.lr.ph.i.i33.i.epil:                              ; preds = %.lr.ph.i.i33.i.epil, %.lr.ph.i.i33.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i33.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i33.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, label %.lr.ph.i.i33.i.epil, !llvm.loop !4938

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa, %.lr.ph.i.i33.i.epil, %bb.m, %bb.l
  %i.ap = add i32 %.sroa.0.02.i30.i, 1
  %i.aq = load atomic i64, ptr %i.aj acquire, align 8
  %i.ar = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, %bb.k
  tail call fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef align 8 dereferenceable(128) %i.ai)
  br label %bb.n

bb.n:                                             ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i", %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"
  %.sroa.011.2.i = phi ptr [ %.sroa.011.147.i, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i" ], [ %i.ag, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i" ] ; 2 uses
  %i.at = add i64 %.sroa.05.048.i, 2              ; 3 uses
  %i.au = lshr i64 %i.at, 1                       ; 2 uses
  %.not19.i = icmp eq i64 %i.au, %i.l
  br i1 %.not19.i, label %._crit_edge51.i, label %.lr.ph50.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf32fc90c04a5965dE.exit": ; preds = %._crit_edge51.i, %bb.g
  %i.av = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.av, ptr %0 release, align 128
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf32fc90c04a5965dE.exit"
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17hbf09def2e542d9baE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.524 = alloca [112 x i8], align 8         ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h5dfd234b3fbb79b8E") ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_ZN3std4sync4mpmc7context7Context4with17hee15f9cad757fa41E.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4939)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !4939 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !4939 ; 9 uses
  %i.r = lshr i64 %i.p, 1                         ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.backedge.i
  %i.u = add i64 %i.p, 2                          ; 2 uses
  %i.v = and i64 %i.p, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.j

bb.d:                                             ; preds = %.backedge.i
  %i.x = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !4939
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.y = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter99 = and i32 %i.y, 7                   ; 3 uses
  %i.z = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.z, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter103 = and i32 %i.y, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter104 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter104.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %niter104.next.7 = add i32 %niter104, 8         ; 2 uses
  %niter104.ncmp.7 = icmp eq i32 %niter104.next.7, %unroll_iter103
  br i1 %niter104.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod101.not = icmp eq i32 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod102 = icmp ne i32 %xtraiter99, 0
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter100 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter100.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %epil.iter100.next = add i32 %epil.iter100, 1   ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99
  br i1 %epil.iter100.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4942

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.e
  %i.aa = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.g:                                             ; preds = %bb.c
  fence seq_cst
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !4939 ; 3 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.r, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.unshifted.i = xor i64 %i.ab, %i.p
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.ae = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.u, %i.ae
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.af = and i64 %i.ab, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit.thread"

bb.j:                                             ; preds = %bb.h, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.u, %bb.c ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ah = icmp eq ptr %i.q, null
  br i1 %i.ah, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !4939
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i

bb.m:                                             ; preds = %bb.k
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.m
  %i.aj = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter93 = and i32 %i.aj, 7                  ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ak, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter97 = and i32 %i.aj, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter98.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %niter98.next.7 = add i32 %niter98, 8           ; 2 uses
  %niter98.ncmp.7 = icmp eq i32 %niter98.next.7, %unroll_iter97
  br i1 %niter98.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i.loopexit.unr-lcssa, label %.lr.ph.i19.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i
  %lcmp.mod95.not = icmp eq i32 %xtraiter93, 0
  br i1 %lcmp.mod95.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, label %.lr.ph.i19.i.epil.preheader

.lr.ph.i19.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.preheader
  %lcmp.mod96 = icmp ne i32 %xtraiter93, 0
  call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.i19.i.epil

.lr.ph.i19.i.epil:                                ; preds = %.lr.ph.i19.i.epil, %.lr.ph.i19.i.epil.preheader
  %epil.iter94 = phi i32 [ 0, %.lr.ph.i19.i.epil.preheader ], [ %epil.iter94.next, %.lr.ph.i19.i.epil ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %epil.iter94.next = add i32 %epil.iter94, 1     ; 2 uses
  %epil.iter94.cmp.not = icmp eq i32 %epil.iter94.next, %xtraiter93
  br i1 %epil.iter94.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !4943

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.al = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.am = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !4939
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %i.ao = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
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
  %lcmp.mod92 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.i24.i.epil

.lr.ph.i24.i.epil:                                ; preds = %.lr.ph.i24.i.epil, %.lr.ph.i24.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.epil ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !4944

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aq = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.037.i.be = phi i32 [ %i.aa, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ %i.al, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i ], [ %i.aq, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.ar = icmp eq i64 %i.s, 30
  br i1 %i.ar, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.as = load atomic ptr, ptr %i.q acquire, align 8, !noalias !4939 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

.lr.ph.i29.i:                                     ; preds = %bb.q, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.aw, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.au = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i29.i
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !4939
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %4 = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter105 = and i32 %4, 7                    ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter109 = and i32 %4, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %niter110.next.7 = add i32 %niter110, 8         ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4939
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !4945

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i30.i, 1
  %i.ax = load atomic ptr, ptr %i.q acquire, align 8, !noalias !4939 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.as, %bb.q ], [ %i.ax, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !4939
  %i.bc = icmp ne ptr %i.bb, null
  %i.bd = zext i1 %i.bc to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.bd
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !4939
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !4939
  br label %bb.t

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit": ; preds = %bb.i
  %i.be = load i32, ptr %i.i, align 8, !range !4946, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.be, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i", %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !4939
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !4939
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bg = getelementptr inbounds nuw [136 x i8], ptr %i.bf, i64 %i.s ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !4947
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i4, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

.lr.ph.i.i4:                                      ; preds = %bb.t, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6
  %.sroa.0.02.i.i5 = phi i32 [ %i.bn, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6 ], [ 0, %bb.t ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i5, 7
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i4
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !4947
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6

bb.v:                                             ; preds = %.lr.ph.i.i4
  %.not.i.i.i7 = icmp eq i32 %.sroa.0.02.i.i5, 0
  br i1 %.not.i.i.i7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.v
  %5 = mul nuw i32 %.sroa.0.02.i.i5, %.sroa.0.02.i.i5 ; 2 uses
  %xtraiter113 = and i32 %5, 7                    ; 3 uses
  %i.bm = icmp ult i32 %.sroa.0.02.i.i5, 3
  br i1 %i.bm, label %.lr.ph.i.i.i8.epil.preheader, label %.lr.ph.i.i.i8.preheader.new

.lr.ph.i.i.i8.preheader.new:                      ; preds = %.lr.ph.i.i.i8.preheader
  %unroll_iter117 = and i32 %5, 56
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8, %.lr.ph.i.i.i8.preheader.new
  %niter118 = phi i32 [ 0, %.lr.ph.i.i.i8.preheader.new ], [ %niter118.next.7, %.lr.ph.i.i.i8 ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  %niter118.next.7 = add i32 %niter118, 8         ; 2 uses
  %niter118.ncmp.7 = icmp eq i32 %niter118.next.7, %unroll_iter117
  br i1 %niter118.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa, label %.lr.ph.i.i.i8

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8
  %lcmp.mod115.not = icmp eq i32 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, label %.lr.ph.i.i.i8.epil.preheader

.lr.ph.i.i.i8.epil.preheader:                     ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i8.preheader
  %lcmp.mod116 = icmp ne i32 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i8.epil

.lr.ph.i.i.i8.epil:                               ; preds = %.lr.ph.i.i.i8.epil, %.lr.ph.i.i.i8.epil.preheader
  %epil.iter114 = phi i32 [ 0, %.lr.ph.i.i.i8.epil.preheader ], [ %epil.iter114.next, %.lr.ph.i.i.i8.epil ]
  call void @llvm.x86.sse2.pause() #30, !noalias !4947
  %epil.iter114.next = add i32 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i32 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, label %.lr.ph.i.i.i8.epil, !llvm.loop !4950

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i8.epil, %bb.v, %bb.u
  %i.bn = add i32 %.sroa.0.02.i.i5, 1
  %i.bo = load atomic i64, ptr %i.bh acquire, align 8, !noalias !4947
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i4, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, %bb.t
  %.sroa.022.0.copyload = load i64, ptr %i.bg, align 8, !noalias !4947
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.423.0.copyload = load i64, ptr %.sroa.423.0..sroa_idx, align 8, !noalias !4947 ; 2 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.524.0..sroa_idx, i64 112, i1 false)
  %i.br = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 31
  br i1 %i.bs, label %.lr.ph.i2.i, label %bb.w

bb.w:                                             ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"
  %i.bt = atomicrmw or ptr %i.bh, i64 2 acq_rel, align 8, !noalias !4947
  %i.bu = and i64 %i.bt, 4
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %bb.aa

.lr.ph.i2.i:                                      ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i", %bb.z
  %.sroa.0.04.i.i = phi i64 [ %i.ce, %bb.z ], [ 0, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i" ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.sroa.0.04.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 136 ; 2 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8, !noalias !4947
  %i.bz = and i64 %i.by, 2
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %.lr.ph.i2.i.1

bb.x:                                             ; preds = %.lr.ph.i2.i
  %i.cb = atomicrmw or ptr %i.bx, i64 4 acq_rel, align 8, !noalias !4947
  %i.cc = and i64 %i.cb, 2
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.x, %.lr.ph.i2.i
  %i.ce = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.cf = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.sroa.0.04.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 272 ; 2 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8, !noalias !4947
  %i.ci = and i64 %i.ch, 2
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i2.i.1
  %i.ck = atomicrmw or ptr %i.cg, i64 4 acq_rel, align 8, !noalias !4947
  %i.cl = and i64 %i.ck, 2
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i2.i.1
  %exitcond.not.i.i3.1 = icmp eq i64 %i.ce, 30
  br i1 %exitcond.not.i.i3.1, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i", label %.lr.ph.i2.i

bb.aa:                                            ; preds = %bb.w
  %i.cn = icmp samesign ult i64 %i.s, 29
  br i1 %i.cn, label %.lr.ph.i4.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i"

.lr.ph.i4.i:                                      ; preds = %bb.aa, %bb.ac
  %.sroa.0.04.i5.i = phi i64 [ %i.co, %bb.ac ], [ %i.br, %bb.aa ] ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.0.04.i5.i, 1     ; 2 uses
  %i.cp = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.sroa.0.04.i5.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 136 ; 2 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8, !noalias !4947
  %i.cs = and i64 %i.cr, 2
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i4.i
  %i.cu = atomicrmw or ptr %i.cq, i64 4 acq_rel, align 8, !noalias !4947
  %i.cv = and i64 %i.cu, 2
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.co, 30
  br i1 %exitcond.not.i6.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i", label %.lr.ph.i4.i

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i": ; preds = %bb.ac, %bb.z, %bb.aa
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 4224, i64 noundef 8) #30, !noalias !4947
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit": ; preds = %bb.ab, %bb.x, %bb.y, %bb.w, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i"
  %i.cx = icmp eq i64 %.sroa.423.0.copyload, -9223372036854775807
  br i1 %i.cx, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit.thread", label %bb.au

bb.ad:                                            ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit"
  %i.cy = load i64, ptr %i.h, align 8, !noundef !13 ; 2 uses
  %i.cz = call { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE() ; 2 uses
  %i.da = extractvalue { i64, i32 } %i.cz, 0      ; 2 uses
  %i.db = icmp eq i64 %i.da, %i.cy
  br i1 %i.db, label %.split, label %bb.ar

bb.ae:                                            ; preds = %.split, %bb.ar, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4951
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.417.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dc = load i8, ptr %i.o, align 8, !range !1073, !noalias !4954, !noundef !13
  %i.dd = icmp eq i8 %i.dc, 1
  br i1 %i.dd, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !85

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.ae
  %i.de = call noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !4951 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5e1917bd452de83bE.exit.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, %bb.ae
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.de, %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i ], [ %i.n, %bb.ae ] ; 4 uses
  %i.dg = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !4951, !noundef !13 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !4951
  %.not.i.i.i11 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i11, label %bb.af, label %bb.al, !prof !33

bb.af:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4951
  %i.dh = call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E(), !noalias !4951 ; 2 uses
  store ptr %i.dh, ptr %i.e, align 8, !noalias !4951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4951
  store ptr %i.g, ptr %i.c, align 8, !noalias !4951
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h23a1a6e0734c2ff7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.dh)
          to label %bb.ai unwind label %bb.ag, !noalias !4951

bb.ag:                                            ; preds = %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4961)
  call void @llvm.experimental.noalias.scope.decl(metadata !4964)
  call void @llvm.experimental.noalias.scope.decl(metadata !4967)
  %i.dj = load ptr, ptr %i.e, align 8, !alias.scope !4970, !noalias !4951, !nonnull !13, !noundef !13
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !4971
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.ah, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit.i.i.i"

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit.i.i.i" unwind label %bb.ak, !noalias !4951

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4951
  call void @llvm.experimental.noalias.scope.decl(metadata !4972)
  call void @llvm.experimental.noalias.scope.decl(metadata !4975)
  call void @llvm.experimental.noalias.scope.decl(metadata !4978)
  %i.dm = load ptr, ptr %i.e, align 8, !alias.scope !4981, !noalias !4951, !nonnull !13, !noundef !13
  %i.dn = atomicrmw sub ptr %i.dm, i64 1 release, align 8, !noalias !4982
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.aj, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !4951
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i": ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4951
  br label %_ZN3std4sync4mpmc7context7Context4with17hee15f9cad757fa41E.exit

bb.ak:                                            ; preds = %bb.aq, %bb.ah
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !4951
  unreachable

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit.i.i.i": ; preds = %bb.aq, %bb.ap, %bb.ah, %bb.ag
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.dw, %bb.ap ], [ %i.di, %bb.ah ], [ %i.dw, %bb.aq ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.al:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4951
  store ptr %i.dg, ptr %i.d, align 8, !noalias !4951
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store atomic i64 0, ptr %i.dq release, align 8, !noalias !4951
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store atomic ptr null, ptr %i.dr release, align 8, !noalias !4951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4951
  store ptr %i.g, ptr %i.b, align 8, !noalias !4951
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h23a1a6e0734c2ff7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dg)
          to label %bb.am unwind label %bb.ap, !noalias !4951

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4951
  %i.ds = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !4951, !noundef !13 ; 3 uses
  store ptr %i.ds, ptr %i.a, align 8, !noalias !4951
  store ptr %i.dg, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !4951
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !noalias !4983
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.ao, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i"

bb.ao:                                            ; preds = %bb.an
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !4951
  br label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h23a1a6e0734c2ff7E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5021
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h0a39386b69d7fcf9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.l), !noalias !5021
  call void @llvm.experimental.noalias.scope.decl(metadata !5024)
  %i.cn = load i64, ptr %i.c, align 8, !range !31, !alias.scope !5024, !noalias !5027, !noundef !13
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %bb.ac, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4", !prof !33

bb.ac:                                            ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5029
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !5024, !noalias !5027, !nonnull !13, !align !82, !noundef !13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cs = load i8, ptr %i.cr, align 8, !range !83, !alias.scope !5024, !noalias !5027, !noundef !13
  store ptr %i.cq, ptr %i.b, align 8, !noalias !5029
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.cs, ptr %i.ct, align 8, !noalias !5029
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @457, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #38
          to label %bb.ae unwind label %bb.ad, !noalias !5030

bb.ad:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr132drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$$GT$17hca07328d973630c7E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #39
          to label %common.resume unwind label %bb.af, !noalias !5030

bb.ae:                                            ; preds = %bb.ac
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5030
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4": ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !5024, !noalias !5027, !nonnull !13, !align !82, !noundef !13 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cz = load i8, ptr %i.cy, align 8, !range !83, !alias.scope !5024, !noalias !5027, !noundef !13 ; 2 uses
  %i.da = trunc nuw i8 %i.cz to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5021
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5031)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5021
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !5031, !noalias !5034, !nonnull !13, !noundef !13 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !5031, !noalias !5034, !noundef !13 ; 4 uses
  %.idx = mul nuw nsw i64 %i.df, 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %.loopexit.i, label %.lr.ph

bb.ag:                                            ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dj = add nuw nsw i64 %i.dm, 1
  %i.dk = icmp eq ptr %i.di, %i.dg
  br i1 %i.dk, label %.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4", %bb.ag
  %i.dl = phi ptr [ %i.di, %bb.ag ], [ %i.dd, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4" ] ; 2 uses
  %i.dm = phi i64 [ %i.dj, %bb.ag ], [ 0, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4" ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !5036, !noalias !5041, !noundef !13
  %.not.i.i.i = icmp eq i64 %i.do, %i.i
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %.lr.ph
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h282fc55680b51578E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.db, i64 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220)
          to label %.noexc.i unwind label %bb.ai, !noalias !5021

.noexc.i:                                         ; preds = %bb.ah
  %.sroa.0.0.copyload10.i = load ptr, ptr %i.a, align 8, !noalias !5046
  %.sroa.5.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx11.i, i64 16, i1 false)
  %.pre.i = load i64, ptr %i.de, align 8, !noalias !5021
  br label %.loopexit.i

bb.ai:                                            ; preds = %bb.ah
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..waker..Waker$GT$$GT$17h61ca16a178f299d1E"(ptr nonnull %i.cx, i8 %i.cz) #39
          to label %common.resume unwind label %bb.ap, !noalias !5021

.loopexit.i:                                      ; preds = %bb.ag, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4", %.noexc.i
  %i.dq = phi i64 [ %.pre.i, %.noexc.i ], [ %i.df, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4" ], [ %i.df, %bb.ag ] ; 2 uses
  %.sroa.0.012.i = phi ptr [ %.sroa.0.0.copyload10.i, %.noexc.i ], [ null, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h328238bf00fa0dd7E.exit.i4" ], [ null, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5021
  %i.dr = icmp ult i64 %i.dq, 384307168202282326
  call void @llvm.assume(i1 %i.dr)
  %i.ds = icmp eq i64 %i.dq, 0
  br i1 %i.ds, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.loopexit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.du = load i64, ptr %i.dt, align 8, !noalias !5021, !noundef !13 ; 2 uses
  %i.dv = icmp ult i64 %i.du, 384307168202282326
  call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp eq i64 %i.du, 0
  %i.dx = zext i1 %i.dw to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit.i
  %.sroa.0.0.i7 = phi i8 [ %i.dx, %bb.aj ], [ 0, %.loopexit.i ]
  store atomic i8 %.sroa.0.0.i7, ptr %i.ay seq_cst, align 8, !noalias !5021
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  br i1 %i.da, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i8, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8, !noalias !5021
  %i.ea = and i64 %i.dz, 9223372036854775807
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i8, label %bb.am, !prof !85

bb.am:                                            ; preds = %bb.al
  %i.ec = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE(), !noalias !5021
  br i1 %i.ec, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i8, label %bb.an

bb.an:                                            ; preds = %bb.am
  store atomic i8 1, ptr %i.dy monotonic, align 4, !noalias !5021
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i8

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i8: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ed = atomicrmw xchg ptr %i.cx, i32 0 release, align 4, !noalias !5021
  %i.ee = icmp eq i32 %i.ed, 2
  br i1 %i.ee, label %bb.ao, label %_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h7d14c547a2ba2184E.exit, !prof !33

bb.ao:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i8
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.cx), !noalias !5021
  br label %_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h7d14c547a2ba2184E.exit

bb.ap:                                            ; preds = %bb.ai
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5021
  unreachable

_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h7d14c547a2ba2184E.exit: ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i.i8, %bb.ao
  %.not = icmp eq ptr %.sroa.0.012.i, null
  br i1 %.not, label %bb.as, label %bb.aq, !prof !33

_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4: ; preds = %.split8.i, %.split8.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  ret void

bb.aq:                                            ; preds = %_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h7d14c547a2ba2184E.exit
  store ptr %.sroa.0.012.i, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  %i.eg = atomicrmw sub ptr %.sroa.0.012.i, i64 1 release, align 8, !noalias !5047
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ar, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4

bb.as:                                            ; preds = %_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h7d14c547a2ba2184E.exit
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h668ab178f907ef20E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.623 = alloca [112 x i8], align 8         ; 10 uses
  %.sroa.6 = alloca [112 x i8], align 8           ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !noalias !5056 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !noalias !5056
  %i.h = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.lr.ph.i, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623)
  %.sroa.019.0.copyload43 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload45 = load i64, ptr %.sroa.5.0..sroa_idx44, align 8
  %.sroa.623.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623.0..sroa_idx46, i64 112, i1 false)
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17hab99178823f17639E.exit"

.lr.ph.lr.ph.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.outer.backedge.i, %.lr.ph.lr.ph.i
  %.sroa.03.0.ph87.i = phi i64 [ %i.e, %.lr.ph.lr.ph.i ], [ %i.ag, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph86.i = phi ptr [ %i.g, %.lr.ph.lr.ph.i ], [ %i.ah, %.outer.backedge.i ]
  %.sroa.0.0.ph85.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %.sroa.044.0.ph84.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.044.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.0.ph87.i, 1
  %i.l = and i64 %i.k, 31                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 31
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.loopexit.i
  %i.n = add i32 %.sroa.0.080.i90, 1              ; 2 uses
  %i.o = lshr exact i64 %i.ak, 1
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 31
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.082.i.lcssa = phi i64 [ %.sroa.03.0.ph87.i, %.lr.ph.i ], [ %i.ak, %bb.b ] ; 2 uses
  %.sroa.07.081.i.lcssa = phi ptr [ %.sroa.07.0.ph86.i, %.lr.ph.i ], [ %i.al, %bb.b ] ; 2 uses
  %.sroa.0.080.i.lcssa = phi i32 [ %.sroa.0.0.ph85.i, %.lr.ph.i ], [ %i.n, %bb.b ] ; 6 uses
  %.lcssa68 = phi i64 [ %i.l, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %.not65.i = icmp eq i64 %.lcssa68, 30           ; 2 uses
  %.not.i = icmp eq ptr %.sroa.044.0.ph84.i, null
  %or.cond.i = select i1 %.not65.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i"

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.b
  %.sroa.0.080.i90 = phi i32 [ %i.n, %bb.b ], [ %.sroa.0.0.ph85.i, %.lr.ph.i ] ; 6 uses
  %i.r = icmp ult i32 %.sroa.0.080.i90, 7
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %.loopexit.i unwind label %.loopexit66.i, !noalias !5056

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.080.i90, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %5 = mul nuw i32 %.sroa.0.080.i90, %.sroa.0.080.i90 ; 2 uses
  %xtraiter = and i32 %5, 7                       ; 3 uses
  %i.s = icmp ult i32 %.sroa.0.080.i90, 3
  br i1 %i.s, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i": ; preds = %bb.e, %._crit_edge
  %.sroa.044.1.i = phi ptr [ %.sroa.044.0.ph84.i, %._crit_edge ], [ %i.u, %bb.e ] ; 9 uses
  %i.t = icmp eq ptr %.sroa.07.081.i.lcssa, null
  br i1 %i.t, label %bb.f, label %bb.k

bb.e:                                             ; preds = %._crit_edge
  %i.u = invoke noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_zeroed_in17h555a8c133f98e836E"()
          to label %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i" unwind label %.body.loopexit

bb.f:                                             ; preds = %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i"
  %i.v = invoke noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_zeroed_in17h555a8c133f98e836E"()
          to label %bb.g unwind label %.loopexit.split-lp.i, !noalias !5056 ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.w = cmpxchg ptr %i.f, ptr null, ptr %i.v release monotonic, align 8, !noalias !5056
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store atomic ptr %i.v, ptr %i.j release, align 8, !noalias !5056
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq ptr %.sroa.044.1.i, null
  br i1 %i.y, label %.outer.backedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.1.i, i64 noundef 4224, i64 noundef 8) #30, !noalias !5056
  br label %.outer.backedge.i

bb.k:                                             ; preds = %bb.h, %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i"
  %.sroa.07.1.i = phi ptr [ %.sroa.07.081.i.lcssa, %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i" ], [ %i.v, %bb.h ] ; 3 uses
  %i.z = add i64 %.sroa.03.082.i.lcssa, 2
  %i.aa = cmpxchg weak ptr %i.d, i64 %.sroa.03.082.i.lcssa, i64 %i.z seq_cst acquire, align 8, !noalias !5056
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.080.i.lcssa, i32 6) ; 2 uses
  %i.ac = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i31.i = icmp eq i32 %.sroa.0.080.i.lcssa, 0
  br i1 %.not.i31.i, label %.outer.backedge.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %bb.l
  %xtraiter195 = and i32 %i.ac, 5                 ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.080.i.lcssa, 3
  br i1 %i.ad, label %.lr.ph.i32.i.epil.preheader, label %.lr.ph.i32.i.preheader.new

.lr.ph.i32.i.preheader.new:                       ; preds = %.lr.ph.i32.i.preheader
  %unroll_iter199 = and i32 %i.ac, 56
  br label %.lr.ph.i32.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i32.i
  %lcmp.mod197.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i32.i.epil.preheader

.lr.ph.i32.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i32.i.preheader
  %lcmp.mod198 = icmp ne i32 %xtraiter195, 0
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.i32.i.epil

.lr.ph.i32.i.epil:                                ; preds = %.lr.ph.i32.i.epil, %.lr.ph.i32.i.epil.preheader
  %epil.iter196 = phi i32 [ 0, %.lr.ph.i32.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i32.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  %epil.iter196.next = add i32 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i32 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i32.i.epil, !llvm.loop !5059

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i32.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ae = add i32 %.sroa.0.080.i.lcssa, 1
  br label %.outer.backedge.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i, %.lr.ph.i32.i.preheader.new
  %niter200 = phi i32 [ 0, %.lr.ph.i32.i.preheader.new ], [ %niter200.next.7, %.lr.ph.i32.i ]
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  %niter200.next.7 = add i32 %niter200, 8         ; 2 uses
  %niter200.ncmp.7 = icmp eq i32 %niter200.next.7, %unroll_iter199
  br i1 %niter200.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i32.i

bb.m:                                             ; preds = %bb.k
  br i1 %.not65.i, label %bb.n, label %.critedge.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread49": ; preds = %bb.n
  store atomic ptr %.sroa.044.1.i, ptr %i.f release, align 8, !noalias !5056
  %i.af = atomicrmw add ptr %i.d, i64 2 release, align 8, !noalias !5056 ; 0 uses
  store atomic ptr %.sroa.044.1.i, ptr %.sroa.07.1.i release, align 8, !noalias !5056
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623)
  %.sroa.019.0.copyload52 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload54 = load i64, ptr %.sroa.5.0..sroa_idx53, align 8
  %.sroa.623.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623.0..sroa_idx55, i64 112, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.044.1.i, null
  br i1 %.not15.i, label %bb.o, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread49", !prof !33

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #38
          to label %.noexc5 unwind label %.body.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

.outer.backedge.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.l, %bb.j, %bb.i
  %.sroa.044.0.ph.be.i = phi ptr [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ %.sroa.044.1.i, %bb.l ], [ %.sroa.044.1.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.080.i.lcssa, %bb.j ], [ %.sroa.0.080.i.lcssa, %bb.i ], [ 1, %bb.l ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  %i.ag = load atomic i64, ptr %i.d acquire, align 128, !noalias !5056 ; 2 uses
  %i.ah = load atomic ptr, ptr %i.f acquire, align 8, !noalias !5056
  %i.ai = and i64 %i.ag, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i, label %.critedge.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod194 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30, !noalias !5056
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !5060

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.d, %bb.c
  %i.ak = load atomic i64, ptr %i.d acquire, align 128, !noalias !5056 ; 3 uses
  %i.al = load atomic ptr, ptr %i.f acquire, align 8, !noalias !5056
  %i.am = and i64 %i.ak, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.b, label %.critedge.i

.loopexit66.i:                                    ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit66.i
  %.sroa.044.2.ph.i = phi ptr [ %.sroa.044.0.ph84.i, %.loopexit66.i ], [ %.sroa.044.1.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit66.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.044.2.ph.i, null
  br i1 %i.ao, label %.body.thread, label %.thread56.i

.thread56.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.2.ph.i, i64 noundef 4224, i64 noundef 8) #30, !noalias !5056
  br label %.body.thread

.critedge.i:                                      ; preds = %.outer.backedge.i, %.loopexit.i, %bb.m
  %.sroa.9.0 = phi i64 [ %.lcssa68, %bb.m ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.412.0 = phi ptr [ %.sroa.07.1.i, %bb.m ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.044.3.i = phi ptr [ %.sroa.044.1.i, %bb.m ], [ %.sroa.044.0.ph84.i, %.loopexit.i ], [ %.sroa.044.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.044.3.i, null
  br i1 %i.ap, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit", label %bb.q

bb.q:                                             ; preds = %.critedge.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.3.i, i64 noundef 4224, i64 noundef 8) #30, !noalias !5056
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit"

.body.loopexit:                                   ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.loopexit.split-lp:                          ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
end_hunk_1
