Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20disconnect_receivers17he07f40d757a57fd3E":bb.a

bb.g:                                             ; preds = %._crit_edge51.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 4224, i64 noundef 8) #30
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf32fc90c04a5965dE.exit"

bb.h:                                             ; preds = %.lr.ph50.i
  %i.ab = load atomic ptr, ptr %.sroa.011.147.i acquire, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.lr.ph.i27.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

.lr.ph.i27.i:                                     ; preds = %bb.h, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i
  %.sroa.0.02.i28.i = phi i32 [ %i.ag, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.h ] ; 6 uses
  %i.ad = icmp ult i32 %.sroa.0.02.i28.i, 7
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i27.i
  tail call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i27.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i28.i, 0
  br i1 %.not.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.j
  %i.ae = mul nuw i32 %.sroa.0.02.i28.i, %.sroa.0.02.i28.i ; 2 uses
  %xtraiter34 = and i32 %i.ae, 7                  ; 3 uses
  %i.af = icmp ult i32 %.sroa.0.02.i28.i, 3
  br i1 %i.af, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter38 = and i32 %i.ae, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter39 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter39.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  %niter39.next.7 = add i32 %niter39, 8           ; 2 uses
  %niter39.ncmp.7 = icmp eq i32 %niter39.next.7, %unroll_iter38
  br i1 %niter39.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod36.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod36.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod37 = icmp ne i32 %xtraiter34, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter35 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter35.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30
  %epil.iter35.next = add i32 %epil.iter35, 1     ; 2 uses
  %epil.iter35.cmp.not = icmp eq i32 %epil.iter35.next, %xtraiter34
  br i1 %epil.iter35.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !4965

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.j, %bb.i
  %i.ag = add i32 %.sroa.0.02.i28.i, 1
  %i.ah = load atomic ptr, ptr %.sroa.011.147.i acquire, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.lr.ph.i27.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, %bb.h
  %i.aj = load atomic ptr, ptr %.sroa.011.147.i acquire, align 8
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.147.i, i64 noundef 4224, i64 noundef 8) #30
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph50.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.147.i, i64 8
  %i.al = getelementptr inbounds nuw [136 x i8], ptr %i.ak, i64 %i.aa ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8
  %i.ao = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

.lr.ph.i29.i:                                     ; preds = %bb.k, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i
  %.sroa.0.02.i30.i = phi i32 [ %i.at, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i ], [ 0, %bb.k ] ; 6 uses
  %i.aq = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i29.i
  tail call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i

bb.m:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i32.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i32.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, label %.lr.ph.i.i33.i.preheader

.lr.ph.i.i33.i.preheader:                         ; preds = %bb.m
  %i.ar = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter28 = and i32 %i.ar, 7                  ; 3 uses
  %i.as = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.as, label %.lr.ph.i.i33.i.epil.preheader, label %.lr.ph.i.i33.i.preheader.new

.lr.ph.i.i33.i.preheader.new:                     ; preds = %.lr.ph.i.i33.i.preheader
  %unroll_iter32 = and i32 %i.ar, 56
  br label %.lr.ph.i.i33.i

.lr.ph.i.i33.i:                                   ; preds = %.lr.ph.i.i33.i, %.lr.ph.i.i33.i.preheader.new
  %niter33 = phi i32 [ 0, %.lr.ph.i.i33.i.preheader.new ], [ %niter33.next.7, %.lr.ph.i.i33.i ]
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  tail call void @llvm.x86.sse2.pause() #30
  %niter33.next.7 = add i32 %niter33, 8           ; 2 uses
  %niter33.ncmp.7 = icmp eq i32 %niter33.next.7, %unroll_iter32
  br i1 %niter33.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa, label %.lr.ph.i.i33.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i33.i
  %lcmp.mod30.not = icmp eq i32 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, label %.lr.ph.i.i33.i.epil.preheader

.lr.ph.i.i33.i.epil.preheader:                    ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa, %.lr.ph.i.i33.i.preheader
  %lcmp.mod31 = icmp ne i32 %xtraiter28, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.i.i33.i.epil

.lr.ph.i.i33.i.epil:                              ; preds = %.lr.ph.i.i33.i.epil, %.lr.ph.i.i33.i.epil.preheader
  %epil.iter29 = phi i32 [ 0, %.lr.ph.i.i33.i.epil.preheader ], [ %epil.iter29.next, %.lr.ph.i.i33.i.epil ]
  tail call void @llvm.x86.sse2.pause() #30
  %epil.iter29.next = add i32 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i32 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, label %.lr.ph.i.i33.i.epil, !llvm.loop !4966

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i.loopexit.unr-lcssa, %.lr.ph.i.i33.i.epil, %bb.m, %bb.l
  %i.at = add i32 %.sroa.0.02.i30.i, 1
  %i.au = load atomic i64, ptr %i.am acquire, align 8
  %i.av = and i64 %i.au, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i31.i, %bb.k
  tail call fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef align 8 dereferenceable(128) %i.al)
  br label %bb.n

