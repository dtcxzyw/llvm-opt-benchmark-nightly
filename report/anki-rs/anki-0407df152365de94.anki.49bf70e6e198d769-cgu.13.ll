Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$20disconnect_receivers17hcf0022538f618d93E":bb.a
.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.aj, 7                    ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #34
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1637

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !3
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef align 8 dereferenceable(128) %i.z)
  br label %bb.j

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$20discard_all_messages17hd1ca1e0322d68309E.exit": ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv17h8e06f1c9d3de90ccE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [112 x i8], align 8           ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h5dfd234b3fbb79b8E") ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_ZN3std4sync4mpmc7context7Context4with17hbeaedaa30b881ee5E.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !1639 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !1639, !noundef !3
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !1639, !noundef !3
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !1639, !nonnull !3, !noundef !3
  %i.ac = load i64, ptr %i.p, align 32, !noalias !1639, !noundef !3
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !1639 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !1639, !noundef !3
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !1639
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1642

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !1639 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !1639, !noundef !3 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter70 = and i32 %4, 5                     ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.aw, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter74 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod72.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod73 = icmp ne i32 %xtraiter70, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter71 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter71.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %epil.iter71.next = add i32 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i32 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !1643

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ax = add i32 %.sroa.0.029.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter75 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter75.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %niter75.next.7 = add i32 %niter75, 8           ; 2 uses
  %niter75.ncmp.7 = icmp eq i32 %niter75.next.7, %unroll_iter74
  br i1 %niter75.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ay = and i64 %i.as, %i.ar
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit", label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit.thread"

bb.k:                                             ; preds = %bb.d
  %i.ba = load i64, ptr %i.n, align 8, !noalias !1639, !noundef !3
  %i.bb = add i64 %i.ba, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bb, %bb.k ], [ %i.ag, %bb.d ]
  %i.bc = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !1639
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter76 = and i32 %5, 5                     ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.be, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter80 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod78.not = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter76, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter77 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter77.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %epil.iter77.next = add i32 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i32 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !1644

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bf = add i32 %.sroa.0.029.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 1, %bb.m ], [ %i.bf, %._crit_edge.loopexit.i20.i ], [ %i.ax, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter81 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter81.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %niter81.next.7 = add i32 %niter81, 8           ; 2 uses
  %niter81.ncmp.7 = icmp eq i32 %niter81.next.7, %unroll_iter80
  br i1 %niter81.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit": ; preds = %bb.j
  %i.bg = load i32, ptr %i.k, align 8, !range !1645, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bg, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !1639
  %i.bi = load i64, ptr %i.n, align 8, !noalias !1639, !noundef !3
  %i.bj = add i64 %i.bi, %i.u                     ; 2 uses
  store i64 %i.bj, ptr %i.l, align 8, !alias.scope !1639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 128, i1 false), !noalias !1646
  store atomic i64 %i.bj, ptr %i.bh release, align 8, !noalias !1646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false), !noalias !1646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17h699d8ba71470dd02E(ptr noundef nonnull align 8 %i.bk)
          to label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit" unwind label %bb.o, !noalias !1646

bb.o:                                             ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef align 8 dereferenceable(128) %i.h) #40
          to label %common.resume unwind label %bb.p, !noalias !1646

bb.p:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1646
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %i.by, %bb.t ], [ %i.cm, %bb.ac ], [ %i.by, %bb.u ], [ %i.cm, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit": ; preds = %bb.n
  %.sroa.0.0.copyload3 = load i64, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload5 = load i64, ptr %.sroa.2.0..sroa_idx4, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx6, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1646
  %i.bn = icmp eq i64 %.sroa.2.0.copyload5, -9223372036854775807
  br i1 %i.bn, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit.thread", label %bb.ah

bb.q:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit"
  %i.bo = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.bp = call { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE() ; 2 uses
  %i.bq = extractvalue { i64, i32 } %i.bp, 0      ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1649
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.48.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = load i8, ptr %i.t, align 8, !range !522, !noalias !1652, !noundef !3
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !1306

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.r
  %i.bu = call noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !1649 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0d80a01c82ee0390E.exit.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bu, %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !37

bb.s:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1649
  %i.bx = call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E(), !noalias !1649 ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !noalias !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1649
  store ptr %i.i, ptr %i.c, align 8, !noalias !1649
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h2a69db5df57073dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.t, !noalias !1649

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.bz = load ptr, ptr %i.e, align 8, !alias.scope !1668, !noalias !1649, !nonnull !3, !noundef !3
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !1669
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.x, !noalias !1649

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1649
  call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.cc = load ptr, ptr %i.e, align 8, !alias.scope !1679, !noalias !1649, !nonnull !3, !noundef !3
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !1680
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.w, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !1649
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1649
  br label %_ZN3std4sync4mpmc7context7Context4with17hbeaedaa30b881ee5E.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1649
  unreachable

bb.y:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1649
  store ptr %i.bw, ptr %i.d, align 8, !noalias !1649
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store atomic i64 0, ptr %i.cg release, align 8, !noalias !1649
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store atomic ptr null, ptr %i.ch release, align 8, !noalias !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1649
  store ptr %i.i, ptr %i.b, align 8, !noalias !1649
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h2a69db5df57073dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bw)
          to label %bb.z unwind label %bb.ac, !noalias !1649

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1649
  %i.ci = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649, !noundef !3 ; 3 uses
  store ptr %i.ci, ptr %i.a, align 8, !noalias !1649
  store ptr %i.bw, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !1681
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.ab, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h2a69db5df57073dcE":bb.a

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.ao = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.ag, i32 noundef %i.ah) ; 2 uses
  %i.ap = extractvalue { i64, i32 } %i.ao, 0
  %i.aq = extractvalue { i64, i32 } %i.ao, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hc0e8a0d3add8dc16E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, i64 noundef %i.ap, i32 noundef %i.aq)
  br label %.split8.i

