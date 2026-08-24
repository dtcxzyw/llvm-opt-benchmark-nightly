Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_server-cb478365b72cce50.actix_server.31bc02354b125ea4-cgu.0?download=true
inline.NumInlined: 3999
inline.NumDeleted: 1944
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE:bb.a
bb.dt:                                            ; preds = %bb.dd
  %i.mp = ptrtoint ptr %i.lt to i64
  %i.mq = load ptr, ptr %i.ao, align 8, !noalias !1537, !nonnull !8, !noundef !8
  %i.mr = load ptr, ptr %i.ak, align 8, !noalias !1537, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1504
  store ptr %i.mq, ptr %i.ax, align 8, !noalias !1504
  %.sroa.4100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.mr, ptr %.sroa.4100.0..sroa_idx.i, align 8, !noalias !1504
  %.sroa.5101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.mp, ptr %.sroa.5101.0..sroa_idx.i, align 8, !noalias !1504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1504
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.ms, align 8, !noalias !1504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1504
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.mv = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.hw, i64 128
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.mx = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i5.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i6.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i7.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i8.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false), !noalias !1504
  br label %bb.du

.unreachable.i:                                   ; preds = %bb.ds
  unreachable

bb.du:                                            ; preds = %_ZN3std4sync4mpmc7context7Context4with17he2134ef1d8794ed6E.exit.i.i.i, %bb.dt
  call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.backedge, %bb.du
  %.sroa.0.034.i.i.i.i = phi i32 [ 0, %bb.du ], [ %.sroa.0.034.i.i.i.i.be, %.backedge.i.i.i.i.backedge ] ; 16 uses
  %i.mz = load atomic i64, ptr %i.hw acquire, align 128, !noalias !1621 ; 5 uses
  %i.na = load atomic ptr, ptr %i.mv acquire, align 8, !noalias !1621 ; 35 uses
  %i.nb = lshr i64 %i.mz, 1                       ; 2 uses
  %i.nc = and i64 %i.nb, 31                       ; 6 uses
  %i.nd = icmp eq i64 %i.nc, 31
  br i1 %i.nd, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.backedge.i.i.i.i
  %i.ne = add i64 %i.mz, 2                        ; 2 uses
  %i.nf = and i64 %i.mz, 1
  %i.ng = icmp eq i64 %i.nf, 0
  br i1 %i.ng, label %bb.dz, label %bb.ec

bb.dw:                                            ; preds = %.backedge.i.i.i.i
  %i.nh = icmp ult i32 %.sroa.0.034.i.i.i.i, 7
  br i1 %i.nh, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1504

bb.dy:                                            ; preds = %bb.dw
  %.not.i.i.i25.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i.i.i25.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i, label %.lr.ph.i.i.i26.i.i.preheader

.lr.ph.i.i.i26.i.i.preheader:                     ; preds = %bb.dy
  %i.ni = mul nuw i32 %.sroa.0.034.i.i.i.i, %.sroa.0.034.i.i.i.i ; 2 uses
  %xtraiter562 = and i32 %i.ni, 7                 ; 3 uses
  %i.nj = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.nj, label %.lr.ph.i.i.i26.i.i.epil.preheader, label %.lr.ph.i.i.i26.i.i.preheader.new

.lr.ph.i.i.i26.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i26.i.i.preheader
  %unroll_iter566 = and i32 %i.ni, 56
  br label %.lr.ph.i.i.i26.i.i