bb.n:                                             ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i", %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"
  %.sroa.011.2.i = phi ptr [ %.sroa.011.147.i, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i" ], [ %i.aj, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i" ] ; 2 uses
  %i.ax = add i64 %.sroa.05.048.i, 2              ; 3 uses
  %i.ay = lshr i64 %i.ax, 1                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ay, %i.m
  br i1 %.not19.i, label %._crit_edge51.i, label %.lr.ph50.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$20discard_all_messages17hf32fc90c04a5965dE.exit": ; preds = %._crit_edge51.i, %bb.g
  %i.az = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.az, ptr %0 release, align 128
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
  call void @llvm.experimental.noalias.scope.decl(metadata !5010)
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.037.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.037.i.be, %.backedge.i.backedge ] ; 16 uses
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !5010 ; 5 uses
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !5010 ; 9 uses
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
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !5010
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
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
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
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  %epil.iter100.next = add i32 %epil.iter100, 1   ; 2 uses
  %epil.iter100.cmp.not = icmp eq i32 %epil.iter100.next, %xtraiter99
  br i1 %epil.iter100.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !4969

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.e
  %i.aa = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.g:                                             ; preds = %bb.c
  fence seq_cst
  %i.ab = load atomic i64, ptr %i.m monotonic, align 128, !noalias !5010 ; 3 uses
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.r, %i.ac
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.unshifted.i = xor i64 %i.ab, %i.p
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %4 = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.u, %4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = and i64 %i.ab, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit.thread"

bb.j:                                             ; preds = %bb.h, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.u, %bb.c ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ag = icmp eq ptr %i.q, null
  br i1 %i.ag, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp ult i32 %.sroa.0.037.i, 7
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !5010
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i

bb.m:                                             ; preds = %bb.k
  %.not.i18.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i18.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.m
  %i.ai = mul nuw i32 %.sroa.0.037.i, %.sroa.0.037.i ; 2 uses
  %xtraiter93 = and i32 %i.ai, 7                  ; 3 uses
  %i.aj = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.aj, label %.lr.ph.i19.i.epil.preheader, label %.lr.ph.i19.i.preheader.new

.lr.ph.i19.i.preheader.new:                       ; preds = %.lr.ph.i19.i.preheader
  %unroll_iter97 = and i32 %i.ai, 56
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i19.i.preheader.new ], [ %niter98.next.7, %.lr.ph.i19.i ]
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
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
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  %epil.iter94.next = add i32 %epil.iter94, 1     ; 2 uses
  %epil.iter94.cmp.not = icmp eq i32 %epil.iter94.next, %xtraiter93
  br i1 %epil.iter94.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, label %.lr.ph.i19.i.epil, !llvm.loop !4970

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i.loopexit.unr-lcssa, %.lr.ph.i19.i.epil, %bb.m, %bb.l
  %i.ak = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

bb.n:                                             ; preds = %bb.j
  %i.al = cmpxchg weak ptr %1, i64 %i.p, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !5010
  %i.am = extractvalue { i64, i1 } %i.al, 1
  br i1 %i.am, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.i.i.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.037.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i23.i = icmp eq i32 %.sroa.0.037.i, 0
  br i1 %.not.i23.i, label %.backedge.i.backedge, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %bb.o
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.037.i, 3
  br i1 %i.ao, label %.lr.ph.i24.i.epil.preheader, label %.lr.ph.i24.i.preheader.new

.lr.ph.i24.i.preheader.new:                       ; preds = %.lr.ph.i24.i.preheader
  %unroll_iter = and i32 %i.an, 56
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
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i24.i.epil, !llvm.loop !4971

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i24.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ap = add i32 %.sroa.0.037.i, 1
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %._crit_edge.loopexit.i.i, %bb.o, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.037.i.be = phi i32 [ %i.aa, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ %i.ak, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit22.i ], [ %i.ap, %._crit_edge.loopexit.i.i ], [ 1, %bb.o ]
  br label %.backedge.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i, %.lr.ph.i24.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i ]
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i24.i

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %i.s, 30
  br i1 %i.aq, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ar = load atomic ptr, ptr %i.q acquire, align 8, !noalias !5010 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

