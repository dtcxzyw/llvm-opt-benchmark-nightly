inline.NumInlined: 4750
inline.NumDeleted: 2179
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20disconnect_receivers17he07f40d757a57fd3E":bb.a
  %i.bk = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bk, ptr %0 release, align 128
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
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %4, 5                       ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %4, 56
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
  %i.ap = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.037.i.be = phi i32 [ %i.aa, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ %i.al, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
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
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = load atomic ptr, ptr %i.q acquire, align 8, !noalias !4939 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

.lr.ph.i29.i:                                     ; preds = %bb.q, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i
  %loop-unroll.iv = phi i32 [ %loop-unroll.iv.next, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %.sroa.0.02.i30.i = phi i32 [ %i.ay, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.q ] ; 4 uses
  %i.at = shl i32 %.sroa.0.02.i30.i, 1
  %i.au = or i32 %i.at, 1
  %i.av = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i29.i
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !4939
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.aw = add i32 %loop-unroll.iv, -1
  %xtraiter105 = and i32 %loop-unroll.iv, 7       ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 7
  br i1 %i.ax, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter109 = and i32 %loop-unroll.iv, -8
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
  %i.ay = add i32 %.sroa.0.02.i30.i, 1
  %i.az = load atomic ptr, ptr %i.q acquire, align 8, !noalias !4939 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.au
  br i1 %i.ba, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.az, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ] ; 2 uses
  %i.bb = and i64 %.sroa.01.0.i, -2
  %i.bc = add i64 %i.bb, 2
  %i.bd = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !4939
  %i.be = icmp ne ptr %i.bd, null
  %i.bf = zext i1 %i.be to i64
  %spec.select17.i = or disjoint i64 %i.bc, %i.bf
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !4939
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !4939
  br label %bb.t

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit": ; preds = %bb.i
  %i.bg = load i32, ptr %i.i, align 8, !range !4946, !noundef !13 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i", %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !4939
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !4939
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bi = getelementptr inbounds nuw [136 x i8], ptr %i.bh, i64 %i.s ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 3 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8, !noalias !4947
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i4, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

.lr.ph.i.i4:                                      ; preds = %bb.t, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6
  %loop-unroll.iv111 = phi i32 [ %loop-unroll.iv.next112, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6 ], [ 0, %bb.t ] ; 4 uses
  %.sroa.0.02.i.i5 = phi i32 [ %i.bs, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6 ], [ 0, %bb.t ] ; 4 uses
  %i.bn = shl i32 %.sroa.0.02.i.i5, 1
  %i.bo = or i32 %i.bn, 1
  %i.bp = icmp ult i32 %.sroa.0.02.i.i5, 7
  br i1 %i.bp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i4
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !4947
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6

bb.v:                                             ; preds = %.lr.ph.i.i4
  %.not.i.i.i7 = icmp eq i32 %.sroa.0.02.i.i5, 0
  br i1 %.not.i.i.i7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.v
  %i.bq = add i32 %loop-unroll.iv111, -1
  %xtraiter113 = and i32 %loop-unroll.iv111, 7    ; 3 uses
  %i.br = icmp ult i32 %i.bq, 7
  br i1 %i.br, label %.lr.ph.i.i.i8.epil.preheader, label %.lr.ph.i.i.i8.preheader.new

.lr.ph.i.i.i8.preheader.new:                      ; preds = %.lr.ph.i.i.i8.preheader
  %unroll_iter117 = and i32 %loop-unroll.iv111, -8
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
end_hunk_0
begin_hunk_1_@"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h23a1a6e0734c2ff7E":bb.a
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
  %.sroa.03.0.ph87.i = phi i64 [ %i.e, %.lr.ph.lr.ph.i ], [ %i.al, %.outer.backedge.i ] ; 2 uses
  %.sroa.07.0.ph86.i = phi ptr [ %i.g, %.lr.ph.lr.ph.i ], [ %i.am, %.outer.backedge.i ]
  %.sroa.0.0.ph85.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.0.0.ph.be.i, %.outer.backedge.i ] ; 5 uses
  %.sroa.044.0.ph84.i = phi ptr [ null, %.lr.ph.lr.ph.i ], [ %.sroa.044.0.ph.be.i, %.outer.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.0.ph87.i, 1
  %i.l = and i64 %i.k, 31                         ; 2 uses
  %i.m = icmp eq i64 %i.l, 31
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.n = mul i32 %.sroa.0.0.ph85.i, %.sroa.0.0.ph85.i
  %i.o = shl i32 %.sroa.0.0.ph85.i, 1
  %i.p = or i32 %i.o, 1
  br label %.lr.ph

bb.b:                                             ; preds = %.loopexit.i
  %i.q = add i32 %.sroa.0.080.i90, 1              ; 2 uses
  %i.r = lshr exact i64 %i.ap, 1
  %i.s = and i64 %i.r, 31                         ; 2 uses
  %i.t = icmp eq i64 %i.s, 31
  %indvar.next = add i32 %indvar, 1
  %loop-unroll.iv.next = add i32 %loop-unroll.iv, %i.v
  br i1 %i.t, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.i
  %.sroa.03.082.i.lcssa = phi i64 [ %.sroa.03.0.ph87.i, %.lr.ph.i ], [ %i.ap, %bb.b ] ; 2 uses
  %.sroa.07.081.i.lcssa = phi ptr [ %.sroa.07.0.ph86.i, %.lr.ph.i ], [ %i.aq, %bb.b ] ; 2 uses
  %.sroa.0.080.i.lcssa = phi i32 [ %.sroa.0.0.ph85.i, %.lr.ph.i ], [ %i.q, %bb.b ] ; 6 uses
  %.lcssa68 = phi i64 [ %i.l, %.lr.ph.i ], [ %i.s, %bb.b ] ; 2 uses
  %.not65.i = icmp eq i64 %.lcssa68, 30           ; 2 uses
  %.not.i = icmp eq ptr %.sroa.044.0.ph84.i, null
  %or.cond.i = select i1 %.not65.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i"

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %loop-unroll.iv = phi i32 [ %i.n, %.lr.ph.preheader ], [ %loop-unroll.iv.next, %bb.b ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %bb.b ] ; 2 uses
  %.sroa.0.080.i90 = phi i32 [ %.sroa.0.0.ph85.i, %.lr.ph.preheader ], [ %i.q, %bb.b ] ; 3 uses
  %i.u = shl i32 %indvar, 1
  %i.v = add i32 %i.p, %i.u
  %i.w = icmp ult i32 %.sroa.0.080.i90, 7
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %.loopexit.i unwind label %.loopexit66.i, !noalias !5056

bb.d:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %.sroa.0.080.i90, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.x = add i32 %loop-unroll.iv, -1
  %xtraiter = and i32 %loop-unroll.iv, 7          ; 3 uses
  %i.y = icmp ult i32 %i.x, 7
  br i1 %i.y, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %loop-unroll.iv, -8
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
  %.sroa.044.1.i = phi ptr [ %.sroa.044.0.ph84.i, %._crit_edge ], [ %i.aa, %bb.e ] ; 9 uses
  %i.z = icmp eq ptr %.sroa.07.081.i.lcssa, null
  br i1 %i.z, label %bb.f, label %bb.k

bb.e:                                             ; preds = %._crit_edge
  %i.aa = invoke noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_zeroed_in17h555a8c133f98e836E"()
          to label %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i" unwind label %.body.loopexit

bb.f:                                             ; preds = %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i"
  %i.ab = invoke noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_zeroed_in17h555a8c133f98e836E"()
          to label %bb.g unwind label %.loopexit.split-lp.i, !noalias !5056 ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = cmpxchg ptr %i.f, ptr null, ptr %i.ab release monotonic, align 8, !noalias !5056
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store atomic ptr %i.ab, ptr %i.j release, align 8, !noalias !5056
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %.sroa.044.1.i, null
  br i1 %i.ae, label %.outer.backedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.1.i, i64 noundef 4224, i64 noundef 8) #30, !noalias !5056
  br label %.outer.backedge.i