.lr.ph.i.i.i26.i.i:                               ; preds = %.lr.ph.i.i.i26.i.i, %.lr.ph.i.i.i26.i.i.preheader.new
  %niter567 = phi i32 [ 0, %.lr.ph.i.i.i26.i.i.preheader.new ], [ %niter567.next.7, %.lr.ph.i.i.i26.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %niter567.next.7 = add i32 %niter567, 8         ; 2 uses
  %niter567.ncmp.7 = icmp eq i32 %niter567.next.7, %unroll_iter566
  br i1 %niter567.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i26.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i26.i.i
  %lcmp.mod564.not = icmp eq i32 %xtraiter562, 0
  br i1 %lcmp.mod564.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i, label %.lr.ph.i.i.i26.i.i.epil.preheader

.lr.ph.i.i.i26.i.i.epil.preheader:                ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i26.i.i.preheader
  %lcmp.mod565 = icmp ne i32 %xtraiter562, 0
  call void @llvm.assume(i1 %lcmp.mod565)
  br label %.lr.ph.i.i.i26.i.i.epil

.lr.ph.i.i.i26.i.i.epil:                          ; preds = %.lr.ph.i.i.i26.i.i.epil, %.lr.ph.i.i.i26.i.i.epil.preheader
  %epil.iter563 = phi i32 [ 0, %.lr.ph.i.i.i26.i.i.epil.preheader ], [ %epil.iter563.next, %.lr.ph.i.i.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %epil.iter563.next = add i32 %epil.iter563, 1   ; 2 uses
  %epil.iter563.cmp.not = icmp eq i32 %epil.iter563.next, %xtraiter562
  br i1 %epil.iter563.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i, label %.lr.ph.i.i.i26.i.i.epil, !llvm.loop !1622

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i26.i.i.epil, %bb.dy, %bb.dx
  %i.nk = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

bb.dz:                                            ; preds = %bb.dv
  fence seq_cst
  %i.nl = load atomic i64, ptr %i.mw monotonic, align 128, !noalias !1621 ; 3 uses
  %i.nm = lshr i64 %i.nl, 1
  %i.nn = icmp eq i64 %i.nb, %i.nm
  br i1 %i.nn, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.not.unshifted.i.i.i.i = xor i64 %i.nl, %i.mz
  %.not.i.i.i55.i = icmp ugt i64 %.not.unshifted.i.i.i.i, 63
  %i.no = zext i1 %.not.i.i.i55.i to i64
  %spec.select.i.i.i.i = or disjoint i64 %i.ne, %i.no
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.np = and i64 %i.nl, 1
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h3e2c0a52d7f0dde9E.exit.i.i.i", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4recv17h8614797774dd07bdE.exit.i.i"

bb.ec:                                            ; preds = %bb.ea, %bb.dv
  %.sroa.09.0.i.i9.i.i = phi i64 [ %i.ne, %bb.dv ], [ %spec.select.i.i.i.i, %bb.ea ] ; 2 uses
  %i.nr = icmp eq ptr %i.na, null
  br i1 %i.nr, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.ns = icmp ult i32 %.sroa.0.034.i.i.i.i, 7
  br i1 %i.ns, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1504

bb.ef:                                            ; preds = %bb.ed
  %.not.i18.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i18.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.preheader:                     ; preds = %bb.ef
  %i.nt = mul nuw i32 %.sroa.0.034.i.i.i.i, %.sroa.0.034.i.i.i.i ; 2 uses
  %xtraiter556 = and i32 %i.nt, 7                 ; 3 uses
  %i.nu = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.nu, label %.lr.ph.i19.i.i.i.i.epil.preheader, label %.lr.ph.i19.i.i.i.i.preheader.new

.lr.ph.i19.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i19.i.i.i.i.preheader
  %unroll_iter560 = and i32 %i.nt, 56
  br label %.lr.ph.i19.i.i.i.i

.lr.ph.i19.i.i.i.i:                               ; preds = %.lr.ph.i19.i.i.i.i, %.lr.ph.i19.i.i.i.i.preheader.new
  %niter561 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.preheader.new ], [ %niter561.next.7, %.lr.ph.i19.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %niter561.next.7 = add i32 %niter561, 8         ; 2 uses
  %niter561.ncmp.7 = icmp eq i32 %niter561.next.7, %unroll_iter560
  br i1 %niter561.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i19.i.i.i.i
  %lcmp.mod558.not = icmp eq i32 %xtraiter556, 0
  br i1 %lcmp.mod558.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.i.epil.preheader:                ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.preheader
  %lcmp.mod559 = icmp ne i32 %xtraiter556, 0
  call void @llvm.assume(i1 %lcmp.mod559)
  br label %.lr.ph.i19.i.i.i.i.epil

.lr.ph.i19.i.i.i.i.epil:                          ; preds = %.lr.ph.i19.i.i.i.i.epil, %.lr.ph.i19.i.i.i.i.epil.preheader
  %epil.iter557 = phi i32 [ 0, %.lr.ph.i19.i.i.i.i.epil.preheader ], [ %epil.iter557.next, %.lr.ph.i19.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %epil.iter557.next = add i32 %epil.iter557, 1   ; 2 uses
  %epil.iter557.cmp.not = icmp eq i32 %epil.iter557.next, %xtraiter556
  br i1 %epil.iter557.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, label %.lr.ph.i19.i.i.i.i.epil, !llvm.loop !1624

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.i.i.i.i.epil, %bb.ef, %bb.ee
  %i.nv = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

bb.eg:                                            ; preds = %bb.ec
  %i.nw = cmpxchg weak ptr %i.hw, i64 %i.mz, i64 %.sroa.09.0.i.i9.i.i seq_cst acquire, align 8, !noalias !1621
  %.sroa.18.0.in.i.i.i10.i.i = extractvalue { i64, i1 } %i.nw, 1
  br i1 %.sroa.18.0.in.i.i.i10.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %.sroa.0.0.i.i.i.i11.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i.i.i.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i11.i.i, %.sroa.0.0.i.i.i.i11.i.i ; 2 uses
  %.not.i23.i.i.i.i = icmp eq i32 %.sroa.0.034.i.i.i.i, 0
  br i1 %.not.i23.i.i.i.i, label %.backedge.i.i.i.i.backedge, label %.lr.ph.i24.i.i.i.i.preheader

.lr.ph.i24.i.i.i.i.preheader:                     ; preds = %bb.eh
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.nx = icmp ult i32 %.sroa.0.034.i.i.i.i, 3
  br i1 %i.nx, label %.lr.ph.i24.i.i.i.i.epil.preheader, label %.lr.ph.i24.i.i.i.i.preheader.new

.lr.ph.i24.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i24.i.i.i.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i24.i.i.i.i

._crit_edge.loopexit.i.i.i12.i.i.unr-lcssa:       ; preds = %.lr.ph.i24.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i.i12.i.i, label %.lr.ph.i24.i.i.i.i.epil.preheader

.lr.ph.i24.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.loopexit.i.i.i12.i.i.unr-lcssa, %.lr.ph.i24.i.i.i.i.preheader
  %lcmp.mod555 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod555)
  br label %.lr.ph.i24.i.i.i.i.epil

.lr.ph.i24.i.i.i.i.epil:                          ; preds = %.lr.ph.i24.i.i.i.i.epil, %.lr.ph.i24.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i24.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i.i12.i.i, label %.lr.ph.i24.i.i.i.i.epil, !llvm.loop !1625

._crit_edge.loopexit.i.i.i12.i.i:                 ; preds = %.lr.ph.i24.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i12.i.i.unr-lcssa
  %i.ny = add i32 %.sroa.0.034.i.i.i.i, 1
  br label %.backedge.i.i.i.i.backedge

.backedge.i.i.i.i.backedge:                       ; preds = %._crit_edge.loopexit.i.i.i12.i.i, %bb.eh, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i
  %.sroa.0.034.i.i.i.i.be = phi i32 [ %i.nk, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i24.i.i ], [ %i.nv, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit22.i.i.i.i ], [ %i.ny, %._crit_edge.loopexit.i.i.i12.i.i ], [ 1, %bb.eh ]
  br label %.backedge.i.i.i.i

.lr.ph.i24.i.i.i.i:                               ; preds = %.lr.ph.i24.i.i.i.i, %.lr.ph.i24.i.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i24.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i24.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.i.i.i12.i.i.unr-lcssa, label %.lr.ph.i24.i.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.nz = icmp eq i64 %i.nc, 30
  br i1 %i.nz, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.oa = load atomic ptr, ptr %i.na acquire, align 8, !noalias !1621 ; 2 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %.lr.ph.i27.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h630c04a44321424fE.exit.i.i.i.i"

.lr.ph.i27.i.i.i.i:                               ; preds = %bb.ej, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i
  %.sroa.0.02.i28.i.i.i.i = phi i32 [ %i.of, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i ], [ 0, %bb.ej ] ; 6 uses
  %i.oc = icmp ult i32 %.sroa.0.02.i28.i.i.i.i, 7
  br i1 %i.oc, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i27.i.i.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1504

bb.el:                                            ; preds = %.lr.ph.i27.i.i.i.i
  %.not.i.i.i.i14.i.i = icmp eq i32 %.sroa.0.02.i28.i.i.i.i, 0
  br i1 %.not.i.i.i.i14.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i54.i.preheader

.lr.ph.i.i.i.i.i54.i.preheader:                   ; preds = %bb.el
  %i.od = mul nuw i32 %.sroa.0.02.i28.i.i.i.i, %.sroa.0.02.i28.i.i.i.i ; 2 uses
  %xtraiter568 = and i32 %i.od, 7                 ; 3 uses
  %i.oe = icmp ult i32 %.sroa.0.02.i28.i.i.i.i, 3
  br i1 %i.oe, label %.lr.ph.i.i.i.i.i54.i.epil.preheader, label %.lr.ph.i.i.i.i.i54.i.preheader.new

.lr.ph.i.i.i.i.i54.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i54.i.preheader
  %unroll_iter572 = and i32 %i.od, 56
  br label %.lr.ph.i.i.i.i.i54.i

.lr.ph.i.i.i.i.i54.i:                             ; preds = %.lr.ph.i.i.i.i.i54.i, %.lr.ph.i.i.i.i.i54.i.preheader.new
  %niter573 = phi i32 [ 0, %.lr.ph.i.i.i.i.i54.i.preheader.new ], [ %niter573.next.7, %.lr.ph.i.i.i.i.i54.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %niter573.next.7 = add i32 %niter573, 8         ; 2 uses
  %niter573.ncmp.7 = icmp eq i32 %niter573.next.7, %unroll_iter572
  br i1 %niter573.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i54.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i54.i
  %lcmp.mod570.not = icmp eq i32 %xtraiter568, 0
  br i1 %lcmp.mod570.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i54.i.epil.preheader

.lr.ph.i.i.i.i.i54.i.epil.preheader:              ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i54.i.preheader
  %lcmp.mod571 = icmp ne i32 %xtraiter568, 0
  call void @llvm.assume(i1 %lcmp.mod571)
  br label %.lr.ph.i.i.i.i.i54.i.epil

.lr.ph.i.i.i.i.i54.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i54.i.epil, %.lr.ph.i.i.i.i.i54.i.epil.preheader
  %epil.iter569 = phi i32 [ 0, %.lr.ph.i.i.i.i.i54.i.epil.preheader ], [ %epil.iter569.next, %.lr.ph.i.i.i.i.i54.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1621
  %epil.iter569.next = add i32 %epil.iter569, 1   ; 2 uses
  %epil.iter569.cmp.not = icmp eq i32 %epil.iter569.next, %xtraiter568
  br i1 %epil.iter569.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i54.i.epil, !llvm.loop !1626

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i54.i.epil, %bb.el, %bb.ek
  %i.of = add i32 %.sroa.0.02.i28.i.i.i.i, 1
  %i.og = load atomic ptr, ptr %i.na acquire, align 8, !noalias !1621 ; 2 uses
  %i.oh = icmp eq ptr %i.og, null
  br i1 %i.oh, label %.lr.ph.i27.i.i.i.i, label %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h630c04a44321424fE.exit.i.i.i.i"

"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h630c04a44321424fE.exit.i.i.i.i": ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i, %bb.ej
  %.lcssa.i.i.i.i.i = phi ptr [ %i.oa, %bb.ej ], [ %i.og, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.i ] ; 2 uses
  %i.oi = and i64 %.sroa.09.0.i.i9.i.i, -2
  %i.oj = add i64 %i.oi, 2
  %i.ok = load atomic ptr, ptr %.lcssa.i.i.i.i.i monotonic, align 8, !noalias !1621
  %i.ol = icmp ne ptr %i.ok, null
  %i.om = zext i1 %i.ol to i64
  %spec.select17.i.i.i.i = or disjoint i64 %i.oj, %i.om
  store atomic ptr %.lcssa.i.i.i.i.i, ptr %i.mv release, align 8, !noalias !1621
  store atomic i64 %spec.select17.i.i.i.i, ptr %i.hw release, align 128, !noalias !1621
  br label %bb.em

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_recv17h3e2c0a52d7f0dde9E.exit.i.i.i": ; preds = %bb.eb
  %i.on = load i32, ptr %i.ms, align 8, !range !315, !noalias !1504, !noundef !8 ; 2 uses
  %.not.i15.i.i = icmp eq i32 %i.on, 1000000000
  br i1 %.not.i15.i.i, label %bb.fy, label %bb.fx

bb.em:                                            ; preds = %"_ZN3std4sync4mpmc4list14Block$LT$T$GT$9wait_next17h630c04a44321424fE.exit.i.i.i.i", %bb.ei
  store ptr %i.na, ptr %i.mt, align 8, !alias.scope !1618, !noalias !1504
  store i64 %i.nc, ptr %i.mu, align 8, !alias.scope !1618, !noalias !1504
  %i.oo = getelementptr inbounds nuw i8, ptr %i.na, i64 8 ; 4 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.nc ; 3 uses
  %i.oq = load atomic i64, ptr %i.op acquire, align 8, !noalias !1504
  %i.or = and i64 %i.oq, 1
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %.lr.ph.i.i8.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h6888ef60b1e3ffc0E.exit.i.i.i.i"

.lr.ph.i.i8.i.i.i:                                ; preds = %bb.em, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i
  %.sroa.0.02.i.i9.i.i.i = phi i32 [ %i.ow, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i ], [ 0, %bb.em ] ; 6 uses
  %i.ot = icmp ult i32 %.sroa.0.02.i.i9.i.i.i, 7
  br i1 %i.ot, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i.i8.i.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i unwind label %.loopexit.i, !noalias !1504

bb.eo:                                            ; preds = %.lr.ph.i.i8.i.i.i
  %.not.i.i.i11.i.i.i = icmp eq i32 %.sroa.0.02.i.i9.i.i.i, 0
  br i1 %.not.i.i.i11.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i, label %.lr.ph.i.i.i12.i.i.i.preheader

.lr.ph.i.i.i12.i.i.i.preheader:                   ; preds = %bb.eo
  %i.ou = mul nuw i32 %.sroa.0.02.i.i9.i.i.i, %.sroa.0.02.i.i9.i.i.i ; 2 uses
  %xtraiter574 = and i32 %i.ou, 7                 ; 3 uses
  %i.ov = icmp ult i32 %.sroa.0.02.i.i9.i.i.i, 3
  br i1 %i.ov, label %.lr.ph.i.i.i12.i.i.i.epil.preheader, label %.lr.ph.i.i.i12.i.i.i.preheader.new

.lr.ph.i.i.i12.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i12.i.i.i.preheader
  %unroll_iter578 = and i32 %i.ou, 56
  br label %.lr.ph.i.i.i12.i.i.i

.lr.ph.i.i.i12.i.i.i:                             ; preds = %.lr.ph.i.i.i12.i.i.i, %.lr.ph.i.i.i12.i.i.i.preheader.new
  %niter579 = phi i32 [ 0, %.lr.ph.i.i.i12.i.i.i.preheader.new ], [ %niter579.next.7, %.lr.ph.i.i.i12.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  %niter579.next.7 = add i32 %niter579, 8         ; 2 uses
  %niter579.ncmp.7 = icmp eq i32 %niter579.next.7, %unroll_iter578
  br i1 %niter579.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12.i.i.i
  %lcmp.mod576.not = icmp eq i32 %xtraiter574, 0
  br i1 %lcmp.mod576.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i, label %.lr.ph.i.i.i12.i.i.i.epil.preheader

.lr.ph.i.i.i12.i.i.i.epil.preheader:              ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.i.i.i.preheader
  %lcmp.mod577 = icmp ne i32 %xtraiter574, 0
  call void @llvm.assume(i1 %lcmp.mod577)
  br label %.lr.ph.i.i.i12.i.i.i.epil

.lr.ph.i.i.i12.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i12.i.i.i.epil, %.lr.ph.i.i.i12.i.i.i.epil.preheader
  %epil.iter575 = phi i32 [ 0, %.lr.ph.i.i.i12.i.i.i.epil.preheader ], [ %epil.iter575.next, %.lr.ph.i.i.i12.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1504
  %epil.iter575.next = add i32 %epil.iter575, 1   ; 2 uses
  %epil.iter575.cmp.not = icmp eq i32 %epil.iter575.next, %xtraiter574
  br i1 %epil.iter575.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i, label %.lr.ph.i.i.i12.i.i.i.epil, !llvm.loop !1627

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i10.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.i.i.i.epil, %bb.eo, %bb.en
  %i.ow = add i32 %.sroa.0.02.i.i9.i.i.i, 1
  %i.ox = load atomic i64, ptr %i.op acquire, align 8, !noalias !1504
  %i.oy = and i64 %i.ox, 1
  %i.oz = icmp eq i64 %i.oy, 0
  br i1 %i.oz, label %.lr.ph.i.i8.i.i.i, label %"_ZN3std4sync4mpmc4list13Slot$LT$T$GT$10wait_write17h6888ef60b1e3ffc0E.exit.i.i.i.i"
end_hunk_0
begin_hunk_1_@_ZN12actix_server6worker12ServerWorker5start17h8fdf57bb04bb382eE:bb.a
          to label %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i" unwind label %bb.kd, !noalias !1794 ; 2 uses

bb.kd:                                            ; preds = %bb.kc
  %i.afr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_rt..arbiter..ArbiterCommand$GT$17h586ba589ab90a8b9E"(ptr nonnull align 1 %i.afd, ptr nonnull @456) #36
          to label %.body160 unwind label %bb.ke, !noalias !1794

bb.ke:                                            ; preds = %bb.kd
  %i.afs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1794
  unreachable

"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i": ; preds = %bb.kc
  %i.aft = and i64 %i.afp, 31                     ; 2 uses
  %i.afu = getelementptr inbounds nuw [16 x i8], ptr %i.afq, i64 %i.aft ; 2 uses
  store ptr %i.afd, ptr %i.afu, align 8, !noalias !1794
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  store ptr @456, ptr %i.afv, align 8, !noalias !1794
  %i.afw = shl nuw nsw i64 1, %i.aft
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afq, i64 528
  %i.afy = atomicrmw or ptr %i.afx, i64 %i.afw release, align 8, !noalias !1794 ; 0 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.val99, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.afz)
          to label %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit unwind label %bb.ki

bb.kf:                                            ; preds = %bb.ka
  %i.aga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_rt..arbiter..ArbiterCommand$GT$17h586ba589ab90a8b9E"(ptr nonnull align 1 %i.afd, ptr nonnull @456) #36
          to label %.body160 unwind label %bb.kg, !noalias !1794

bb.kg:                                            ; preds = %bb.kf
  %i.agb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1794
  unreachable

bb.kh:                                            ; preds = %bb.jy
  invoke void @"_ZN4core3ptr91drop_in_place$LT$actix_server..worker..ServerWorker..start..$u7b$$u7b$closure$u7d$$u7d$$GT$17h371f559d1343384aE"(ptr noundef nonnull %i.afd)
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i" unwind label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i", !noalias !1795

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.kh
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afd, i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1795
  br label %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i": ; preds = %bb.kh
  %i.agc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afd, i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !1795
  br label %.body160

bb.ki:                                            ; preds = %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i"
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %.body160

.body160:                                         ; preds = %bb.jw, %bb.kd, %bb.kf, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i", %bb.ki
  %eh.lpad-body161 = phi { ptr, i32 } [ %i.agd, %bb.ki ], [ %i.agc, %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5dcfd6eaf1ff0855E.exit5.i.i.i.i.i.i" ], [ %i.aff, %bb.jw ], [ %i.afr, %bb.kd ], [ %i.aga, %bb.kf ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$actix_rt..arbiter..Arbiter$GT$17h339359839babd5ceE"(ptr noalias noundef align 8 dereferenceable(32) %i.bn) #36
          to label %.body144 unwind label %bb.jr

_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17hf97bbad922f65420E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$actix_rt..arbiter..Arbiter$GT$17h339359839babd5ceE"(ptr noalias noundef align 8 dereferenceable(32) %i.bn)
          to label %bb.kj unwind label %bb.jt

bb.kj:                                            ; preds = %_ZN8actix_rt7arbiter7Arbiter5spawn17h629366f84391d375E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.bo)
          to label %bb.kk unwind label %bb.ha

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.jp

"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit": ; preds = %bb.lt, %bb.lr, %bb.ls, %bb.lu, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.age = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.age, align 8, !noalias !1798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1798
  %i.agf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.agg = getelementptr inbounds nuw i8, ptr %i.gp, i64 400 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.gp, i64 392 ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.gp, i64 408
  %i.agj = getelementptr inbounds nuw i8, ptr %i.gp, i64 416
  %i.agk = getelementptr inbounds nuw i8, ptr %i.gp, i64 128
  %i.agl = getelementptr inbounds nuw i8, ptr %i.gp, i64 384
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.agm = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !1798
  br label %bb.kl

bb.kl:                                            ; preds = %_ZN3std4sync4mpmc7context7Context4with17hdf2b7c5400951949E.exit.i.i, %"_ZN4core3ptr51drop_in_place$LT$tokio..runtime..handle..Handle$GT$17hef63ab6fd0266facE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge, %bb.kl
  %.sroa.0.028.i.i.i = phi i32 [ 0, %bb.kl ], [ %.sroa.0.028.i.i.i.be, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge ] ; 14 uses
  %i.ago = load atomic i64, ptr %i.gp monotonic, align 128, !noalias !1804 ; 7 uses
  %i.agp = load i64, ptr %i.agg, align 16, !noalias !1804, !noundef !8
  %i.agq = add i64 %i.agp, -1
  %i.agr = and i64 %i.agq, %i.ago                 ; 3 uses
  %i.ags = load i64, ptr %i.agh, align 8, !noalias !1804, !noundef !8
  %i.agt = sub i64 0, %i.ags
  %i.agu = and i64 %i.ago, %i.agt
  %i.agv = load ptr, ptr %i.agi, align 8, !noalias !1804, !nonnull !8, !align !9, !noundef !8
  %i.agw = load i64, ptr %i.agj, align 32, !noalias !1804, !noundef !8
  %i.agx = icmp ult i64 %i.agr, %i.agw
  call void @llvm.assume(i1 %i.agx)
  %i.agy = getelementptr inbounds nuw [16 x i8], ptr %i.agv, i64 %i.agr ; 4 uses
  %i.agz = load atomic i64, ptr %i.agy acquire, align 8, !noalias !1804 ; 3 uses
  %i.aha = add i64 %i.ago, 1
  %.not = icmp eq i64 %i.aha, %i.agz
  br i1 %.not, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i
  %i.ahb = icmp eq i64 %i.agz, %i.ago
  br i1 %i.ahb, label %bb.kr, label %bb.ko

bb.kn:                                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i
  %i.ahc = add nuw i64 %i.agr, 1
  %i.ahd = load i64, ptr %i.agl, align 128, !noalias !1804, !noundef !8
  %i.ahe = icmp ult i64 %i.ahc, %i.ahd
  br i1 %i.ahe, label %bb.kv, label %bb.ku

bb.ko:                                            ; preds = %bb.km
  %i.ahf = icmp ult i32 %.sroa.0.028.i.i.i, 7
  br i1 %i.ahf, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i unwind label %.loopexit

bb.kq:                                            ; preds = %bb.ko
  %.not.i.i.i.i173 = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i.i.i.i173, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.kq
  %i.ahg = mul nuw i32 %.sroa.0.028.i.i.i, %.sroa.0.028.i.i.i ; 2 uses
  %xtraiter580 = and i32 %i.ahg, 7                ; 3 uses
  %i.ahh = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ahh, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter584 = and i32 %i.ahg, 56
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %niter585 = phi i32 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter585.next.7, %.lr.ph.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  %niter585.next.7 = add i32 %niter585, 8         ; 2 uses
  %niter585.ncmp.7 = icmp eq i32 %niter585.next.7, %unroll_iter584
  br i1 %niter585.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod582.not = icmp eq i32 %xtraiter580, 0
  br i1 %lcmp.mod582.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %lcmp.mod583 = icmp ne i32 %xtraiter580, 0
  call void @llvm.assume(i1 %lcmp.mod583)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter581 = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter581.next, %.lr.ph.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  %epil.iter581.next = add i32 %epil.iter581, 1   ; 2 uses
  %epil.iter581.cmp.not = icmp eq i32 %epil.iter581.next, %xtraiter580
  br i1 %epil.iter581.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !1805

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.kp, %bb.kq
  %i.ahi = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge

bb.kr:                                            ; preds = %bb.km
  fence seq_cst
  %i.ahj = load atomic i64, ptr %i.agk monotonic, align 128, !noalias !1804 ; 2 uses
  %i.ahk = load i64, ptr %i.agg, align 16, !noalias !1804, !noundef !8 ; 2 uses
  %i.ahl = xor i64 %i.ahk, -1
  %i.ahm = and i64 %i.ahj, %i.ahl
  %i.ahn = icmp eq i64 %i.ahm, %i.ago
  br i1 %i.ahn, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %.sroa.0.0.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.not.i11.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i11.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %bb.ks
  %xtraiter586 = and i32 %6, 5                    ; 3 uses
  %i.aho = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.aho, label %.lr.ph.i12.i.i.i.epil.preheader, label %.lr.ph.i12.i.i.i.preheader.new

.lr.ph.i12.i.i.i.preheader.new:                   ; preds = %.lr.ph.i12.i.i.i.preheader
  %unroll_iter590 = and i32 %6, 56
  br label %.lr.ph.i12.i.i.i

._crit_edge.loopexit.i.i.i.i.unr-lcssa:           ; preds = %.lr.ph.i12.i.i.i
  %lcmp.mod588.not = icmp eq i32 %xtraiter586, 0
  br i1 %lcmp.mod588.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil.preheader

.lr.ph.i12.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.i.preheader
  %lcmp.mod589 = icmp ne i32 %xtraiter586, 0
  call void @llvm.assume(i1 %lcmp.mod589)
  br label %.lr.ph.i12.i.i.i.epil

.lr.ph.i12.i.i.i.epil:                            ; preds = %.lr.ph.i12.i.i.i.epil, %.lr.ph.i12.i.i.i.epil.preheader
  %epil.iter587 = phi i32 [ 0, %.lr.ph.i12.i.i.i.epil.preheader ], [ %epil.iter587.next, %.lr.ph.i12.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  %epil.iter587.next = add i32 %epil.iter587, 1   ; 2 uses
  %epil.iter587.cmp.not = icmp eq i32 %epil.iter587.next, %xtraiter586
  br i1 %epil.iter587.cmp.not, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i12.i.i.i.epil, !llvm.loop !1806

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i12.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.unr-lcssa
  %i.ahp = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i12.i.i.i.preheader.new
  %niter591 = phi i32 [ 0, %.lr.ph.i12.i.i.i.preheader.new ], [ %niter591.next.7, %.lr.ph.i12.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  %niter591.next.7 = add i32 %niter591, 8         ; 2 uses
  %niter591.ncmp.7 = icmp eq i32 %niter591.next.7, %unroll_iter590
  br i1 %niter591.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i.i

bb.kt:                                            ; preds = %bb.kr
  %i.ahq = and i64 %i.ahk, %i.ahj
  %i.ahr = icmp eq i64 %i.ahq, 0
  br i1 %i.ahr, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h3aea48e74c5f59b9E.exit.i.i", label %bb.lv

bb.ku:                                            ; preds = %bb.kn
  %i.ahs = load i64, ptr %i.agh, align 8, !noalias !1804, !noundef !8
  %i.aht = add i64 %i.ahs, %i.agu
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kn
  %.sroa.09.0.i.i.i = phi i64 [ %i.aht, %bb.ku ], [ %i.agz, %bb.kn ]
  %i.ahu = cmpxchg weak ptr %i.gp, i64 %i.ago, i64 %.sroa.09.0.i.i.i seq_cst monotonic, align 8, !noalias !1804
  %.sroa.18.0.in.i.i.i.i175 = extractvalue { i64, i1 } %i.ahu, 1
  br i1 %.sroa.18.0.in.i.i.i.i175, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %.sroa.0.0.i.i15.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i.i.i, i32 6) ; 2 uses
  %7 = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i.i, %.sroa.0.0.i.i15.i.i.i ; 2 uses
  %.not.i16.i.i.i = icmp eq i32 %.sroa.0.028.i.i.i, 0
  br i1 %.not.i16.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge, label %.lr.ph.i17.i.i.i.preheader

.lr.ph.i17.i.i.i.preheader:                       ; preds = %bb.kw
  %xtraiter592 = and i32 %7, 5                    ; 3 uses
  %i.ahv = icmp ult i32 %.sroa.0.028.i.i.i, 3
  br i1 %i.ahv, label %.lr.ph.i17.i.i.i.epil.preheader, label %.lr.ph.i17.i.i.i.preheader.new

.lr.ph.i17.i.i.i.preheader.new:                   ; preds = %.lr.ph.i17.i.i.i.preheader
  %unroll_iter596 = and i32 %7, 56
  br label %.lr.ph.i17.i.i.i

._crit_edge.loopexit.i20.i.i.i.unr-lcssa:         ; preds = %.lr.ph.i17.i.i.i
  %lcmp.mod594.not = icmp eq i32 %xtraiter592, 0
  br i1 %lcmp.mod594.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil.preheader

.lr.ph.i17.i.i.i.epil.preheader:                  ; preds = %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, %.lr.ph.i17.i.i.i.preheader
  %lcmp.mod595 = icmp ne i32 %xtraiter592, 0
  call void @llvm.assume(i1 %lcmp.mod595)
  br label %.lr.ph.i17.i.i.i.epil

.lr.ph.i17.i.i.i.epil:                            ; preds = %.lr.ph.i17.i.i.i.epil, %.lr.ph.i17.i.i.i.epil.preheader
  %epil.iter593 = phi i32 [ 0, %.lr.ph.i17.i.i.i.epil.preheader ], [ %epil.iter593.next, %.lr.ph.i17.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  %epil.iter593.next = add i32 %epil.iter593, 1   ; 2 uses
  %epil.iter593.cmp.not = icmp eq i32 %epil.iter593.next, %xtraiter592
  br i1 %epil.iter593.cmp.not, label %._crit_edge.loopexit.i20.i.i.i, label %.lr.ph.i17.i.i.i.epil, !llvm.loop !1807

._crit_edge.loopexit.i20.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.epil, %._crit_edge.loopexit.i20.i.i.i.unr-lcssa
  %i.ahw = add i32 %.sroa.0.028.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.backedge: ; preds = %._crit_edge.loopexit.i20.i.i.i, %bb.kw, %._crit_edge.loopexit.i.i.i.i, %bb.ks, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i
  %.sroa.0.028.i.i.i.be = phi i32 [ %i.ahi, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i ], [ 1, %bb.kw ], [ %i.ahw, %._crit_edge.loopexit.i20.i.i.i ], [ %i.ahp, %._crit_edge.loopexit.i.i.i.i ], [ 1, %bb.ks ]
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i

.lr.ph.i17.i.i.i:                                 ; preds = %.lr.ph.i17.i.i.i, %.lr.ph.i17.i.i.i.preheader.new
  %niter597 = phi i32 [ 0, %.lr.ph.i17.i.i.i.preheader.new ], [ %niter597.next.7, %.lr.ph.i17.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  call void @llvm.x86.sse2.pause() #24, !noalias !1804
  %niter597.next.7 = add i32 %niter597, 8         ; 2 uses
  %niter597.ncmp.7 = icmp eq i32 %niter597.next.7, %unroll_iter596
  br i1 %niter597.ncmp.7, label %._crit_edge.loopexit.i20.i.i.i.unr-lcssa, label %.lr.ph.i17.i.i.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h3aea48e74c5f59b9E.exit.i.i": ; preds = %bb.kt
  %i.ahx = load i32, ptr %i.age, align 8, !range !315, !noalias !1798, !noundef !8 ; 2 uses
  %.not.i.i174 = icmp eq i32 %i.ahx, 1000000000
  br i1 %.not.i.i174, label %bb.lc, label %bb.lb

bb.kx:                                            ; preds = %bb.kv
  store ptr %i.agy, ptr %i.i, align 8, !alias.scope !1801, !noalias !1798
  %i.ahy = load i64, ptr %i.agh, align 8, !noalias !1804, !noundef !8
  %i.ahz = add i64 %i.ahy, %i.ago                 ; 2 uses
  store i64 %i.ahz, ptr %i.agf, align 8, !alias.scope !1801, !noalias !1798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1798
  %i.aia = getelementptr inbounds nuw i8, ptr %i.agy, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8, !noalias !1798 ; 4 uses
  store atomic i64 %i.ahz, ptr %i.agy release, align 8, !noalias !1798
  store ptr %i.aib, ptr %i.h, align 8, !noalias !1798
  %i.aic = getelementptr inbounds nuw i8, ptr %i.gp, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.aic)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7a474dea6cbbd931E.exit" unwind label %bb.ky, !noalias !1798

bb.ky:                                            ; preds = %bb.kx
  %i.aid = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aie = icmp eq ptr %i.aib, null
  br i1 %i.aie, label %.body177, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %.body177 unwind label %bb.la, !noalias !1798

bb.la:                                            ; preds = %bb.kz
  %i.aif = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1798
  unreachable

bb.lb:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h3aea48e74c5f59b9E.exit.i.i"
  %i.aig = load i64, ptr %i.j, align 8, !noalias !1798, !noundef !8 ; 2 uses
  %i.aih = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc179:                                        ; preds = %bb.lb
  %i.aii = extractvalue { i64, i32 } %i.aih, 0    ; 2 uses
  %i.aij = icmp eq i64 %i.aii, %i.aig
  br i1 %i.aij, label %.split.i.i, label %bb.lp

bb.lc:                                            ; preds = %bb.lp, %.split.i.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h3aea48e74c5f59b9E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1808
  store ptr %i.i, ptr %i.g, align 8, !noalias !1798
  store ptr %i.gp, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1798
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx.i.i172, align 8, !noalias !1798
  %i.aik = load i8, ptr %i.agn, align 8, !range !1422, !noalias !1811, !noundef !8
  %i.ail = icmp eq i8 %i.aik, 1
  br i1 %i.ail, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i, !prof !145

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i: ; preds = %bb.lc
  %i.aim = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hdedf86108203ab65E"(ptr noundef nonnull align 8 %i.agm, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc180:                                        ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i
  %i.ain = icmp eq ptr %i.aim, null
  br i1 %i.ain, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0fe22dba7fe8b63dE.exit.i.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i: ; preds = %.noexc180, %bb.lc
  %.sroa.0.0.i.i.i2.i.i.i.i = phi ptr [ %i.aim, %.noexc180 ], [ %i.agm, %bb.lc ] ; 4 uses
  %i.aio = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808, !noundef !8 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808
  %.not.i.i.i.i.i = icmp eq ptr %i.aio, null
  br i1 %.not.i.i.i.i.i, label %bb.ld, label %bb.lj, !prof !136

bb.ld:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1808
  %i.aip = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE()
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc181:                                        ; preds = %bb.ld
  store ptr %i.aip, ptr %i.f, align 8, !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1808
  store ptr %i.i, ptr %i.d, align 8, !noalias !1808
  store ptr %i.gp, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i, align 8, !noalias !1798
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i, align 8, !noalias !1798
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8aa035172ddcce05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %i.aip)
          to label %bb.lg unwind label %bb.le, !noalias !1808

bb.le:                                            ; preds = %.noexc181
  %i.aiq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.air = load ptr, ptr %i.f, align 8, !alias.scope !1827, !noalias !1808, !nonnull !8, !noundef !8
  %i.ais = atomicrmw sub ptr %i.air, i64 1 release, align 8, !noalias !1828
  %i.ait = icmp eq i64 %i.ais, 1
  br i1 %i.ait, label %bb.lf, label %.body177

bb.lf:                                            ; preds = %bb.le
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body177 unwind label %bb.li, !noalias !1808

bb.lg:                                            ; preds = %.noexc181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1808
  call void @llvm.experimental.noalias.scope.decl(metadata !1829)
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  %i.aiu = load ptr, ptr %i.f, align 8, !alias.scope !1838, !noalias !1808, !nonnull !8, !noundef !8
  %i.aiv = atomicrmw sub ptr %i.aiu, i64 1 release, align 8, !noalias !1839
  %i.aiw = icmp eq i64 %i.aiv, 1
  br i1 %i.aiw, label %bb.lh, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i"

bb.lh:                                            ; preds = %bb.lg
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i": ; preds = %bb.lh, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1808
  br label %_ZN3std4sync4mpmc7context7Context4with17hdf2b7c5400951949E.exit.i.i

bb.li:                                            ; preds = %bb.lo, %bb.lf
  %i.aix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !1808
  unreachable

bb.lj:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1808
  store ptr %i.aio, ptr %i.e, align 8, !noalias !1808
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aio, i64 24
  store atomic i64 0, ptr %i.aiy release, align 8, !noalias !1808
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aio, i64 32
  store atomic ptr null, ptr %i.aiz release, align 8, !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1808
  store ptr %i.i, ptr %i.c, align 8, !noalias !1808
  store ptr %i.gp, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i, align 8, !noalias !1798
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i, align 8, !noalias !1798
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h8aa035172ddcce05E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.aio)
          to label %bb.lk unwind label %bb.ln, !noalias !1808

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1808
  %i.aja = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808, !noundef !8 ; 3 uses
  store ptr %i.aja, ptr %i.b, align 8, !noalias !1808
  store ptr %i.aio, ptr %.sroa.0.0.i.i.i2.i.i.i.i, align 8, !noalias !1808
  %i.ajb = icmp eq ptr %i.aja, null
  br i1 %i.ajb, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i", label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.ajc = atomicrmw sub ptr %i.aja, i64 1 release, align 8, !noalias !1840
  %i.ajd = icmp eq i64 %i.ajc, 1
  br i1 %i.ajd, label %bb.lm, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i"

bb.lm:                                            ; preds = %bb.ll
  fence acquire
end_hunk_1
begin_hunk_2_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h21c7fa30fe47c32bE:bb.a
          cleanup
  invoke fastcc void @"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_rt..arbiter..ArbiterHandle$GT$$GT$17h7f03f5b6e50d97e9E"(ptr noalias noundef align 8 dereferenceable(8) %i.aw) #36
          to label %.thread107.i unwind label %bb.ad, !noalias !2488

bb.ag:                                            ; preds = %bb.o
  invoke void @_ZN3std6thread5local18panic_access_error17h958a6a48f343130fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #35
          to label %.noexc19.i unwind label %bb.n, !noalias !2488

.noexc19.i:                                       ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.y, %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5121bd2d41adeb8eE.exit.i.i.i.i.i.i.i.i", %bb.t
  %i.dj = load ptr, ptr %i.aw, align 8, !noalias !2488, !noundef !8
  store ptr %i.dj, ptr %i.ci, align 8, !noalias !2488
  %i.dk = load i64, ptr %i.ca, align 8, !noalias !2488, !noundef !8
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.ca, align 8, !noalias !2488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2488
  invoke void @_ZN8actix_rt6system6System7current17h1e42218e10b876dfE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be)
          to label %bb.ai unwind label %bb.n, !noalias !2488

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2488
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !2488, !noundef !8
  %i.do = load ptr, ptr %i.bh, align 8, !noalias !2488, !nonnull !8, !noundef !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %i.dn, ptr %i.dp, align 8, !noalias !2488
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.do, ptr %i.dq, align 8, !noalias !2488
  store i32 1, ptr %i.bd, align 8, !noalias !2488
  invoke fastcc void @"_ZN5tokio4sync4mpsc9unbounded24UnboundedSender$LT$T$GT$4send17h45f26b1e6b1c7a10E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.be, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bd)
          to label %bb.ak unwind label %bb.aj, !noalias !2488

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.be) #36
          to label %.thread113.i unwind label %bb.lk, !noalias !2488

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !2488
  %i.ds = load i32, ptr %i.bf, align 8, !range !2534, !alias.scope !2535, !noalias !2488, !noundef !8
  %i.dt = icmp eq i32 %i.ds, 3
  br i1 %i.dt, label %"_ZN4core3ptr134drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..sync..mpsc..error..SendError$LT$actix_rt..system..SystemCommand$GT$$GT$$GT$17hffd1700d9e436f5aE.exit.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$actix_rt..system..SystemCommand$GT$17h7dec8563d669393aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %"_ZN4core3ptr134drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..sync..mpsc..error..SendError$LT$actix_rt..system..SystemCommand$GT$$GT$$GT$17hffd1700d9e436f5aE.exit.i" unwind label %bb.aj, !noalias !2488

"_ZN4core3ptr134drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..sync..mpsc..error..SendError$LT$actix_rt..system..SystemCommand$GT$$GT$$GT$17hffd1700d9e436f5aE.exit.i": ; preds = %bb.al, %bb.ak
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$actix_rt..system..System$GT$17h1489ed22c2a3321cE"(ptr noalias noundef align 8 dereferenceable(24) %i.be)
          to label %bb.am unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

bb.am:                                            ; preds = %"_ZN4core3ptr134drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$tokio..sync..mpsc..error..SendError$LT$actix_rt..system..SystemCommand$GT$$GT$$GT$17hffd1700d9e436f5aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !2488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !2488
  %.val12.i = load i64, ptr %0, align 8, !range !702, !alias.scope !2488, !noundef !8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.du, align 8, !alias.scope !2488 ; 37 uses
  switch i64 %.val12.i, label %default.unreachable [
    i64 0, label %bb.an
    i64 1, label %bb.bp
    i64 2, label %bb.ch
  ]

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2488
  %i.dv = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.dv, align 8, !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !2488
  %i.dw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.val13.i, i64 128 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val13.i, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i8 0, i64 40, i1 false), !noalias !2488
  %i.dz = load atomic i64, ptr %i.dx monotonic, align 8, !noalias !2538 ; 2 uses
  %i.ea = load i64, ptr %i.dy, align 16, !noalias !2538, !noundef !8 ; 2 uses
  %i.eb = and i64 %i.ea, %i.dz
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.i.lr.ph.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h30b888969a758590E.exit.i.i"

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %bb.an
  %i.ed = getelementptr inbounds nuw i8, ptr %.val13.i, i64 392 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val13.i, i64 408
  %i.ef = getelementptr inbounds nuw i8, ptr %.val13.i, i64 416
  %i.eg = getelementptr inbounds nuw i8, ptr %.val13.i, i64 384
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.eh = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i, %.lr.ph.i.lr.ph.i.i.i
  %i.ej = phi i64 [ %i.ea, %.lr.ph.i.lr.ph.i.i.i ], [ %i.he, %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i ]
  %i.ek = phi i64 [ %i.dz, %.lr.ph.i.lr.ph.i.i.i ], [ %i.hd, %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i, %.lr.ph.i.i.i.i
  %i.el = phi i64 [ %i.ej, %.lr.ph.i.i.i.i ], [ %i.fp, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i ]
  %.sroa.01.034.i.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i.i.i ], [ %i.fo, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i ] ; 8 uses
  %.sroa.0.02833.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i ] ; 14 uses
  %i.em = add i64 %i.el, -1
  %i.en = and i64 %i.em, %.sroa.01.034.i.i.i.i    ; 4 uses
  %i.eo = load i64, ptr %i.ed, align 8, !noalias !2543, !noundef !8
  %i.ep = sub i64 0, %i.eo
  %i.eq = and i64 %.sroa.01.034.i.i.i.i, %i.ep
  %i.er = load ptr, ptr %i.ee, align 8, !noalias !2543, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.es = load i64, ptr %i.ef, align 16, !noalias !2543, !noundef !8
  %i.et = icmp ult i64 %i.en, %i.es
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.en
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8, !noalias !2543 ; 2 uses
  %i.ew = icmp eq i64 %.sroa.01.034.i.i.i.i, %i.ev
  br i1 %i.ew, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ex = load i64, ptr %i.ed, align 8, !noalias !2543, !noundef !8
  %i.ey = add i64 %i.ex, %i.ev
  %i.ez = add i64 %.sroa.01.034.i.i.i.i, 1
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.au, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fb = add nuw i64 %i.en, 1
  %i.fc = load i64, ptr %i.eg, align 128, !noalias !2543, !noundef !8
  %i.fd = icmp ult i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ax, label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.fe = icmp ult i32 %.sroa.0.02833.i.i.i.i, 7
  br i1 %i.fe, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i unwind label %.thread125.loopexit.i, !noalias !2488

bb.at:                                            ; preds = %bb.ar
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.02833.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.at
  %i.ff = mul nuw i32 %.sroa.0.02833.i.i.i.i, %.sroa.0.02833.i.i.i.i ; 2 uses
  %xtraiter501 = and i32 %i.ff, 7                 ; 3 uses
  %i.fg = icmp ult i32 %.sroa.0.02833.i.i.i.i, 3
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter505 = and i32 %i.ff, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter506 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter506.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  %niter506.next.7 = add i32 %niter506, 8         ; 2 uses
  %niter506.ncmp.7 = icmp eq i32 %niter506.next.7, %unroll_iter505
  br i1 %niter506.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod503.not = icmp eq i32 %xtraiter501, 0
  br i1 %lcmp.mod503.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod504 = icmp ne i32 %xtraiter501, 0
  call void @llvm.assume(i1 %lcmp.mod504)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter502 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter502.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  %epil.iter502.next = add i32 %epil.iter502, 1   ; 2 uses
  %epil.iter502.cmp.not = icmp eq i32 %epil.iter502.next, %xtraiter501
  br i1 %epil.iter502.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !2544

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.at, %bb.as
  %i.fh = add i32 %.sroa.0.02833.i.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i

bb.au:                                            ; preds = %bb.ap
  fence seq_cst
  %i.fi = load atomic i64, ptr %.val13.i monotonic, align 16, !noalias !2543
  %i.fj = load i64, ptr %i.ed, align 8, !noalias !2543, !noundef !8
  %i.fk = add i64 %i.fj, %i.fi
  %i.fl = icmp eq i64 %i.fk, %.sroa.01.034.i.i.i.i
  br i1 %i.fl, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h455f8ad5d5ff14f2E.exit.i.i.i", label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.i.i.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02833.i.i.i.i, i32 6) ; 2 uses
  %1 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i ; 2 uses
  %.not.i11.i.i.i.i = icmp eq i32 %.sroa.0.02833.i.i.i.i, 0
  br i1 %.not.i11.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i, label %.lr.ph.i12.i.i.i.i.preheader

.lr.ph.i12.i.i.i.i.preheader:                     ; preds = %bb.av
  %xtraiter507 = and i32 %1, 5                    ; 3 uses
  %i.fm = icmp ult i32 %.sroa.0.02833.i.i.i.i, 3
  br i1 %i.fm, label %.lr.ph.i12.i.i.i.i.epil.preheader, label %.lr.ph.i12.i.i.i.i.preheader.new

.lr.ph.i12.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i12.i.i.i.i.preheader
  %unroll_iter511 = and i32 %1, 56
  br label %.lr.ph.i12.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i.unr-lcssa:         ; preds = %.lr.ph.i12.i.i.i.i
  %lcmp.mod509.not = icmp eq i32 %xtraiter507, 0
  br i1 %lcmp.mod509.not, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i12.i.i.i.i.epil.preheader

.lr.ph.i12.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.loopexit.i.i.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.i.i.preheader
  %lcmp.mod510 = icmp ne i32 %xtraiter507, 0
  call void @llvm.assume(i1 %lcmp.mod510)
  br label %.lr.ph.i12.i.i.i.i.epil

.lr.ph.i12.i.i.i.i.epil:                          ; preds = %.lr.ph.i12.i.i.i.i.epil, %.lr.ph.i12.i.i.i.i.epil.preheader
  %epil.iter508 = phi i32 [ 0, %.lr.ph.i12.i.i.i.i.epil.preheader ], [ %epil.iter508.next, %.lr.ph.i12.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  %epil.iter508.next = add i32 %epil.iter508, 1   ; 2 uses
  %epil.iter508.cmp.not = icmp eq i32 %epil.iter508.next, %xtraiter507
  br i1 %epil.iter508.cmp.not, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i12.i.i.i.i.epil, !llvm.loop !2545

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i12.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i.i.i.unr-lcssa
  %i.fn = add i32 %.sroa.0.02833.i.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i

.lr.ph.i12.i.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i.i, %.lr.ph.i12.i.i.i.i.preheader.new
  %niter512 = phi i32 [ 0, %.lr.ph.i12.i.i.i.i.preheader.new ], [ %niter512.next.7, %.lr.ph.i12.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  %niter512.next.7 = add i32 %niter512, 8         ; 2 uses
  %niter512.ncmp.7 = icmp eq i32 %niter512.next.7, %unroll_iter511
  br i1 %niter512.ncmp.7, label %._crit_edge.loopexit.i.i.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i: ; preds = %._crit_edge.loopexit.i20.i.i.i.i, %bb.az, %._crit_edge.loopexit.i.i.i.i.i, %bb.av, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %i.fh, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.i.i ], [ 1, %bb.az ], [ %i.fx, %._crit_edge.loopexit.i20.i.i.i.i ], [ %i.fn, %._crit_edge.loopexit.i.i.i.i.i ], [ 1, %bb.av ]
  %i.fo = load atomic i64, ptr %i.dx monotonic, align 16, !noalias !2543 ; 2 uses
  %i.fp = load i64, ptr %i.dy, align 16, !noalias !2543, !noundef !8 ; 2 uses
  %i.fq = and i64 %i.fp, %i.fo
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.ao, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h30b888969a758590E.exit.i.i"

bb.aw:                                            ; preds = %bb.aq
  %i.fs = load i64, ptr %i.ed, align 8, !noalias !2543, !noundef !8
  %i.ft = add i64 %i.fs, %i.eq
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aq
  %i.fu = add i64 %.sroa.01.034.i.i.i.i, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.010.0.i.i.i.i = phi i64 [ %i.fu, %bb.ax ], [ %i.ft, %bb.aw ]
  %i.fv = cmpxchg weak ptr %i.dx, i64 %.sroa.01.034.i.i.i.i, i64 %.sroa.010.0.i.i.i.i seq_cst monotonic, align 8, !noalias !2543
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.fv, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hd0adc2385614b8d5E.exit.i.i.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.i.i15.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02833.i.i.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i.i.i, %.sroa.0.0.i.i15.i.i.i.i ; 2 uses
  %.not.i16.i.i.i.i = icmp eq i32 %.sroa.0.02833.i.i.i.i, 0
  br i1 %.not.i16.i.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i, label %.lr.ph.i17.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.preheader:                     ; preds = %bb.az
  %xtraiter513 = and i32 %2, 5                    ; 3 uses
  %i.fw = icmp ult i32 %.sroa.0.02833.i.i.i.i, 3
  br i1 %i.fw, label %.lr.ph.i17.i.i.i.i.epil.preheader, label %.lr.ph.i17.i.i.i.i.preheader.new

.lr.ph.i17.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i17.i.i.i.i.preheader
  %unroll_iter517 = and i32 %2, 56
  br label %.lr.ph.i17.i.i.i.i

._crit_edge.loopexit.i20.i.i.i.i.unr-lcssa:       ; preds = %.lr.ph.i17.i.i.i.i
  %lcmp.mod515.not = icmp eq i32 %xtraiter513, 0
  br i1 %lcmp.mod515.not, label %._crit_edge.loopexit.i20.i.i.i.i, label %.lr.ph.i17.i.i.i.i.epil.preheader

.lr.ph.i17.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.loopexit.i20.i.i.i.i.unr-lcssa, %.lr.ph.i17.i.i.i.i.preheader
  %lcmp.mod516 = icmp ne i32 %xtraiter513, 0
  call void @llvm.assume(i1 %lcmp.mod516)
  br label %.lr.ph.i17.i.i.i.i.epil

.lr.ph.i17.i.i.i.i.epil:                          ; preds = %.lr.ph.i17.i.i.i.i.epil, %.lr.ph.i17.i.i.i.i.epil.preheader
  %epil.iter514 = phi i32 [ 0, %.lr.ph.i17.i.i.i.i.epil.preheader ], [ %epil.iter514.next, %.lr.ph.i17.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  %epil.iter514.next = add i32 %epil.iter514, 1   ; 2 uses
  %epil.iter514.cmp.not = icmp eq i32 %epil.iter514.next, %xtraiter513
  br i1 %epil.iter514.cmp.not, label %._crit_edge.loopexit.i20.i.i.i.i, label %.lr.ph.i17.i.i.i.i.epil, !llvm.loop !2546

._crit_edge.loopexit.i20.i.i.i.i:                 ; preds = %.lr.ph.i17.i.i.i.i.epil, %._crit_edge.loopexit.i20.i.i.i.i.unr-lcssa
  %i.fx = add i32 %.sroa.0.02833.i.i.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %.lr.ph.i17.i.i.i.i, %.lr.ph.i17.i.i.i.i.preheader.new
  %niter518 = phi i32 [ 0, %.lr.ph.i17.i.i.i.i.preheader.new ], [ %niter518.next.7, %.lr.ph.i17.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  call void @llvm.x86.sse2.pause() #24, !noalias !2543
  %niter518.next.7 = add i32 %niter518, 8         ; 2 uses
  %niter518.ncmp.7 = icmp eq i32 %niter518.next.7, %unroll_iter517
  br i1 %niter518.ncmp.7, label %._crit_edge.loopexit.i20.i.i.i.i.unr-lcssa, label %.lr.ph.i17.i.i.i.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h455f8ad5d5ff14f2E.exit.i.i.i": ; preds = %bb.au
  %i.fy = load i32, ptr %i.dv, align 8, !range !315, !noalias !2488, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.fy, 1000000000
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ba

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hd0adc2385614b8d5E.exit.i.i.i": ; preds = %bb.ay
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.en ; 2 uses
  store ptr %i.fz, ptr %i.au, align 8, !alias.scope !2541, !noalias !2488
  %i.ga = add i64 %.sroa.01.034.i.i.i.i, 1        ; 2 uses
  store i64 %i.ga, ptr %i.dw, align 8, !alias.scope !2541, !noalias !2488
  store atomic i64 %i.ga, ptr %i.fz release, align 8, !noalias !2488
  %i.gb = getelementptr inbounds nuw i8, ptr %.val13.i, i64 320
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.gb)
          to label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h30b888969a758590E.exit.i.i" unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

bb.ba:                                            ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h455f8ad5d5ff14f2E.exit.i.i.i"
  %i.gc = load i64, ptr %i.av, align 8, !noalias !2488, !noundef !8 ; 2 uses
  %i.gd = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %.noexc26.i unwind label %.thread125.loopexit.split-lp.loopexit.i, !noalias !2488 ; 2 uses

.noexc26.i:                                       ; preds = %bb.ba
  %i.ge = extractvalue { i64, i32 } %i.gd, 0      ; 2 uses
  %i.gf = icmp eq i64 %i.ge, %i.gc
  br i1 %i.gf, label %.split.i.i.i, label %bb.bo

bb.bb:                                            ; preds = %bb.bo, %.split.i.i.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h455f8ad5d5ff14f2E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !2547
  store ptr %i.au, ptr %i.at, align 8, !noalias !2488
  store ptr %.val13.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2488
  store ptr %i.av, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !2488
  %i.gg = load i8, ptr %i.ei, align 8, !range !1422, !noalias !2550, !noundef !8
  %i.gh = icmp eq i8 %i.gg, 1
  br i1 %i.gh, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i.i, !prof !145

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.gi = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hdedf86108203ab65E"(ptr noundef nonnull align 8 %i.eh, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc27.i unwind label %.thread125.loopexit.split-lp.loopexit.i, !noalias !2488 ; 2 uses

.noexc27.i:                                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i.i.i
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17ha44d492275b46648E.exit.i.i.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i.i: ; preds = %.noexc27.i, %bb.bb
  %.sroa.0.0.i.i.i2.i.i.i.i.i = phi ptr [ %i.gi, %.noexc27.i ], [ %i.eh, %bb.bb ] ; 4 uses
  %i.gk = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !2547, !noundef !8 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !2547
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bc, label %bb.bi, !prof !136

bb.bc:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !2547
  %i.gl = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE()
          to label %.noexc28.i unwind label %.thread125.loopexit.split-lp.loopexit.i, !noalias !2488 ; 2 uses

.noexc28.i:                                       ; preds = %bb.bc
  store ptr %i.gl, ptr %i.as, align 8, !noalias !2547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2547
  store ptr %i.au, ptr %i.aq, align 8, !noalias !2547
  store ptr %.val13.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !2488
  store ptr %i.av, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i, align 8, !noalias !2488
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17haf216afaed1664c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aq, ptr nonnull %i.gl)
          to label %bb.bf unwind label %bb.bd, !noalias !2547

bb.bd:                                            ; preds = %.noexc28.i
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  call void @llvm.experimental.noalias.scope.decl(metadata !2560)
  call void @llvm.experimental.noalias.scope.decl(metadata !2563)
  %i.gn = load ptr, ptr %i.as, align 8, !alias.scope !2566, !noalias !2547, !nonnull !8, !noundef !8
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !2567
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.be, label %.thread113.i

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %.thread113.i unwind label %bb.bh, !noalias !2547

bb.bf:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2547
  call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  call void @llvm.experimental.noalias.scope.decl(metadata !2571)
  call void @llvm.experimental.noalias.scope.decl(metadata !2574)
  %i.gq = load ptr, ptr %i.as, align 8, !alias.scope !2577, !noalias !2547, !nonnull !8, !noundef !8
  %i.gr = atomicrmw sub ptr %i.gq, i64 1 release, align 8, !noalias !2578
  %i.gs = icmp eq i64 %i.gr, 1
  br i1 %i.gs, label %bb.bg, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i.i"

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i.i" unwind label %.thread125.loopexit.split-lp.loopexit.i, !noalias !2488

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i.i": ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2547
  br label %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i

bb.bh:                                            ; preds = %bb.bn, %bb.be
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2547
  unreachable

bb.bi:                                            ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2547
  store ptr %i.gk, ptr %i.ar, align 8, !noalias !2547
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store atomic i64 0, ptr %i.gu release, align 8, !noalias !2547
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store atomic ptr null, ptr %i.gv release, align 8, !noalias !2547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2547
  store ptr %i.au, ptr %i.ap, align 8, !noalias !2547
  store ptr %.val13.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i.i, align 8, !noalias !2488
  store ptr %i.av, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i, align 8, !noalias !2488
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17haf216afaed1664c9E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ap, ptr nonnull %i.gk)
          to label %bb.bj unwind label %bb.bm, !noalias !2547

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2547
  %i.gw = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !2547, !noundef !8 ; 3 uses
  store ptr %i.gw, ptr %i.ao, align 8, !noalias !2547
  store ptr %i.gk, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !2547
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i.i", label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gy = atomicrmw sub ptr %i.gw, i64 1 release, align 8, !noalias !2579
  %i.gz = icmp eq i64 %i.gy, 1
  br i1 %i.gz, label %bb.bl, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i.i"

bb.bl:                                            ; preds = %bb.bk
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i.i" unwind label %.thread125.loopexit.split-lp.loopexit.i, !noalias !2488

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i.i": ; preds = %bb.bl, %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2547
  br label %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i

bb.bm:                                            ; preds = %bb.bi
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = atomicrmw sub ptr %i.gk, i64 1 release, align 8, !noalias !2588
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bn, label %.thread113.i

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %.thread113.i unwind label %bb.bh, !noalias !2547

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17ha44d492275b46648E.exit.i.i.i.i": ; preds = %.noexc27.i
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17ha1886b09161f11caE"(ptr nonnull %i.at)
          to label %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i unwind label %.thread125.loopexit.split-lp.loopexit.i, !noalias !2488

_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i: ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17ha44d492275b46648E.exit.i.i.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2547
  %i.hd = load atomic i64, ptr %i.dx monotonic, align 16, !noalias !2595 ; 2 uses
  %i.he = load i64, ptr %i.dy, align 16, !noalias !2595, !noundef !8 ; 2 uses
  %i.hf = and i64 %i.he, %i.hd
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.i.i.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h30b888969a758590E.exit.i.i"

.split.i.i.i:                                     ; preds = %.noexc26.i
  %i.hh = extractvalue { i64, i32 } %i.gd, 1      ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 1000000000
  call void @llvm.assume(i1 %i.hi)
  %.not18.i.i.i = icmp samesign ult i32 %i.hh, %i.fy
  br i1 %.not18.i.i.i, label %bb.bb, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h30b888969a758590E.exit.i.i"

bb.bo:                                            ; preds = %.noexc26.i
  %.not17.i.i.i = icmp slt i64 %i.ge, %i.gc
  br i1 %.not17.i.i.i, label %bb.bb, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h30b888969a758590E.exit.i.i"

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h30b888969a758590E.exit.i.i": ; preds = %bb.bo, %.split.i.i.i, %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hd0adc2385614b8d5E.exit.i.i.i", %bb.an
  %.sroa.0.0.i.i.i = phi i8 [ 1, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i.i.i ], [ 1, %bb.an ], [ 2, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hd0adc2385614b8d5E.exit.i.i.i" ], [ 0, %bb.bo ], [ 0, %.split.i.i.i ], [ 1, %_ZN3std4sync4mpmc7context7Context4with17h267edb973acb5194E.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !2488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2488
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.i.i"

bb.bp:                                            ; preds = %bb.am
  %i.hj = getelementptr inbounds nuw i8, ptr %.val13.i, i64 128 ; 5 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8, !noalias !2597 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.val13.i, i64 136 ; 5 uses
  %i.hm = load atomic ptr, ptr %i.hl acquire, align 8, !noalias !2597
  %i.hn = and i64 %i.hk, 1
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.lr.ph.i.i.i.i, label %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hda1c33b8c389c7c1E.exit.fold.split.i.i"

.lr.ph.lr.ph.i.i.i.i:                             ; preds = %bb.bp
  %i.hp = getelementptr inbounds nuw i8, ptr %.val13.i, i64 8
  br label %.lr.ph.i.i5.i.i

.lr.ph.i.i5.i.i:                                  ; preds = %.outer.backedge.i.i.i.i, %.lr.ph.lr.ph.i.i.i.i
  %.sroa.01.0.ph89.i.i.i.i = phi i64 [ %i.hk, %.lr.ph.lr.ph.i.i.i.i ], [ %i.im, %.outer.backedge.i.i.i.i ] ; 2 uses
  %.sroa.05.0.ph88.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.lr.ph.i.i.i.i ], [ %i.in, %.outer.backedge.i.i.i.i ]
  %.sroa.0.0.ph87.i.i.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i.i.i ], [ %.sroa.0.0.ph.be.i.i.i.i, %.outer.backedge.i.i.i.i ] ; 2 uses
  %.sroa.043.0.ph86.i.i.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i.i.i ], [ %.sroa.043.0.ph.be.i.i.i.i, %.outer.backedge.i.i.i.i ] ; 4 uses
  %i.hq = lshr exact i64 %.sroa.01.0.ph89.i.i.i.i, 1
  %i.hr = and i64 %i.hq, 31                       ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 31
  br i1 %i.hs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.bq:                                            ; preds = %.loopexit.i.i.i.i
  %i.ht = add i32 %.sroa.0.082.i42.i.i.i, 1       ; 2 uses
  %i.hu = lshr exact i64 %i.iq, 1
  %i.hv = and i64 %i.hu, 31                       ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 31
  br i1 %i.hw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.bq, %.lr.ph.i.i5.i.i
  %.sroa.01.084.i.lcssa.i.i.i = phi i64 [ %.sroa.01.0.ph89.i.i.i.i, %.lr.ph.i.i5.i.i ], [ %i.iq, %bb.bq ] ; 2 uses
  %.sroa.05.083.i.lcssa.i.i.i = phi ptr [ %.sroa.05.0.ph88.i.i.i.i, %.lr.ph.i.i5.i.i ], [ %i.ir, %bb.bq ] ; 2 uses
  %.sroa.0.082.i.lcssa.i.i.i = phi i32 [ %.sroa.0.0.ph87.i.i.i.i, %.lr.ph.i.i5.i.i ], [ %i.ht, %bb.bq ] ; 6 uses
  %.lcssa.i.i.i = phi i64 [ %i.hr, %.lr.ph.i.i5.i.i ], [ %i.hv, %bb.bq ] ; 2 uses
  %.not64.i.i.i.i = icmp eq i64 %.lcssa.i.i.i, 30 ; 2 uses
  %.not.i.i.i22.i = icmp eq ptr %.sroa.043.0.ph86.i.i.i.i, null
  %or.cond.i.i.i.i = select i1 %.not64.i.i.i.i, i1 %.not.i.i.i22.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.bt, label %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i"

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i5.i.i, %bb.bq
  %.sroa.0.082.i42.i.i.i = phi i32 [ %i.ht, %bb.bq ], [ %.sroa.0.0.ph87.i.i.i.i, %.lr.ph.i.i5.i.i ] ; 6 uses
  %i.hx = icmp ult i32 %.sroa.0.082.i42.i.i.i, 7
  br i1 %i.hx, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.loopexit.i.i.i.i unwind label %.loopexit65.i.i.i.i, !noalias !2597

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %.not.i.i.i9.i.i = icmp eq i32 %.sroa.0.082.i42.i.i.i, 0
  br i1 %.not.i.i.i9.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i10.i.i.preheader