.lr.ph.i29.i:                                     ; preds = %bb.q, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i
  %.sroa.0.02.i30.i = phi i32 [ %i.aw, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ], [ 0, %bb.q ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i30.i, 7
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i29.i
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !5010
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i

bb.s:                                             ; preds = %.lr.ph.i29.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i30.i, 0
  br i1 %.not.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.s
  %i.au = mul nuw i32 %.sroa.0.02.i30.i, %.sroa.0.02.i30.i ; 2 uses
  %xtraiter105 = and i32 %i.au, 7                 ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i30.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter109 = and i32 %i.au, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
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
  call void @llvm.x86.sse2.pause() #30, !noalias !5010
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !4972

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.s, %bb.r
  %i.aw = add i32 %.sroa.0.02.i30.i, 1
  %i.ax = load atomic ptr, ptr %i.q acquire, align 8, !noalias !5010 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i29.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i, %bb.q
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.q ], [ %i.ax, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %5 = add i64 %i.az, 2
  %i.ba = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !5010
  %6 = icmp ne ptr %i.ba, null
  %7 = zext i1 %6 to i64
  %spec.select17.i = or disjoint i64 %5, %7
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !5010
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !5010
  br label %bb.t

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit": ; preds = %bb.i
  %i.bb = load i32, ptr %i.i, align 8, !range !41, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.bb, 1000000000
  br i1 %.not, label %bb.ae, label %bb.ad

bb.t:                                             ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h5f26b368a9ffbaa5E.exit.i", %bb.p
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !5010
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !5010
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bd = getelementptr inbounds nuw [136 x i8], ptr %i.bc, i64 %i.s ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 128 ; 3 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8, !noalias !5011
  %i.bg = and i64 %i.bf, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i4, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

.lr.ph.i.i4:                                      ; preds = %bb.t, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6
  %.sroa.0.02.i.i5 = phi i32 [ %i.bl, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6 ], [ 0, %bb.t ] ; 6 uses
  %i.bi = icmp ult i32 %.sroa.0.02.i.i5, 7
  br i1 %i.bi, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i4
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !5011
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6

bb.v:                                             ; preds = %.lr.ph.i.i4
  %.not.i.i.i7 = icmp eq i32 %.sroa.0.02.i.i5, 0
  br i1 %.not.i.i.i7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, label %.lr.ph.i.i.i8.preheader

.lr.ph.i.i.i8.preheader:                          ; preds = %bb.v
  %i.bj = mul nuw i32 %.sroa.0.02.i.i5, %.sroa.0.02.i.i5 ; 2 uses
  %xtraiter111 = and i32 %i.bj, 7                 ; 3 uses
  %i.bk = icmp ult i32 %.sroa.0.02.i.i5, 3
  br i1 %i.bk, label %.lr.ph.i.i.i8.epil.preheader, label %.lr.ph.i.i.i8.preheader.new

.lr.ph.i.i.i8.preheader.new:                      ; preds = %.lr.ph.i.i.i8.preheader
  %unroll_iter115 = and i32 %i.bj, 56
  br label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %.lr.ph.i.i.i8, %.lr.ph.i.i.i8.preheader.new
  %niter116 = phi i32 [ 0, %.lr.ph.i.i.i8.preheader.new ], [ %niter116.next.7, %.lr.ph.i.i.i8 ]
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  %niter116.next.7 = add i32 %niter116, 8         ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115
  br i1 %niter116.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa, label %.lr.ph.i.i.i8

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i8
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, label %.lr.ph.i.i.i8.epil.preheader

.lr.ph.i.i.i8.epil.preheader:                     ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i8.preheader
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i.i.i8.epil

.lr.ph.i.i.i8.epil:                               ; preds = %.lr.ph.i.i.i8.epil, %.lr.ph.i.i.i8.epil.preheader
  %epil.iter112 = phi i32 [ 0, %.lr.ph.i.i.i8.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i.i.i8.epil ]
  call void @llvm.x86.sse2.pause() #30, !noalias !5011
  %epil.iter112.next = add i32 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, label %.lr.ph.i.i.i8.epil, !llvm.loop !4975

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i8.epil, %bb.v, %bb.u
  %i.bl = add i32 %.sroa.0.02.i.i5, 1
  %i.bm = load atomic i64, ptr %i.be acquire, align 8, !noalias !5011
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i4, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"

"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.i6, %bb.t
  %.sroa.022.0.copyload = load i64, ptr %i.bd, align 8, !noalias !5011
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.423.0.copyload = load i64, ptr %.sroa.423.0..sroa_idx, align 8, !noalias !5011 ; 2 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.524, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.524.0..sroa_idx, i64 112, i1 false)
  %i.bp = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 31
  br i1 %i.bq, label %.lr.ph.i2.i, label %bb.w