_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit: ; preds = %bb.h
  %i.ar = extractvalue { i64, i1 } %i.am, 0
  switch i64 %i.ar, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  ], !prof !1698

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @23, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #39
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread: ; preds = %.split8.i, %.split8.i, %.split8.us.i, %.split8.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h7d14c547a2ba2184E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.as = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !37

_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4: ; preds = %.split8.i, %.split8.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  ret void

bb.k:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !1711, !nonnull !3, !noundef !3
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1711
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4

bb.m:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hbabf8e6c0d5122b3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !1712 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !1712, !noundef !3 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit"

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h5dfd234b3fbb79b8E") ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cw, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cv, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  br label %bb.b

bb.b:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bd, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bc, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !1715, !nonnull !3, !noundef !3
  %i.af = load i64, ptr %i.s, align 32, !noalias !1715, !noundef !3
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !1715 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !1715, !noundef !3
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i unwind label %.body.thread34.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1717

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !1715
  %i.ax = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter105 = and i32 %5, 5                    ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.ba, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter109 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !1718

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bb = add i32 %.sroa.0.02933.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %niter110.next.7 = add i32 %niter110, 8         ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 1, %bb.m ], [ %i.bm, %._crit_edge.loopexit.i20.i ], [ %i.bb, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bc = load atomic i64, ptr %i.k monotonic, align 128, !noalias !1715 ; 2 uses
  %i.bd = load i64, ptr %i.l, align 16, !noalias !1715, !noundef !3 ; 2 uses
  %i.be = and i64 %i.bd, %i.bc
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.b, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit"

bb.j:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.bh = add i64 %i.bg, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bi = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ]
  %i.bj = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !1715
  %i.bk = extractvalue { i64, i1 } %i.bj, 1
  br i1 %i.bk, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit.thread", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter111 = and i32 %6, 5                    ; 3 uses
  %i.bl = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bl, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter115 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter112 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %epil.iter112.next = add i32 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !1719

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bm = add i32 %.sroa.0.02933.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter116 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter116.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %niter116.next.7 = add i32 %niter116, 8         ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115
  br i1 %niter116.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread34.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread34.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, %bb.n, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbddfa0d1ce8a21fbE.exit.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit": ; preds = %bb.h
  %i.bn = load i32, ptr %i.i, align 8, !range !1645, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bn, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit.thread": ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !1715
  %i.bp = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.bp, ptr %i.j, align 8, !alias.scope !1715
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load <2 x i64>, ptr %2, align 8
  store <2 x i64> %i.bq, ptr %i.ah, align 8, !noalias !1720
  %.sroa.6.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx42, i64 112, i1 false)
  store atomic i64 %i.bp, ptr %i.bo release, align 8, !noalias !1723
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17h699d8ba71470dd02E(ptr noundef nonnull align 8 %i.br)
  br label %bb.ai

bb.n:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit"
  %i.bs = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.bt = invoke { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE()
          to label %bb.ac unwind label %.body.thread34.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1725
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.425.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bu = load i8, ptr %i.v, align 8, !range !522, !noalias !1728, !noundef !3
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !1306

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.o
  %i.bw = invoke noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc11 unwind label %.body.thread34.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbddfa0d1ce8a21fbE.exit.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %.noexc11, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bw, %.noexc11 ], [ %i.u, %bb.o ] ; 4 uses
  %i.by = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !37

bb.p:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1725
  %i.bz = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E()
          to label %bb.q unwind label %.body.thread34.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bz, ptr %i.e, align 8, !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1725
  store ptr %i.g, ptr %i.c, align 8, !noalias !1725
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hd9d087d91aea5494E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bz)
          to label %bb.t unwind label %bb.r, !noalias !1725

bb.r:                                             ; preds = %bb.q
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.cb = load ptr, ptr %i.e, align 8, !alias.scope !1744, !noalias !1725, !nonnull !3, !noundef !3
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1745
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread unwind label %bb.v, !noalias !1725

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1725
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !1755, !noalias !1725, !nonnull !3, !noundef !3
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !1756
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i" unwind label %.body.thread34.loopexit.split-lp

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i": ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1725
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1725
  unreachable

bb.w:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1725
  store ptr %i.by, ptr %i.d, align 8, !noalias !1725
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store atomic i64 0, ptr %i.ci release, align 8, !noalias !1725
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store atomic ptr null, ptr %i.cj release, align 8, !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1725
  store ptr %i.g, ptr %i.b, align 8, !noalias !1725
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hd9d087d91aea5494E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.by)
          to label %bb.x unwind label %bb.aa, !noalias !1725

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1725
  %i.ck = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725, !noundef !3 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !noalias !1725
  store ptr %i.by, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !1757
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.z, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i"

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i" unwind label %.body.thread34.loopexit.split-lp

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i": ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1725
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1766
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ab, label %.body.thread
end_hunk_1