.lr.ph.i.i.i10.i.i.preheader:                     ; preds = %bb.bs
  %i.hy = mul nuw i32 %.sroa.0.082.i42.i.i.i, %.sroa.0.082.i42.i.i.i ; 2 uses
  %xtraiter = and i32 %i.hy, 7                    ; 3 uses
  %i.hz = icmp ult i32 %.sroa.0.082.i42.i.i.i, 3
  br i1 %i.hz, label %.lr.ph.i.i.i10.i.i.epil.preheader, label %.lr.ph.i.i.i10.i.i.preheader.new

.lr.ph.i.i.i10.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i10.i.i.preheader
  %unroll_iter = and i32 %i.hy, 56
  br label %.lr.ph.i.i.i10.i.i

.lr.ph.i.i.i10.i.i:                               ; preds = %.lr.ph.i.i.i10.i.i, %.lr.ph.i.i.i10.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i10.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i10.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i10.i.i

"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i": ; preds = %bb.bt, %._crit_edge.i.i.i
  %.sroa.043.1.i.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i.i, %._crit_edge.i.i.i ], [ %i.ib, %bb.bt ] ; 9 uses
  %i.ia = icmp eq ptr %.sroa.05.083.i.lcssa.i.i.i, null
  br i1 %i.ia, label %bb.bu, label %bb.ca

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2597
  %i.ib = call noalias noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 256, i64 noundef 8) #24, !noalias !2597 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %.noexc24.i.i.i.i, label %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i", !prof !136