bb.w:                                             ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i"
  %i.br = atomicrmw or ptr %i.be, i64 2 acq_rel, align 8, !noalias !5011
  %i.bs = and i64 %i.br, 4
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %bb.aa

.lr.ph.i2.i:                                      ; preds = %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i", %bb.z
  %.sroa.0.04.i.i = phi i64 [ %i.cc, %bb.z ], [ 0, %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17hfe2039289aa8f5b2E.exit.i" ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.sroa.0.04.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !noalias !5011
  %i.bx = and i64 %i.bw, 2
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.x, label %.lr.ph.i2.i.1

bb.x:                                             ; preds = %.lr.ph.i2.i
  %i.bz = atomicrmw or ptr %i.bv, i64 4 acq_rel, align 8, !noalias !5011
  %i.ca = and i64 %i.bz, 2
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %.lr.ph.i2.i.1

.lr.ph.i2.i.1:                                    ; preds = %bb.x, %.lr.ph.i2.i
  %i.cc = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.cd = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.sroa.0.04.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 272 ; 2 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8, !noalias !5011
  %i.cg = and i64 %i.cf, 2
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i2.i.1
  %i.ci = atomicrmw or ptr %i.ce, i64 4 acq_rel, align 8, !noalias !5011
  %i.cj = and i64 %i.ci, 2
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i2.i.1
  %exitcond.not.i.i3.1 = icmp eq i64 %i.cc, 30
  br i1 %exitcond.not.i.i3.1, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i", label %.lr.ph.i2.i

bb.aa:                                            ; preds = %bb.w
  %i.cl = icmp samesign ult i64 %i.s, 29
  br i1 %i.cl, label %.lr.ph.i4.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i"

.lr.ph.i4.i:                                      ; preds = %bb.aa, %bb.ac
  %.sroa.0.04.i5.i = phi i64 [ %i.cm, %bb.ac ], [ %i.bp, %bb.aa ] ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.0.04.i5.i, 1     ; 2 uses
  %i.cn = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.sroa.0.04.i5.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 136 ; 2 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8, !noalias !5011
  %i.cq = and i64 %i.cp, 2
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i4.i
  %i.cs = atomicrmw or ptr %i.co, i64 4 acq_rel, align 8, !noalias !5011
  %i.ct = and i64 %i.cs, 2
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i4.i
  %exitcond.not.i6.i = icmp eq i64 %i.cm, 30
  br i1 %exitcond.not.i6.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i", label %.lr.ph.i4.i

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i": ; preds = %bb.ac, %bb.z, %bb.aa
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef 4224, i64 noundef 8) #30, !noalias !5011
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit": ; preds = %bb.ab, %bb.x, %bb.y, %bb.w, %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$7destroy17h484935230dd834deE.exit.sink.split.i"
  %i.cv = icmp eq i64 %.sroa.423.0.copyload, -9223372036854775807
  br i1 %i.cv, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4read17h1645c578d68b3f8dE.exit.thread", label %bb.au

bb.ad:                                            ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit"
  %i.cw = load i64, ptr %i.h, align 8, !noundef !5 ; 2 uses
  %i.cx = call { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE() ; 2 uses
  %i.cy = extractvalue { i64, i32 } %i.cx, 0      ; 2 uses
  %i.cz = icmp eq i64 %i.cy, %i.cw
  br i1 %i.cz, label %.split, label %bb.ar

bb.ae:                                            ; preds = %.split, %bb.ar, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h5782e2c38717cd70E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5012
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.417.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.da = load i8, ptr %i.o, align 8, !range !27, !noalias !5013, !noundef !5
  %i.db = icmp eq i8 %i.da, 1
  br i1 %i.db, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !12

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.ae
  %i.dc = call noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !5012 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h5e1917bd452de83bE.exit.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, %bb.ae
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dc, %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i ], [ %i.n, %bb.ae ] ; 4 uses
  %i.de = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !5012, !noundef !5 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !5012
  %.not.i.i.i11 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i11, label %bb.af, label %bb.al, !prof !9

bb.af:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5012
  %i.df = call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E(), !noalias !5012 ; 2 uses
  store ptr %i.df, ptr %i.e, align 8, !noalias !5012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5012
  store ptr %i.g, ptr %i.c, align 8, !noalias !5012
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h23a1a6e0734c2ff7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.df)
          to label %bb.ai unwind label %bb.ag, !noalias !5012
end_hunk_0