bb.k:                                             ; preds = %bb.h, %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i"
  %.sroa.07.1.i = phi ptr [ %.sroa.07.081.i.lcssa, %"_ZN4core3ptr211drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$$GT$$GT$$GT$17h5909951d5852c9dcE.exit.i" ], [ %i.ab, %bb.h ] ; 3 uses
  %i.af = add i64 %.sroa.03.082.i.lcssa, 2
  %i.ag = cmpxchg weak ptr %i.d, i64 %.sroa.03.082.i.lcssa, i64 %i.af seq_cst acquire, align 8, !noalias !5056
  %i.ah = extractvalue { i64, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.080.i.lcssa, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i31.i = icmp eq i32 %.sroa.0.080.i.lcssa, 0
  br i1 %.not.i31.i, label %.outer.backedge.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %bb.l
  %xtraiter195 = and i32 %5, 5                    ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.080.i.lcssa, 3
  br i1 %i.ai, label %.lr.ph.i32.i.epil.preheader, label %.lr.ph.i32.i.preheader.new

.lr.ph.i32.i.preheader.new:                       ; preds = %.lr.ph.i32.i.preheader
  %unroll_iter199 = and i32 %5, 56
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
  %i.aj = add i32 %.sroa.0.080.i.lcssa, 1
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
  %i.ak = atomicrmw add ptr %i.d, i64 2 release, align 8, !noalias !5056 ; 0 uses
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
  %.sroa.044.0.ph.be.i = phi ptr [ %i.ab, %bb.j ], [ %i.ab, %bb.i ], [ %.sroa.044.1.i, %bb.l ], [ %.sroa.044.1.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i = phi i32 [ %.sroa.0.080.i.lcssa, %bb.j ], [ %.sroa.0.080.i.lcssa, %bb.i ], [ 1, %bb.l ], [ %i.aj, %._crit_edge.loopexit.i.i ]
  %i.al = load atomic i64, ptr %i.d acquire, align 128, !noalias !5056 ; 2 uses
  %i.am = load atomic ptr, ptr %i.f acquire, align 8, !noalias !5056
  %i.an = and i64 %i.al, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i, label %.critedge.i

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
  %i.ap = load atomic i64, ptr %i.d acquire, align 128, !noalias !5056 ; 3 uses
  %i.aq = load atomic ptr, ptr %i.f acquire, align 8, !noalias !5056
  %i.ar = and i64 %i.ap, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.b, label %.critedge.i

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
  %i.at = icmp eq ptr %.sroa.044.2.ph.i, null
  br i1 %i.at, label %.body.thread, label %.thread56.i

.thread56.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.044.2.ph.i, i64 noundef 4224, i64 noundef 8) #30, !noalias !5056
  br label %.body.thread

.critedge.i:                                      ; preds = %.outer.backedge.i, %.loopexit.i, %bb.m
  %.sroa.9.0 = phi i64 [ %.lcssa68, %bb.m ], [ 0, %.loopexit.i ], [ 0, %.outer.backedge.i ]
  %.sroa.412.0 = phi ptr [ %.sroa.07.1.i, %bb.m ], [ null, %.loopexit.i ], [ null, %.outer.backedge.i ] ; 2 uses
  %.sroa.044.3.i = phi ptr [ %.sroa.044.1.i, %bb.m ], [ %.sroa.044.0.ph84.i, %.loopexit.i ], [ %.sroa.044.0.ph.be.i, %.outer.backedge.i ] ; 2 uses
  %i.au = icmp eq ptr %.sroa.044.3.i, null
  br i1 %i.au, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit", label %bb.q

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
  br label %.body.thread

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit": ; preds = %bb.q, %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623)
  %.sroa.019.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623.0..sroa_idx, i64 112, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5064)
  %i.av = icmp eq ptr %.sroa.412.0, null
  br i1 %i.av, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17hab99178823f17639E.exit", label %bb.r