.noexc24.i.i.i.i:                                 ; preds = %bb.bt
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 256) #35
          to label %.noexc36.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc36.i:                                       ; preds = %.noexc24.i.i.i.i
  unreachable

bb.bu:                                            ; preds = %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2597
  %i.id = call noalias noundef align 8 dereferenceable_or_null(256) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 256, i64 noundef 8) #24, !noalias !2597 ; 6 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.bv, label %bb.bw, !prof !136

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 256) #35
          to label %.noexc25.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2597

.noexc25.i.i.i.i:                                 ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.if = cmpxchg ptr %i.hl, ptr null, ptr %i.id release monotonic, align 8, !noalias !2597
  %i.ig = extractvalue { ptr, i1 } %i.if, 1
  br i1 %i.ig, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store atomic ptr %i.id, ptr %i.hp release, align 8, !noalias !2597
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.ih = icmp eq ptr %.sroa.043.1.i.i.i.i, null
  br i1 %i.ih, label %.outer.backedge.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2597
  br label %.outer.backedge.i.i.i.i

bb.ca:                                            ; preds = %bb.bx, %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i"
  %.sroa.05.1.i.i.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$$LP$$RP$$GT$$GT$$GT$$GT$17h8f3d686797bca2c0E.exit.i.i.i.i" ], [ %i.id, %bb.bx ] ; 3 uses
  %i.ii = add i64 %.sroa.01.084.i.lcssa.i.i.i, 2
  %i.ij = cmpxchg weak ptr %i.hj, i64 %.sroa.01.084.i.lcssa.i.i.i, i64 %i.ii seq_cst acquire, align 8, !noalias !2597
  %.sroa.18.0.in.i.i.i6.i.i = extractvalue { i64, i1 } %i.ij, 1
  br i1 %.sroa.18.0.in.i.i.i6.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.0.0.i.i.i.i7.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i.i.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i7.i.i, %.sroa.0.0.i.i.i.i7.i.i ; 2 uses
  %.not.i30.i.i.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i.i.i, 0
  br i1 %.not.i30.i.i.i.i, label %.outer.backedge.i.i.i.i, label %.lr.ph.i31.i.i.i.i.preheader

.lr.ph.i31.i.i.i.i.preheader:                     ; preds = %bb.cb
  %xtraiter495 = and i32 %3, 5                    ; 3 uses
  %i.ik = icmp ult i32 %.sroa.0.082.i.lcssa.i.i.i, 3
  br i1 %i.ik, label %.lr.ph.i31.i.i.i.i.epil.preheader, label %.lr.ph.i31.i.i.i.i.preheader.new

.lr.ph.i31.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i31.i.i.i.i.preheader
  %unroll_iter499 = and i32 %3, 56
  br label %.lr.ph.i31.i.i.i.i

._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa:        ; preds = %.lr.ph.i31.i.i.i.i
  %lcmp.mod497.not = icmp eq i32 %xtraiter495, 0
  br i1 %lcmp.mod497.not, label %._crit_edge.loopexit.i.i.i8.i.i, label %.lr.ph.i31.i.i.i.i.epil.preheader

.lr.ph.i31.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa, %.lr.ph.i31.i.i.i.i.preheader
  %lcmp.mod498 = icmp ne i32 %xtraiter495, 0
  call void @llvm.assume(i1 %lcmp.mod498)
  br label %.lr.ph.i31.i.i.i.i.epil

.lr.ph.i31.i.i.i.i.epil:                          ; preds = %.lr.ph.i31.i.i.i.i.epil, %.lr.ph.i31.i.i.i.i.epil.preheader
  %epil.iter496 = phi i32 [ 0, %.lr.ph.i31.i.i.i.i.epil.preheader ], [ %epil.iter496.next, %.lr.ph.i31.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %epil.iter496.next = add i32 %epil.iter496, 1   ; 2 uses
  %epil.iter496.cmp.not = icmp eq i32 %epil.iter496.next, %xtraiter495
  br i1 %epil.iter496.cmp.not, label %._crit_edge.loopexit.i.i.i8.i.i, label %.lr.ph.i31.i.i.i.i.epil, !llvm.loop !2600

._crit_edge.loopexit.i.i.i8.i.i:                  ; preds = %.lr.ph.i31.i.i.i.i.epil, %._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa
  %i.il = add i32 %.sroa.0.082.i.lcssa.i.i.i, 1
  br label %.outer.backedge.i.i.i.i

.lr.ph.i31.i.i.i.i:                               ; preds = %.lr.ph.i31.i.i.i.i, %.lr.ph.i31.i.i.i.i.preheader.new
  %niter500 = phi i32 [ 0, %.lr.ph.i31.i.i.i.i.preheader.new ], [ %niter500.next.7, %.lr.ph.i31.i.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %niter500.next.7 = add i32 %niter500, 8         ; 2 uses
  %niter500.ncmp.7 = icmp eq i32 %niter500.next.7, %unroll_iter499
  br i1 %niter500.ncmp.7, label %._crit_edge.loopexit.i.i.i8.i.i.unr-lcssa, label %.lr.ph.i31.i.i.i.i

bb.cc:                                            ; preds = %bb.ca
  br i1 %.not64.i.i.i.i, label %bb.cd, label %.critedge.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %.not16.i.i.i.i = icmp eq ptr %.sroa.043.1.i.i.i.i, null
  br i1 %.not16.i.i.i.i, label %bb.ce, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i", !prof !136

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #35
          to label %.noexc37.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc37.i:                                       ; preds = %bb.ce
  unreachable

.outer.backedge.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i8.i.i, %bb.cb, %bb.bz, %bb.by
  %.sroa.043.0.ph.be.i.i.i.i = phi ptr [ %i.id, %bb.bz ], [ %i.id, %bb.by ], [ %.sroa.043.1.i.i.i.i, %bb.cb ], [ %.sroa.043.1.i.i.i.i, %._crit_edge.loopexit.i.i.i8.i.i ] ; 2 uses
  %.sroa.0.0.ph.be.i.i.i.i = phi i32 [ %.sroa.0.082.i.lcssa.i.i.i, %bb.bz ], [ %.sroa.0.082.i.lcssa.i.i.i, %bb.by ], [ 1, %bb.cb ], [ %i.il, %._crit_edge.loopexit.i.i.i8.i.i ]
  %i.im = load atomic i64, ptr %i.hj acquire, align 8, !noalias !2597 ; 2 uses
  %i.in = load atomic ptr, ptr %i.hl acquire, align 8, !noalias !2597
  %i.io = and i64 %i.im, 1
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i.i5.i.i, label %.critedge.i.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i10.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i10.i.i.epil.preheader

.lr.ph.i.i.i10.i.i.epil.preheader:                ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i10.i.i.preheader
  %lcmp.mod494 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod494)
  br label %.lr.ph.i.i.i10.i.i.epil

.lr.ph.i.i.i10.i.i.epil:                          ; preds = %.lr.ph.i.i.i10.i.i.epil, %.lr.ph.i.i.i10.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i10.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i10.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !2597
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i10.i.i.epil, !llvm.loop !2601

.loopexit.i.i.i.i:                                ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i10.i.i.epil, %bb.bs, %bb.br
  %i.iq = load atomic i64, ptr %i.hj acquire, align 8, !noalias !2597 ; 3 uses
  %i.ir = load atomic ptr, ptr %i.hl acquire, align 8, !noalias !2597
  %i.is = and i64 %i.iq, 1
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.bq, label %.critedge.i.i.i.i

.loopexit65.i.i.i.i:                              ; preds = %bb.br
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.bv
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit65.i.i.i.i
  %.sroa.043.2.ph.i.i.i.i = phi ptr [ %.sroa.043.0.ph86.i.i.i.i, %.loopexit65.i.i.i.i ], [ %.sroa.043.1.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit65.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.iu = icmp eq ptr %.sroa.043.2.ph.i.i.i.i, null
  br i1 %i.iu, label %.thread113.i, label %.thread55.i.i.i.i

.thread55.i.i.i.i:                                ; preds = %bb.cf
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.2.ph.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2597
  br label %.thread113.i

.critedge.i.i.i.i:                                ; preds = %.outer.backedge.i.i.i.i, %.loopexit.i.i.i.i, %bb.cc
  %.sroa.9.0.i.i.i = phi i64 [ %.lcssa.i.i.i, %bb.cc ], [ 0, %.loopexit.i.i.i.i ], [ 0, %.outer.backedge.i.i.i.i ]
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.05.1.i.i.i.i, %bb.cc ], [ null, %.loopexit.i.i.i.i ], [ null, %.outer.backedge.i.i.i.i ] ; 2 uses
  %.sroa.043.3.i.i.i.i = phi ptr [ %.sroa.043.1.i.i.i.i, %bb.cc ], [ %.sroa.043.0.ph86.i.i.i.i, %.loopexit.i.i.i.i ], [ %.sroa.043.0.ph.be.i.i.i.i, %.outer.backedge.i.i.i.i ] ; 2 uses
  %i.iv = icmp eq ptr %.sroa.043.3.i.i.i.i, null
  br i1 %i.iv, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i", label %bb.cg

bb.cg:                                            ; preds = %.critedge.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.3.i.i.i.i, i64 noundef 256, i64 noundef 8) #24, !noalias !2597
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i": ; preds = %bb.cg, %.critedge.i.i.i.i
  %i.iw = icmp eq ptr %.sroa.4.0.i.i.i, null
  br i1 %i.iw, label %"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hda1c33b8c389c7c1E.exit.fold.split.i.i", label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h14327d36430f0c45E.exit.i.i.i"
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i, i64 8
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.9.0.i.i.i
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i": ; preds = %bb.cd
  store atomic ptr %.sroa.043.1.i.i.i.i, ptr %i.hl release, align 8, !noalias !2597
  %i.iz = atomicrmw add ptr %i.hj, i64 2 release, align 8, !noalias !2597 ; 0 uses
  store atomic ptr %.sroa.043.1.i.i.i.i, ptr %.sroa.05.1.i.i.i.i release, align 8, !noalias !2597
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.05.1.i.i.i.i, i64 248
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i"

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17hba544772a6931855E.exit.thread6.i.i": ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i"
  %.sink.i.i.i = phi ptr [ %i.ja, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.i.i.i" ], [ %i.iy, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$5write17had7bc7ea3892072eE.exit.thread16.i.i.i" ]
  %i.jb = atomicrmw or ptr %.sink.i.i.i, i64 1 release, align 8, !noalias !2488 ; 0 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val13.i, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.jc)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcbc5b93ad66d145eE.exit.i" unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