bb.r:                                             ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread49", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit"
  %.sroa.5.0.copyload59 = phi i64 [ %.sroa.5.0.copyload54, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread49" ], [ %.sroa.5.0.copyload, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit" ]
  %.sroa.019.0.copyload58 = phi i64 [ %.sroa.019.0.copyload52, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread49" ], [ %.sroa.019.0.copyload, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit" ]
  %.sroa.412.157 = phi ptr [ %.sroa.07.1.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread49" ], [ %.sroa.412.0, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit" ]
  %.sroa.9.156 = phi i64 [ 30, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit.thread49" ], [ %.sroa.9.0, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h6eae73d9ce66a9ebE.exit" ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.412.157, i64 8
  %i.ax = icmp samesign ult i64 %.sroa.9.156, 31
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [136 x i8], ptr %i.aw, i64 %.sroa.9.156 ; 4 uses
  store i64 %.sroa.019.0.copyload58, ptr %i.ay, align 8, !noalias !5061
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.5.0.copyload59, ptr %.sroa.5.0..sroa_idx21, align 8, !noalias !5061
  %.sroa.623.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623.0..sroa_idx24, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623, i64 112, i1 false), !noalias !5061
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = atomicrmw or ptr %i.az, i64 1 release, align 8, !noalias !5066 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.bc = load atomic i8, ptr %i.bb seq_cst, align 8, !noalias !5066
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %.noexc6, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17hab99178823f17639E.exit.thread"

.noexc6:                                          ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5066
  call void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h0a39386b69d7fcf9E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.be)
  call void @llvm.experimental.noalias.scope.decl(metadata !5067)
  %i.bf = load i64, ptr %i.c, align 8, !range !31, !alias.scope !5067, !noalias !5070, !noundef !13
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.s, label %bb.x, !prof !33

bb.s:                                             ; preds = %.noexc6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5072
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !5067, !noalias !5070, !nonnull !13, !align !82, !noundef !13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !range !83, !alias.scope !5067, !noalias !5070, !noundef !13
  store ptr %i.bi, ptr %i.a, align 8, !noalias !5072
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.bk, ptr %i.bl, align 8, !noalias !5072
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @457, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #38
          to label %bb.u unwind label %bb.t, !noalias !5073

bb.t:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
end_hunk_1