bb.ch:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2488
  %i.jd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1000000000, ptr %i.jd, align 8, !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2488
  %i.je = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i8 0, i64 40, i1 false), !noalias !2488
  %i.jf = cmpxchg ptr %.val13.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !2602
  %i.jg = extractvalue { i32, i1 } %i.jf, 1
  br i1 %i.jg, label %.noexc39.i, label %bb.ci, !prof !145

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.val13.i)
          to label %.noexc39.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc39.i:                                       ; preds = %bb.ci, %bb.ch
  %i.jh = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !2602
  %i.ji = and i64 %i.jh, 9223372036854775807
  %i.jj = icmp eq i64 %i.ji, 0
  br i1 %i.jj, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i", label %bb.cj, !prof !145

bb.cj:                                            ; preds = %.noexc39.i
  %i.jk = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc40.i unwind label %.thread125.loopexit.split-lp.loopexit.split-lp.i, !noalias !2488

.noexc40.i:                                       ; preds = %bb.cj
  %i.jl = xor i1 %i.jk, true
  %i.jm = zext i1 %i.jl to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i": ; preds = %.noexc40.i, %.noexc39.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.jm, %.noexc40.i ], [ 0, %.noexc39.i ] ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.val13.i, i64 4 ; 3 uses
  %i.jo = load atomic i8, ptr %i.jn monotonic, align 1, !noalias !2602
  %.not70.i.i.i = icmp eq i8 %i.jo, 0
  br i1 %.not70.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h4f85a49cfff1d355E.exit.i.i.i", label %bb.ck, !prof !145

bb.ck:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hc834c4728a04cfd0E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2605
  store ptr %.val13.i, ptr %i.ak, align 8, !noalias !2605
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.jp, align 8, !noalias !2605
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 43, ptr noundef nonnull align 1 %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #35
          to label %bb.cm unwind label %bb.cl, !noalias !2609

bb.cl:                                            ; preds = %bb.ck
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr131drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..mutex..MutexGuard$LT$std..sync..mpmc..zero..Inner$GT$$GT$$GT$17ha6aba4359847b027E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #36
          to label %.thread113.i unwind label %bb.cn, !noalias !2609

bb.cm:                                            ; preds = %bb.ck
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !2609
end_hunk_2
begin_hunk_3_@_ZN3std3sys9backtrace28__rust_begin_short_backtrace17he4b50ab3746223baE:bb.a
  br label %common.resume.i

bb.di:                                            ; preds = %bb.dg
  %.val.i1.i = load ptr, ptr %0, align 16, !alias.scope !3798, !nonnull !8, !noundef !8 ; 2 uses
  %.val1.i.i = load i64, ptr %i.v, align 8, !alias.scope !3798, !noundef !8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3799)
  %i.mj = icmp eq i64 %.val1.i.i, 0
  br i1 %i.mj, label %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17h70cb04675d0c8d36E.exit", label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %bb.di, %.lr.ph.i.i.i2.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.ml, %.lr.ph.i.i.i2.i ], [ 0, %bb.di ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %.val.i1.i, i64 %.sroa.0.010.i.i.i.i
  %i.ml = add nuw i64 %.sroa.0.010.i.i.i.i, 1     ; 2 uses
  %i.mm = getelementptr i8, ptr %i.mk, i64 4
  %.val9.i.i.i.i = load i32, ptr %i.mm, align 4, !alias.scope !3799, !noalias !3795
  %i.mn = call noundef i32 @close(i32 noundef %.val9.i.i.i.i) #24, !noalias !3802 ; 0 uses
  %i.mo = icmp eq i64 %i.ml, %.val1.i.i
  br i1 %i.mo, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", label %.lr.ph.i.i.i2.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %.lr.ph.i.i.i2.i
  %i.mp = shl nuw nsw i64 %.val1.i.i, 5
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i, i64 noundef %i.mp, i64 noundef 8) #24, !noalias !3795
  br label %"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17h70cb04675d0c8d36E.exit"

"_ZN12actix_server6accept6Accept5start28_$u7b$$u7b$closure$u7d$$u7d$17h70cb04675d0c8d36E.exit": ; preds = %bb.di, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !2963
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN3std4sync4mpmc15Sender$LT$T$GT$4send17hc0f95525fff41f66E"(i64 %.0.val, ptr %.8.val, ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 12 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.8.i = alloca [16 x i8], align 8          ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.aj
    i64 2, label %bb.be
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i32 1000000000, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %i.ac = load atomic i64, ptr %i.aa monotonic, align 8, !noalias !3803 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 16, !noalias !3803, !noundef !8 ; 2 uses
  %i.ae = and i64 %i.ad, %i.ac
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.lr.ph.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.aj = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ak = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h93069091f6f7e02cE") ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag, %.lr.ph.i.lr.ph.i
  %i.am = phi i64 [ %i.ad, %.lr.ph.i.lr.ph.i ], [ %i.dj, %bb.ag ]
  %i.an = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i ], [ %i.di, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3806)
  br label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, %.lr.ph.i.i
  %i.ao = phi i64 [ %i.am, %.lr.ph.i.i ], [ %i.bs, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ]
  %.sroa.01.033.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %i.br, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ] ; 8 uses
  %.sroa.0.02832.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ] ; 14 uses
  %i.ap = add i64 %i.ao, -1
  %i.aq = and i64 %i.ap, %.sroa.01.033.i.i        ; 3 uses
  %i.ar = load i64, ptr %i.ag, align 8, !noalias !3806, !noundef !8
  %i.as = sub i64 0, %i.ar
  %i.at = and i64 %.sroa.01.033.i.i, %i.as
  %i.au = load ptr, ptr %i.ah, align 8, !noalias !3806, !nonnull !8, !align !9, !noundef !8
  %i.av = load i64, ptr %i.ai, align 16, !noalias !3806, !noundef !8
  %i.aw = icmp ult i64 %i.aq, %i.av
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aq ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8, !noalias !3806 ; 2 uses
  %i.az = icmp eq i64 %.sroa.01.033.i.i, %i.ay
  br i1 %i.az, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = load i64, ptr %i.ag, align 8, !noalias !3806, !noundef !8
  %i.bb = add i64 %i.ba, %i.ay
  %i.bc = add i64 %.sroa.01.033.i.i, 1
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.be = add nuw i64 %i.aq, 1
  %i.bf = load i64, ptr %i.aj, align 128, !noalias !3806, !noundef !8
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.bh = icmp ult i32 %.sroa.0.02832.i.i, 7
  br i1 %i.bh, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i unwind label %.body.thread27.loopexit.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0
  br i1 %.not.i.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.bi = mul nuw i32 %.sroa.0.02832.i.i, %.sroa.0.02832.i.i ; 2 uses
  %xtraiter192 = and i32 %i.bi, 7                 ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.02832.i.i, 3
  br i1 %i.bj, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter196 = and i32 %i.bi, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter197 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter197.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  %niter197.next.7 = add i32 %niter197, 8         ; 2 uses
  %niter197.ncmp.7 = icmp eq i32 %niter197.next.7, %unroll_iter196
  br i1 %niter197.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod194.not = icmp eq i32 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod195 = icmp ne i32 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter193 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter193.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  %epil.iter193.next = add i32 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i32 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !3808

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.h, %bb.g
  %i.bk = add i32 %.sroa.0.02832.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i

bb.i:                                             ; preds = %bb.d
  fence seq_cst
  %i.bl = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !3806
  %i.bm = load i64, ptr %i.ag, align 8, !noalias !3806, !noundef !8
  %i.bn = add i64 %i.bm, %i.bl
  %i.bo = icmp eq i64 %i.bn, %.sroa.01.033.i.i
  br i1 %i.bo, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h528a032f03e85757E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6) ; 2 uses
  %1 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %.not.i11.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0
  br i1 %.not.i11.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, label %.lr.ph.i12.i.i.preheader

.lr.ph.i12.i.i.preheader:                         ; preds = %bb.j
  %xtraiter198 = and i32 %1, 5                    ; 3 uses
  %i.bp = icmp ult i32 %.sroa.0.02832.i.i, 3
  br i1 %i.bp, label %.lr.ph.i12.i.i.epil.preheader, label %.lr.ph.i12.i.i.preheader.new

.lr.ph.i12.i.i.preheader.new:                     ; preds = %.lr.ph.i12.i.i.preheader
  %unroll_iter202 = and i32 %1, 56
  br label %.lr.ph.i12.i.i

._crit_edge.loopexit.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i12.i.i
  %lcmp.mod200.not = icmp eq i32 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil.preheader

.lr.ph.i12.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i.unr-lcssa, %.lr.ph.i12.i.i.preheader
  %lcmp.mod201 = icmp ne i32 %xtraiter198, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.i12.i.i.epil

.lr.ph.i12.i.i.epil:                              ; preds = %.lr.ph.i12.i.i.epil, %.lr.ph.i12.i.i.epil.preheader
  %epil.iter199 = phi i32 [ 0, %.lr.ph.i12.i.i.epil.preheader ], [ %epil.iter199.next, %.lr.ph.i12.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  %epil.iter199.next = add i32 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i32 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i12.i.i.epil, !llvm.loop !3809

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i12.i.i.epil, %._crit_edge.loopexit.i.i.i.unr-lcssa
  %i.bq = add i32 %.sroa.0.02832.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i

.lr.ph.i12.i.i:                                   ; preds = %.lr.ph.i12.i.i, %.lr.ph.i12.i.i.preheader.new
  %niter203 = phi i32 [ 0, %.lr.ph.i12.i.i.preheader.new ], [ %niter203.next.7, %.lr.ph.i12.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  %niter203.next.7 = add i32 %niter203, 8         ; 2 uses
  %niter203.ncmp.7 = icmp eq i32 %niter203.next.7, %unroll_iter202
  br i1 %niter203.ncmp.7, label %._crit_edge.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i12.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i: ; preds = %._crit_edge.loopexit.i20.i.i, %bb.n, %._crit_edge.loopexit.i.i.i, %bb.j, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bk, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h0a6bfc09333f16a3E.exit.i.i ], [ 1, %bb.n ], [ %i.ca, %._crit_edge.loopexit.i20.i.i ], [ %i.bq, %._crit_edge.loopexit.i.i.i ], [ 1, %bb.j ]
  %i.br = load atomic i64, ptr %i.aa monotonic, align 16, !noalias !3806 ; 2 uses
  %i.bs = load i64, ptr %i.ab, align 16, !noalias !3806, !noundef !8 ; 2 uses
  %i.bt = and i64 %i.bs, %i.br
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.c, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

bb.k:                                             ; preds = %bb.e
  %i.bv = load i64, ptr %i.ag, align 8, !noalias !3806, !noundef !8
  %i.bw = add i64 %i.bv, %i.at
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.bx = add i64 %.sroa.01.033.i.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.010.0.i.i = phi i64 [ %i.bx, %bb.l ], [ %i.bw, %bb.k ]
  %i.by = cmpxchg weak ptr %i.aa, i64 %.sroa.01.033.i.i, i64 %.sroa.010.0.i.i seq_cst monotonic, align 8, !noalias !3806
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.by, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.i.i15.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i15.i.i, %.sroa.0.0.i.i15.i.i ; 2 uses
  %.not.i16.i.i = icmp eq i32 %.sroa.0.02832.i.i, 0
  br i1 %.not.i16.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, label %.lr.ph.i17.i.i.preheader

.lr.ph.i17.i.i.preheader:                         ; preds = %bb.n
  %xtraiter204 = and i32 %2, 5                    ; 3 uses
  %i.bz = icmp ult i32 %.sroa.0.02832.i.i, 3
  br i1 %i.bz, label %.lr.ph.i17.i.i.epil.preheader, label %.lr.ph.i17.i.i.preheader.new

.lr.ph.i17.i.i.preheader.new:                     ; preds = %.lr.ph.i17.i.i.preheader
  %unroll_iter208 = and i32 %2, 56
  br label %.lr.ph.i17.i.i

._crit_edge.loopexit.i20.i.i.unr-lcssa:           ; preds = %.lr.ph.i17.i.i
  %lcmp.mod206.not = icmp eq i32 %xtraiter204, 0
  br i1 %lcmp.mod206.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil.preheader

.lr.ph.i17.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i20.i.i.unr-lcssa, %.lr.ph.i17.i.i.preheader
  %lcmp.mod207 = icmp ne i32 %xtraiter204, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph.i17.i.i.epil

.lr.ph.i17.i.i.epil:                              ; preds = %.lr.ph.i17.i.i.epil, %.lr.ph.i17.i.i.epil.preheader
  %epil.iter205 = phi i32 [ 0, %.lr.ph.i17.i.i.epil.preheader ], [ %epil.iter205.next, %.lr.ph.i17.i.i.epil ]
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  %epil.iter205.next = add i32 %epil.iter205, 1   ; 2 uses
  %epil.iter205.cmp.not = icmp eq i32 %epil.iter205.next, %xtraiter204
  br i1 %epil.iter205.cmp.not, label %._crit_edge.loopexit.i20.i.i, label %.lr.ph.i17.i.i.epil, !llvm.loop !3810

._crit_edge.loopexit.i20.i.i:                     ; preds = %.lr.ph.i17.i.i.epil, %._crit_edge.loopexit.i20.i.i.unr-lcssa
  %i.ca = add i32 %.sroa.0.02832.i.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i

.lr.ph.i17.i.i:                                   ; preds = %.lr.ph.i17.i.i, %.lr.ph.i17.i.i.preheader.new
  %niter209 = phi i32 [ 0, %.lr.ph.i17.i.i.preheader.new ], [ %niter209.next.7, %.lr.ph.i17.i.i ]
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  call void @llvm.x86.sse2.pause() #24, !noalias !3806
  %niter209.next.7 = add i32 %niter209, 8         ; 2 uses
  %niter209.ncmp.7 = icmp eq i32 %niter209.next.7, %unroll_iter208
  br i1 %niter209.ncmp.7, label %._crit_edge.loopexit.i20.i.i.unr-lcssa, label %.lr.ph.i17.i.i

.body.thread27.loopexit.i:                        ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread27.loopexit.split-lp.i:               ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i", %bb.ab, %bb.w, %bb.r, %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h528a032f03e85757E.exit.i": ; preds = %bb.i
  %i.cb = load i32, ptr %i.y, align 8, !range !315, !noundef !8 ; 2 uses
  %.not.i = icmp eq i32 %i.cb, 1000000000
  br i1 %.not.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  store ptr %i.ax, ptr %i.v, align 8, !alias.scope !3806
  %i.cc = add i64 %.sroa.01.033.i.i, 1            ; 2 uses
  store i64 %i.cc, ptr %i.z, align 8, !alias.scope !3806
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %0, ptr %i.cd, align 8
  store atomic i64 %i.cc, ptr %i.ax release, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.ce)
  br label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

bb.p:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h528a032f03e85757E.exit.i"
  %i.cf = load i64, ptr %i.w, align 8, !noundef !8 ; 2 uses
  %i.cg = invoke { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E()
          to label %bb.ae unwind label %.body.thread27.loopexit.split-lp.i ; 2 uses

bb.q:                                             ; preds = %bb.af, %.split.i, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h528a032f03e85757E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3811
  store ptr %i.v, ptr %i.u, align 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx.i, align 8
  store ptr %i.w, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ch = load i8, ptr %i.al, align 8, !range !1422, !noalias !3814, !noundef !8
  %i.ci = icmp eq i8 %i.ch, 1
  br i1 %i.ci, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i, !prof !145

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i: ; preds = %bb.q
  %i.cj = invoke fastcc noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hdedf86108203ab65E"(ptr noundef nonnull align 8 %i.ak, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc15.i unwind label %.body.thread27.loopexit.split-lp.i ; 2 uses

.noexc15.i:                                       ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.i.i.i
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i", label %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i: ; preds = %.noexc15.i, %bb.q
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cj, %.noexc15.i ], [ %i.ak, %bb.q ] ; 4 uses
  %i.cl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3811, !noundef !8 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3811
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.y, !prof !136

bb.r:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3811
  %i.cm = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h1bd27598da9bd1ecE()
          to label %bb.s unwind label %.body.thread27.loopexit.split-lp.i ; 2 uses

bb.s:                                             ; preds = %bb.r
  store ptr %i.cm, ptr %i.t, align 8, !noalias !3811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3811
  store ptr %i.v, ptr %i.r, align 8, !noalias !3811
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store ptr %i.w, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h7add430b9b0e0e92E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr nonnull %i.cm)
          to label %bb.v unwind label %bb.t, !noalias !3811

bb.t:                                             ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3821)
  call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  call void @llvm.experimental.noalias.scope.decl(metadata !3827)
  %i.co = load ptr, ptr %i.t, align 8, !alias.scope !3830, !noalias !3811, !nonnull !8, !noundef !8
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !3831
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.u, label %.body.thread.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %.body.thread.i unwind label %bb.x, !noalias !3811

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3811
  call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  call void @llvm.experimental.noalias.scope.decl(metadata !3838)
  %i.cr = load ptr, ptr %i.t, align 8, !alias.scope !3841, !noalias !3811, !nonnull !8, !noundef !8
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !3842
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.w, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i"

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i" unwind label %.body.thread27.loopexit.split-lp.i

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3811
  br label %bb.ag

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37, !noalias !3811
  unreachable

bb.y:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h1dcb25d53aed7b93E.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3811
  store ptr %i.cl, ptr %i.s, align 8, !noalias !3811
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store atomic i64 0, ptr %i.cv release, align 8, !noalias !3811
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store atomic ptr null, ptr %i.cw release, align 8, !noalias !3811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3811
  store ptr %i.v, ptr %i.q, align 8, !noalias !3811
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8
  store ptr %i.w, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17h7add430b9b0e0e92E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr nonnull %i.cl)
          to label %bb.z unwind label %bb.ac, !noalias !3811

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3811
  %i.cx = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3811, !noundef !8 ; 3 uses
  store ptr %i.cx, ptr %i.p, align 8, !noalias !3811
  store ptr %i.cl, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !3811
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !3843
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ab, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i" unwind label %.body.thread27.loopexit.split-lp.i

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i": ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3811
  br label %bb.ag

bb.ac:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !3852
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.ad, label %.body.thread.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h70c827d629a415c3E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.body.thread.i unwind label %bb.x, !noalias !3811

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i": ; preds = %.noexc15.i
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h6aed0fd83d6f99c0E"(ptr nonnull %i.u)
          to label %bb.ag unwind label %.body.thread27.loopexit.split-lp.i

bb.ae:                                            ; preds = %bb.p
  %i.de = extractvalue { i64, i32 } %i.cg, 0      ; 2 uses
  %i.df = icmp eq i64 %i.de, %i.cf
  br i1 %i.df, label %.split.i, label %bb.af

.split.i:                                         ; preds = %bb.ae
  %i.dg = extractvalue { i64, i32 } %i.cg, 1      ; 2 uses
  %i.dh = icmp ult i32 %i.dg, 1000000000
  call void @llvm.assume(i1 %i.dh)
  %.not36.i = icmp samesign ult i32 %i.dg, %i.cb
  br i1 %.not36.i, label %bb.q, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

bb.af:                                            ; preds = %bb.ae
  %.not35.i = icmp slt i64 %i.de, %i.cf
  br i1 %.not35.i, label %bb.q, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

bb.ag:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h181f74496d1ed537E.exit.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h23c9d9257b791e63E.exit.i.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h01e0f4452590774aE.exit19.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3811
  %i.di = load atomic i64, ptr %i.aa monotonic, align 16, !noalias !3859 ; 2 uses
  %i.dj = load i64, ptr %i.ab, align 16, !noalias !3859, !noundef !8 ; 2 uses
  %i.dk = and i64 %i.dj, %i.di
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i.i, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit"

common.resume:                                    ; preds = %bb.ds, %bb.dt, %.body.i, %.body.i.i, %bb.db, %.body.thread90.i, %bb.dn, %.body.thread.i11, %bb.bc, %.body.thread.i, %bb.ah
  %common.resume.op = phi { ptr, i32 } [ %i.jv, %bb.db ], [ %eh.lpad-body26.i, %.body.thread.i ], [ %eh.lpad-body16.i, %.body.thread.i11 ], [ %eh.lpad-body26.i, %bb.ah ], [ %eh.lpad-body16.i, %bb.bc ], [ %i.hw, %.body.i ], [ %.pn.pn93.i, %.body.thread90.i ], [ %.pn.pn93.i, %bb.dn ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.kp, %bb.dt ], [ %i.kp, %bb.ds ]
  resume { ptr, i32 } %common.resume.op

.body.thread.i:                                   ; preds = %bb.ad, %bb.ac, %bb.u, %bb.t, %.body.thread27.loopexit.split-lp.i, %.body.thread27.loopexit.i
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.cn, %bb.t ], [ %i.db, %bb.ac ], [ %i.cn, %bb.u ], [ %lpad.loopexit.i, %.body.thread27.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread27.loopexit.split-lp.i ] ; 2 uses
  %i.dm = icmp eq ptr %0, null
  br i1 %i.dm, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %.body.thread.i
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.x)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17h5c065117b96035e9E.exit": ; preds = %.split.i, %bb.af, %bb.ag, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i, %bb.b, %bb.o
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ 2, %bb.o ], [ 1, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h6bc4bd6ee9bd3314E.exit22.i.i ], [ 0, %.split.i ], [ 0, %bb.af ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.do

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %0, ptr %i.o, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 5 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8, !noalias !3861 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 5 uses
  %i.dr = load atomic ptr, ptr %i.dq acquire, align 8, !noalias !3861
  %i.ds = and i64 %i.dp, 1
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.lr.ph.i.i, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit"

.lr.ph.lr.ph.i.i:                                 ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %.outer.backedge.i.i, %.lr.ph.lr.ph.i.i
  %.sroa.01.0.ph89.i.i = phi i64 [ %i.dp, %.lr.ph.lr.ph.i.i ], [ %i.et, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.05.0.ph88.i.i = phi ptr [ %i.dr, %.lr.ph.lr.ph.i.i ], [ %i.eu, %.outer.backedge.i.i ]
  %.sroa.0.0.ph87.i.i = phi i32 [ 0, %.lr.ph.lr.ph.i.i ], [ %.sroa.0.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.043.0.ph86.i.i = phi ptr [ null, %.lr.ph.lr.ph.i.i ], [ %.sroa.043.0.ph.be.i.i, %.outer.backedge.i.i ] ; 4 uses
  %i.dv = lshr exact i64 %.sroa.01.0.ph89.i.i, 1
  %i.dw = and i64 %i.dv, 31                       ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 31
  br i1 %i.dx, label %.lr.ph.i, label %._crit_edge.i

bb.ak:                                            ; preds = %.loopexit.i.i
  %i.dy = add i32 %.sroa.0.082.i50.i, 1           ; 2 uses
  %i.dz = lshr exact i64 %i.ex, 1
  %i.ea = and i64 %i.dz, 31                       ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 31
  br i1 %i.eb, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ak, %.lr.ph.i.i7
  %.sroa.01.084.i.lcssa.i = phi i64 [ %.sroa.01.0.ph89.i.i, %.lr.ph.i.i7 ], [ %i.ex, %bb.ak ] ; 2 uses
  %.sroa.05.083.i.lcssa.i = phi ptr [ %.sroa.05.0.ph88.i.i, %.lr.ph.i.i7 ], [ %i.ey, %bb.ak ] ; 2 uses
  %.sroa.0.082.i.lcssa.i = phi i32 [ %.sroa.0.0.ph87.i.i, %.lr.ph.i.i7 ], [ %i.dy, %bb.ak ] ; 6 uses
  %.lcssa.i = phi i64 [ %i.dw, %.lr.ph.i.i7 ], [ %i.ea, %bb.ak ] ; 2 uses
  %.not64.i.i = icmp eq i64 %.lcssa.i, 30         ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.043.0.ph86.i.i, null
  %or.cond.i.i = select i1 %.not64.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.an, label %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"

.lr.ph.i:                                         ; preds = %.lr.ph.i.i7, %bb.ak
  %.sroa.0.082.i50.i = phi i32 [ %i.dy, %bb.ak ], [ %.sroa.0.0.ph87.i.i, %.lr.ph.i.i7 ] ; 6 uses
  %i.ec = icmp ult i32 %.sroa.0.082.i50.i, 7
  br i1 %i.ec, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i
  invoke void @_ZN3std6thread9yield_now17h3b830d4dcefa1762E()
          to label %.loopexit.i.i unwind label %.loopexit65.i.i, !noalias !3861

bb.am:                                            ; preds = %.lr.ph.i
  %.not.i.i.i13 = icmp eq i32 %.sroa.0.082.i50.i, 0
  br i1 %.not.i.i.i13, label %.loopexit.i.i, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %bb.am
  %i.ed = mul nuw i32 %.sroa.0.082.i50.i, %.sroa.0.082.i50.i ; 2 uses
  %xtraiter = and i32 %i.ed, 7                    ; 3 uses
  %i.ee = icmp ult i32 %.sroa.0.082.i50.i, 3
  br i1 %i.ee, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter = and i32 %i.ed, 56
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i14 ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i": ; preds = %bb.an, %._crit_edge.i
  %.sroa.043.1.i.i = phi ptr [ %.sroa.043.0.ph86.i.i, %._crit_edge.i ], [ %i.eg, %bb.an ] ; 9 uses
  %i.ef = icmp eq ptr %.sroa.05.083.i.lcssa.i, null
  br i1 %i.ef, label %bb.ao, label %bb.au

bb.an:                                            ; preds = %._crit_edge.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3861
  %i.eg = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #24, !noalias !3861 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %.noexc24.i.i, label %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i", !prof !136

.noexc24.i.i:                                     ; preds = %bb.an
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 504) #35
          to label %.noexc.i unwind label %.body.thread18.i

.noexc.i:                                         ; preds = %.noexc24.i.i
  unreachable

bb.ao:                                            ; preds = %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3861
  %i.ei = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef 8) #24, !noalias !3861 ; 6 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ap, label %bb.aq, !prof !136

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 504) #35
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.i.i, !noalias !3861

.noexc25.i.i:                                     ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ek = cmpxchg ptr %i.dq, ptr null, ptr %i.ei release monotonic, align 8, !noalias !3861
  %i.el = extractvalue { ptr, i1 } %i.ek, 1
  br i1 %i.el, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store atomic ptr %i.ei, ptr %i.du release, align 8, !noalias !3861
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.em = icmp eq ptr %.sroa.043.1.i.i, null
  br i1 %i.em, label %.outer.backedge.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.1.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3861
  br label %.outer.backedge.i.i

bb.au:                                            ; preds = %bb.ar, %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i"
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.083.i.lcssa.i, %"_ZN4core3ptr170drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$std..sync..mpmc..list..Block$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$$GT$$GT$$GT$17h239183a16c026a07E.exit.i.i" ], [ %i.ei, %bb.ar ] ; 3 uses
  %i.en = add i64 %.sroa.01.084.i.lcssa.i, 2
  %i.eo = cmpxchg weak ptr %i.do, i64 %.sroa.01.084.i.lcssa.i, i64 %i.en seq_cst acquire, align 8, !noalias !3861
  %.sroa.18.0.in.i.i.i8 = extractvalue { i64, i1 } %i.eo, 1
  br i1 %.sroa.18.0.in.i.i.i8, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.i.i.i.i9 = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.082.i.lcssa.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i.i.i9, %.sroa.0.0.i.i.i.i9 ; 2 uses
  %.not.i30.i.i = icmp eq i32 %.sroa.0.082.i.lcssa.i, 0
  br i1 %.not.i30.i.i, label %.outer.backedge.i.i, label %.lr.ph.i31.i.i.preheader

.lr.ph.i31.i.i.preheader:                         ; preds = %bb.av
  %xtraiter186 = and i32 %3, 5                    ; 3 uses
  %i.ep = icmp ult i32 %.sroa.0.082.i.lcssa.i, 3
  br i1 %i.ep, label %.lr.ph.i31.i.i.epil.preheader, label %.lr.ph.i31.i.i.preheader.new

.lr.ph.i31.i.i.preheader.new:                     ; preds = %.lr.ph.i31.i.i.preheader
  %unroll_iter190 = and i32 %3, 56
  br label %.lr.ph.i31.i.i

._crit_edge.loopexit.i.i.i10.unr-lcssa:           ; preds = %.lr.ph.i31.i.i
  %lcmp.mod188.not = icmp eq i32 %xtraiter186, 0
  br i1 %lcmp.mod188.not, label %._crit_edge.loopexit.i.i.i10, label %.lr.ph.i31.i.i.epil.preheader

.lr.ph.i31.i.i.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.i.i10.unr-lcssa, %.lr.ph.i31.i.i.preheader
  %lcmp.mod189 = icmp ne i32 %xtraiter186, 0
  tail call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i31.i.i.epil

.lr.ph.i31.i.i.epil:                              ; preds = %.lr.ph.i31.i.i.epil, %.lr.ph.i31.i.i.epil.preheader
  %epil.iter187 = phi i32 [ 0, %.lr.ph.i31.i.i.epil.preheader ], [ %epil.iter187.next, %.lr.ph.i31.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %epil.iter187.next = add i32 %epil.iter187, 1   ; 2 uses
  %epil.iter187.cmp.not = icmp eq i32 %epil.iter187.next, %xtraiter186
  br i1 %epil.iter187.cmp.not, label %._crit_edge.loopexit.i.i.i10, label %.lr.ph.i31.i.i.epil, !llvm.loop !3864

._crit_edge.loopexit.i.i.i10:                     ; preds = %.lr.ph.i31.i.i.epil, %._crit_edge.loopexit.i.i.i10.unr-lcssa
  %i.eq = add i32 %.sroa.0.082.i.lcssa.i, 1
  br label %.outer.backedge.i.i

.lr.ph.i31.i.i:                                   ; preds = %.lr.ph.i31.i.i, %.lr.ph.i31.i.i.preheader.new
  %niter191 = phi i32 [ 0, %.lr.ph.i31.i.i.preheader.new ], [ %niter191.next.7, %.lr.ph.i31.i.i ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %niter191.next.7 = add i32 %niter191, 8         ; 2 uses
  %niter191.ncmp.7 = icmp eq i32 %niter191.next.7, %unroll_iter190
  br i1 %niter191.ncmp.7, label %._crit_edge.loopexit.i.i.i10.unr-lcssa, label %.lr.ph.i31.i.i

bb.aw:                                            ; preds = %bb.au
  br i1 %.not64.i.i, label %bb.ax, label %.critedge.i.i

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i": ; preds = %bb.ax
  store atomic ptr %.sroa.043.1.i.i, ptr %i.dq release, align 8, !noalias !3861
  %i.er = atomicrmw add ptr %i.do, i64 2 release, align 8, !noalias !3861 ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.05.1.i.i, i64 496
  store atomic ptr %.sroa.043.1.i.i, ptr %i.es release, align 8, !noalias !3861
  br label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %.not16.i.i = icmp eq ptr %.sroa.043.1.i.i, null
  br i1 %.not16.i.i, label %bb.ay, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i", !prof !136

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #35
          to label %.noexc7.i unwind label %.body.thread18.i

.noexc7.i:                                        ; preds = %bb.ay
  unreachable

.outer.backedge.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i10, %bb.av, %bb.at, %bb.as
  %.sroa.043.0.ph.be.i.i = phi ptr [ %i.ei, %bb.at ], [ %i.ei, %bb.as ], [ %.sroa.043.1.i.i, %bb.av ], [ %.sroa.043.1.i.i, %._crit_edge.loopexit.i.i.i10 ] ; 2 uses
  %.sroa.0.0.ph.be.i.i = phi i32 [ %.sroa.0.082.i.lcssa.i, %bb.at ], [ %.sroa.0.082.i.lcssa.i, %bb.as ], [ 1, %bb.av ], [ %i.eq, %._crit_edge.loopexit.i.i.i10 ]
  %i.et = load atomic i64, ptr %i.do acquire, align 8, !noalias !3861 ; 2 uses
  %i.eu = load atomic ptr, ptr %i.dq acquire, align 8, !noalias !3861
  %i.ev = and i64 %i.et, 1
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i.i7, label %.critedge.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i14
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod185 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i14.epil ]
  tail call void @llvm.x86.sse2.pause() #24, !noalias !3861
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i14.epil, !llvm.loop !3865

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %bb.am, %bb.al
  %i.ex = load atomic i64, ptr %i.do acquire, align 8, !noalias !3861 ; 3 uses
  %i.ey = load atomic ptr, ptr %i.dq acquire, align 8, !noalias !3861
  %i.ez = and i64 %i.ex, 1
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.ak, label %.critedge.i.i

.loopexit65.i.i:                                  ; preds = %bb.al
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp.i.i:                           ; preds = %bb.ap
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit65.i.i
  %.sroa.043.2.ph.i.i = phi ptr [ %.sroa.043.0.ph86.i.i, %.loopexit65.i.i ], [ %.sroa.043.1.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit65.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.fb = icmp eq ptr %.sroa.043.2.ph.i.i, null
  br i1 %i.fb, label %.body.thread.i11, label %.thread55.i.i

.thread55.i.i:                                    ; preds = %bb.az
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.2.ph.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3861
  br label %.body.thread.i11

.critedge.i.i:                                    ; preds = %.outer.backedge.i.i, %.loopexit.i.i, %bb.aw
  %.sroa.9.0.i = phi i64 [ %.lcssa.i, %bb.aw ], [ 0, %.loopexit.i.i ], [ 0, %.outer.backedge.i.i ]
  %.sroa.4.0.i = phi ptr [ %.sroa.05.1.i.i, %bb.aw ], [ null, %.loopexit.i.i ], [ null, %.outer.backedge.i.i ] ; 2 uses
  %.sroa.043.3.i.i = phi ptr [ %.sroa.043.1.i.i, %bb.aw ], [ %.sroa.043.0.ph86.i.i, %.loopexit.i.i ], [ %.sroa.043.0.ph.be.i.i, %.outer.backedge.i.i ] ; 2 uses
  %i.fc = icmp eq ptr %.sroa.043.3.i.i, null
  br i1 %i.fc, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", label %bb.ba

bb.ba:                                            ; preds = %.critedge.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.3.i.i, i64 noundef 504, i64 noundef 8) #24, !noalias !3861
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i"

.body.thread18.i:                                 ; preds = %bb.ay, %.noexc24.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i11

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i": ; preds = %bb.ba, %.critedge.i.i
  %i.fd = icmp eq ptr %.sroa.4.0.i, null
  br i1 %i.fd, label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit", label %bb.bb

bb.bb:                                            ; preds = %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i"
  %.sroa.4.127.i = phi ptr [ %.sroa.05.1.i.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i" ], [ %.sroa.4.0.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ]
  %.sroa.9.126.i = phi i64 [ 30, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.thread23.i" ], [ %.sroa.9.0.i, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ] ; 2 uses
  %i.fe = icmp samesign ult i64 %.sroa.9.126.i, 31
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.sroa.4.127.i, i64 %.sroa.9.126.i ; 2 uses
  store ptr %0, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = atomicrmw or ptr %i.fg, i64 1 release, align 8 ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17hb84be3c8ed2df7a5E(ptr noundef nonnull align 8 %i.fi)
  br label %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit"

.body.thread.i11:                                 ; preds = %.body.thread18.i, %.thread55.i.i, %bb.az
  %eh.lpad-body16.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread18.i ], [ %lpad.phi.i.i, %.thread55.i.i ], [ %lpad.phi.i.i, %bb.az ] ; 2 uses
  %i.fj = icmp eq ptr %0, null
  br i1 %i.fj, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %.body.thread.i11
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hecc4569abb82fe73E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
          to label %common.resume unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #37
  unreachable

"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$4send17h4332fa4f0b645a3eE.exit": ; preds = %bb.aj, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i", %bb.bb
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.bb ], [ 1, %"_ZN3std4sync4mpmc4list16Channel$LT$T$GT$10start_send17h9bfecb9e1c2e100fE.exit.i" ], [ 1, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.do

bb.be:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %0, ptr %i.n, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1000000000, ptr %i.fl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  %i.fn = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !3866
  %i.fo = extractvalue { i32, i1 } %i.fn, 1
  br i1 %i.fo, label %.noexc.i19, label %bb.bf, !prof !145

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.8.val)
          to label %.noexc.i19 unwind label %.split.thread.i

.noexc.i19:                                       ; preds = %bb.bf, %bb.be
  %i.fp = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !3866
  %i.fq = and i64 %i.fp, 9223372036854775807
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %bb.bh, label %bb.bg, !prof !145

bb.bg:                                            ; preds = %.noexc.i19
  %i.fs = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc16.i unwind label %.split.thread.i

.noexc16.i:                                       ; preds = %bb.bg
  %i.ft = xor i1 %i.fs, true
  %i.fu = zext i1 %i.ft to i8
  br label %bb.bh

end_hunk_3
