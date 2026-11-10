Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sink.i114.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sink.i114.sroa.gep53 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sink.i114.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sink.i114.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sink.i114.sroa.gep56 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sink.i114.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sink.i114.sroa.gep58 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sink.i114.sroa.gep60 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sink.i114.sroa.gep61 = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sink.i114.sroa.gep62 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sink.i114.sroa.gep63 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sink.i114.sroa.gep64 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sink.i114.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sink.i533.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.i533.sroa.gep66 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.i533.sroa.gep67 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.i533.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.i533.sroa.gep69 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.i533.sroa.gep70 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.i533.sroa.gep72 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.i533.sroa.gep73 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.i533.sroa.gep74 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.i533.sroa.gep75 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.i533.sroa.gep76 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.i533.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.i533.sroa.gep79 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.i533.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i533.sroa.gep81 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i533.sroa.gep82 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i533.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.i533.sroa.gep84 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.i533.sroa.gep86 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i533.sroa.gep87 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.i533.sroa.gep88 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink.i533.sroa.gep89 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i533.sroa.gep90 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.i533.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br i1 %i.ar, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.as = icmp eq i64 %i.aq, 0                    ; 3 uses
  br i1 %i.as, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35521
  %i.at = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35521 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = ptrtoint ptr %i.at to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !35522
  unreachable

bb.e:                                             ; preds = %.invoke2822, %.invoke, %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %i.av, %bb.c ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ]
  %i.ax = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  invoke void @_ZN6brotli3enc14block_splitter23CopyLiteralsToByteArray17h2efc995e39fc9311E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 1 %i.ax, i64 noundef %i.aq)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35524)
  %i.ay = udiv i64 %i.aq, 544
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 99) ; 7 uses
  %spec.store.select.i = add nuw nsw i64 %i.az, 1 ; 15 uses
  br i1 %i.as, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread, label %bb.h

_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.ba, align 8, !alias.scope !35524
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit"

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp samesign ult i64 %i.aq, 128
  br i1 %i.bb, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bc = mul nuw nsw i64 %spec.store.select.i, 1040 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35525
  %i.bd = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bc, i64 noundef range(i64 1, 9) 8) #38, !noalias !35525 ; 16 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.invoke2822, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.not101.i = icmp samesign ult i64 %i.aq, 544
  br i1 %.not101.i, label %.loopexit121.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %i.bf = add nsw i64 %i.az, -1
  %xtraiter = and i64 %i.az, 7                    ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 7
  br i1 %i.bg, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.az, 120
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !35527
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bh, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !35527
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bi, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !35527
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bj, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !35527
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bk, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !35527
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bl, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !35527
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bm, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !35527
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bn, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !35527
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8320 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit121.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val110.i = load ptr, ptr %7, align 8, !alias.scope !35524, !nonnull !52, !align !62, !noundef !52 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.val111.i = load i64, ptr %i.bp, align 8, !alias.scope !35524, !noundef !52 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !35524, !noundef !52 ; 6 uses
  %i.bs = add i64 %i.br, 1                        ; 7 uses
  %i.bt = icmp ult i64 %.val111.i, %i.bs
  br i1 %i.bt, label %bb.fw, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i"

.thread.i:                                        ; preds = %bb.m, %.split24.us.i.invoke.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

.loopexit121.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit121.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %.loopexit121.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.epil.init = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %.loopexit121.i.loopexit.unr-lcssa ]
  %lcmp.mod4505 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4505)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.epil = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !35527
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit121.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !34668

.loopexit121.i:                                   ; preds = %.loopexit121.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i = phi ptr [ %i.bd, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i.i" ], [ %i.bo, %.loopexit121.i.loopexit.unr-lcssa ], [ %i.bv, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !35526
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !35527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35529)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %xtraiter4506 = and i64 %spec.store.select.i, 7 ; 2 uses
  %lcmp.mod4507.not = icmp eq i64 %xtraiter4506, 0
  br i1 %lcmp.mod4507.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.loopexit121.i, %.lr.ph.i.i.i.prol
  %.sroa.02.05.i.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.prol ], [ %i.bd, %.loopexit121.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.loopexit121.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1040 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.05.i.i.i.prol, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.by, align 8, !alias.scope !35531, !noalias !35526
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4506
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !34676

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.loopexit121.i
  %.sroa.02.05.i.i.i.unr = phi ptr [ %i.bd, %.loopexit121.i ], [ %i.bx, %.lr.ph.i.i.i.prol ]
  %i.bz = icmp ult i64 %i.aq, 3808
  br i1 %i.bz, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.02.05.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.sroa.02.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1040
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.05.i.i.i, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.cb, align 8, !alias.scope !35531, !noalias !35526
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2080
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ca, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.cd, align 8, !alias.scope !35531, !noalias !35526
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3120
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cc, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.cf, align 8, !alias.scope !35531, !noalias !35526
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4160
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ce, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.ch, align 8, !alias.scope !35531, !noalias !35526
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5200
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cg, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.cj, align 8, !alias.scope !35531, !noalias !35526
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6240
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ci, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.cl, align 8, !alias.scope !35531, !noalias !35526
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7280
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ck, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.cn, align 8, !alias.scope !35531, !noalias !35526
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8320 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cm, i8 0, i64 1032, i1 false), !alias.scope !35530, !noalias !35526
  store float 3.402000e+38, ptr %i.cp, align 8, !alias.scope !35531, !noalias !35526
  %i.cq = icmp eq ptr %i.co, %i.bw
  br i1 %i.cq, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i, label %.lr.ph.i.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.cr = udiv i64 %i.aq, %spec.store.select.i
  %i.cs = add nsw i64 %i.aq, -71
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i: ; preds = %.preheader.i.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.07.019.i.i, %i.az
  br i1 %exitcond.not.i.i, label %.split, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i
  %.sroa.0.020.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.019.i.i = phi i64 [ %i.ct, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.i.i ] ; 5 uses
  %i.ct = add nuw nsw i64 %.sroa.07.019.i.i, 1
  %i.cu = mul i64 %.sroa.07.019.i.i, %i.aq
  %i.cv = udiv i64 %i.cu, %spec.store.select.i    ; 2 uses
  %i.cw = icmp eq i64 %.sroa.07.019.i.i, 0
  br i1 %i.cw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.k, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.cv, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i ], [ %i.dd, %bb.k ] ; 2 uses
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.020.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i, %bb.k ]
  %i.cx = add i64 %.sroa.04.0.i.i, 70
  %.not.i.i = icmp ult i64 %i.cx, %i.aq
  %spec.select.i.i = select i1 %.not.i.i, i64 %.sroa.04.0.i.i, i64 %i.cs ; 4 uses
  %i.cy = icmp ugt i64 %spec.select.i.i, %i.aq
  br i1 %i.cy, label %.split24.us.i.invoke.i, label %bb.l, !prof !54

bb.k:                                             ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.preheader.split.split.i.i
  %i.cz = icmp eq i32 %.sroa.0.020.i.i, 0
  %i.da = mul i32 %.sroa.0.020.i.i, 16807
  %spec.store.select.i.i = select i1 %i.cz, i32 1, i32 %i.da ; 2 uses
  %i.db = zext i32 %spec.store.select.i.i to i64
  %i.dc = urem i64 %i.db, %i.cr
  %i.dd = add i64 %i.dc, %i.cv
  br label %bb.j

bb.l:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.07.019.i.i ; 3 uses
  %i.df = sub nuw nsw i64 %i.aq, %spec.select.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35533)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1024 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !35534, !noalias !35526, !noundef !52
  %i.dj = add i64 %i.di, 70
  store i64 %i.dj, ptr %i.dh, align 8, !alias.scope !35535, !noalias !35526
  %i.dk = icmp ugt i64 %i.df, 69
  br i1 %i.dk, label %.preheader.i.i.i, label %.split24.us.i.invoke.i, !prof !61

.split24.us.i.invoke.i:                           ; preds = %bb.l, %bb.j
  %.ph238 = phi i64 [ 0, %bb.l ], [ %spec.select.i.i, %bb.j ]
  %.ph239 = phi i64 [ 70, %bb.l ], [ %i.aq, %bb.j ]
  %.ph240 = phi i64 [ %i.df, %bb.l ], [ %i.aq, %bb.j ]
  %.ph241 = phi ptr [ @1927, %bb.l ], [ @1568, %bb.j ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph238, i64 noundef %.ph239, i64 noundef %.ph240, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph241) #43
          to label %.split24.us.i.cont.i unwind label %.thread.i, !noalias !35526

.split24.us.i.cont.i:                             ; preds = %.split24.us.i.invoke.i
  unreachable

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.sroa.02.0.idx7.i.i.i = phi i64 [ %.sroa.02.0.add.i.i.i.1, %.preheader.i.i.i ], [ 0, %bb.l ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %i.dl = load i8, ptr %.sroa.02.0.ptr.i.i.i, align 1, !alias.scope !35536, !noundef !52
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !35537, !noalias !35526, !noundef !52
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !alias.scope !35537, !noalias !35526
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.02.0.idx7.i.i.i
  %.sroa.02.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dr = load i8, ptr %.sroa.02.0.ptr.i.i.i.1, align 1, !alias.scope !35536, !noundef !52
  %i.ds = zext i8 %i.dr to i64
  %.sroa.02.0.add.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !35537, !noalias !35526, !noundef !52
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !alias.scope !35537, !noalias !35526
  %i.dw = icmp eq i64 %.sroa.02.0.add.i.i.i.1, 70
  br i1 %i.dw, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i, label %.preheader.i.i.i

.split:                                           ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35539)
  %i.dx = udiv i64 %i.aq, 35
  %i.dy = add nuw nsw i64 %i.dx, 99
  %i.dz = add nuw nsw i64 %i.dy, %spec.store.select.i ; 2 uses
  %i.ea = urem i64 %i.dz, %spec.store.select.i
  %i.eb = sub nuw nsw i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ap, i64 1024
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ap, i64 1032
  %i.ee = add nsw i64 %i.aq, -69
  br label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i, %.split
  %.sroa.03.018.i.i = phi i64 [ 0, %.split ], [ %i.fo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  %.sroa.0.017.i.i = phi i32 [ 7, %.split ], [ %spec.store.select.i.i.i, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h8a3e084d90ebfcb6E.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !35540
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false), !noalias !35540
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !35541, !noalias !35540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35543)
  %i.ef = mul i32 %.sroa.0.017.i.i, 16807
  %i.eg = icmp eq i32 %.sroa.0.017.i.i, 0
  %spec.store.select.i.i.i = select i1 %i.eg, i32 1, i32 %i.ef ; 2 uses
  %i.eh = zext i32 %spec.store.select.i.i.i to i64
  %i.ei = urem i64 %i.eh, %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ei ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35544)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35545)
  store i64 70, ptr %i.ec, align 8, !alias.scope !35546, !noalias !35540
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i.1, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %i.ek = load i8, ptr %.sroa.02.0.ptr.i.i.i.i, align 1, !alias.scope !35547, !noundef !52
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !alias.scope !35548, !noalias !35540, !noundef !52
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !alias.scope !35548, !noalias !35540
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.sroa.02.0.idx7.i.i.i.i
  %.sroa.02.0.ptr.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.eq = load i8, ptr %.sroa.02.0.ptr.i.i.i.i.1, align 1, !alias.scope !35547, !noundef !52
  %i.er = zext i8 %i.eq to i64
  %.sroa.02.0.add.i.i.i.i.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !alias.scope !35548, !noalias !35540, !noundef !52
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !alias.scope !35548, !noalias !35540
  %i.ev = icmp eq i64 %.sroa.02.0.add.i.i.i.i.1, 70
  br i1 %i.ev, label %vector.ph, label %.preheader.i.i.i.i

vector.ph:                                        ; preds = %.preheader.i.i.i.i
  %i.ew = urem i64 %.sroa.03.018.i.i, %spec.store.select.i
  %i.ex = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1024 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !35549, !noalias !35550, !noundef !52
  %i.fa = add i64 %i.ez, 70
  store i64 %i.fa, ptr %i.ey, align 8, !alias.scope !35551, !noalias !35526
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fb, align 4, !alias.scope !35539, !noalias !35526
  %wide.load3573 = load <4 x i32>, ptr %i.fc, align 4, !alias.scope !35539, !noalias !35526
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load3574 = load <4 x i32>, ptr %i.fd, align 8, !noalias !35540
  %wide.load3575 = load <4 x i32>, ptr %i.fe, align 8, !noalias !35540
  %i.ff = add <4 x i32> %wide.load3574, %wide.load
  %i.fg = add <4 x i32> %wide.load3575, %wide.load3573
  store <4 x i32> %i.ff, ptr %i.fb, align 4, !alias.scope !35539, !noalias !35526
  store <4 x i32> %i.fg, ptr %i.fc, align 4, !alias.scope !35539, !noalias !35526
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index.next ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.fh, align 4, !alias.scope !35539, !noalias !35526
  %wide.load3573.1 = load <4 x i32>, ptr %i.fi, align 4, !alias.scope !35539, !noalias !35526
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index.next ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load3574.1 = load <4 x i32>, ptr %i.fj, align 8, !noalias !35540
  %wide.load3575.1 = load <4 x i32>, ptr %i.fk, align 8, !noalias !35540
  %i.fl = add <4 x i32> %wide.load3574.1, %wide.load.1
  %i.fm = add <4 x i32> %wide.load3575.1, %wide.load3573.1
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.0.0.copyload.i.i = load float, ptr %i.akb, align 4, !alias.scope !35621, !noalias !35526
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  %.sroa.5.0.copyload.i.i = load float, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !35621, !noalias !35526
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !35621, !noalias !35526
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 12
  %.sroa.7.0.copyload.i.i = load float, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !35621, !noalias !35526
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  %.sroa.8.0.copyload.i.i = load float, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !35621, !noalias !35526
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 20
  %.sroa.9.0.copyload.i.i = load float, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !35621, !noalias !35526
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 24
  %.sroa.10.0.copyload.i.i = load float, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !35621, !noalias !35526
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akb, i64 28
  %.sroa.11.0.copyload.i.i = load float, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !35621, !noalias !35526
  %i.akc = load float, ptr %.sroa.0164.0412.i.i, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.akd = fadd float %.sroa.0.0.copyload.i.i, %i.akc ; 3 uses
  store float %i.akd, ptr %.sroa.0164.0412.i.i, align 4, !alias.scope !35612, !noalias !35526
  %i.ake = fcmp olt float %i.akd, %.sroa.029.0413.i.i
  br i1 %i.ake, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.akf = trunc i64 %i.aaz to i8
  store i8 %i.akf, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sroa.029.4.i.i = phi float [ %i.akd, %bb.ex ], [ %.sroa.029.0413.i.i, %bb.ew ] ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 4 ; 2 uses
  %i.akh = load float, ptr %i.akg, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.aki = fadd float %.sroa.5.0.copyload.i.i, %i.akh ; 3 uses
  store float %i.aki, ptr %i.akg, align 4, !alias.scope !35612, !noalias !35526
  %i.akj = fcmp olt float %i.aki, %.sroa.029.4.i.i
  br i1 %i.akj, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.akk = trunc i64 %i.aaz to i8
  %i.akl = or disjoint i8 %i.akk, 1
  store i8 %i.akl, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.sroa.029.4.1.i.i = phi float [ %i.aki, %bb.ez ], [ %.sroa.029.4.i.i, %bb.ey ] ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 8 ; 2 uses
  %i.akn = load float, ptr %i.akm, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.ako = fadd float %.sroa.6.0.copyload.i.i, %i.akn ; 3 uses
  store float %i.ako, ptr %i.akm, align 4, !alias.scope !35612, !noalias !35526
  %i.akp = fcmp olt float %i.ako, %.sroa.029.4.1.i.i
  br i1 %i.akp, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.akq = trunc i64 %i.aaz to i8
  %i.akr = or disjoint i8 %i.akq, 2
  store i8 %i.akr, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.sroa.029.4.2.i.i = phi float [ %i.ako, %bb.fb ], [ %.sroa.029.4.1.i.i, %bb.fa ] ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 12 ; 2 uses
  %i.akt = load float, ptr %i.aks, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.aku = fadd float %.sroa.7.0.copyload.i.i, %i.akt ; 3 uses
  store float %i.aku, ptr %i.aks, align 4, !alias.scope !35612, !noalias !35526
  %i.akv = fcmp olt float %i.aku, %.sroa.029.4.2.i.i
  br i1 %i.akv, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.akw = trunc i64 %i.aaz to i8
  %i.akx = or disjoint i8 %i.akw, 3
  store i8 %i.akx, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.sroa.029.4.3.i.i = phi float [ %i.aku, %bb.fd ], [ %.sroa.029.4.2.i.i, %bb.fc ] ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 16 ; 2 uses
  %i.akz = load float, ptr %i.aky, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.ala = fadd float %.sroa.8.0.copyload.i.i, %i.akz ; 3 uses
  store float %i.ala, ptr %i.aky, align 4, !alias.scope !35612, !noalias !35526
  %i.alb = fcmp olt float %i.ala, %.sroa.029.4.3.i.i
  br i1 %i.alb, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.alc = trunc i64 %i.aaz to i8
  %i.ald = or disjoint i8 %i.alc, 4
  store i8 %i.ald, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.029.4.4.i.i = phi float [ %i.ala, %bb.ff ], [ %.sroa.029.4.3.i.i, %bb.fe ] ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 20 ; 2 uses
  %i.alf = load float, ptr %i.ale, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.alg = fadd float %.sroa.9.0.copyload.i.i, %i.alf ; 3 uses
  store float %i.alg, ptr %i.ale, align 4, !alias.scope !35612, !noalias !35526
  %i.alh = fcmp olt float %i.alg, %.sroa.029.4.4.i.i
  br i1 %i.alh, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.ali = trunc i64 %i.aaz to i8
  %i.alj = or disjoint i8 %i.ali, 5
  store i8 %i.alj, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.sroa.029.4.5.i.i = phi float [ %i.alg, %bb.fh ], [ %.sroa.029.4.4.i.i, %bb.fg ] ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 24 ; 2 uses
  %i.all = load float, ptr %i.alk, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.alm = fadd float %.sroa.10.0.copyload.i.i, %i.all ; 3 uses
  store float %i.alm, ptr %i.alk, align 4, !alias.scope !35612, !noalias !35526
  %i.aln = fcmp olt float %i.alm, %.sroa.029.4.5.i.i
  br i1 %i.aln, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.alo = trunc i64 %i.aaz to i8
  %i.alp = or disjoint i8 %i.alo, 6
  store i8 %i.alp, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.029.4.6.i.i = phi float [ %i.alm, %bb.fj ], [ %.sroa.029.4.5.i.i, %bb.fi ] ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 28 ; 2 uses
  %i.alr = load float, ptr %i.alq, align 4, !alias.scope !35612, !noalias !35526, !noundef !52
  %i.als = fadd float %.sroa.11.0.copyload.i.i, %i.alr ; 3 uses
  store float %i.als, ptr %i.alq, align 4, !alias.scope !35612, !noalias !35526
  %i.alt = fcmp olt float %i.als, %.sroa.029.4.6.i.i
  br i1 %i.alt, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.alu = trunc i64 %i.aaz to i8
  %i.alv = or disjoint i8 %i.alu, 7
  store i8 %i.alv, ptr %i.aaq, align 1, !alias.scope !35614, !noalias !35526
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.029.4.7.i.i = phi float [ %i.als, %bb.fl ], [ %.sroa.029.4.6.i.i, %bb.fk ] ; 2 uses
  %i.alw = icmp eq ptr %i.aax, %i.xp
  br i1 %i.alw, label %._crit_edge416.i.i, label %.lr.ph415.i.i

bb.fn:                                            ; preds = %bb.fo, %.split.i175.i
  %i.alx = phi i64 [ 1, %.split.i175.i ], [ %i.amh, %bb.fo ] ; 3 uses
  %.sroa.071.0400.i.i = phi i64 [ 0, %.split.i175.i ], [ %i.alx, %bb.fo ] ; 3 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.071.0400.i.i
  %i.alz = load float, ptr %i.aly, align 4, !alias.scope !35611, !noalias !35526, !noundef !52
  %gep.i177.i = getelementptr [1040 x i8], ptr %invariant.gep.i176.i, i64 %.sroa.071.0400.i.i
  %i.ama = load i32, ptr %gep.i177.i, align 4, !alias.scope !35610, !noalias !35526, !noundef !52
  %i.amb = zext i32 %i.ama to i64
  %i.amc = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.amb)
          to label %.noexc197.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35526

.noexc197.i:                                      ; preds = %bb.fn
  %i.amd = add nuw nsw i64 %.sroa.071.0400.i.i, %i.xn ; 3 uses
  %i.ame = icmp ult i64 %i.amd, %i.ft
  br i1 %i.ame, label %bb.fo, label %.invoke.i

bb.fo:                                            ; preds = %.noexc197.i
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.amd
  %i.amg = fsub float %i.alz, %i.amc
  store float %i.amg, ptr %i.amf, align 4, !alias.scope !35611, !noalias !35526
  %i.amh = add nuw nsw i64 %i.alx, 1
  %exitcond482.not.i.i = icmp eq i64 %i.alx, %.sroa.0.0424.i
  br i1 %exitcond482.not.i.i, label %.loopexit358.i.i, label %bb.fn

bb.fp:                                            ; preds = %bb.dl
  %i.ami = uitofp nneg i64 %i.xi to float
  %i.amj = tail call float @llvm.log2.f32(float %i.ami)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fr, %bb.fp
  %.sroa.016.0.i.i = phi float [ %i.amn, %bb.fr ], [ %i.amj, %bb.fp ]
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.069.0399.i.i
  store float %.sroa.016.0.i.i, ptr %i.amk, align 4, !alias.scope !35611, !noalias !35526
  %i.aml = add nuw nsw i64 %i.xe, 1
  %exitcond479.not.i.i = icmp eq i64 %i.xe, %.sroa.0.0424.i
  br i1 %exitcond479.not.i.i, label %.split.i175.i, label %bb.dl

bb.fr:                                            ; preds = %bb.dl
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.xi
  %i.amn = load float, ptr %i.amm, align 4, !noalias !35617, !noundef !52
  br label %bb.fq

.loopexit.i:                                      ; preds = %bb.dp, %.preheader.i.preheader.i, %bb.di
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.di ], [ 1, %.preheader.i.preheader.i ], [ %.sroa.03.1.i.i, %bb.dp ] ; 26 uses
  %i.amo = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.fp, i64 noundef %i.aq, i64 noundef %i.aq, ptr noalias noundef nonnull align 2 %i.gn, i64 noundef %spec.store.select.i, i64 noundef %.sroa.0.0424.i)
          to label %bb.fs unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35526 ; 5 uses

bb.fs:                                            ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35624)
  %.not.i.i203.i = icmp ugt i64 %i.amo, %spec.store.select.i
  br i1 %.not.i.i203.i, label %.invoke1107.i, label %bb.ft, !prof !94

bb.ft:                                            ; preds = %bb.fs
  %.idx.i.i204.i = mul nuw nsw i64 %i.amo, 1040
  %i.amp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i204.i
  %i.amq = icmp eq i64 %i.amo, 0
  br i1 %i.amq, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i205.i

.lr.ph.i.i205.i:                                  ; preds = %bb.ft, %.lr.ph.i.i205.i
  %.sroa.02.05.i.i206.i = phi ptr [ %i.amr, %.lr.ph.i.i205.i ], [ %i.bd, %bb.ft ] ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i206.i, i64 1040 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i206.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.05.i.i206.i, i8 0, i64 1032, i1 false), !alias.scope !35625, !noalias !35526
  store float 3.402000e+38, ptr %i.ams, align 8, !alias.scope !35626, !noalias !35526
  %i.amt = icmp eq ptr %i.amr, %i.amp
  br i1 %i.amt, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i205.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader: ; preds = %.lr.ph.i.i205.i, %bb.ft
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, %bb.fu
  %.sroa.01.010.i.i = phi i64 [ %i.amx, %bb.fu ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader ] ; 3 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.01.010.i.i
  %i.amv = load i8, ptr %i.amu, align 1, !alias.scope !35623, !noalias !35526, !noundef !52
  %i.amw = zext i8 %i.amv to i64                  ; 3 uses
  %.not102.i = icmp samesign ult i64 %i.az, %i.amw
  br i1 %.not102.i, label %.invoke.i, label %bb.fu

bb.fu:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i
  %i.amx = add nuw nsw i64 %.sroa.01.010.i.i, 1   ; 2 uses
  %i.amy = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.amw ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.010.i.i
  %i.ana = load i8, ptr %i.amz, align 1, !alias.scope !35627, !noundef !52
  %i.anb = zext i8 %i.ana to i64
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.amy, i64 %i.anb ; 2 uses
  %i.and = load i32, ptr %i.anc, align 4, !alias.scope !35628, !noalias !35526, !noundef !52
  %i.ane = add i32 %i.and, 1
  store i32 %i.ane, ptr %i.anc, align 4, !alias.scope !35628, !noalias !35526
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amy, i64 1024 ; 2 uses
  %i.ang = load i64, ptr %i.anf, align 8, !alias.scope !35629, !noalias !35526, !noundef !52
  %i.anh = add i64 %i.ang, 1
  store i64 %i.anh, ptr %i.anf, align 8, !alias.scope !35630, !noalias !35526
  %exitcond17.not.i.i = icmp eq i64 %i.amx, %i.aq
  br i1 %exitcond17.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i

.invoke.i:                                        ; preds = %.lr.ph434.split.i.i, %.lr.ph447.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i, %.noexc197.i, %.lr.ph424.preheader.i.i, %.lr.ph424.i.i.1, %.lr.ph424.i.i.2, %.lr.ph424.i.i.3, %.lr.ph424.i.i.4, %.lr.ph424.i.i.5, %.lr.ph424.i.i.6, %.lr.ph430.i.i
  %i.ani = phi i64 [ %i.amw, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ %i.ahm, %.lr.ph430.i.i ], [ %i.amd, %.noexc197.i ], [ %i.zj, %.lr.ph424.i.i.6 ], [ %i.aae, %.lr.ph447.i.i ], [ %i.xv, %.lr.ph424.preheader.i.i ], [ %i.ya, %.lr.ph424.i.i.1 ], [ %i.yi, %.lr.ph424.i.i.2 ], [ %i.yr, %.lr.ph424.i.i.3 ], [ %i.yx, %.lr.ph424.i.i.4 ], [ %i.zd, %.lr.ph424.i.i.5 ], [ %i.aq, %.lr.ph434.split.i.i ]
  %i.anj = phi i64 [ %spec.store.select.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ %i.ge, %.lr.ph430.i.i ], [ %i.ft, %.noexc197.i ], [ %i.fs, %.lr.ph424.preheader.i.i ], [ %i.ge, %.lr.ph447.i.i ], [ %i.fs, %.lr.ph424.i.i.6 ], [ %i.fs, %.lr.ph424.i.i.5 ], [ %i.fs, %.lr.ph424.i.i.4 ], [ %i.fs, %.lr.ph424.i.i.3 ], [ %i.fs, %.lr.ph424.i.i.2 ], [ %i.fs, %.lr.ph424.i.i.1 ], [ %i.aq, %.lr.ph434.split.i.i ]
  %i.ank = phi ptr [ @1569, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ @1571, %.lr.ph430.i.i ], [ @1542, %.noexc197.i ], [ @1537, %.lr.ph424.preheader.i.i ], [ @1531, %.lr.ph447.i.i ], [ @1537, %.lr.ph424.i.i.6 ], [ @1537, %.lr.ph424.i.i.5 ], [ @1537, %.lr.ph424.i.i.4 ], [ @1537, %.lr.ph424.i.i.3 ], [ @1537, %.lr.ph424.i.i.2 ], [ @1537, %.lr.ph424.i.i.1 ], [ @1532, %.lr.ph434.split.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ani, i64 noundef %i.anj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ank) #43
          to label %.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35526

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp": ; preds = %bb.fn, %.loopexit.i, %.invoke.i, %.split440.us.i.invoke.i, %.invoke1107.i
  %lpad.loopexit.split-lp4453 = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.gn) #38, !noalias !35526
  br label %bb.fv

bb.fv:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", %.thread55.i
  %.pn62.i = phi { ptr, i32 } [ %i.gp, %.thread55.i ], [ %lpad.loopexit.split-lp4453, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ]
  br i1 %i.gg, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i212.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i212.i": ; preds = %bb.fv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @mi_free(ptr noundef nonnull %i.gl) #38, !noalias !35526
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i212.i", %bb.fv
  call void @mi_free(ptr noundef nonnull %i.fz) #38, !noalias !35526
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i", %.thread39.i
  %.pn.pn.pn44.i = phi { ptr, i32 } [ %i.gd, %.thread39.i ], [ %i.gk, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i" ], [ %.pn62.i, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i" ]
  call void @mi_free(ptr noundef nonnull %i.fv) #38, !noalias !35526
  call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !35526
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i", %bb.dh, %.body.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %.pn230.pn.pn.pn.pn.pn.pn85918.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i, %bb.dh ]
  tail call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !35526
  br label %.body

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.thread.i", %.thread.i
  %.pn.pn.pn.pn.pn38.i = phi { ptr, i32 } [ %i.bu, %.thread.i ], [ %.pn.pn.pn44.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i" ], [ %i.fx, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.thread.i" ]
  call void @mi_free(ptr noundef nonnull %i.bd) #38, !noalias !35526
  br label %.body

bb.fw:                                            ; preds = %bb.i
  %i.anl = icmp eq i64 %.val111.i, 0              ; 2 uses
  %spec.select.i = select i1 %i.anl, i64 %i.bs, i64 %.val111.i
  br label %bb.fx

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i224.i", %bb.fz, %bb.i
  %.val.i = phi ptr [ %i.ans, %bb.fz ], [ %i.ans, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i224.i" ], [ %.val110.i, %bb.i ]
  %.val63.i = phi i64 [ %.sroa.014.1.i, %bb.fz ], [ %.sroa.014.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i224.i" ], [ %.val111.i, %bb.i ] ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val90.i = load ptr, ptr %i.anm, align 8, !alias.scope !35524, !nonnull !52, !align !77, !noundef !52 ; 3 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val91.i = load i64, ptr %i.ann, align 8, !alias.scope !35524, !noundef !52 ; 5 uses
  %i.ano = icmp ult i64 %.val91.i, %i.bs
  br i1 %i.ano, label %bb.ga, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

bb.fx:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.014.1.i = phi i64 [ %spec.select.i, %bb.fw ], [ %i.anq, %bb.fx ] ; 9 uses
  %i.anp = icmp ult i64 %.sroa.014.1.i, %i.bs
  %i.anq = shl i64 %.sroa.014.1.i, 1
  br i1 %i.anp, label %bb.fx, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.anr = icmp slt i64 %.sroa.014.1.i, 0
  br i1 %i.anr, label %.invoke2822, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i218.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i218.i: ; preds = %bb.fy
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35631
  %i.ans = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35631 ; 5 uses
  %i.ant = icmp eq ptr %i.ans, null
  br i1 %i.ant, label %.invoke2822, label %bb.fz

bb.fz:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i218.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ans, ptr nonnull readonly align 1 %.val110.i, i64 %.val111.i, i1 false), !alias.scope !35632, !noalias !35526
  store ptr %i.ans, ptr %7, align 8, !alias.scope !35524
  store i64 %.sroa.014.1.i, ptr %i.bp, align 8, !alias.scope !35524
  br i1 %i.anl, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i224.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i224.i": ; preds = %bb.fz
  tail call void @mi_free(ptr noundef nonnull align 1 %.val110.i) #38, !noalias !35526
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i"

bb.ga:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i"
  %i.anu = icmp eq i64 %.val91.i, 0               ; 2 uses
  %spec.select100.i = select i1 %i.anu, i64 %i.bs, i64 %.val91.i
  br label %bb.gb

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i232.i", %bb.gd, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i"
  %.val94.i = phi ptr [ %i.aoc, %bb.gd ], [ %i.aoc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i232.i" ], [ %.val90.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i" ]
  %.val95.i = phi i64 [ %.sroa.017.1.i, %bb.gd ], [ %.sroa.017.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i232.i" ], [ %.val91.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit225.i" ] ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.anv, align 8, !alias.scope !35524
  %i.anw = icmp ult i64 %i.br, %.val63.i
  br i1 %i.anw, label %bb.ge, label %.invoke

bb.gb:                                            ; preds = %bb.gb, %bb.ga
  %.sroa.017.1.i = phi i64 [ %spec.select100.i, %bb.ga ], [ %i.any, %bb.gb ] ; 8 uses
  %i.anx = icmp ult i64 %.sroa.017.1.i, %i.bs
  %i.any = shl i64 %.sroa.017.1.i, 1
  br i1 %i.anx, label %bb.gb, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.anz = shl i64 %.sroa.017.1.i, 2              ; 4 uses
  %i.aoa = icmp ugt i64 %.sroa.017.1.i, 4611686018427387903
  %i.aob = icmp ugt i64 %i.anz, 9223372036854775804
  %or.cond.i.i.i.i226.i = or i1 %i.aoa, %i.aob
  br i1 %or.cond.i.i.i.i226.i, label %.invoke2822, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i227.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i227.i: ; preds = %bb.gc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35633
  %i.aoc = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.anz, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35633 ; 5 uses
  %i.aod = icmp eq ptr %i.aoc, null
  br i1 %i.aod, label %.invoke2822, label %bb.gd

bb.gd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i227.i
  %i.aoe = icmp samesign ult i64 %.sroa.017.1.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aoe)
  %i.aof = shl nuw nsw i64 %.val91.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aoc, ptr nonnull readonly align 4 %.val90.i, i64 %i.aof, i1 false), !alias.scope !35634, !noalias !35526
  store ptr %i.aoc, ptr %i.anm, align 8, !alias.scope !35524
  store i64 %.sroa.017.1.i, ptr %i.ann, align 8, !alias.scope !35524
  br i1 %i.anu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i232.i"

.invoke2822:                                      ; preds = %bb.gc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i227.i, %bb.fy, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i218.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.aog = phi i64 [ 0, %bb.fy ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i218.i ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i227.i ], [ 0, %bb.gc ]
  %i.aoh = phi i64 [ %.sroa.014.1.i, %bb.fy ], [ %i.bc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.014.1.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i218.i ], [ %i.anz, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i227.i ], [ %i.anz, %bb.gc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.aog, i64 %i.aoh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont2823 unwind label %bb.e

.cont2823:                                        ; preds = %.invoke2822
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i232.i": ; preds = %bb.gd
  tail call void @mi_free(ptr noundef nonnull align 4 %.val90.i) #38, !noalias !35526
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

bb.ge:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  %i.aoi = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.br
  store i8 0, ptr %i.aoi, align 1, !noalias !35526
  %i.aoj = icmp ult i64 %i.br, %.val95.i
  br i1 %i.aoj, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread92, label %.invoke

_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit.thread92: ; preds = %bb.ge
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %.val94.i, i64 %i.br
  %i.aol = trunc nuw nsw i64 %i.aq to i32
  store i32 %i.aol, ptr %i.aok, align 4, !noalias !35526
  store i64 %i.bs, ptr %i.bq, align 8, !alias.scope !35524
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

.invoke:                                          ; preds = %bb.ge, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"
  %i.aom = phi i64 [ %.val63.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ %.val95.i, %bb.ge ]
  %i.aon = phi ptr [ @1564, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i" ], [ @1565, %bb.ge ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.br, i64 noundef %i.aom, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aon) #43
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN6brotli3enc14block_splitter15SplitByteVector17hd353c100c5629803E.exit: ; preds = %bb.bp
  %i.aoo = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.0109.1.i.i, ptr %i.aoo, align 8, !alias.scope !35573
  %i.aop = zext i8 %.sroa.0113.1.i.i to i64
  %i.aoq = add nuw nsw i64 %i.aop, 1
  %i.aor = getelementptr inbounds nuw i8, ptr %7, i64 32
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.apn = getelementptr i8, ptr %0, i64 %i.apm
  %i.apo = getelementptr i8, ptr %i.apn, i64 -2
  %bound03636 = icmp ugt ptr %i.apo, %i.aoz
  %bound13637 = icmp ult ptr %i.apl, %i.apk
  %found.conflict3638 = and i1 %bound03636, %bound13637
  br i1 %found.conflict3638, label %scalar.ph3633.preheader, label %vector.ph3639

vector.ph3639:                                    ; preds = %vector.memcheck3635
  %i.app = and i64 %.sroa.0.0.i, 7                ; 2 uses
  %i.apq = icmp eq i64 %i.app, 0
  %i.apr = select i1 %i.apq, i64 8, i64 %i.app
  %n.vec3640 = sub nsw i64 %.sroa.0.0.i, %i.apr   ; 2 uses
  br label %vector.body3641

vector.body3641:                                  ; preds = %vector.body3641, %vector.ph3639
  %index3642 = phi i64 [ 0, %vector.ph3639 ], [ %index.next3643, %vector.body3641 ] ; 10 uses
  %i.aps = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.apt = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.apu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.apv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.apw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.apx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.apy = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.apz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3642
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.aps, i64 12
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apt, i64 28
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apu, i64 44
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apv, i64 60
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apw, i64 76
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apx, i64 92
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apy, i64 108
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apz, i64 124
  %i.aqi = load i16, ptr %i.aqa, align 4, !alias.scope !35637
  %i.aqj = load i16, ptr %i.aqb, align 4, !alias.scope !35637
  %i.aqk = load i16, ptr %i.aqc, align 4, !alias.scope !35637
  %i.aql = load i16, ptr %i.aqd, align 4, !alias.scope !35637
  %i.aqm = load i16, ptr %i.aqe, align 4, !alias.scope !35637
  %i.aqn = load i16, ptr %i.aqf, align 4, !alias.scope !35637
  %i.aqo = load i16, ptr %i.aqg, align 4, !alias.scope !35637
  %i.aqp = load i16, ptr %i.aqh, align 4, !alias.scope !35637
  %i.aqq = insertelement <8 x i16> poison, i16 %i.aqi, i64 0
  %i.aqr = insertelement <8 x i16> %i.aqq, i16 %i.aqj, i64 1
  %i.aqs = insertelement <8 x i16> %i.aqr, i16 %i.aqk, i64 2
  %i.aqt = insertelement <8 x i16> %i.aqs, i16 %i.aql, i64 3
  %i.aqu = insertelement <8 x i16> %i.aqt, i16 %i.aqm, i64 4
  %i.aqv = insertelement <8 x i16> %i.aqu, i16 %i.aqn, i64 5
  %i.aqw = insertelement <8 x i16> %i.aqv, i16 %i.aqo, i64 6
  %i.aqx = insertelement <8 x i16> %i.aqw, i16 %i.aqp, i64 7
  %i.aqy = getelementptr inbounds nuw [2 x i8], ptr %i.aoz, i64 %index3642
  store <8 x i16> %i.aqx, ptr %i.aqy, align 2, !alias.scope !35638, !noalias !35637
  %index.next3643 = add nuw i64 %index3642, 8     ; 2 uses
  %i.aqz = icmp eq i64 %index.next3643, %n.vec3640
  br i1 %i.aqz, label %scalar.ph3633.preheader, label %vector.body3641, !llvm.loop !34942

.body421.thread:                                  ; preds = %.invoke2826, %.invoke2824
  %i.ara = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

._crit_edge:                                      ; preds = %scalar.ph3633.prol.loopexit, %scalar.ph3633, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aoz) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35640)
  %i.arb = udiv i64 %2, 530
  %i.arc = tail call i64 @llvm.umin.i64(i64 %i.arb, i64 49) ; 7 uses
  %spec.store.select.i44 = add nuw nsw i64 %i.arc, 1 ; 16 uses
  %i.ard = icmp eq i64 %2, 0                      ; 2 uses
  br i1 %i.ard, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit432.thread", label %bb.gi

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit432.thread": ; preds = %._crit_edge
  %i.are = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.are, align 8, !alias.scope !35640
  br label %bb.nn

bb.gi:                                            ; preds = %._crit_edge
  %i.arf = icmp samesign ult i64 %2, 128
  br i1 %i.arf, label %bb.gj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45: ; preds = %bb.gi
  %i.arg = mul nuw nsw i64 %spec.store.select.i44, 2832 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35641
  %i.arh = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.arg, i64 noundef range(i64 1, 9) 8) #38, !noalias !35641 ; 16 uses
  %i.ari = icmp eq ptr %i.arh, null
  br i1 %i.ari, label %.invoke2824, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"

.invoke2824:                                      ; preds = %bb.ni, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i, %bb.ne, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %i.arj = phi i64 [ 0, %bb.ne ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i ], [ 0, %bb.ni ]
  %i.ark = phi i64 [ %.sroa.014.1.i419, %bb.ne ], [ %i.arg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ %.sroa.014.1.i419, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i ], [ %i.ceu, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i ], [ %i.ceu, %bb.ni ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.arj, i64 %i.ark, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont2825 unwind label %.body421.thread

.cont2825:                                        ; preds = %.invoke2824
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %.not92.i = icmp samesign ult i64 %2, 530
  br i1 %.not92.i, label %.loopexit115.i, label %.lr.ph.i.i.i.i46.preheader

.lr.ph.i.i.i.i46.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %i.arl = add nsw i64 %i.arc, -1
  %xtraiter4533 = and i64 %i.arc, 7               ; 3 uses
  %i.arm = icmp ult i64 %i.arl, 7
  br i1 %i.arm, label %.lr.ph.i.i.i.i46.epil.preheader, label %.lr.ph.i.i.i.i46.preheader.new

.lr.ph.i.i.i.i46.preheader.new:                   ; preds = %.lr.ph.i.i.i.i46.preheader
  %unroll_iter4538 = and i64 %i.arc, 56
  br label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.lr.ph.i.i.i.i46, %.lr.ph.i.i.i.i46.preheader.new
  %.sroa.0.08.i.i.i.i47 = phi ptr [ %i.arh, %.lr.ph.i.i.i.i46.preheader.new ], [ %i.aru, %.lr.ph.i.i.i.i46 ] ; 17 uses
  %niter4539 = phi i64 [ 0, %.lr.ph.i.i.i.i46.preheader.new ], [ %niter4539.next.7, %.lr.ph.i.i.i.i46 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49, align 8, !noalias !35643
  %i.arn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.arn, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1, align 8, !noalias !35643
  %i.aro = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aro, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2, align 8, !noalias !35643
  %i.arp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.arp, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3, align 8, !noalias !35643
  %i.arq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.arq, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4, align 8, !noalias !35643
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.arr, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5, align 8, !noalias !35643
  %i.ars = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ars, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6, align 8, !noalias !35643
  %i.art = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.art, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7, align 8, !noalias !35643
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22656 ; 3 uses
  %niter4539.next.7 = add i64 %niter4539, 8       ; 2 uses
  %niter4539.ncmp.7 = icmp eq i64 %niter4539.next.7, %unroll_iter4538
  br i1 %niter4539.ncmp.7, label %.loopexit115.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i46

bb.gj:                                            ; preds = %bb.gi
  %.val110.i408 = load ptr, ptr %8, align 8, !alias.scope !35640, !nonnull !52, !align !62, !noundef !52 ; 3 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val111.i409 = load i64, ptr %i.arv, align 8, !alias.scope !35640, !noundef !52 ; 5 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.arx = load i64, ptr %i.arw, align 8, !alias.scope !35640, !noundef !52 ; 6 uses
  %i.ary = add i64 %i.arx, 1                      ; 7 uses
  %i.arz = icmp ult i64 %.val111.i409, %i.ary
  br i1 %i.arz, label %bb.nc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i"

.thread.i60:                                      ; preds = %bb.gp, %.split32.us.i.invoke.i, %.split29.us.i.invoke.i
  %i.asa = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

.loopexit115.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i46
  %lcmp.mod4535.not = icmp eq i64 %xtraiter4533, 0
  br i1 %lcmp.mod4535.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i46.epil.preheader

.lr.ph.i.i.i.i46.epil.preheader:                  ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.preheader
  %.sroa.0.08.i.i.i.i47.epil.init = phi ptr [ %i.arh, %.lr.ph.i.i.i.i46.preheader ], [ %i.aru, %.loopexit115.i.loopexit.unr-lcssa ]
  %lcmp.mod4537 = icmp ne i64 %xtraiter4533, 0
  call void @llvm.assume(i1 %lcmp.mod4537)
  br label %.lr.ph.i.i.i.i46.epil

.lr.ph.i.i.i.i46.epil:                            ; preds = %.lr.ph.i.i.i.i46.epil, %.lr.ph.i.i.i.i46.epil.preheader
  %.sroa.0.08.i.i.i.i47.epil = phi ptr [ %i.asb, %.lr.ph.i.i.i.i46.epil ], [ %.sroa.0.08.i.i.i.i47.epil.init, %.lr.ph.i.i.i.i46.epil.preheader ] ; 3 uses
  %epil.iter4534 = phi i64 [ %epil.iter4534.next, %.lr.ph.i.i.i.i46.epil ], [ 0, %.lr.ph.i.i.i.i46.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47.epil, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil, align 8, !noalias !35643
  %i.asb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2832 ; 2 uses
  %epil.iter4534.next = add i64 %epil.iter4534, 1 ; 2 uses
  %epil.iter4534.cmp.not = icmp eq i64 %epil.iter4534.next, %xtraiter4533
  br i1 %epil.iter4534.cmp.not, label %.loopexit115.i, label %.lr.ph.i.i.i.i46.epil, !llvm.loop !34955

.loopexit115.i:                                   ; preds = %.loopexit115.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i51 = phi ptr [ %i.arh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i" ], [ %i.aru, %.loopexit115.i.loopexit.unr-lcssa ], [ %i.asb, %.lr.ph.i.i.i.i46.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i51, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i.i51, i8 0, i64 2824, i1 false), !noalias !35642
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i52, align 8, !noalias !35643
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35645)
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.arg
  %xtraiter4540 = and i64 %spec.store.select.i44, 7 ; 2 uses
  %lcmp.mod4541.not = icmp eq i64 %xtraiter4540, 0
  br i1 %lcmp.mod4541.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol

.lr.ph.i.i.i53.prol:                              ; preds = %.loopexit115.i, %.lr.ph.i.i.i53.prol
  %.sroa.02.05.i.i.i54.prol = phi ptr [ %i.asd, %.lr.ph.i.i.i53.prol ], [ %i.arh, %.loopexit115.i ] ; 3 uses
  %prol.iter4542 = phi i64 [ %prol.iter4542.next, %.lr.ph.i.i.i53.prol ], [ 0, %.loopexit115.i ]
  %i.asd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2832 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.02.05.i.i.i54.prol, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.ase, align 8, !alias.scope !35647, !noalias !35642
  %prol.iter4542.next = add i64 %prol.iter4542, 1 ; 2 uses
  %prol.iter4542.cmp.not = icmp eq i64 %prol.iter4542.next, %xtraiter4540
  br i1 %prol.iter4542.cmp.not, label %.lr.ph.i.i.i53.prol.loopexit, label %.lr.ph.i.i.i53.prol, !llvm.loop !34963

.lr.ph.i.i.i53.prol.loopexit:                     ; preds = %.lr.ph.i.i.i53.prol, %.loopexit115.i
  %.sroa.02.05.i.i.i54.unr = phi ptr [ %i.arh, %.loopexit115.i ], [ %i.asd, %.lr.ph.i.i.i53.prol ]
  %i.asf = icmp samesign ult i64 %2, 3710
  br i1 %i.asf, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

.lr.ph.i.i.i53:                                   ; preds = %.lr.ph.i.i.i53.prol.loopexit, %.lr.ph.i.i.i53
  %.sroa.02.05.i.i.i54 = phi ptr [ %i.asu, %.lr.ph.i.i.i53 ], [ %.sroa.02.05.i.i.i54.unr, %.lr.ph.i.i.i53.prol.loopexit ] ; 17 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2832
  %i.ash = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.02.05.i.i.i54, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.ash, align 8, !alias.scope !35647, !noalias !35642
  %i.asi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5664
  %i.asj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.asg, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.asj, align 8, !alias.scope !35647, !noalias !35642
  %i.ask = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8496
  %i.asl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.asi, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.asl, align 8, !alias.scope !35647, !noalias !35642
  %i.asm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11328
  %i.asn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ask, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.asn, align 8, !alias.scope !35647, !noalias !35642
  %i.aso = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14160
  %i.asp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.asm, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.asp, align 8, !alias.scope !35647, !noalias !35642
  %i.asq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16992
  %i.asr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aso, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.asr, align 8, !alias.scope !35647, !noalias !35642
  %i.ass = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19824
  %i.ast = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.asq, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.ast, align 8, !alias.scope !35647, !noalias !35642
  %i.asu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22656 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i54, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ass, i8 0, i64 2824, i1 false), !alias.scope !35646, !noalias !35642
  store float 3.402000e+38, ptr %i.asv, align 8, !alias.scope !35647, !noalias !35642
  %i.asw = icmp eq ptr %i.asu, %i.asc
  br i1 %i.asw, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i, label %.lr.ph.i.i.i53

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i53, %.lr.ph.i.i.i53.prol.loopexit
  %i.asx = udiv i64 %2, %spec.store.select.i44
  %i.asy = add nsw i64 %2, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i: ; preds = %bb.gn
  %exitcond.not.i.i67 = icmp eq i64 %.sroa.07.024.i.i, %i.arc
  br i1 %exitcond.not.i.i67, label %.split932, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i
  %.sroa.0.025.i.i = phi i32 [ %.sroa.0.1.i.i57, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i = phi i64 [ %i.asz, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.i.i ] ; 5 uses
  %i.asz = add nuw nsw i64 %.sroa.07.024.i.i, 1
  %i.ata = mul i64 %.sroa.07.024.i.i, %2
  %i.atb = udiv i64 %i.ata, %spec.store.select.i44 ; 2 uses
  %i.atc = icmp eq i64 %.sroa.07.024.i.i, 0
  br i1 %i.atc, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gl, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i56 = phi i64 [ %i.atb, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i ], [ %i.atj, %bb.gl ] ; 2 uses
  %.sroa.0.1.i.i57 = phi i32 [ %.sroa.0.025.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i55, %bb.gl ]
  %i.atd = add i64 %.sroa.04.0.i.i56, 40
  %.not.i.i58 = icmp ult i64 %i.atd, %2
  %spec.select.i.i59 = select i1 %.not.i.i58, i64 %.sroa.04.0.i.i56, i64 %i.asy ; 4 uses
  %i.ate = icmp ugt i64 %spec.select.i.i59, %2
  br i1 %i.ate, label %.split29.us.i.invoke.i, label %bb.gm, !prof !54

bb.gl:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.preheader.split.split.i.i
  %i.atf = icmp eq i32 %.sroa.0.025.i.i, 0
  %i.atg = mul i32 %.sroa.0.025.i.i, 16807
  %spec.store.select.i.i55 = select i1 %i.atf, i32 1, i32 %i.atg ; 2 uses
  %i.ath = zext i32 %spec.store.select.i.i55 to i64
  %i.ati = urem i64 %i.ath, %i.asx
  %i.atj = add i64 %i.ati, %i.atb
  br label %bb.gk

bb.gm:                                            ; preds = %bb.gk
  %i.atk = getelementptr inbounds nuw [2832 x i8], ptr %i.arh, i64 %.sroa.07.024.i.i ; 3 uses
  %i.atl = sub nuw nsw i64 %2, %spec.select.i.i59 ; 2 uses
  %i.atm = getelementptr inbounds nuw [2 x i8], ptr %i.aoz, i64 %spec.select.i.i59 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35649)
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atk, i64 2816 ; 2 uses
  %i.ato = load i64, ptr %i.atn, align 8, !alias.scope !35650, !noalias !35642, !noundef !52
  %i.atp = add i64 %i.ato, 40
  store i64 %i.atp, ptr %i.atn, align 8, !alias.scope !35651, !noalias !35642
  %i.atq = icmp samesign ugt i64 %i.atl, 39
  br i1 %i.atq, label %.preheader.i.i.i63, label %.split29.us.i.invoke.i, !prof !61

.split29.us.i.invoke.i:                           ; preds = %bb.gm, %bb.gk
  %.ph191 = phi i64 [ 0, %bb.gm ], [ %spec.select.i.i59, %bb.gk ]
  %.ph192 = phi i64 [ 40, %bb.gm ], [ %2, %bb.gk ]
  %.ph193 = phi i64 [ %i.atl, %bb.gm ], [ %2, %bb.gk ]
  %.ph194 = phi ptr [ @1927, %bb.gm ], [ @1568, %bb.gk ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.ph191, i64 noundef %.ph192, i64 noundef %.ph193, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph194) #43
          to label %.split29.us.i.cont.i unwind label %.thread.i60, !noalias !35642

.split29.us.i.cont.i:                             ; preds = %.split29.us.i.invoke.i
  unreachable

.preheader.i.i.i63:                               ; preds = %bb.gm, %bb.gn
  %.sroa.02.0.idx7.i.i.i64 = phi i64 [ %.sroa.02.0.add.i.i.i66.1, %bb.gn ], [ 0, %bb.gm ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i65 = getelementptr inbounds nuw i8, ptr %i.atm, i64 %.sroa.02.0.idx7.i.i.i64
  %i.atr = load i16, ptr %.sroa.02.0.ptr.i.i.i65, align 2, !alias.scope !35652, !noundef !52 ; 2 uses
  %i.ats = zext i16 %i.atr to i64                 ; 2 uses
  %i.att = icmp ult i16 %i.atr, 704
  br i1 %i.att, label %.preheader.i.i.i63.1, label %.split32.us.i.invoke.i

.preheader.i.i.i63.1:                             ; preds = %.preheader.i.i.i63
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.ats ; 2 uses
  %i.atv = load i32, ptr %i.atu, align 4, !alias.scope !35653, !noalias !35642, !noundef !52
  %i.atw = add i32 %i.atv, 1
  store i32 %i.atw, ptr %i.atu, align 4, !alias.scope !35653, !noalias !35642
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atm, i64 %.sroa.02.0.idx7.i.i.i64
  %.sroa.02.0.ptr.i.i.i65.1 = getelementptr inbounds nuw i8, ptr %i.atx, i64 2
  %i.aty = load i16, ptr %.sroa.02.0.ptr.i.i.i65.1, align 2, !alias.scope !35652, !noundef !52 ; 2 uses
  %i.atz = zext i16 %i.aty to i64                 ; 2 uses
  %i.aua = icmp ult i16 %i.aty, 704
  br i1 %i.aua, label %bb.gn, label %.split32.us.i.invoke.i

bb.gn:                                            ; preds = %.preheader.i.i.i63.1
  %.sroa.02.0.add.i.i.i66.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i64, 4 ; 2 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.atz ; 2 uses
  %i.auc = load i32, ptr %i.aub, align 4, !alias.scope !35653, !noalias !35642, !noundef !52
  %i.aud = add i32 %i.auc, 1
  store i32 %i.aud, ptr %i.aub, align 4, !alias.scope !35653, !noalias !35642
  %i.aue = icmp eq i64 %.sroa.02.0.add.i.i.i66.1, 80
  br i1 %i.aue, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i, label %.preheader.i.i.i63

.split32.us.i.invoke.i:                           ; preds = %.preheader.i.i.i63, %.preheader.i.i.i63.1, %.preheader.i.i.i.i69, %.preheader.i.i.i.i69.1
  %i.auf = phi i64 [ %i.avc, %.preheader.i.i.i.i69.1 ], [ %i.auv, %.preheader.i.i.i.i69 ], [ %i.ats, %.preheader.i.i.i63 ], [ %i.atz, %.preheader.i.i.i63.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.auf, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1926) #43
          to label %.split32.us.i.cont.i unwind label %.thread.i60, !noalias !35642

.split32.us.i.cont.i:                             ; preds = %.split32.us.i.invoke.i
  unreachable

.split932:                                        ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35655)
  %i.aug = udiv i64 %i.aos, 40
  %i.auh = add nuw nsw i64 %i.aug, 99
  %i.aui = add nuw nsw i64 %i.auh, %spec.store.select.i44 ; 2 uses
  %i.auj = urem i64 %i.aui, %spec.store.select.i44
  %i.auk = sub nuw nsw i64 %i.aui, %i.auj
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ab, i64 2816 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ab, i64 2824
  %i.aun = add nsw i64 %2, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i, %.split932
  %.sroa.03.022.i.i = phi i64 [ 0, %.split932 ], [ %i.auo, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i = phi i32 [ 7, %.split932 ], [ %spec.store.select.i.i.i68, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !35656
  %i.auo = add nuw i64 %.sroa.03.022.i.i, 1       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2816) %i.ab, i8 0, i64 2816, i1 false), !noalias !35656
  store float 3.402000e+38, ptr %i.aum, align 8, !alias.scope !35657, !noalias !35656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35659)
  %i.aup = mul i32 %.sroa.0.021.i.i, 16807
  %i.auq = icmp eq i32 %.sroa.0.021.i.i, 0
  %spec.store.select.i.i.i68 = select i1 %i.auq, i32 1, i32 %i.aup ; 2 uses
  %i.aur = zext i32 %spec.store.select.i.i.i68 to i64
  %i.aus = urem i64 %i.aur, %i.aun
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.aoz, i64 %i.aus ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35661)
  store i64 40, ptr %i.aul, align 8, !alias.scope !35662, !noalias !35656
  br label %.preheader.i.i.i.i69

.preheader.i.i.i.i69:                             ; preds = %bb.go, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i
  %.sroa.02.0.idx7.i.i.i.i70 = phi i64 [ 0, %_ZN6brotli3enc9histogram14HistogramClear17h1e24dd49ad85b309E.exit.i.i ], [ %.sroa.02.0.add.i.i.i.i72.1, %bb.go ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i71 = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sroa.02.0.idx7.i.i.i.i70
  %i.auu = load i16, ptr %.sroa.02.0.ptr.i.i.i.i71, align 2, !alias.scope !35663, !noundef !52 ; 2 uses
  %i.auv = zext i16 %i.auu to i64                 ; 2 uses
  %i.auw = icmp ult i16 %i.auu, 704
  br i1 %i.auw, label %.preheader.i.i.i.i69.1, label %.split32.us.i.invoke.i

.preheader.i.i.i.i69.1:                           ; preds = %.preheader.i.i.i.i69
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.auv ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !alias.scope !35664, !noalias !35656, !noundef !52
  %i.auz = add i32 %i.auy, 1
  store i32 %i.auz, ptr %i.aux, align 4, !alias.scope !35664, !noalias !35656
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aut, i64 %.sroa.02.0.idx7.i.i.i.i70
  %.sroa.02.0.ptr.i.i.i.i71.1 = getelementptr inbounds nuw i8, ptr %i.ava, i64 2
  %i.avb = load i16, ptr %.sroa.02.0.ptr.i.i.i.i71.1, align 2, !alias.scope !35663, !noundef !52 ; 2 uses
  %i.avc = zext i16 %i.avb to i64                 ; 2 uses
  %i.avd = icmp ult i16 %i.avb, 704
  br i1 %i.avd, label %bb.go, label %.split32.us.i.invoke.i

bb.go:                                            ; preds = %.preheader.i.i.i.i69.1
  %.sroa.02.0.add.i.i.i.i72.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i70, 4 ; 2 uses
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.avc ; 2 uses
  %i.avf = load i32, ptr %i.ave, align 4, !alias.scope !35664, !noalias !35656, !noundef !52
  %i.avg = add i32 %i.avf, 1
  store i32 %i.avg, ptr %i.ave, align 4, !alias.scope !35664, !noalias !35656
  %i.avh = icmp eq i64 %.sroa.02.0.add.i.i.i.i72.1, 80
  br i1 %i.avh, label %vector.ph3647, label %.preheader.i.i.i.i69

vector.ph3647:                                    ; preds = %bb.go
  %i.avi = urem i64 %.sroa.03.022.i.i, %spec.store.select.i44
  %i.avj = getelementptr inbounds nuw [2832 x i8], ptr %i.arh, i64 %i.avi ; 3 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 2816 ; 2 uses
  %i.avl = load i64, ptr %i.avk, align 8, !alias.scope !35665, !noalias !35666, !noundef !52
  %i.avm = load i64, ptr %i.aul, align 8, !alias.scope !35667, !noalias !35656, !noundef !52
  %i.avn = add i64 %i.avm, %i.avl
  store i64 %i.avn, ptr %i.avk, align 8, !alias.scope !35668, !noalias !35642
  br label %vector.body3648
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.0.0.copyload.i.i116 = load float, ptr %i.cav, align 4, !alias.scope !35741, !noalias !35642
  %.sroa.5.0..sroa_idx.i.i117 = getelementptr inbounds nuw i8, ptr %i.cav, i64 4
  %.sroa.5.0.copyload.i.i118 = load float, ptr %.sroa.5.0..sroa_idx.i.i117, align 4, !alias.scope !35741, !noalias !35642
  %.sroa.6.0..sroa_idx.i.i119 = getelementptr inbounds nuw i8, ptr %i.cav, i64 8
  %.sroa.6.0.copyload.i.i120 = load float, ptr %.sroa.6.0..sroa_idx.i.i119, align 4, !alias.scope !35741, !noalias !35642
  %.sroa.7.0..sroa_idx.i.i121 = getelementptr inbounds nuw i8, ptr %i.cav, i64 12
  %.sroa.7.0.copyload.i.i122 = load float, ptr %.sroa.7.0..sroa_idx.i.i121, align 4, !alias.scope !35741, !noalias !35642
  %.sroa.8.0..sroa_idx.i.i123 = getelementptr inbounds nuw i8, ptr %i.cav, i64 16
  %.sroa.8.0.copyload.i.i124 = load float, ptr %.sroa.8.0..sroa_idx.i.i123, align 4, !alias.scope !35741, !noalias !35642
  %.sroa.9.0..sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %i.cav, i64 20
  %.sroa.9.0.copyload.i.i126 = load float, ptr %.sroa.9.0..sroa_idx.i.i125, align 4, !alias.scope !35741, !noalias !35642
  %.sroa.10.0..sroa_idx.i.i127 = getelementptr inbounds nuw i8, ptr %i.cav, i64 24
  %.sroa.10.0.copyload.i.i128 = load float, ptr %.sroa.10.0..sroa_idx.i.i127, align 4, !alias.scope !35741, !noalias !35642
  %.sroa.11.0..sroa_idx.i.i129 = getelementptr inbounds nuw i8, ptr %i.cav, i64 28
  %.sroa.11.0.copyload.i.i130 = load float, ptr %.sroa.11.0..sroa_idx.i.i129, align 4, !alias.scope !35741, !noalias !35642
  %i.caw = load float, ptr %.sroa.0164.0412.i.i110, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.cax = fadd float %.sroa.0.0.copyload.i.i116, %i.caw ; 3 uses
  store float %i.cax, ptr %.sroa.0164.0412.i.i110, align 4, !alias.scope !35732, !noalias !35642
  %i.cay = fcmp olt float %i.cax, %.sroa.029.0413.i.i109
  br i1 %i.cay, label %bb.md, label %bb.me

bb.md:                                            ; preds = %bb.mc
  %i.caz = trunc i64 %i.brt to i8
  store i8 %i.caz, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.me

bb.me:                                            ; preds = %bb.md, %bb.mc
  %.sroa.029.4.i.i131 = phi float [ %i.cax, %bb.md ], [ %.sroa.029.0413.i.i109, %bb.mc ] ; 2 uses
  %i.cba = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 4 ; 2 uses
  %i.cbb = load float, ptr %i.cba, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.cbc = fadd float %.sroa.5.0.copyload.i.i118, %i.cbb ; 3 uses
  store float %i.cbc, ptr %i.cba, align 4, !alias.scope !35732, !noalias !35642
  %i.cbd = fcmp olt float %i.cbc, %.sroa.029.4.i.i131
  br i1 %i.cbd, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.cbe = trunc i64 %i.brt to i8
  %i.cbf = or disjoint i8 %i.cbe, 1
  store i8 %i.cbf, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me
  %.sroa.029.4.1.i.i132 = phi float [ %i.cbc, %bb.mf ], [ %.sroa.029.4.i.i131, %bb.me ] ; 2 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 8 ; 2 uses
  %i.cbh = load float, ptr %i.cbg, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.cbi = fadd float %.sroa.6.0.copyload.i.i120, %i.cbh ; 3 uses
  store float %i.cbi, ptr %i.cbg, align 4, !alias.scope !35732, !noalias !35642
  %i.cbj = fcmp olt float %i.cbi, %.sroa.029.4.1.i.i132
  br i1 %i.cbj, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.cbk = trunc i64 %i.brt to i8
  %i.cbl = or disjoint i8 %i.cbk, 2
  store i8 %i.cbl, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %.sroa.029.4.2.i.i133 = phi float [ %i.cbi, %bb.mh ], [ %.sroa.029.4.1.i.i132, %bb.mg ] ; 2 uses
  %i.cbm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 12 ; 2 uses
  %i.cbn = load float, ptr %i.cbm, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.cbo = fadd float %.sroa.7.0.copyload.i.i122, %i.cbn ; 3 uses
  store float %i.cbo, ptr %i.cbm, align 4, !alias.scope !35732, !noalias !35642
  %i.cbp = fcmp olt float %i.cbo, %.sroa.029.4.2.i.i133
  br i1 %i.cbp, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.cbq = trunc i64 %i.brt to i8
  %i.cbr = or disjoint i8 %i.cbq, 3
  store i8 %i.cbr, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mj, %bb.mi
  %.sroa.029.4.3.i.i134 = phi float [ %i.cbo, %bb.mj ], [ %.sroa.029.4.2.i.i133, %bb.mi ] ; 2 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 16 ; 2 uses
  %i.cbt = load float, ptr %i.cbs, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.cbu = fadd float %.sroa.8.0.copyload.i.i124, %i.cbt ; 3 uses
  store float %i.cbu, ptr %i.cbs, align 4, !alias.scope !35732, !noalias !35642
  %i.cbv = fcmp olt float %i.cbu, %.sroa.029.4.3.i.i134
  br i1 %i.cbv, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mk
  %i.cbw = trunc i64 %i.brt to i8
  %i.cbx = or disjoint i8 %i.cbw, 4
  store i8 %i.cbx, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.mm

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %.sroa.029.4.4.i.i135 = phi float [ %i.cbu, %bb.ml ], [ %.sroa.029.4.3.i.i134, %bb.mk ] ; 2 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 20 ; 2 uses
  %i.cbz = load float, ptr %i.cby, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.cca = fadd float %.sroa.9.0.copyload.i.i126, %i.cbz ; 3 uses
  store float %i.cca, ptr %i.cby, align 4, !alias.scope !35732, !noalias !35642
  %i.ccb = fcmp olt float %i.cca, %.sroa.029.4.4.i.i135
  br i1 %i.ccb, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.ccc = trunc i64 %i.brt to i8
  %i.ccd = or disjoint i8 %i.ccc, 5
  store i8 %i.ccd, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %.sroa.029.4.5.i.i136 = phi float [ %i.cca, %bb.mn ], [ %.sroa.029.4.4.i.i135, %bb.mm ] ; 2 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 24 ; 2 uses
  %i.ccf = load float, ptr %i.cce, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.ccg = fadd float %.sroa.10.0.copyload.i.i128, %i.ccf ; 3 uses
  store float %i.ccg, ptr %i.cce, align 4, !alias.scope !35732, !noalias !35642
  %i.cch = fcmp olt float %i.ccg, %.sroa.029.4.5.i.i136
  br i1 %i.cch, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo
  %i.cci = trunc i64 %i.brt to i8
  %i.ccj = or disjoint i8 %i.cci, 6
  store i8 %i.ccj, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  %.sroa.029.4.6.i.i137 = phi float [ %i.ccg, %bb.mp ], [ %.sroa.029.4.5.i.i136, %bb.mo ] ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i110, i64 28 ; 2 uses
  %i.ccl = load float, ptr %i.cck, align 4, !alias.scope !35732, !noalias !35642, !noundef !52
  %i.ccm = fadd float %.sroa.11.0.copyload.i.i130, %i.ccl ; 3 uses
  store float %i.ccm, ptr %i.cck, align 4, !alias.scope !35732, !noalias !35642
  %i.ccn = fcmp olt float %i.ccm, %.sroa.029.4.6.i.i137
  br i1 %i.ccn, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  %i.cco = trunc i64 %i.brt to i8
  %i.ccp = or disjoint i8 %i.cco, 7
  store i8 %i.ccp, ptr %i.brk, align 1, !alias.scope !35734, !noalias !35642
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  %.sroa.029.4.7.i.i138 = phi float [ %i.ccm, %bb.mr ], [ %.sroa.029.4.6.i.i137, %bb.mq ] ; 2 uses
  %i.ccq = icmp eq ptr %i.brr, %i.boj
  br i1 %i.ccq, label %._crit_edge416.i.i139, label %.lr.ph415.i.i108

bb.mt:                                            ; preds = %bb.mu, %.split.i177.i
  %i.ccr = phi i64 [ 1, %.split.i177.i ], [ %i.cdb, %bb.mu ] ; 3 uses
  %.sroa.071.0400.i.i85 = phi i64 [ 0, %.split.i177.i ], [ %i.ccr, %bb.mu ] ; 3 uses
  %i.ccs = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %.sroa.071.0400.i.i85
  %i.cct = load float, ptr %i.ccs, align 4, !alias.scope !35731, !noalias !35642, !noundef !52
  %gep.i179.i = getelementptr [2832 x i8], ptr %invariant.gep.i178.i, i64 %.sroa.071.0400.i.i85
  %i.ccu = load i32, ptr %gep.i179.i, align 4, !alias.scope !35730, !noalias !35642, !noundef !52
  %i.ccv = zext i32 %i.ccu to i64
  %i.ccw = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.ccv)
          to label %.noexc199.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35642

.noexc199.i:                                      ; preds = %bb.mt
  %i.ccx = add nuw nsw i64 %.sroa.071.0400.i.i85, %i.boh ; 3 uses
  %i.ccy = icmp ult i64 %i.ccx, %i.awf
  br i1 %i.ccy, label %bb.mu, label %.invoke.i91

bb.mu:                                            ; preds = %.noexc199.i
  %i.ccz = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %i.ccx
  %i.cda = fsub float %i.cct, %i.ccw
  store float %i.cda, ptr %i.ccz, align 4, !alias.scope !35731, !noalias !35642
  %i.cdb = add nuw nsw i64 %i.ccr, 1
  %exitcond483.not.i.i = icmp eq i64 %i.ccr, %.sroa.0.0442.i
  br i1 %exitcond483.not.i.i, label %.loopexit358.i.i93, label %bb.mt

bb.mv:                                            ; preds = %bb.kr
  %i.cdc = uitofp nneg i64 %i.boc to float
  %i.cdd = tail call float @llvm.log2.f32(float %i.cdc)
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mx, %bb.mv
  %.sroa.016.0.i.i83 = phi float [ %i.cdh, %bb.mx ], [ %i.cdd, %bb.mv ]
  %i.cde = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %.sroa.069.0399.i.i82
  store float %.sroa.016.0.i.i83, ptr %i.cde, align 4, !alias.scope !35731, !noalias !35642
  %i.cdf = add nuw nsw i64 %i.bny, 1
  %exitcond480.not.i.i = icmp eq i64 %i.bny, %.sroa.0.0442.i
  br i1 %exitcond480.not.i.i, label %.split.i177.i, label %bb.kr

bb.mx:                                            ; preds = %bb.kr
  %i.cdg = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.boc
  %i.cdh = load float, ptr %i.cdg, align 4, !noalias !35737, !noundef !52
  br label %bb.mw

.loopexit.i195:                                   ; preds = %bb.kv, %.preheader.i.preheader.i402, %bb.kn
  %.sroa.0.0.i.i196 = phi i64 [ 0, %bb.kn ], [ 1, %.preheader.i.preheader.i402 ], [ %.sroa.03.1.i.i193, %bb.kv ] ; 26 uses
  %i.cdi = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.awb, i64 noundef %2, i64 noundef %2, ptr noalias noundef nonnull align 2 %i.awz, i64 noundef %spec.store.select.i44, i64 noundef %.sroa.0.0442.i)
          to label %bb.my unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35642 ; 5 uses

bb.my:                                            ; preds = %.loopexit.i195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35744)
  %.not.i.i205.i = icmp ugt i64 %i.cdi, %spec.store.select.i44
  br i1 %.not.i.i205.i, label %.invoke1162.i, label %bb.mz, !prof !94

bb.mz:                                            ; preds = %bb.my
  %.idx.i.i206.i = mul nuw nsw i64 %i.cdi, 2832
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.arh, i64 %.idx.i.i206.i
  %i.cdk = icmp eq i64 %i.cdi, 0
  br i1 %i.cdk, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i207.i

.lr.ph.i.i207.i:                                  ; preds = %bb.mz, %.lr.ph.i.i207.i
  %.sroa.02.05.i.i208.i = phi ptr [ %i.cdl, %.lr.ph.i.i207.i ], [ %i.arh, %bb.mz ] ; 3 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i208.i, i64 2832 ; 2 uses
  %i.cdm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i208.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.02.05.i.i208.i, i8 0, i64 2824, i1 false), !alias.scope !35745, !noalias !35642
  store float 3.402000e+38, ptr %i.cdm, align 8, !alias.scope !35746, !noalias !35642
  %i.cdn = icmp eq ptr %i.cdl, %i.cdj
  br i1 %i.cdn, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i207.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader: ; preds = %.lr.ph.i.i207.i, %bb.mz
  br label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.cdo, %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader ] ; 3 uses
  %i.cdo = add nuw nsw i64 %.sroa.01.013.i.i, 1   ; 2 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %i.awb, i64 %.sroa.01.013.i.i
  %i.cdq = load i8, ptr %i.cdp, align 1, !alias.scope !35743, !noalias !35642, !noundef !52
  %i.cdr = zext i8 %i.cdq to i64                  ; 3 uses
  %.not93.i = icmp samesign ult i64 %i.arc, %i.cdr
  br i1 %.not93.i, label %.invoke.i91, label %bb.na

bb.na:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i
  %i.cds = getelementptr inbounds nuw [2 x i8], ptr %i.aoz, i64 %.sroa.01.013.i.i
  %i.cdt = load i16, ptr %i.cds, align 2, !alias.scope !35747, !noundef !52 ; 2 uses
  %i.cdu = zext i16 %i.cdt to i64                 ; 2 uses
  %i.cdv = icmp ult i16 %i.cdt, 704
  br i1 %i.cdv, label %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i, label %.invoke.i91

_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i: ; preds = %bb.na
  %i.cdw = getelementptr inbounds nuw [2832 x i8], ptr %i.arh, i64 %i.cdr ; 2 uses
  %i.cdx = getelementptr inbounds nuw [4 x i8], ptr %i.cdw, i64 %i.cdu ; 2 uses
  %i.cdy = load i32, ptr %i.cdx, align 4, !alias.scope !35748, !noalias !35642, !noundef !52
  %i.cdz = add i32 %i.cdy, 1
  store i32 %i.cdz, ptr %i.cdx, align 4, !alias.scope !35748, !noalias !35642
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdw, i64 2816 ; 2 uses
  %i.ceb = load i64, ptr %i.cea, align 8, !alias.scope !35749, !noalias !35642, !noundef !52
  %i.cec = add i64 %i.ceb, 1
  store i64 %i.cec, ptr %i.cea, align 8, !alias.scope !35750, !noalias !35642
  %exitcond24.not.i.i = icmp eq i64 %i.cdo, %2
  br i1 %exitcond24.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i

.invoke.i91:                                      ; preds = %.lr.ph434.split.i.i104, %.lr.ph447.i.i185, %bb.na, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i, %.noexc199.i, %.lr.ph424.preheader.i.i143, %.lr.ph424.i.i145.1, %.lr.ph424.i.i145.2, %.lr.ph424.i.i145.3, %.lr.ph424.i.i145.4, %.lr.ph424.i.i145.5, %.lr.ph424.i.i145.6, %.lr.ph430.i.i156
  %i.ced = phi i64 [ %i.cdr, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %i.byg, %.lr.ph430.i.i156 ], [ %i.ccx, %.noexc199.i ], [ %i.bqd, %.lr.ph424.i.i145.6 ], [ %i.bqy, %.lr.ph447.i.i185 ], [ %i.bop, %.lr.ph424.preheader.i.i143 ], [ %i.bou, %.lr.ph424.i.i145.1 ], [ %i.bpc, %.lr.ph424.i.i145.2 ], [ %i.bpl, %.lr.ph424.i.i145.3 ], [ %i.bpr, %.lr.ph424.i.i145.4 ], [ %i.bpx, %.lr.ph424.i.i145.5 ], [ %i.cdu, %bb.na ], [ %2, %.lr.ph434.split.i.i104 ]
  %i.cee = phi i64 [ %spec.store.select.i44, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %i.awq, %.lr.ph430.i.i156 ], [ %i.awf, %.noexc199.i ], [ %i.awe, %.lr.ph424.preheader.i.i143 ], [ %i.awq, %.lr.ph447.i.i185 ], [ %i.awe, %.lr.ph424.i.i145.6 ], [ %i.awe, %.lr.ph424.i.i145.5 ], [ %i.awe, %.lr.ph424.i.i145.4 ], [ %i.awe, %.lr.ph424.i.i145.3 ], [ %i.awe, %.lr.ph424.i.i145.2 ], [ %i.awe, %.lr.ph424.i.i145.1 ], [ 704, %bb.na ], [ %2, %.lr.ph434.split.i.i104 ]
  %i.cef = phi ptr [ @1569, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ @1571, %.lr.ph430.i.i156 ], [ @1542, %.noexc199.i ], [ @1537, %.lr.ph424.preheader.i.i143 ], [ @1531, %.lr.ph447.i.i185 ], [ @1537, %.lr.ph424.i.i145.6 ], [ @1537, %.lr.ph424.i.i145.5 ], [ @1537, %.lr.ph424.i.i145.4 ], [ @1537, %.lr.ph424.i.i145.3 ], [ @1537, %.lr.ph424.i.i145.2 ], [ @1537, %.lr.ph424.i.i145.1 ], [ @1925, %bb.na ], [ @1532, %.lr.ph434.split.i.i104 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ced, i64 noundef %i.cee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cef) #43
          to label %.cont.i92 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35642

.cont.i92:                                        ; preds = %.invoke.i91
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp": ; preds = %bb.mt, %.loopexit.i195, %.invoke.i91, %.split440.us.i.invoke.i113, %.invoke1162.i
  %lpad.loopexit.split-lp4234 = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.awz) #38, !noalias !35642
  br label %bb.nb

bb.nb:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", %.thread55.i403
  %.pn62.i87 = phi { ptr, i32 } [ %i.axb, %.thread55.i403 ], [ %lpad.loopexit.split-lp4234, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i86.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ]
  br i1 %i.aws, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i88", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i215.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i215.i": ; preds = %bb.nb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awx) ]
  call void @mi_free(ptr noundef nonnull %i.awx) #38, !noalias !35642
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i88"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i88": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i215.i", %bb.nb
  call void @mi_free(ptr noundef nonnull %i.awl) #38, !noalias !35642
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i89"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i89": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i88", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i404", %.thread39.i406
  %.pn.pn.pn44.i90 = phi { ptr, i32 } [ %i.awp, %.thread39.i406 ], [ %i.aww, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i404" ], [ %.pn62.i87, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i88" ]
  call void @mi_free(ptr noundef nonnull %i.awh) #38, !noalias !35642
  call void @mi_free(ptr noundef nonnull %i.awb) #38, !noalias !35642
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i", %bb.km, %.body.i395
  %.pn.pn.pn.pn.i257 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i396, %.body.i395 ], [ %.pn230.pn.pn.pn.pn.pn.pn85945.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i256, %bb.km ]
  tail call void @mi_free(ptr noundef nonnull %i.awb) #38, !noalias !35642
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i89", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i", %.thread.i60
  %.pn.pn.pn.pn.pn38.i61 = phi { ptr, i32 } [ %i.asa, %.thread.i60 ], [ %.pn.pn.pn44.i90, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i89" ], [ %i.awj, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i" ]
  call void @mi_free(ptr noundef nonnull %i.arh) #38, !noalias !35642
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

bb.nc:                                            ; preds = %bb.gj
  %i.ceg = icmp eq i64 %.val111.i409, 0           ; 2 uses
  %spec.select.i418 = select i1 %i.ceg, i64 %i.ary, i64 %.val111.i409
  br label %bb.nd

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i", %bb.nf, %bb.gj
  %.val.i410 = phi ptr [ %i.cen, %bb.nf ], [ %i.cen, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i" ], [ %.val110.i408, %bb.gj ]
  %.val63.i411 = phi i64 [ %.sroa.014.1.i419, %bb.nf ], [ %.sroa.014.1.i419, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i" ], [ %.val111.i409, %bb.gj ] ; 2 uses
  %i.ceh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val90.i412 = load ptr, ptr %i.ceh, align 8, !alias.scope !35640, !nonnull !52, !align !77, !noundef !52 ; 3 uses
  %i.cei = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val91.i413 = load i64, ptr %i.cei, align 8, !alias.scope !35640, !noundef !52 ; 5 uses
  %i.cej = icmp ult i64 %.val91.i413, %i.ary
  br i1 %i.cej, label %bb.ng, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414"

bb.nd:                                            ; preds = %bb.nd, %bb.nc
  %.sroa.014.1.i419 = phi i64 [ %spec.select.i418, %bb.nc ], [ %i.cel, %bb.nd ] ; 9 uses
  %i.cek = icmp ult i64 %.sroa.014.1.i419, %i.ary
  %i.cel = shl i64 %.sroa.014.1.i419, 1
  br i1 %i.cek, label %bb.nd, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.cem = icmp slt i64 %.sroa.014.1.i419, 0
  br i1 %i.cem, label %.invoke2824, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i: ; preds = %bb.ne
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35751
  %i.cen = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i419, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35751 ; 5 uses
  %i.ceo = icmp eq ptr %i.cen, null
  br i1 %i.ceo, label %.invoke2824, label %bb.nf

bb.nf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cen, ptr nonnull readonly align 1 %.val110.i408, i64 %.val111.i409, i1 false), !alias.scope !35752, !noalias !35642
  store ptr %i.cen, ptr %8, align 8, !alias.scope !35640
  store i64 %.sroa.014.1.i419, ptr %i.arv, align 8, !alias.scope !35640
  br i1 %i.ceg, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i": ; preds = %bb.nf
  tail call void @mi_free(ptr noundef nonnull align 1 %.val110.i408) #38, !noalias !35642
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i"

bb.ng:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i"
  %i.cep = icmp eq i64 %.val91.i413, 0            ; 2 uses
  %spec.select91.i = select i1 %i.cep, i64 %i.ary, i64 %.val91.i413
  br label %bb.nh

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i", %bb.nj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i"
  %.val94.i415 = phi ptr [ %i.cex, %bb.nj ], [ %i.cex, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i" ], [ %.val90.i412, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i" ]
  %.val95.i416 = phi i64 [ %.sroa.017.1.i417, %bb.nj ], [ %.sroa.017.1.i417, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i" ], [ %.val91.i413, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i" ] ; 2 uses
  %i.ceq = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.ceq, align 8, !alias.scope !35640
  %i.cer = icmp ult i64 %i.arx, %.val63.i411
  br i1 %i.cer, label %bb.nk, label %.invoke2826

bb.nh:                                            ; preds = %bb.nh, %bb.ng
  %.sroa.017.1.i417 = phi i64 [ %spec.select91.i, %bb.ng ], [ %i.cet, %bb.nh ] ; 8 uses
  %i.ces = icmp ult i64 %.sroa.017.1.i417, %i.ary
  %i.cet = shl i64 %.sroa.017.1.i417, 1
  br i1 %i.ces, label %bb.nh, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.ceu = shl i64 %.sroa.017.1.i417, 2           ; 4 uses
  %i.cev = icmp ugt i64 %.sroa.017.1.i417, 4611686018427387903
  %i.cew = icmp ugt i64 %i.ceu, 9223372036854775804
  %or.cond.i.i.i.i229.i = or i1 %i.cev, %i.cew
  br i1 %or.cond.i.i.i.i229.i, label %.invoke2824, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i: ; preds = %bb.ni
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35753
  %i.cex = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ceu, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35753 ; 5 uses
  %i.cey = icmp eq ptr %i.cex, null
  br i1 %i.cey, label %.invoke2824, label %bb.nj

bb.nj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i
  %i.cez = icmp samesign ult i64 %.sroa.017.1.i417, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cez)
  %i.cfa = shl nuw nsw i64 %.val91.i413, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cex, ptr nonnull readonly align 4 %.val90.i412, i64 %i.cfa, i1 false), !alias.scope !35754, !noalias !35642
  store ptr %i.cex, ptr %i.ceh, align 8, !alias.scope !35640
  store i64 %.sroa.017.1.i417, ptr %i.cei, align 8, !alias.scope !35640
  br i1 %i.cep, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i": ; preds = %bb.nj
  tail call void @mi_free(ptr noundef nonnull align 4 %.val90.i412) #38, !noalias !35642
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414"

bb.nk:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414"
  %i.cfb = getelementptr inbounds nuw i8, ptr %.val.i410, i64 %i.arx
  store i8 0, ptr %i.cfb, align 1, !noalias !35642
  %i.cfc = icmp ult i64 %i.arx, %.val95.i416
  br i1 %i.cfc, label %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93, label %.invoke2826

.invoke2826:                                      ; preds = %bb.nk, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414"
  %i.cfd = phi i64 [ %.val63.i411, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414" ], [ %.val95.i416, %bb.nk ]
  %i.cfe = phi ptr [ @1564, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i414" ], [ @1565, %bb.nk ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.arx, i64 noundef %i.cfd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cfe) #43
          to label %.cont2827 unwind label %.body421.thread

.cont2827:                                        ; preds = %.invoke2826
  unreachable

_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93: ; preds = %bb.nk
  %i.cff = getelementptr inbounds nuw [4 x i8], ptr %.val94.i415, i64 %i.arx
  %i.cfg = trunc nuw nsw i64 %2 to i32
  store i32 %i.cfg, ptr %i.cff, align 4, !noalias !35642
  store i64 %i.ary, ptr %i.arw, align 8, !alias.scope !35640
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i429

_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit: ; preds = %bb.is
  %i.cfh = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sroa.0109.1.i.i350, ptr %i.cfh, align 8, !alias.scope !35690
  %i.cfi = zext i8 %.sroa.0113.1.i.i349 to i64
  %i.cfj = add nuw nsw i64 %i.cfi, 1
  %i.cfk = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.cfj, ptr %i.cfk, align 8, !alias.scope !35690
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bbj) #38, !noalias !35679
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i198) #38, !noalias !35679
  tail call void @mi_free(ptr noundef nonnull align 4 %i.axs) #38, !noalias !35679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !35679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !35679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !35679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !35679
  tail call void @mi_free(ptr noundef nonnull align 1 %i.awb) #38, !noalias !35642
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i429

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i429: ; preds = %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit, %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93
  tail call void @mi_free(ptr noundef nonnull align 2 %i.aoz) #38
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35755
  %i.cfl = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aos, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35755 ; 16 uses
  %i.cfm = icmp eq ptr %i.cfl, null
  br i1 %i.cfm, label %bb.nl, label %.lr.ph935

bb.nl:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i429
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.aos, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !35756
  unreachable

.lr.ph935:                                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i429, %bb.ux
  %.sroa.01.0934 = phi i64 [ %.sroa.01.1, %bb.ux ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i429 ] ; 6 uses
  %.sroa.011.0933 = phi i64 [ %i.cfn, %bb.ux ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i429 ] ; 3 uses
  %i.cfn = add nuw i64 %.sroa.011.0933, 1         ; 2 uses
  %exitcond1686.not = icmp eq i64 %.sroa.011.0933, %1
  br i1 %exitcond1686.not, label %.invoke2828, label %bb.uv

bb.nm:                                            ; preds = %.invoke2830, %.invoke2828
  %i.cfo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

._crit_edge936:                                   ; preds = %bb.ux
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35758)
  %i.cfp = udiv i64 %.sroa.01.1, 544
  %i.cfq = tail call i64 @llvm.umin.i64(i64 %i.cfp, i64 49) ; 7 uses
  %spec.store.select.i433 = add nuw nsw i64 %i.cfq, 1 ; 16 uses
  %i.cfr = icmp eq i64 %.sroa.01.1, 0
  br i1 %i.cfr, label %bb.nn, label %bb.no

bb.nn:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit432.thread", %._crit_edge936
  %.sroa.10.0.i.i43020432073 = phi ptr [ inttoptr (i64 2 to ptr), %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit432.thread" ], [ %i.cfl, %._crit_edge936 ]
  %i.cfs = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.cfs, align 8, !alias.scope !35758
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.no:                                            ; preds = %._crit_edge936
  %i.cft = icmp ult i64 %.sroa.01.1, 128
  br i1 %i.cft, label %bb.np, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i434

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i434: ; preds = %bb.no
  %i.cfu = mul nuw nsw i64 %spec.store.select.i433, 2192 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35759
  %i.cfv = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cfu, i64 noundef range(i64 1, 9) 8) #38, !noalias !35759 ; 16 uses
  %i.cfw = icmp eq ptr %i.cfv, null
  br i1 %i.cfw, label %.invoke2830, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i434
  %.not92.i435 = icmp ult i64 %.sroa.01.1, 544
  br i1 %.not92.i435, label %.loopexit115.i440, label %.lr.ph.i.i.i.i436.preheader

.lr.ph.i.i.i.i436.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.cfx = add nsw i64 %i.cfq, -1
  %xtraiter4565 = and i64 %i.cfq, 7               ; 3 uses
  %i.cfy = icmp ult i64 %i.cfx, 7
  br i1 %i.cfy, label %.lr.ph.i.i.i.i436.epil.preheader, label %.lr.ph.i.i.i.i436.preheader.new

.lr.ph.i.i.i.i436.preheader.new:                  ; preds = %.lr.ph.i.i.i.i436.preheader
  %unroll_iter4570 = and i64 %i.cfq, 56
  br label %.lr.ph.i.i.i.i436

.lr.ph.i.i.i.i436:                                ; preds = %.lr.ph.i.i.i.i436, %.lr.ph.i.i.i.i436.preheader.new
  %.sroa.0.08.i.i.i.i437 = phi ptr [ %i.cfv, %.lr.ph.i.i.i.i436.preheader.new ], [ %i.cgg, %.lr.ph.i.i.i.i436 ] ; 17 uses
  %niter4571 = phi i64 [ 0, %.lr.ph.i.i.i.i436.preheader.new ], [ %niter4571.next.7, %.lr.ph.i.i.i.i436 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i437, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !35761
  %i.cfz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cfz, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !35761
  %i.cga = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cga, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !35761
  %i.cgb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgb, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !35761
  %i.cgc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgc, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !35761
  %i.cgd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgd, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !35761
  %i.cge = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cge, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !35761
  %i.cgf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgf, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !35761
  %i.cgg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437, i64 17536 ; 3 uses
  %niter4571.next.7 = add i64 %niter4571, 8       ; 2 uses
  %niter4571.ncmp.7 = icmp eq i64 %niter4571.next.7, %unroll_iter4570
  br i1 %niter4571.ncmp.7, label %.loopexit115.i440.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i436

bb.np:                                            ; preds = %bb.no
  %.val110.i974 = load ptr, ptr %9, align 8, !alias.scope !35758, !nonnull !52, !align !62, !noundef !52 ; 3 uses
  %i.cgh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val111.i975 = load i64, ptr %i.cgh, align 8, !alias.scope !35758, !noundef !52 ; 5 uses
  %i.cgi = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.cgj = load i64, ptr %i.cgi, align 8, !alias.scope !35758, !noundef !52 ; 7 uses
  %i.cgk = add i64 %i.cgj, 1                      ; 7 uses
  %i.cgl = icmp ult i64 %.val111.i975, %i.cgk
  br i1 %i.cgl, label %bb.um, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976"

.thread.i452:                                     ; preds = %bb.nx, %.split32.us.i.invoke.i459, %.split29.us.i.invoke.i451
  %i.cgm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

.loopexit115.i440.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i436
  %lcmp.mod4567.not = icmp eq i64 %xtraiter4565, 0
  br i1 %lcmp.mod4567.not, label %.loopexit115.i440, label %.lr.ph.i.i.i.i436.epil.preheader

.lr.ph.i.i.i.i436.epil.preheader:                 ; preds = %.loopexit115.i440.loopexit.unr-lcssa, %.lr.ph.i.i.i.i436.preheader
  %.sroa.0.08.i.i.i.i437.epil.init = phi ptr [ %i.cfv, %.lr.ph.i.i.i.i436.preheader ], [ %i.cgg, %.loopexit115.i440.loopexit.unr-lcssa ]
  %lcmp.mod4569 = icmp ne i64 %xtraiter4565, 0
  call void @llvm.assume(i1 %lcmp.mod4569)
  br label %.lr.ph.i.i.i.i436.epil

.lr.ph.i.i.i.i436.epil:                           ; preds = %.lr.ph.i.i.i.i436.epil, %.lr.ph.i.i.i.i436.epil.preheader
  %.sroa.0.08.i.i.i.i437.epil = phi ptr [ %i.cgn, %.lr.ph.i.i.i.i436.epil ], [ %.sroa.0.08.i.i.i.i437.epil.init, %.lr.ph.i.i.i.i436.epil.preheader ] ; 3 uses
  %epil.iter4566 = phi i64 [ %epil.iter4566.next, %.lr.ph.i.i.i.i436.epil ], [ 0, %.lr.ph.i.i.i.i436.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i437.epil, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !35761
  %i.cgn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i437.epil, i64 2192 ; 2 uses
  %epil.iter4566.next = add i64 %epil.iter4566, 1 ; 2 uses
  %epil.iter4566.cmp.not = icmp eq i64 %epil.iter4566.next, %xtraiter4565
  br i1 %epil.iter4566.cmp.not, label %.loopexit115.i440, label %.lr.ph.i.i.i.i436.epil, !llvm.loop !35245

.loopexit115.i440:                                ; preds = %.loopexit115.i440.loopexit.unr-lcssa, %.lr.ph.i.i.i.i436.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i441 = phi ptr [ %i.cfv, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i" ], [ %i.cgg, %.loopexit115.i440.loopexit.unr-lcssa ], [ %i.cgn, %.lr.ph.i.i.i.i436.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i441, i8 0, i64 2184, i1 false), !noalias !35760
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i441, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !35761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35763)
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cfv, i64 %i.cfu
  %xtraiter4572 = and i64 %spec.store.select.i433, 7 ; 2 uses
  %lcmp.mod4573.not = icmp eq i64 %xtraiter4572, 0
  br i1 %lcmp.mod4573.not, label %.lr.ph.i.i.i442.prol.loopexit, label %.lr.ph.i.i.i442.prol

.lr.ph.i.i.i442.prol:                             ; preds = %.loopexit115.i440, %.lr.ph.i.i.i442.prol
  %.sroa.02.05.i.i.i443.prol = phi ptr [ %i.cgp, %.lr.ph.i.i.i442.prol ], [ %i.cfv, %.loopexit115.i440 ] ; 3 uses
  %prol.iter4574 = phi i64 [ %prol.iter4574.next, %.lr.ph.i.i.i442.prol ], [ 0, %.loopexit115.i440 ]
  %i.cgp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443.prol, i64 2192 ; 2 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.02.05.i.i.i443.prol, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.cgq, align 8, !alias.scope !35765, !noalias !35760
  %prol.iter4574.next = add i64 %prol.iter4574, 1 ; 2 uses
  %prol.iter4574.cmp.not = icmp eq i64 %prol.iter4574.next, %xtraiter4572
  br i1 %prol.iter4574.cmp.not, label %.lr.ph.i.i.i442.prol.loopexit, label %.lr.ph.i.i.i442.prol, !llvm.loop !35253

.lr.ph.i.i.i442.prol.loopexit:                    ; preds = %.lr.ph.i.i.i442.prol, %.loopexit115.i440
  %.sroa.02.05.i.i.i443.unr = phi ptr [ %i.cfv, %.loopexit115.i440 ], [ %i.cgp, %.lr.ph.i.i.i442.prol ]
  %i.cgr = icmp ult i64 %.sroa.01.1, 3808
  br i1 %i.cgr, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i442

.lr.ph.i.i.i442:                                  ; preds = %.lr.ph.i.i.i442.prol.loopexit, %.lr.ph.i.i.i442
  %.sroa.02.05.i.i.i443 = phi ptr [ %i.chg, %.lr.ph.i.i.i442 ], [ %.sroa.02.05.i.i.i443.unr, %.lr.ph.i.i.i442.prol.loopexit ] ; 17 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 2192
  %i.cgt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.02.05.i.i.i443, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.cgt, align 8, !alias.scope !35765, !noalias !35760
  %i.cgu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 4384
  %i.cgv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgs, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.cgv, align 8, !alias.scope !35765, !noalias !35760
  %i.cgw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 6576
  %i.cgx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgu, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.cgx, align 8, !alias.scope !35765, !noalias !35760
  %i.cgy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 8768
  %i.cgz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgw, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.cgz, align 8, !alias.scope !35765, !noalias !35760
  %i.cha = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 10960
  %i.chb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cgy, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.chb, align 8, !alias.scope !35765, !noalias !35760
  %i.chc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 13152
  %i.chd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cha, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.chd, align 8, !alias.scope !35765, !noalias !35760
  %i.che = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 15344
  %i.chf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chc, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.chf, align 8, !alias.scope !35765, !noalias !35760
  %i.chg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 17536 ; 2 uses
  %i.chh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i443, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.che, i8 0, i64 2184, i1 false), !alias.scope !35764, !noalias !35760
  store float 3.402000e+38, ptr %i.chh, align 8, !alias.scope !35765, !noalias !35760
  %i.chi = icmp eq ptr %i.chg, %i.cgo
  br i1 %i.chi, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i442

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i442, %.lr.ph.i.i.i442.prol.loopexit
  %i.chj = udiv i64 %.sroa.01.1, %spec.store.select.i433
  %i.chk = add i64 %.sroa.01.1, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i: ; preds = %bb.nt
  %exitcond.not.i.i462 = icmp eq i64 %.sroa.07.024.i.i445, %i.cfq
  br i1 %exitcond.not.i.i462, label %bb.nu, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i
  %.sroa.0.025.i.i444 = phi i32 [ %.sroa.0.1.i.i448, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i445 = phi i64 [ %i.chl, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 5 uses
  %i.chl = add nuw nsw i64 %.sroa.07.024.i.i445, 1
  %i.chm = mul i64 %.sroa.07.024.i.i445, %.sroa.01.1
  %i.chn = udiv i64 %i.chm, %spec.store.select.i433 ; 2 uses
  %i.cho = icmp eq i64 %.sroa.07.024.i.i445, 0
  br i1 %i.cho, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.nr, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i
  %.sroa.04.0.i.i447 = phi i64 [ %i.chn, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i ], [ %i.chv, %bb.nr ] ; 2 uses
  %.sroa.0.1.i.i448 = phi i32 [ %.sroa.0.025.i.i444, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i ], [ %spec.store.select.i.i446, %bb.nr ]
  %i.chp = add i64 %.sroa.04.0.i.i447, 40
  %.not.i.i449 = icmp ult i64 %i.chp, %.sroa.01.1
  %spec.select.i.i450 = select i1 %.not.i.i449, i64 %.sroa.04.0.i.i447, i64 %i.chk ; 4 uses
  %i.chq = icmp ugt i64 %spec.select.i.i450, %2
  br i1 %i.chq, label %.split29.us.i.invoke.i451, label %bb.ns, !prof !54

bb.nr:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i
  %i.chr = icmp eq i32 %.sroa.0.025.i.i444, 0
  %i.chs = mul i32 %.sroa.0.025.i.i444, 16807
  %spec.store.select.i.i446 = select i1 %i.chr, i32 1, i32 %i.chs ; 2 uses
  %i.cht = zext i32 %spec.store.select.i.i446 to i64
  %i.chu = urem i64 %i.cht, %i.chj
  %i.chv = add i64 %i.chu, %i.chn
  br label %bb.nq

bb.ns:                                            ; preds = %bb.nq
  %i.chw = getelementptr inbounds nuw [2192 x i8], ptr %i.cfv, i64 %.sroa.07.024.i.i445 ; 3 uses
  %i.chx = sub nuw nsw i64 %2, %spec.select.i.i450 ; 2 uses
  %i.chy = getelementptr inbounds nuw [2 x i8], ptr %i.cfl, i64 %spec.select.i.i450 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35767)
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chw, i64 2176 ; 2 uses
  %i.cia = load i64, ptr %i.chz, align 8, !alias.scope !35768, !noalias !35760, !noundef !52
  %i.cib = add i64 %i.cia, 40
  store i64 %i.cib, ptr %i.chz, align 8, !alias.scope !35769, !noalias !35760
  %i.cic = icmp samesign ugt i64 %i.chx, 39
  br i1 %i.cic, label %.preheader.i.i.i456, label %.split29.us.i.invoke.i451, !prof !61

.split29.us.i.invoke.i451:                        ; preds = %bb.ns, %bb.nq, %bb.nv, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i
  %i.cid = phi i64 [ 0, %bb.nv ], [ %i.cjj, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ 0, %bb.ns ], [ %spec.select.i.i450, %bb.nq ]
  %i.cie = phi i64 [ 40, %bb.nv ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ 40, %bb.ns ], [ %2, %bb.nq ]
  %i.cif = phi i64 [ %i.cjl, %bb.nv ], [ %2, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ %i.chx, %bb.ns ], [ %2, %bb.nq ]
  %i.cig = phi ptr [ @1927, %bb.nv ], [ @1544, %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i ], [ @1927, %bb.ns ], [ @1568, %bb.nq ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.cid, i64 noundef %i.cie, i64 noundef %i.cif, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cig) #43
          to label %.split29.us.i.cont.i455 unwind label %.thread.i452, !noalias !35760

.split29.us.i.cont.i455:                          ; preds = %.split29.us.i.invoke.i451
  unreachable

.preheader.i.i.i456:                              ; preds = %bb.ns, %bb.nt
  %.sroa.02.0.idx7.i.i.i457 = phi i64 [ %.sroa.02.0.add.i.i.i461.1, %bb.nt ], [ 0, %bb.ns ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i458 = getelementptr inbounds nuw i8, ptr %i.chy, i64 %.sroa.02.0.idx7.i.i.i457
  %i.cih = load i16, ptr %.sroa.02.0.ptr.i.i.i458, align 2, !alias.scope !35770, !noundef !52 ; 2 uses
  %i.cii = zext i16 %i.cih to i64                 ; 2 uses
  %i.cij = icmp ult i16 %i.cih, 544
  br i1 %i.cij, label %.preheader.i.i.i456.1, label %.split32.us.i.invoke.i459

.preheader.i.i.i456.1:                            ; preds = %.preheader.i.i.i456
  %i.cik = getelementptr inbounds nuw [4 x i8], ptr %i.chw, i64 %i.cii ; 2 uses
  %i.cil = load i32, ptr %i.cik, align 4, !alias.scope !35771, !noalias !35760, !noundef !52
  %i.cim = add i32 %i.cil, 1
  store i32 %i.cim, ptr %i.cik, align 4, !alias.scope !35771, !noalias !35760
  %i.cin = getelementptr inbounds nuw i8, ptr %i.chy, i64 %.sroa.02.0.idx7.i.i.i457
  %.sroa.02.0.ptr.i.i.i458.1 = getelementptr inbounds nuw i8, ptr %i.cin, i64 2
  %i.cio = load i16, ptr %.sroa.02.0.ptr.i.i.i458.1, align 2, !alias.scope !35770, !noundef !52 ; 2 uses
  %i.cip = zext i16 %i.cio to i64                 ; 2 uses
  %i.ciq = icmp ult i16 %i.cio, 544
  br i1 %i.ciq, label %bb.nt, label %.split32.us.i.invoke.i459

bb.nt:                                            ; preds = %.preheader.i.i.i456.1
  %.sroa.02.0.add.i.i.i461.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i457, 4 ; 2 uses
  %i.cir = getelementptr inbounds nuw [4 x i8], ptr %i.chw, i64 %i.cip ; 2 uses
  %i.cis = load i32, ptr %i.cir, align 4, !alias.scope !35771, !noalias !35760, !noundef !52
  %i.cit = add i32 %i.cis, 1
  store i32 %i.cit, ptr %i.cir, align 4, !alias.scope !35771, !noalias !35760
  %i.ciu = icmp eq i64 %.sroa.02.0.add.i.i.i461.1, 80
  br i1 %i.ciu, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, label %.preheader.i.i.i456

.split32.us.i.invoke.i459:                        ; preds = %.preheader.i.i.i456, %.preheader.i.i.i456.1, %.preheader.i.i.i.i466, %.preheader.i.i.i.i466.1
  %i.civ = phi i64 [ %i.cjw, %.preheader.i.i.i.i466.1 ], [ %i.cjp, %.preheader.i.i.i.i466 ], [ %i.cii, %.preheader.i.i.i456 ], [ %i.cip, %.preheader.i.i.i456.1 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.civ, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1926) #43
          to label %.split32.us.i.cont.i460 unwind label %.thread.i452, !noalias !35760

.split32.us.i.cont.i460:                          ; preds = %.split32.us.i.invoke.i459
  unreachable

bb.nu:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35773)
  %i.ciw = shl i64 %.sroa.01.1, 1                 ; 2 uses
  %i.cix = udiv i64 %i.ciw, 40
  %i.ciy = add nuw nsw i64 %i.cix, 99
  %i.ciz = add nuw nsw i64 %i.ciy, %spec.store.select.i433 ; 2 uses
  %i.cja = urem i64 %i.ciz, %spec.store.select.i433
  %i.cjb = sub nuw nsw i64 %i.ciz, %i.cja
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.n, i64 2184
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.n, i64 2176 ; 2 uses
  %i.cje = add i64 %.sroa.01.1, -39
  br label %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i

_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i: ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i, %bb.nu
  %.sroa.03.022.i.i463 = phi i64 [ 0, %bb.nu ], [ %i.cjf, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  %.sroa.0.021.i.i464 = phi i32 [ 7, %bb.nu ], [ %spec.store.select.i.i.i465, %_ZN6brotli3enc9histogram21HistogramAddHistogram17hbf6f595fe81a9aafE.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !35774
  %i.cjf = add nuw i64 %.sroa.03.022.i.i463, 1    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2176) %i.n, i8 0, i64 2176, i1 false), !noalias !35774
  store float 3.402000e+38, ptr %i.cjc, align 8, !alias.scope !35775, !noalias !35774
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35776)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35777)
  %i.cjg = mul i32 %.sroa.0.021.i.i464, 16807
  %i.cjh = icmp eq i32 %.sroa.0.021.i.i464, 0
  %spec.store.select.i.i.i465 = select i1 %i.cjh, i32 1, i32 %i.cjg ; 2 uses
  %i.cji = zext i32 %spec.store.select.i.i.i465 to i64
  %i.cjj = urem i64 %i.cji, %i.cje                ; 4 uses
  %i.cjk = icmp samesign ugt i64 %i.cjj, %2
  br i1 %i.cjk, label %.split29.us.i.invoke.i451, label %bb.nv, !prof !54

bb.nv:                                            ; preds = %_ZN6brotli3enc9histogram14HistogramClear17hf9145d293705796bE.exit.i.i
  %i.cjl = sub nuw nsw i64 %2, %i.cjj             ; 2 uses
  %i.cjm = getelementptr inbounds nuw [2 x i8], ptr %i.cfl, i64 %i.cjj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35779)
  store i64 40, ptr %i.cjd, align 8, !alias.scope !35780, !noalias !35774
  %i.cjn = icmp samesign ugt i64 %i.cjl, 39
  br i1 %i.cjn, label %.preheader.i.i.i.i466, label %.split29.us.i.invoke.i451, !prof !61

.preheader.i.i.i.i466:                            ; preds = %bb.nv, %bb.nw
  %.sroa.02.0.idx7.i.i.i.i467 = phi i64 [ %.sroa.02.0.add.i.i.i.i469.1, %bb.nw ], [ 0, %bb.nv ] ; 3 uses
  %.sroa.02.0.ptr.i.i.i.i468 = getelementptr inbounds nuw i8, ptr %i.cjm, i64 %.sroa.02.0.idx7.i.i.i.i467
  %i.cjo = load i16, ptr %.sroa.02.0.ptr.i.i.i.i468, align 2, !alias.scope !35781, !noundef !52 ; 2 uses
  %i.cjp = zext i16 %i.cjo to i64                 ; 2 uses
  %i.cjq = icmp ult i16 %i.cjo, 544
  br i1 %i.cjq, label %.preheader.i.i.i.i466.1, label %.split32.us.i.invoke.i459

.preheader.i.i.i.i466.1:                          ; preds = %.preheader.i.i.i.i466
  %i.cjr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cjp ; 2 uses
  %i.cjs = load i32, ptr %i.cjr, align 4, !alias.scope !35782, !noalias !35774, !noundef !52
  %i.cjt = add i32 %i.cjs, 1
  store i32 %i.cjt, ptr %i.cjr, align 4, !alias.scope !35782, !noalias !35774
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjm, i64 %.sroa.02.0.idx7.i.i.i.i467
  %.sroa.02.0.ptr.i.i.i.i468.1 = getelementptr inbounds nuw i8, ptr %i.cju, i64 2
  %i.cjv = load i16, ptr %.sroa.02.0.ptr.i.i.i.i468.1, align 2, !alias.scope !35781, !noundef !52 ; 2 uses
  %i.cjw = zext i16 %i.cjv to i64                 ; 2 uses
  %i.cjx = icmp ult i16 %i.cjv, 544
  br i1 %i.cjx, label %bb.nw, label %.split32.us.i.invoke.i459

bb.nw:                                            ; preds = %.preheader.i.i.i.i466.1
  %.sroa.02.0.add.i.i.i.i469.1 = add nuw nsw i64 %.sroa.02.0.idx7.i.i.i.i467, 4 ; 2 uses
  %i.cjy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.cjw ; 2 uses
  %i.cjz = load i32, ptr %i.cjy, align 4, !alias.scope !35782, !noalias !35774, !noundef !52
  %i.cka = add i32 %i.cjz, 1
  store i32 %i.cka, ptr %i.cjy, align 4, !alias.scope !35782, !noalias !35774
  %i.ckb = icmp eq i64 %.sroa.02.0.add.i.i.i.i469.1, 80
  br i1 %i.ckb, label %vector.ph3728, label %.preheader.i.i.i.i466

vector.ph3728:                                    ; preds = %bb.nw
  %i.ckc = urem i64 %.sroa.03.022.i.i463, %spec.store.select.i433
end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.0.0.copyload.i.i535 = load float, ptr %i.dpu, align 4, !alias.scope !35859, !noalias !35760
  %.sroa.5.0..sroa_idx.i.i536 = getelementptr inbounds nuw i8, ptr %i.dpu, i64 4
  %.sroa.5.0.copyload.i.i537 = load float, ptr %.sroa.5.0..sroa_idx.i.i536, align 4, !alias.scope !35859, !noalias !35760
  %.sroa.6.0..sroa_idx.i.i538 = getelementptr inbounds nuw i8, ptr %i.dpu, i64 8
  %.sroa.6.0.copyload.i.i539 = load float, ptr %.sroa.6.0..sroa_idx.i.i538, align 4, !alias.scope !35859, !noalias !35760
  %.sroa.7.0..sroa_idx.i.i540 = getelementptr inbounds nuw i8, ptr %i.dpu, i64 12
  %.sroa.7.0.copyload.i.i541 = load float, ptr %.sroa.7.0..sroa_idx.i.i540, align 4, !alias.scope !35859, !noalias !35760
  %.sroa.8.0..sroa_idx.i.i542 = getelementptr inbounds nuw i8, ptr %i.dpu, i64 16
  %.sroa.8.0.copyload.i.i543 = load float, ptr %.sroa.8.0..sroa_idx.i.i542, align 4, !alias.scope !35859, !noalias !35760
  %.sroa.9.0..sroa_idx.i.i544 = getelementptr inbounds nuw i8, ptr %i.dpu, i64 20
  %.sroa.9.0.copyload.i.i545 = load float, ptr %.sroa.9.0..sroa_idx.i.i544, align 4, !alias.scope !35859, !noalias !35760
  %.sroa.10.0..sroa_idx.i.i546 = getelementptr inbounds nuw i8, ptr %i.dpu, i64 24
  %.sroa.10.0.copyload.i.i547 = load float, ptr %.sroa.10.0..sroa_idx.i.i546, align 4, !alias.scope !35859, !noalias !35760
  %.sroa.11.0..sroa_idx.i.i548 = getelementptr inbounds nuw i8, ptr %i.dpu, i64 28
  %.sroa.11.0.copyload.i.i549 = load float, ptr %.sroa.11.0..sroa_idx.i.i548, align 4, !alias.scope !35859, !noalias !35760
  %i.dpv = load float, ptr %.sroa.0164.0412.i.i529, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.dpw = fadd float %.sroa.0.0.copyload.i.i535, %i.dpv ; 3 uses
  store float %i.dpw, ptr %.sroa.0164.0412.i.i529, align 4, !alias.scope !35850, !noalias !35760
  %i.dpx = fcmp olt float %i.dpw, %.sroa.029.0413.i.i528
  br i1 %i.dpx, label %bb.tm, label %bb.tn

bb.tm:                                            ; preds = %bb.tl
  %i.dpy = trunc i64 %i.dgs to i8
  store i8 %i.dpy, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.tn

bb.tn:                                            ; preds = %bb.tm, %bb.tl
  %.sroa.029.4.i.i550 = phi float [ %i.dpw, %bb.tm ], [ %.sroa.029.0413.i.i528, %bb.tl ] ; 2 uses
  %i.dpz = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 4 ; 2 uses
  %i.dqa = load float, ptr %i.dpz, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.dqb = fadd float %.sroa.5.0.copyload.i.i537, %i.dqa ; 3 uses
  store float %i.dqb, ptr %i.dpz, align 4, !alias.scope !35850, !noalias !35760
  %i.dqc = fcmp olt float %i.dqb, %.sroa.029.4.i.i550
  br i1 %i.dqc, label %bb.to, label %bb.tp

bb.to:                                            ; preds = %bb.tn
  %i.dqd = trunc i64 %i.dgs to i8
  %i.dqe = or disjoint i8 %i.dqd, 1
  store i8 %i.dqe, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.tp

bb.tp:                                            ; preds = %bb.to, %bb.tn
  %.sroa.029.4.1.i.i551 = phi float [ %i.dqb, %bb.to ], [ %.sroa.029.4.i.i550, %bb.tn ] ; 2 uses
  %i.dqf = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 8 ; 2 uses
  %i.dqg = load float, ptr %i.dqf, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.dqh = fadd float %.sroa.6.0.copyload.i.i539, %i.dqg ; 3 uses
  store float %i.dqh, ptr %i.dqf, align 4, !alias.scope !35850, !noalias !35760
  %i.dqi = fcmp olt float %i.dqh, %.sroa.029.4.1.i.i551
  br i1 %i.dqi, label %bb.tq, label %bb.tr

bb.tq:                                            ; preds = %bb.tp
  %i.dqj = trunc i64 %i.dgs to i8
  %i.dqk = or disjoint i8 %i.dqj, 2
  store i8 %i.dqk, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tp
  %.sroa.029.4.2.i.i552 = phi float [ %i.dqh, %bb.tq ], [ %.sroa.029.4.1.i.i551, %bb.tp ] ; 2 uses
  %i.dql = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 12 ; 2 uses
  %i.dqm = load float, ptr %i.dql, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.dqn = fadd float %.sroa.7.0.copyload.i.i541, %i.dqm ; 3 uses
  store float %i.dqn, ptr %i.dql, align 4, !alias.scope !35850, !noalias !35760
  %i.dqo = fcmp olt float %i.dqn, %.sroa.029.4.2.i.i552
  br i1 %i.dqo, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.dqp = trunc i64 %i.dgs to i8
  %i.dqq = or disjoint i8 %i.dqp, 3
  store i8 %i.dqq, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.tt

bb.tt:                                            ; preds = %bb.ts, %bb.tr
  %.sroa.029.4.3.i.i553 = phi float [ %i.dqn, %bb.ts ], [ %.sroa.029.4.2.i.i552, %bb.tr ] ; 2 uses
  %i.dqr = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 16 ; 2 uses
  %i.dqs = load float, ptr %i.dqr, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.dqt = fadd float %.sroa.8.0.copyload.i.i543, %i.dqs ; 3 uses
  store float %i.dqt, ptr %i.dqr, align 4, !alias.scope !35850, !noalias !35760
  %i.dqu = fcmp olt float %i.dqt, %.sroa.029.4.3.i.i553
  br i1 %i.dqu, label %bb.tu, label %bb.tv

bb.tu:                                            ; preds = %bb.tt
  %i.dqv = trunc i64 %i.dgs to i8
  %i.dqw = or disjoint i8 %i.dqv, 4
  store i8 %i.dqw, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.tt
  %.sroa.029.4.4.i.i554 = phi float [ %i.dqt, %bb.tu ], [ %.sroa.029.4.3.i.i553, %bb.tt ] ; 2 uses
  %i.dqx = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 20 ; 2 uses
  %i.dqy = load float, ptr %i.dqx, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.dqz = fadd float %.sroa.9.0.copyload.i.i545, %i.dqy ; 3 uses
  store float %i.dqz, ptr %i.dqx, align 4, !alias.scope !35850, !noalias !35760
  %i.dra = fcmp olt float %i.dqz, %.sroa.029.4.4.i.i554
  br i1 %i.dra, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %bb.tv
  %i.drb = trunc i64 %i.dgs to i8
  %i.drc = or disjoint i8 %i.drb, 5
  store i8 %i.drc, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.tv
  %.sroa.029.4.5.i.i555 = phi float [ %i.dqz, %bb.tw ], [ %.sroa.029.4.4.i.i554, %bb.tv ] ; 2 uses
  %i.drd = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 24 ; 2 uses
  %i.dre = load float, ptr %i.drd, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.drf = fadd float %.sroa.10.0.copyload.i.i547, %i.dre ; 3 uses
  store float %i.drf, ptr %i.drd, align 4, !alias.scope !35850, !noalias !35760
  %i.drg = fcmp olt float %i.drf, %.sroa.029.4.5.i.i555
  br i1 %i.drg, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  %i.drh = trunc i64 %i.dgs to i8
  %i.dri = or disjoint i8 %i.drh, 6
  store i8 %i.dri, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  %.sroa.029.4.6.i.i556 = phi float [ %i.drf, %bb.ty ], [ %.sroa.029.4.5.i.i555, %bb.tx ] ; 2 uses
  %i.drj = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i529, i64 28 ; 2 uses
  %i.drk = load float, ptr %i.drj, align 4, !alias.scope !35850, !noalias !35760, !noundef !52
  %i.drl = fadd float %.sroa.11.0.copyload.i.i549, %i.drk ; 3 uses
  store float %i.drl, ptr %i.drj, align 4, !alias.scope !35850, !noalias !35760
  %i.drm = fcmp olt float %i.drl, %.sroa.029.4.6.i.i556
  br i1 %i.drm, label %bb.ua, label %bb.ub

bb.ua:                                            ; preds = %bb.tz
  %i.drn = trunc i64 %i.dgs to i8
  %i.dro = or disjoint i8 %i.drn, 7
  store i8 %i.dro, ptr %i.dgj, align 1, !alias.scope !35852, !noalias !35760
  br label %bb.ub

bb.ub:                                            ; preds = %bb.ua, %bb.tz
  %.sroa.029.4.7.i.i557 = phi float [ %i.drl, %bb.ua ], [ %.sroa.029.4.6.i.i556, %bb.tz ] ; 2 uses
  %i.drp = icmp eq ptr %i.dgq, %i.ddi
  br i1 %i.drp, label %._crit_edge416.i.i558, label %.lr.ph415.i.i527

bb.uc:                                            ; preds = %bb.ud, %.split.i177.i493
  %i.drq = phi i64 [ 1, %.split.i177.i493 ], [ %i.dsa, %bb.ud ] ; 3 uses
  %.sroa.071.0400.i.i496 = phi i64 [ 0, %.split.i177.i493 ], [ %i.drq, %bb.ud ] ; 3 uses
  %i.drr = getelementptr inbounds nuw [4 x i8], ptr %i.clc, i64 %.sroa.071.0400.i.i496
  %i.drs = load float, ptr %i.drr, align 4, !alias.scope !35849, !noalias !35760, !noundef !52
  %gep.i179.i497 = getelementptr [2192 x i8], ptr %invariant.gep.i178.i495, i64 %.sroa.071.0400.i.i496
  %i.drt = load i32, ptr %gep.i179.i497, align 4, !alias.scope !35848, !noalias !35760, !noundef !52
  %i.dru = zext i32 %i.drt to i64
  %i.drv = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.dru)
          to label %.noexc199.i505 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35760

.noexc199.i505:                                   ; preds = %bb.uc
  %i.drw = add nuw nsw i64 %.sroa.071.0400.i.i496, %i.ddg ; 3 uses
  %i.drx = icmp ult i64 %i.drw, %i.cla
  br i1 %i.drx, label %bb.ud, label %.invoke.i506

bb.ud:                                            ; preds = %.noexc199.i505
  %i.dry = getelementptr inbounds nuw [4 x i8], ptr %i.clc, i64 %i.drw
  %i.drz = fsub float %i.drs, %i.drv
  store float %i.drz, ptr %i.dry, align 4, !alias.scope !35849, !noalias !35760
  %i.dsa = add nuw nsw i64 %i.drq, 1
  %exitcond483.not.i.i508 = icmp eq i64 %i.drq, %.sroa.0.0442.i485
  br i1 %exitcond483.not.i.i508, label %.loopexit358.i.i509, label %bb.uc

bb.ue:                                            ; preds = %bb.sa
  %i.dsb = uitofp nneg i64 %i.ddb to float
  %i.dsc = tail call float @llvm.log2.f32(float %i.dsb)
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ug, %bb.ue
  %.sroa.016.0.i.i491 = phi float [ %i.dsg, %bb.ug ], [ %i.dsc, %bb.ue ]
  %i.dsd = getelementptr inbounds nuw [4 x i8], ptr %i.clc, i64 %.sroa.069.0399.i.i489
  store float %.sroa.016.0.i.i491, ptr %i.dsd, align 4, !alias.scope !35849, !noalias !35760
  %i.dse = add nuw nsw i64 %i.dcx, 1
  %exitcond480.not.i.i492 = icmp eq i64 %i.dcx, %.sroa.0.0442.i485
  br i1 %exitcond480.not.i.i492, label %.split.i177.i493, label %bb.sa

bb.ug:                                            ; preds = %bb.sa
  %i.dsf = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.ddb
  %i.dsg = load float, ptr %i.dsf, align 4, !noalias !35855, !noundef !52
  br label %bb.uf

.loopexit.i614:                                   ; preds = %bb.se, %.preheader.i.preheader.i960, %bb.rw
  %.sroa.0.0.i.i615 = phi i64 [ 0, %bb.rw ], [ 1, %.preheader.i.preheader.i960 ], [ %.sroa.03.1.i.i612, %bb.se ] ; 26 uses
  %i.dsh = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.ckw, i64 noundef %.sroa.01.1, i64 noundef %.sroa.01.1, ptr noalias noundef nonnull align 2 %i.clu, i64 noundef %spec.store.select.i433, i64 noundef %.sroa.0.0442.i485)
          to label %bb.uh unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35760 ; 5 uses

bb.uh:                                            ; preds = %.loopexit.i614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35862)
  %.not.i.i205.i616 = icmp ugt i64 %i.dsh, %spec.store.select.i433
  br i1 %.not.i.i205.i616, label %.invoke1162.i954, label %bb.ui, !prof !94

bb.ui:                                            ; preds = %bb.uh
  %.idx.i.i206.i617 = mul nuw nsw i64 %i.dsh, 2192
  %i.dsi = getelementptr inbounds nuw i8, ptr %i.cfv, i64 %.idx.i.i206.i617
  %i.dsj = icmp eq i64 %i.dsh, 0
  br i1 %i.dsj, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i207.i618

.lr.ph.i.i207.i618:                               ; preds = %bb.ui, %.lr.ph.i.i207.i618
  %.sroa.02.05.i.i208.i619 = phi ptr [ %i.dsk, %.lr.ph.i.i207.i618 ], [ %i.cfv, %bb.ui ] ; 3 uses
  %i.dsk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i208.i619, i64 2192 ; 2 uses
  %i.dsl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i208.i619, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.02.05.i.i208.i619, i8 0, i64 2184, i1 false), !alias.scope !35863, !noalias !35760
  store float 3.402000e+38, ptr %i.dsl, align 8, !alias.scope !35864, !noalias !35760
  %i.dsm = icmp eq ptr %i.dsk, %i.dsi
  br i1 %i.dsm, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i207.i618

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader: ; preds = %.lr.ph.i.i207.i618, %bb.ui
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i
  %.sroa.01.013.i.i620 = phi i64 [ %i.dsn, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader ] ; 4 uses
  %i.dsn = add nuw nsw i64 %.sroa.01.013.i.i620, 1 ; 2 uses
  %i.dso = getelementptr inbounds nuw i8, ptr %i.ckw, i64 %.sroa.01.013.i.i620
  %i.dsp = load i8, ptr %i.dso, align 1, !alias.scope !35861, !noalias !35760, !noundef !52
  %i.dsq = zext i8 %i.dsp to i64                  ; 3 uses
  %.not93.i621 = icmp samesign ult i64 %i.cfq, %i.dsq
  br i1 %.not93.i621, label %.invoke.i506, label %bb.uj

bb.uj:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i
  %exitcond23.not.i.i622 = icmp eq i64 %.sroa.01.013.i.i620, %2
  br i1 %exitcond23.not.i.i622, label %.invoke.i506, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.dsr = getelementptr inbounds nuw [2 x i8], ptr %i.cfl, i64 %.sroa.01.013.i.i620
  %i.dss = load i16, ptr %i.dsr, align 2, !alias.scope !35865, !noundef !52 ; 2 uses
  %i.dst = zext i16 %i.dss to i64                 ; 2 uses
  %i.dsu = icmp ult i16 %i.dss, 544
  br i1 %i.dsu, label %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i, label %.invoke.i506

_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i: ; preds = %bb.uk
  %i.dsv = getelementptr inbounds nuw [2192 x i8], ptr %i.cfv, i64 %i.dsq ; 2 uses
  %i.dsw = getelementptr inbounds nuw [4 x i8], ptr %i.dsv, i64 %i.dst ; 2 uses
  %i.dsx = load i32, ptr %i.dsw, align 4, !alias.scope !35866, !noalias !35760, !noundef !52
  %i.dsy = add i32 %i.dsx, 1
  store i32 %i.dsy, ptr %i.dsw, align 4, !alias.scope !35866, !noalias !35760
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.dsv, i64 2176 ; 2 uses
  %i.dta = load i64, ptr %i.dsz, align 8, !alias.scope !35867, !noalias !35760, !noundef !52
  %i.dtb = add i64 %i.dta, 1
  store i64 %i.dtb, ptr %i.dsz, align 8, !alias.scope !35868, !noalias !35760
  %exitcond24.not.i.i623 = icmp eq i64 %i.dsn, %.sroa.01.1
  br i1 %exitcond24.not.i.i623, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i

.invoke.i506:                                     ; preds = %.lr.ph434.split.i.i522, %.lr.ph447.i.i604, %bb.uk, %bb.uj, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i, %.noexc199.i505, %.lr.ph424.preheader.i.i562, %.lr.ph424.i.i564.1, %.lr.ph424.i.i564.2, %.lr.ph424.i.i564.3, %.lr.ph424.i.i564.4, %.lr.ph424.i.i564.5, %.lr.ph424.i.i564.6, %.lr.ph430.i.i575
  %i.dtc = phi i64 [ %i.dst, %bb.uk ], [ %i.dnf, %.lr.ph430.i.i575 ], [ %i.drw, %.noexc199.i505 ], [ %i.dfc, %.lr.ph424.i.i564.6 ], [ %i.dfx, %.lr.ph447.i.i604 ], [ %i.ddo, %.lr.ph424.preheader.i.i562 ], [ %i.ddt, %.lr.ph424.i.i564.1 ], [ %i.deb, %.lr.ph424.i.i564.2 ], [ %i.dek, %.lr.ph424.i.i564.3 ], [ %i.deq, %.lr.ph424.i.i564.4 ], [ %i.dew, %.lr.ph424.i.i564.5 ], [ %2, %bb.uj ], [ %i.dsq, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ %.sroa.01.1, %.lr.ph434.split.i.i522 ]
  %i.dtd = phi i64 [ 544, %bb.uk ], [ %i.cll, %.lr.ph430.i.i575 ], [ %i.cla, %.noexc199.i505 ], [ %i.ckz, %.lr.ph424.preheader.i.i562 ], [ %i.cll, %.lr.ph447.i.i604 ], [ %i.ckz, %.lr.ph424.i.i564.6 ], [ %i.ckz, %.lr.ph424.i.i564.5 ], [ %i.ckz, %.lr.ph424.i.i564.4 ], [ %i.ckz, %.lr.ph424.i.i564.3 ], [ %i.ckz, %.lr.ph424.i.i564.2 ], [ %i.ckz, %.lr.ph424.i.i564.1 ], [ %2, %bb.uj ], [ %spec.store.select.i433, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ %.sroa.01.1, %.lr.ph434.split.i.i522 ]
  %i.dte = phi ptr [ @1925, %bb.uk ], [ @1571, %.lr.ph430.i.i575 ], [ @1542, %.noexc199.i505 ], [ @1537, %.lr.ph424.preheader.i.i562 ], [ @1531, %.lr.ph447.i.i604 ], [ @1537, %.lr.ph424.i.i564.6 ], [ @1537, %.lr.ph424.i.i564.5 ], [ @1537, %.lr.ph424.i.i564.4 ], [ @1537, %.lr.ph424.i.i564.3 ], [ @1537, %.lr.ph424.i.i564.2 ], [ @1537, %.lr.ph424.i.i564.1 ], [ @1570, %bb.uj ], [ @1569, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ @1532, %.lr.ph434.split.i.i522 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dtc, i64 noundef %i.dtd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dte) #43
          to label %.cont.i507 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !35760

.cont.i507:                                       ; preds = %.invoke.i506
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp": ; preds = %bb.uc, %.loopexit.i614, %.invoke1162.i954, %.split440.us.i.invoke.i532, %.invoke.i506
  %lpad.loopexit.split-lp3994 = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.clu) #38, !noalias !35760
  br label %bb.ul

bb.ul:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", %.thread55.i961
  %.pn62.i500 = phi { ptr, i32 } [ %i.clw, %.thread55.i961 ], [ %lpad.loopexit.split-lp3994, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i498.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ]
  br i1 %i.cln, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i502", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i215.i501"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i215.i501": ; preds = %bb.ul
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cls) ]
  call void @mi_free(ptr noundef nonnull %i.cls) #38, !noalias !35760
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i502"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i502": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i215.i501", %bb.ul
  call void @mi_free(ptr noundef nonnull %i.clg) #38, !noalias !35760
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i503"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i503": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i502", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i964", %.thread39.i968
  %.pn.pn.pn44.i504 = phi { ptr, i32 } [ %i.clk, %.thread39.i968 ], [ %i.clr, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i964" ], [ %.pn62.i500, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i502" ]
  call void @mi_free(ptr noundef nonnull %i.clc) #38, !noalias !35760
  call void @mi_free(ptr noundef nonnull %i.ckw) #38, !noalias !35760
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i692": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i690", %bb.ru, %.body.i950
  %.pn.pn.pn.pn.i693 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i951, %.body.i950 ], [ %.pn230.pn.pn.pn.pn.pn.pn85945.i.i691, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i690" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i688, %bb.ru ]
  tail call void @mi_free(ptr noundef nonnull %i.ckw) #38, !noalias !35760
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i503", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i970", %.thread.i452
  %.pn.pn.pn.pn.pn38.i453 = phi { ptr, i32 } [ %i.cgm, %.thread.i452 ], [ %.pn.pn.pn44.i504, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i503" ], [ %i.cle, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.thread.i970" ]
  call void @mi_free(ptr noundef nonnull %i.cfv) #38, !noalias !35760
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

bb.um:                                            ; preds = %bb.np
  %i.dtf = icmp eq i64 %.val111.i975, 0           ; 2 uses
  %spec.select.i990 = select i1 %i.dtf, i64 %i.cgk, i64 %.val111.i975
  br label %bb.un

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i993", %bb.up, %bb.np
  %.val.i977 = phi ptr [ %i.dtm, %bb.up ], [ %i.dtm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i993" ], [ %.val110.i974, %bb.np ]
  %.val63.i978 = phi i64 [ %.sroa.014.1.i991, %bb.up ], [ %.sroa.014.1.i991, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i993" ], [ %.val111.i975, %bb.np ] ; 2 uses
  %i.dtg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val90.i979 = load ptr, ptr %i.dtg, align 8, !alias.scope !35758, !nonnull !52, !align !77, !noundef !52 ; 3 uses
  %i.dth = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val91.i980 = load i64, ptr %i.dth, align 8, !alias.scope !35758, !noundef !52 ; 5 uses
  %i.dti = icmp ult i64 %.val91.i980, %i.cgk
  br i1 %i.dti, label %bb.uq, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981"

bb.un:                                            ; preds = %bb.un, %bb.um
  %.sroa.014.1.i991 = phi i64 [ %spec.select.i990, %bb.um ], [ %i.dtk, %bb.un ] ; 9 uses
  %i.dtj = icmp ult i64 %.sroa.014.1.i991, %i.cgk
  %i.dtk = shl i64 %.sroa.014.1.i991, 1
  br i1 %i.dtj, label %bb.un, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.dtl = icmp slt i64 %.sroa.014.1.i991, 0
  br i1 %i.dtl, label %.invoke2830, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i992, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i992: ; preds = %bb.uo
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35869
  %i.dtm = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i991, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35869 ; 5 uses
  %i.dtn = icmp eq ptr %i.dtm, null
  br i1 %i.dtn, label %.invoke2830, label %bb.up

bb.up:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i992
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dtm, ptr nonnull readonly align 1 %.val110.i974, i64 %.val111.i975, i1 false), !alias.scope !35870, !noalias !35760
  store ptr %i.dtm, ptr %9, align 8, !alias.scope !35758
  store i64 %.sroa.014.1.i991, ptr %i.cgh, align 8, !alias.scope !35758
  br i1 %i.dtf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i993"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i227.i993": ; preds = %bb.up
  tail call void @mi_free(ptr noundef nonnull align 1 %.val110.i974) #38, !noalias !35760
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976"

bb.uq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976"
  %i.dto = icmp eq i64 %.val91.i980, 0            ; 2 uses
  %spec.select91.i984 = select i1 %i.dto, i64 %i.cgk, i64 %.val91.i980
  br label %bb.ur

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i988", %bb.ut, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976"
  %.val94.i982 = phi ptr [ %i.dtw, %bb.ut ], [ %i.dtw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i988" ], [ %.val90.i979, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976" ]
  %.val95.i983 = phi i64 [ %.sroa.017.1.i985, %bb.ut ], [ %.sroa.017.1.i985, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i988" ], [ %.val91.i980, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit228.i976" ] ; 2 uses
  %i.dtp = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.dtp, align 8, !alias.scope !35758
  %i.dtq = icmp ult i64 %i.cgj, %.val63.i978
  br i1 %i.dtq, label %bb.uu, label %.invoke2828

bb.ur:                                            ; preds = %bb.ur, %bb.uq
  %.sroa.017.1.i985 = phi i64 [ %spec.select91.i984, %bb.uq ], [ %i.dts, %bb.ur ] ; 8 uses
  %i.dtr = icmp ult i64 %.sroa.017.1.i985, %i.cgk
  %i.dts = shl i64 %.sroa.017.1.i985, 1
  br i1 %i.dtr, label %bb.ur, label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.dtt = shl i64 %.sroa.017.1.i985, 2           ; 4 uses
  %i.dtu = icmp ugt i64 %.sroa.017.1.i985, 4611686018427387903
  %i.dtv = icmp ugt i64 %i.dtt, 9223372036854775804
  %or.cond.i.i.i.i229.i986 = or i1 %i.dtu, %i.dtv
  br i1 %or.cond.i.i.i.i229.i986, label %.invoke2830, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i987, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i987: ; preds = %bb.us
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35871
  %i.dtw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dtt, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35871 ; 5 uses
  %i.dtx = icmp eq ptr %i.dtw, null
  br i1 %i.dtx, label %.invoke2830, label %bb.ut

bb.ut:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i987
  %i.dty = icmp samesign ult i64 %.sroa.017.1.i985, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dty)
  %i.dtz = shl nuw nsw i64 %.val91.i980, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dtw, ptr nonnull readonly align 4 %.val90.i979, i64 %i.dtz, i1 false), !alias.scope !35872, !noalias !35760
  store ptr %i.dtw, ptr %i.dtg, align 8, !alias.scope !35758
  store i64 %.sroa.017.1.i985, ptr %i.dth, align 8, !alias.scope !35758
  br i1 %i.dto, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i988"

.invoke2830:                                      ; preds = %bb.us, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i987, %bb.uo, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i992, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i434
  %i.dua = phi i64 [ 0, %bb.uo ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i434 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i992 ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i987 ], [ 0, %bb.us ]
  %i.dub = phi i64 [ %.sroa.014.1.i991, %bb.uo ], [ %i.cfu, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i434 ], [ %.sroa.014.1.i991, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i221.i992 ], [ %i.dtt, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i230.i987 ], [ %i.dtt, %bb.us ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.dua, i64 %i.dub, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont2831 unwind label %bb.nm

.cont2831:                                        ; preds = %.invoke2830
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i235.i988": ; preds = %bb.ut
  tail call void @mi_free(ptr noundef nonnull align 4 %.val90.i979) #38, !noalias !35760
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981"

bb.uu:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981"
  %i.duc = getelementptr inbounds nuw i8, ptr %.val.i977, i64 %i.cgj
  store i8 0, ptr %i.duc, align 1, !noalias !35760
  %i.dud = icmp ult i64 %i.cgj, %.val95.i983
  br i1 %i.dud, label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit.thread, label %.invoke2828

_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit.thread: ; preds = %bb.uu
  %i.due = getelementptr inbounds nuw [4 x i8], ptr %.val94.i982, i64 %i.cgj
  %i.duf = trunc nuw nsw i64 %.sroa.01.1 to i32
  store i32 %i.duf, ptr %i.due, align 4, !noalias !35760
  store i64 %i.cgk, ptr %i.cgi, align 8, !alias.scope !35758
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1002"

.invoke2828:                                      ; preds = %bb.uy, %.lr.ph935, %bb.uu, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981"
  %i.dug = phi i64 [ %i.cgj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981" ], [ %i.cgj, %bb.uu ], [ %1, %.lr.ph935 ], [ %.sroa.01.0934, %bb.uy ]
  %i.duh = phi i64 [ %.val63.i978, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981" ], [ %.val95.i983, %bb.uu ], [ %1, %.lr.ph935 ], [ %2, %bb.uy ]
  %i.dui = phi ptr [ @1564, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i981" ], [ @1565, %bb.uu ], [ @1566, %.lr.ph935 ], [ @1567, %bb.uy ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dug, i64 noundef %i.duh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dui) #43
          to label %.cont2829 unwind label %bb.nm

end_hunk_4
begin_hunk_5_@_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17hfda3d414699dce3dE:bb.a
  store <4 x i32> %i.dz, ptr %i.dv, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ea = icmp eq i64 %index.next.1, 704
  br i1 %i.ea, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit, label %vector.body, !llvm.loop !39273

_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit: ; preds = %vector.body
  %i.eb = call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.a, i64 noundef 704, i64 noundef %i.am) ; 2 uses
  %i.ec = extractvalue { float, i64 } %i.eb, 0    ; 2 uses
  %i.ed = extractvalue { float, i64 } %i.eb, 1
  %i.ee = uitofp i64 %i.ed to float               ; 2 uses
  %i.ef = fcmp olt float %i.ec, %i.ee
  %spec.store.select2 = select i1 %i.ef, float %i.ee, float %i.ec ; 3 uses
  %i.eg = fsub float %spec.store.select2, %spec.store.select1
  %i.eh = load float, ptr %i.at, align 8, !noundef !52 ; 3 uses
  %i.ei = fsub float %i.eg, %i.eh                 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !52 ; 4 uses
  %i.el = icmp ult i64 %i.ek, %3
  br i1 %i.el, label %vector.ph113, label %bb.ao

vector.ph113:                                     ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit
  %i.em = getelementptr inbounds nuw [2832 x i8], ptr %2, i64 %i.ek ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 5648 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !39280, !noalias !39281, !noundef !52
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 2816
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !39282, !noundef !52
  %i.er = add i64 %i.eq, %i.eo
  store i64 %i.er, ptr %i.en, align 8, !alias.scope !39283
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph113
  %index115 = phi i64 [ 0, %vector.ph113 ], [ %index.next120.1, %vector.body114 ] ; 4 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index115 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load116 = load <4 x i32>, ptr %i.es, align 8
  %wide.load117 = load <4 x i32>, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index115 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load118 = load <4 x i32>, ptr %i.eu, align 8
  %wide.load119 = load <4 x i32>, ptr %i.ev, align 8
  %i.ew = add <4 x i32> %wide.load118, %wide.load116
  %i.ex = add <4 x i32> %wide.load119, %wide.load117
  store <4 x i32> %i.ew, ptr %i.es, align 8
  store <4 x i32> %i.ex, ptr %i.et, align 8
  %index.next120 = or disjoint i64 %index115, 8   ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %index.next120 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load116.1 = load <4 x i32>, ptr %i.ey, align 8
  %wide.load117.1 = load <4 x i32>, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %index.next120 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load118.1 = load <4 x i32>, ptr %i.fa, align 8
  %wide.load119.1 = load <4 x i32>, ptr %i.fb, align 8
  %i.fc = add <4 x i32> %wide.load118.1, %wide.load116.1
  %i.fd = add <4 x i32> %wide.load119.1, %wide.load117.1
  store <4 x i32> %i.fc, ptr %i.ey, align 8
  store <4 x i32> %i.fd, ptr %i.ez, align 8
  %index.next120.1 = add nuw nsw i64 %index115, 16 ; 2 uses
  %i.fe = icmp eq i64 %index.next120.1, 704
  br i1 %i.fe, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.1, label %vector.body114, !llvm.loop !39274

_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit.1: ; preds = %vector.body114
  %i.ff = call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.as, i64 noundef 704, i64 noundef %i.am) ; 2 uses
  %i.fg = extractvalue { float, i64 } %i.ff, 0    ; 2 uses
  %i.fh = extractvalue { float, i64 } %i.ff, 1
  %i.fi = uitofp i64 %i.fh to float               ; 2 uses
  %i.fj = fcmp olt float %i.fg, %i.fi
  %spec.store.select2.1 = select i1 %i.fj, float %i.fi, float %i.fg ; 2 uses
  %i.fk = fsub float %spec.store.select2.1, %spec.store.select1
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fm = load float, ptr %i.fl, align 4, !noundef !52
  %i.fn = fsub float %i.fk, %i.fm                 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !noundef !52 ; 5 uses
  %i.fq = icmp ult i64 %i.fp, 256
  br i1 %i.fq, label %bb.q, label %bb.r

bb.ao:                                            ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit, %bb.p
  %.lcssa = phi i64 [ %i.au, %bb.p ], [ %i.ek, %_ZN6brotli3enc9histogram21HistogramAddHistogram17h186846fca064014bE.exit ]
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.lcssa, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1973) #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #3 personality ptr @rust_eh_personality !guid !39322 {
bb.a:
  %i.a = alloca [104 x i8], align 4               ; 7 uses
  %i.b = alloca [52 x i8], align 4                ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !52 ; 39 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !52 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !52 ; 3 uses
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.f, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !52
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val122 = load i64, ptr %i.n, align 8, !noundef !52
  %.not94 = icmp eq i64 %.val122, 0
  br i1 %.not94, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.p, label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val121 = load ptr, ptr %i.o, align 8, !nonnull !52, !align !77, !noundef !52
  %i.p = trunc i64 %i.j to i32
  store i32 %i.p, ptr %.val121, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val114 = load i64, ptr %i.q, align 8, !noundef !52
  %.not95 = icmp eq i64 %.val114, 0
  br i1 %.not95, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1981) #43
  unreachable

bb.h:                                             ; preds = %bb.f
  %.val113 = load ptr, ptr %1, align 8, !nonnull !52, !align !62, !noundef !52
  store i8 0, ptr %.val113, align 1
  %.not100 = icmp eq i64 %i.d, 0                  ; 2 uses
  br i1 %.not100, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = add i64 %3, 1
  %umax176 = tail call i64 @llvm.umax.i64(i64 %i.d, i64 26)
  %i.v = add i64 %umax176, 1
  %i.w = sub i64 %i.v, %i.d
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1982) #43
  unreachable

bb.j:                                             ; preds = %.lr.ph94, %bb.u
  %i.x = phi i64 [ 1, %.lr.ph94 ], [ %i.aw, %bb.u ] ; 6 uses
  %.sroa.028.092 = phi i64 [ 0, %.lr.ph94 ], [ %i.x, %bb.u ] ; 5 uses
  %exitcond174.not = icmp eq i64 %i.x, %i.u
  br i1 %exitcond174.not, label %bb.r, label %bb.q

._crit_edge95:                                    ; preds = %bb.u, %bb.h
  store i64 1, ptr %i.k, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !52
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !52
  %i.ad = add i64 %i.ac, %i.d                     ; 6 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load i64, ptr %4, align 8, !noundef !52
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit

bb.k:                                             ; preds = %._crit_edge95
  %i.ag = icmp ugt i64 %i.ad, %3
  br i1 %i.ag, label %bb.o, label %bb.l, !prof !54

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit: ; preds = %.lr.ph.i, %bb.m, %._crit_edge95
  store i64 0, ptr %i.e, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ah = sub nuw i64 %3, %i.ad                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39323)
  %.not.i = icmp ugt i64 %i.d, %i.ah
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !94

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ad ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.d, 1040
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  br i1 %.not100, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.d, i64 noundef %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1924) #43, !noalias !39323
  unreachable

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %.sroa.02.05.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ai, %bb.m ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1040 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.05.i, i8 0, i64 1032, i1 false), !alias.scope !39323
  store float 3.402000e+38, ptr %i.al, align 8, !alias.scope !39324
  %i.am = icmp eq ptr %i.ak, %i.aj
  br i1 %i.am, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.k
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ad, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1983) #43
  unreachable

bb.p:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit", %bb.e, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit
  br i1 %5, label %bb.bd, label %bb.bc

bb.q:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %.sroa.028.092
  %i.ao = tail call { float, i64 } @_ZN6brotli3enc8bit_cost15shannon_entropy17hf421171ae783c7a0E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.an, i64 noundef 256, i64 noundef %i.s) ; 2 uses
  %i.ap = extractvalue { float, i64 } %i.ao, 0    ; 2 uses
  %i.aq = extractvalue { float, i64 } %i.ao, 1
  %i.ar = uitofp i64 %i.aq to float               ; 2 uses
  %i.as = fcmp olt float %i.ap, %i.ar
  %spec.store.select = select i1 %i.as, float %i.ar, float %i.ap ; 2 uses
  %exitcond175.not = icmp eq i64 %i.x, 27
  br i1 %exitcond175.not, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.j
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.028.092, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1984) #43
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.028.092
  store float %spec.store.select, ptr %i.at, align 4
  %i.au = add nuw nsw i64 %.sroa.028.092, %i.d    ; 2 uses
  %exitcond177.not = icmp eq i64 %i.x, %i.w
  br i1 %exitcond177.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.028.092, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1985) #43
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.au
  store float %spec.store.select, ptr %i.av, align 4
  %i.aw = add nuw nsw i64 %i.x, 1
  %exitcond178.not = icmp eq i64 %i.x, %i.d
  br i1 %exitcond178.not, label %._crit_edge95, label %bb.j

bb.v:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.au, i64 noundef 26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1986) #43
  unreachable

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.b, i8 0, i64 52, i1 false)
  %i.ax = shl i64 %i.d, 1                         ; 14 uses
  %i.ay = mul i64 %i.d, 2080                      ; 4 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %i.ax, 8868626958514207
  br i1 %or.cond.i.i.i.i.i, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.w
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39325
  %i.ba = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ay, i64 noundef range(i64 1, 9) 8) #38, !noalias !39325 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.y, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.x ], [ 0, %bb.w ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39326
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i": ; preds = %bb.x, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ba, %bb.x ] ; 12 uses
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ax, %bb.x ]
  %i.bc = icmp samesign ule i64 %i.ax, %.sroa.4.0.i.i.i
  tail call void @llvm.assume(i1 %i.bc)
  %.not10 = icmp eq i64 %i.ax, 0                  ; 3 uses
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i"
  %i.bd = add nsw i64 %i.ax, -1                   ; 2 uses
  %i.be = add nsw i64 %i.ax, -2
  %xtraiter = and i64 %i.bd, 7
  %i.bf = icmp ult i64 %i.be, 7
  br i1 %i.bf, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bd, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.sroa.0.08.i.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i ]
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.epil = phi ptr [ %i.bg, %.lr.ph.i.i.i.epil ], [ %.sroa.0.08.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.epil, align 8, !noalias !39327
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !39297

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.epil, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bg, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i, align 8, !noalias !39327
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.08.i.i.i = phi ptr [ %.sroa.10.0.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bo, %.lr.ph.i.i.i ] ; 17 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i, align 8, !noalias !39327
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bh, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.1, align 8, !noalias !39327
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bi, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.2, align 8, !noalias !39327
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bj, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.3, align 8, !noalias !39327
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bk, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.4, align 8, !noalias !39327
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bl, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.5, align 8, !noalias !39327
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bm, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.6, align 8, !noalias !39327
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.bn, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.7, align 8, !noalias !39327
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8320 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i", %._crit_edge.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  %.not96 = icmp eq i64 %i.d, 0                   ; 4 uses
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !52
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.ay
  %scevgep = getelementptr i8, ptr %i.bv, i64 -16
  %i.bw = mul i64 %i.d, 1040                      ; 2 uses
  %scevgep329 = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.bw
  %i.bx = getelementptr i8, ptr %.sroa.10.0.i.i.i, i64 %i.bw
  %scevgep338 = getelementptr i8, ptr %i.bx, i64 -16
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.0.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.nc, %.loopexit ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.pl, %.loopexit ]
  %.sroa.030.175 = phi i64 [ 1, %.lr.ph ], [ %.sroa.030.1, %.loopexit ] ; 3 uses
  %.sroa.030.074 = phi i64 [ 0, %.lr.ph ], [ %.sroa.030.175, %.loopexit ] ; 12 uses
  %i.by = add nuw i64 %i.bq, %.sroa.030.074       ; 3 uses
  %i.bz = icmp ult i64 %i.by, %3
  br i1 %i.bz, label %bb.cf, label %.invoke296

._crit_edge:                                      ; preds = %.loopexit, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit"
  %.sroa.0.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.nc, %.loopexit ] ; 2 uses
  %.sroa.7.1 = phi float [ 0.000000e+00, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h88530c57ef19323aE.exit" ], [ %i.pl, %.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !52 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !52
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cg = load float, ptr %i.cf, align 8, !noundef !52 ; 2 uses
  %i.ch = fcmp ogt float %.sroa.0.1, %i.cg
  %i.ci = fcmp ogt float %.sroa.7.1, %i.cg
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.cj = fadd float %.sroa.0.1, -2.000000e+01
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E:bb.a
  %i.ea = add nuw i64 %i.cz, %.sroa.036.077       ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %3
  br i1 %i.eb, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104, label %.invoke

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit104: ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ec, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.ed, align 8, !alias.scope !39328
  %i.ee = icmp ult i64 %.sroa.036.178, %i.d       ; 2 uses
  %i.ef = zext i1 %i.ee to i64
  %.sroa.036.1 = add nuw i64 %.sroa.036.178, %i.ef
  br i1 %i.ee, label %bb.af, label %._crit_edge81

bb.am:                                            ; preds = %bb.ab
  %i.eg = icmp ult i64 %i.cm, %.val116
  br i1 %i.eg, label %bb.an, label %.invoke296

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val115 = load ptr, ptr %i.eh, align 8, !nonnull !52, !align !77, !noundef !52
  %i.ei = load i64, ptr %i.e, align 8, !noundef !52
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %i.cm
  %i.ek = trunc i64 %i.ei to i32
  store i32 %i.ek, ptr %i.ej, align 4
  %.val123 = load ptr, ptr %1, align 8, !nonnull !52, !align !62, !noundef !52 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val124 = load i64, ptr %i.el, align 8, !noundef !52 ; 4 uses
  %i.em = add i64 %i.cm, -2                       ; 3 uses
  %i.en = icmp ult i64 %i.em, %.val124
  br i1 %i.en, label %bb.ao, label %.invoke296

bb.ao:                                            ; preds = %bb.an
  %i.eo = icmp ult i64 %i.cm, %.val124
  br i1 %i.eo, label %bb.ap, label %.invoke296

bb.ap:                                            ; preds = %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.em
  %i.eq = load i8, ptr %i.ep, align 1, !noundef !52
  %i.er = getelementptr inbounds nuw i8, ptr %.val123, i64 %i.cm
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  store i64 %i.et, ptr %0, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.es, align 8
  br i1 %.not96, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ew = load i64, ptr %i.ev, align 8
  br label %bb.ar

._crit_edge87:                                    ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit, %bb.ap
  %i.ex = add nuw i64 %i.cm, 1
  store i64 %i.ex, ptr %i.k, align 8
  store i64 0, ptr %i.e, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ey, align 8
  %i.ez = load i64, ptr %i.g, align 8, !noundef !52
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ez, ptr %i.fa, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge87, %._crit_edge81, %bb.ae, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit142
  br i1 %.not10, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.aq
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i) #38
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit"

bb.ar:                                            ; preds = %.lr.ph86, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit
  %.sroa.034.184 = phi i64 [ 1, %.lr.ph86 ], [ %.sroa.034.1, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit ] ; 3 uses
  %.sroa.034.083 = phi i64 [ 0, %.lr.ph86 ], [ %.sroa.034.184, %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit ] ; 6 uses
  %i.fb = add nuw nsw i64 %.sroa.034.083, %i.d    ; 7 uses
  %i.fc = icmp ult i64 %i.fb, %i.ax
  br i1 %i.fc, label %bb.as, label %.invoke296

bb.as:                                            ; preds = %bb.ar
  %i.fd = add nuw i64 %.sroa.034.083, %i.et       ; 3 uses
  %i.fe = icmp ult i64 %i.fd, %3
  br i1 %i.fe, label %bb.at, label %.invoke

bb.at:                                            ; preds = %bb.as
  %i.ff = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i, i64 %i.fb
  %i.fg = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.fd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.fg, ptr noundef nonnull align 8 dereferenceable(1040) %i.ff, i64 1040, i1 false)
  %i.fh = icmp samesign ult i64 %.sroa.034.083, 26
  br i1 %i.fh, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.fi = icmp ult i64 %i.fb, 26
  br i1 %i.fi, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %.sroa.034.083 ; 2 uses
  %i.fk = load float, ptr %i.fj, align 4, !noundef !52
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.fb
  store float %i.fk, ptr %i.fl, align 4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fb
  %i.fn = load float, ptr %i.fm, align 4, !noundef !52
  store float %i.fn, ptr %i.fj, align 4
  %i.fo = add nuw i64 %i.ew, %.sroa.034.083       ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %3
  br i1 %i.fp, label %_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit, label %.invoke

_ZN6brotli3enc9histogram14HistogramClear17h9b413f7c4a06f526E.exit: ; preds = %bb.av
  %i.fq = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.fo ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.fq, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %i.fr, align 8, !alias.scope !39329
  %i.fs = icmp ult i64 %.sroa.034.184, %i.d       ; 2 uses
  %i.ft = zext i1 %i.fs to i64
  %.sroa.034.1 = add nuw i64 %.sroa.034.184, %i.ft
  br i1 %i.fs, label %bb.ar, label %._crit_edge87

bb.aw:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val120 = load i64, ptr %i.fu, align 8, !noundef !52 ; 2 uses
  %i.fv = load i64, ptr %i.k, align 8, !noundef !52 ; 7 uses
  %i.fw = icmp ult i64 %i.fv, %.val120
  br i1 %i.fw, label %bb.ax, label %.invoke296

bb.ax:                                            ; preds = %bb.aw
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val119 = load ptr, ptr %i.fx, align 8, !nonnull !52, !align !77, !noundef !52
  %i.fy = load i64, ptr %i.e, align 8, !noundef !52
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val119, i64 %i.fv
  %i.ga = trunc i64 %i.fy to i32
  store i32 %i.ga, ptr %i.fz, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val110 = load i64, ptr %i.gb, align 8, !noundef !52 ; 2 uses
  %i.gc = icmp ult i64 %i.fv, %.val110
  br i1 %i.gc, label %bb.ay, label %.invoke296

bb.ay:                                            ; preds = %bb.ax
  %.val = load ptr, ptr %1, align 8, !nonnull !52, !align !62, !noundef !52
  %i.gd = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fv
  %i.ge = trunc i64 %i.cb to i8
  store i8 %i.ge, ptr %i.gd, align 1
  %i.gf = load i64, ptr %0, align 8, !noundef !52
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gf, ptr %i.gg, align 8
  %i.gh = mul i64 %i.cb, %i.d
  store i64 %i.gh, ptr %0, align 8
  br i1 %.not96, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.ay
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 16 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 26)
  %i.gj = add i64 %umax, 1
  %i.gk = sub i64 %i.gj, %i.d                     ; 14 uses
  %i.gl = add i64 %i.d, 1                         ; 15 uses
  %exitcond171.not = icmp eq i64 %i.gk, 1
  br i1 %exitcond171.not, label %.invoke296, label %bb.be

._crit_edge91:                                    ; preds = %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ay
  %i.gm = add nuw i64 %i.fv, 1
  store i64 %i.gm, ptr %i.k, align 8
  %i.gn = add nuw i64 %i.cb, 1
  store i64 %i.gn, ptr %i.ca, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !noundef !52
  %i.gq = add i64 %i.gp, %i.d                     ; 6 uses
  store i64 %i.gq, ptr %i.go, align 8
  %i.gr = load i64, ptr %4, align 8, !noundef !52
  %i.gs = icmp ult i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.az, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit142

bb.az:                                            ; preds = %._crit_edge91
  %i.gt = icmp ugt i64 %i.gq, %3
  br i1 %i.gt, label %.invoke298, label %bb.ba, !prof !54

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit142: ; preds = %.lr.ph.i139, %bb.bb, %._crit_edge91
  store i64 0, ptr %i.e, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.gu, align 8
  %i.gv = load i64, ptr %i.g, align 8, !noundef !52
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.gv, ptr %i.gw, align 8
  br label %bb.aq

bb.ba:                                            ; preds = %bb.az
  %i.gx = sub nuw i64 %3, %i.gq                   ; 2 uses
  %i.gy = load i64, ptr %i.c, align 8, !noundef !52 ; 4 uses
  %.not.i137 = icmp ugt i64 %i.gy, %i.gx
  br i1 %.not.i137, label %.invoke298, label %bb.bb, !prof !94

bb.bb:                                            ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw [1040 x i8], ptr %2, i64 %i.gq ; 2 uses
  %.idx.i138 = mul nuw nsw i64 %i.gy, 1040
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx.i138
  %i.hb = icmp eq i64 %i.gy, 0
  br i1 %i.hb, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit142, label %.lr.ph.i139

.lr.ph.i139:                                      ; preds = %bb.bb, %.lr.ph.i139
  %.sroa.02.05.i140 = phi ptr [ %i.hc, %.lr.ph.i139 ], [ %i.gz, %bb.bb ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i140, i64 1040 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i140, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.05.i140, i8 0, i64 1032, i1 false), !alias.scope !39330
  store float 3.402000e+38, ptr %i.hd, align 8, !alias.scope !39331
  %i.he = icmp eq ptr %i.hc, %i.ha
  br i1 %i.he, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit142, label %.lr.ph.i139

.invoke298:                                       ; preds = %bb.az, %bb.ba
  %i.hf = phi i64 [ 0, %bb.ba ], [ %i.gq, %bb.az ]
  %i.hg = phi i64 [ %i.gy, %bb.ba ], [ %3, %bb.az ]
  %i.hh = phi i64 [ %i.gx, %bb.ba ], [ %3, %bb.az ]
  %i.hi = phi ptr [ @1924, %bb.ba ], [ @2003, %bb.az ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.hf, i64 noundef %i.hg, i64 noundef %i.hh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi) #43
          to label %.cont299 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont299:                                         ; preds = %.invoke298
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.bc:                                            ; preds = %bb.bd, %bb.p
  ret void

bb.bd:                                            ; preds = %bb.p
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !noundef !52
  %i.hl = mul i64 %i.hk, %i.d
  store i64 %i.hl, ptr %4, align 8
  %i.hm = load i64, ptr %i.k, align 8, !noundef !52
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.hm, ptr %i.hn, align 8
  br label %bb.bc

bb.be:                                            ; preds = %.lr.ph90
  %i.ho = load float, ptr %i.gi, align 8, !noundef !52
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.d
  store float %i.ho, ptr %i.hp, align 4
  %i.hq = load float, ptr %i.b, align 4, !noundef !52
  store float %i.hq, ptr %i.gi, align 8
  %exitcond173.not = icmp eq i64 %i.gl, 2
  br i1 %exitcond173.not, label %._crit_edge91, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %exitcond171.1.not = icmp eq i64 %i.gk, 2
  br i1 %exitcond171.1.not, label %.invoke296, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !noundef !52
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.gl
  store float %i.hs, ptr %i.ht, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.hv = load float, ptr %i.hu, align 4, !noundef !52
  store float %i.hv, ptr %i.hr, align 4
  %exitcond173.1.not = icmp eq i64 %i.gl, 3
  br i1 %exitcond173.1.not, label %._crit_edge91, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hw = add nuw nsw i64 %i.d, 2                 ; 2 uses
  %exitcond171.2.not = icmp eq i64 %i.gk, 3
  br i1 %exitcond171.2.not, label %.invoke296, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 8, !noundef !52
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hw
  store float %i.hy, ptr %i.hz, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ib = load float, ptr %i.ia, align 4, !noundef !52
  store float %i.ib, ptr %i.hx, align 8
  %exitcond173.2.not = icmp eq i64 %i.gl, 4
  br i1 %exitcond173.2.not, label %._crit_edge91, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ic = add nuw nsw i64 %i.d, 3                 ; 2 uses
  %exitcond171.3.not = icmp eq i64 %i.gk, 4
  br i1 %exitcond171.3.not, label %.invoke296, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !noundef !52
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ic
  store float %i.ie, ptr %i.if, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ih = load float, ptr %i.ig, align 4, !noundef !52
  store float %i.ih, ptr %i.id, align 4
  %exitcond173.3.not = icmp eq i64 %i.gl, 5
  br i1 %exitcond173.3.not, label %._crit_edge91, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ii = add nuw nsw i64 %i.d, 4                 ; 2 uses
  %exitcond171.4.not = icmp eq i64 %i.gk, 5
  br i1 %exitcond171.4.not, label %.invoke296, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ik = load float, ptr %i.ij, align 8, !noundef !52
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ii
  store float %i.ik, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.in = load float, ptr %i.im, align 4, !noundef !52
  store float %i.in, ptr %i.ij, align 8
  %exitcond173.4.not = icmp eq i64 %i.gl, 6
  br i1 %exitcond173.4.not, label %._crit_edge91, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.io = add nuw nsw i64 %i.d, 5                 ; 2 uses
  %exitcond171.5.not = icmp eq i64 %i.gk, 6
  br i1 %exitcond171.5.not, label %.invoke296, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.iq = load float, ptr %i.ip, align 4, !noundef !52
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.io
  store float %i.iq, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.it = load float, ptr %i.is, align 4, !noundef !52
  store float %i.it, ptr %i.ip, align 4
  %exitcond173.5.not = icmp eq i64 %i.gl, 7
  br i1 %exitcond173.5.not, label %._crit_edge91, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iu = add nuw nsw i64 %i.d, 6                 ; 2 uses
  %exitcond171.6.not = icmp eq i64 %i.gk, 7
  br i1 %exitcond171.6.not, label %.invoke296, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 8, !noundef !52
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.iu
  store float %i.iw, ptr %i.ix, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.iz = load float, ptr %i.iy, align 4, !noundef !52
  store float %i.iz, ptr %i.iv, align 8
  %exitcond173.6.not = icmp eq i64 %i.gl, 8
  br i1 %exitcond173.6.not, label %._crit_edge91, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ja = add nuw nsw i64 %i.d, 7                 ; 2 uses
  %exitcond171.7.not = icmp eq i64 %i.gk, 8
  br i1 %exitcond171.7.not, label %.invoke296, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.jc = load float, ptr %i.jb, align 4, !noundef !52
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ja
  store float %i.jc, ptr %i.jd, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.jf = load float, ptr %i.je, align 4, !noundef !52
  store float %i.jf, ptr %i.jb, align 4
  %exitcond173.7.not = icmp eq i64 %i.gl, 9
  br i1 %exitcond173.7.not, label %._crit_edge91, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jg = add nuw nsw i64 %i.d, 8                 ; 2 uses
  %exitcond171.8.not = icmp eq i64 %i.gk, 9
  br i1 %exitcond171.8.not, label %.invoke296, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 8, !noundef !52
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.jg
  store float %i.ji, ptr %i.jj, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jl = load float, ptr %i.jk, align 4, !noundef !52
  store float %i.jl, ptr %i.jh, align 8
  %exitcond173.8.not = icmp eq i64 %i.gl, 10
  br i1 %exitcond173.8.not, label %._crit_edge91, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jm = add nuw nsw i64 %i.d, 9                 ; 2 uses
  %exitcond171.9.not = icmp eq i64 %i.gk, 10
  br i1 %exitcond171.9.not, label %.invoke296, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !noundef !52
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.jm
  store float %i.jo, ptr %i.jp, align 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.jr = load float, ptr %i.jq, align 4, !noundef !52
  store float %i.jr, ptr %i.jn, align 4
  %exitcond173.9.not = icmp eq i64 %i.gl, 11
  br i1 %exitcond173.9.not, label %._crit_edge91, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.js = add nuw nsw i64 %i.d, 10                ; 2 uses
  %exitcond171.10.not = icmp eq i64 %i.gk, 11
  br i1 %exitcond171.10.not, label %.invoke296, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 8, !noundef !52
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.js
  store float %i.ju, ptr %i.jv, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.jx = load float, ptr %i.jw, align 4, !noundef !52
  store float %i.jx, ptr %i.jt, align 8
  %exitcond173.10.not = icmp eq i64 %i.gl, 12
  br i1 %exitcond173.10.not, label %._crit_edge91, label %bb.bz
end_hunk_6
begin_hunk_7_@_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h0916bdb0a16a6b62E:bb.a

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57", %.thread.i, %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %.val45.i59 = load ptr, ptr %i.cc, align 8, !alias.scope !39533, !nonnull !52, !align !77, !noundef !52 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %.val46.i = load i64, ptr %i.cd, align 8, !alias.scope !39533, !noundef !52 ; 4 uses
  %.not28.i60 = icmp ugt i64 %.val46.i, %.sroa.08.0.lcssa
  br i1 %.not28.i60, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64", label %bb.u

bb.r:                                             ; preds = %bb.r, %bb.q
  %.sroa.06.1.i54 = phi i64 [ %spec.select.i53, %bb.q ], [ %i.ce, %bb.r ] ; 6 uses
  %.not26.i55 = icmp ugt i64 %.sroa.06.1.i54, %.sroa.08.0.lcssa
  %i.ce = shl nuw nsw i64 %.sroa.06.1.i54, 1
  br i1 %.not26.i55, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56, label %bb.r

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56: ; preds = %bb.r
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39537
  %i.cf = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i54, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !39537 ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39538
  unreachable

bb.t:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i56
  br i1 %i.cb, label %.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57"

.thread.i:                                        ; preds = %bb.t
  store ptr %i.cf, ptr %13, align 8, !alias.scope !39533
  store i64 %.sroa.06.1.i54, ptr %i.ca, align 8, !alias.scope !39533
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i57": ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %.val61.i51, i64 %.val62.i, i1 false), !alias.scope !39539, !noalias !39536
  store ptr %i.cf, ptr %13, align 8, !alias.scope !39533
  store i64 %.sroa.06.1.i54, ptr %i.ca, align 8, !alias.scope !39533
  tail call void @mi_free(ptr noundef nonnull align 1 %.val61.i51) #38, !noalias !39536
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"

bb.u:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"
  %i.ch = icmp eq i64 %.val46.i, 0                ; 2 uses
  %spec.select7.i = select i1 %i.ch, i64 %i.ak, i64 %.val46.i
  br label %bb.w

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i", %.thread14.i75, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i58"
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ak, ptr %i.ci, align 8, !alias.scope !39533
  %i.cj = mul nuw nsw i64 %.sroa.0.0.i.i50, %7    ; 5 uses
  store i64 %i.cj, ptr %i.aj, align 8, !alias.scope !39535
  %i.ck = mul nuw nsw i64 %i.cj, 1040             ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39540
  %i.cl = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ck, i64 noundef range(i64 1, 9) 8) #38, !noalias !39540 ; 6 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.v, label %.lr.ph.i.i.i.i65.preheader

.lr.ph.i.i.i.i65.preheader:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"
  %i.cn = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.co = add nsw i64 %i.cj, -2
  %xtraiter552 = and i64 %i.cn, 7                 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 7
  br i1 %i.cp, label %.lr.ph.i.i.i.i65.epil.preheader, label %.lr.ph.i.i.i.i65.preheader.new

.lr.ph.i.i.i.i65.preheader.new:                   ; preds = %.lr.ph.i.i.i.i65.preheader
  %unroll_iter558 = and i64 %i.cn, -8
  br label %.lr.ph.i.i.i.i65

bb.v:                                             ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39541
  unreachable

._crit_edge.thread.i.i.i.i.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i65
  %lcmp.mod554.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod554.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil.preheader

.lr.ph.i.i.i.i65.epil.preheader:                  ; preds = %._crit_edge.thread.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i65.preheader
  %.sroa.0.08.i.i.i.i66.epil.init = phi ptr [ %i.cl, %.lr.ph.i.i.i.i65.preheader ], [ %i.da, %._crit_edge.thread.i.i.i.i.unr-lcssa ]
  %lcmp.mod557 = icmp ne i64 %xtraiter552, 0
  tail call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph.i.i.i.i65.epil

.lr.ph.i.i.i.i65.epil:                            ; preds = %.lr.ph.i.i.i.i65.epil, %.lr.ph.i.i.i.i65.epil.preheader
  %.sroa.0.08.i.i.i.i66.epil = phi ptr [ %i.cq, %.lr.ph.i.i.i.i65.epil ], [ %.sroa.0.08.i.i.i.i66.epil.init, %.lr.ph.i.i.i.i65.epil.preheader ] ; 4 uses
  %epil.iter553 = phi i64 [ %epil.iter553.next, %.lr.ph.i.i.i.i65.epil ], [ 0, %.lr.ph.i.i.i.i65.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66.epil, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.epil, align 8, !noalias !39542
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.epil, i64 1040 ; 2 uses
  %epil.iter553.next = add i64 %epil.iter553, 1   ; 2 uses
  %epil.iter553.cmp.not = icmp eq i64 %epil.iter553.next, %xtraiter552
  br i1 %epil.iter553.cmp.not, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i65.epil, !llvm.loop !39392

._crit_edge.thread.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i65.epil, %._crit_edge.thread.i.i.i.i.unr-lcssa
  %.sroa.0.08.i.i.i.i66.lcssa = phi ptr [ %i.cz, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %.sroa.0.08.i.i.i.i66.epil, %.lr.ph.i.i.i.i65.epil ]
  %.lcssa547 = phi ptr [ %i.da, %._crit_edge.thread.i.i.i.i.unr-lcssa ], [ %i.cq, %.lr.ph.i.i.i.i65.epil ]
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66.lcssa, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.lcssa547, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i70, align 8, !noalias !39542
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %.val64.i = load i64, ptr %i.cr, align 8, !alias.scope !39534, !noundef !52
  %i.cs = icmp eq i64 %.val64.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

.lr.ph.i.i.i.i65:                                 ; preds = %.lr.ph.i.i.i.i65, %.lr.ph.i.i.i.i65.preheader.new
  %.sroa.0.08.i.i.i.i66 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i65.preheader.new ], [ %i.da, %.lr.ph.i.i.i.i65 ] ; 17 uses
  %niter559 = phi i64 [ 0, %.lr.ph.i.i.i.i65.preheader.new ], [ %niter559.next.7, %.lr.ph.i.i.i.i65 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i66, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68, align 8, !noalias !39542
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ct, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.1, align 8, !noalias !39542
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cu, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.2, align 8, !noalias !39542
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cv, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.3, align 8, !noalias !39542
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cw, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.4, align 8, !noalias !39542
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cx, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.5, align 8, !noalias !39542
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cy, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.6, align 8, !noalias !39542
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 7280 ; 2 uses
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.cz, i8 0, i64 1032, i1 false), !noalias !39536
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i68.7, align 8, !noalias !39542
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i66, i64 8320 ; 3 uses
  %niter559.next.7 = add i64 %niter559, 8         ; 2 uses
  %niter559.ncmp.7 = icmp eq i64 %niter559.next.7, %unroll_iter558
  br i1 %niter559.ncmp.7, label %._crit_edge.thread.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i65

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %._crit_edge.thread.i.i.i.i
  %.val63.i = load ptr, ptr %i.ai, align 8, !alias.scope !39534, !nonnull !52, !noundef !52
  tail call void @mi_free(ptr noundef nonnull %.val63.i) #38, !noalias !39536
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

bb.w:                                             ; preds = %bb.w, %bb.u
  %.sroa.09.1.i61 = phi i64 [ %spec.select7.i, %bb.u ], [ %i.db, %bb.w ] ; 7 uses
  %.not29.i62 = icmp ugt i64 %.sroa.09.1.i61, %.sroa.08.0.lcssa
  %i.db = shl nuw nsw i64 %.sroa.09.1.i61, 1
  br i1 %.not29.i62, label %bb.x, label %bb.w

bb.x:                                             ; preds = %bb.w
  %i.dc = shl i64 %.sroa.09.1.i61, 2              ; 3 uses
  %i.dd = icmp ugt i64 %.sroa.09.1.i61, 4611686018427387903
  %i.de = icmp ugt i64 %i.dc, 9223372036854775804
  %or.cond.i.i.i.i.i63 = or i1 %i.dd, %i.de
  br i1 %or.cond.i.i.i.i.i63, label %bb.y, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, !prof !99

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i: ; preds = %bb.x
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39543
  %i.df = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39543 ; 4 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i, %bb.x
  %.sroa.4.0.ph.i.i69.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i ], [ 0, %bb.x ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i69.i, i64 %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39544
  unreachable

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i67.i
  %i.dh = icmp samesign ult i64 %.sroa.09.1.i61, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dh)
  br i1 %i.ch, label %.thread14.i75, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i"

.thread14.i75:                                    ; preds = %bb.z
  store ptr %i.df, ptr %i.cc, align 8, !alias.scope !39533
  store i64 %.sroa.09.1.i61, ptr %i.cd, align 8, !alias.scope !39533
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i70.i": ; preds = %bb.z
  %i.di = shl nuw nsw i64 %.val46.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.df, ptr nonnull readonly align 4 %.val45.i59, i64 %i.di, i1 false), !alias.scope !39545, !noalias !39536
  store ptr %i.df, ptr %i.cc, align 8, !alias.scope !39533
  store i64 %.sroa.09.1.i61, ptr %i.cd, align 8, !alias.scope !39533
  tail call void @mi_free(ptr noundef nonnull align 4 %.val45.i59) #38, !noalias !39536
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i64"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %._crit_edge.thread.i.i.i.i
  store ptr %i.cl, ptr %i.ai, align 8, !alias.scope !39534
  store i64 %i.cj, ptr %i.cr, align 8, !alias.scope !39534
  %.idx.i.i = mul nuw nsw i64 %7, 1040
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"
  %.sroa.02.05.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cl, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i" ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1040 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.02.05.i.i, i8 0, i64 1032, i1 false), !alias.scope !39546, !noalias !39536
  store float 3.402000e+38, ptr %i.dl, align 8, !alias.scope !39547, !noalias !39536
  %i.dm = icmp eq ptr %i.dk, %i.dj
  br i1 %i.dm, label %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, label %.lr.ph.i.i

_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit: ; preds = %.lr.ph.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i8 0, i64 104, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit
  %.sroa.5.sroa.9.sroa.5.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 512, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.10.0 = phi float [ 4.000000e+02, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 0.000000e+00, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.7.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ %.zext.i, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.5.sroa.6.0 = phi i64 [ 512, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ %7, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ]
  %.sroa.013.0 = phi i64 [ 0, %_ZN6brotli3enc9metablock17InitBlockSplitter17hdf0774139b5bad6bE.exit ], [ 1, %_ZN6brotli3enc9metablock24InitContextBlockSplitter17h2093562fdaa35bf0E.exit ] ; 2 uses
  store i64 %.sroa.013.0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.0, i64 16, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 256, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.5.sroa.7.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store i64 512, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  store i64 0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 %.sroa.5.sroa.9.sroa.5.0, ptr %.sroa.5.sroa.9.sroa.5.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6.0..sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.9.sroa.6, i64 16, i1 false)
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store float %.sroa.5.sroa.10.0, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 0, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.sroa.12.sroa.0, i64 104, i1 false)
  %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store float 4.000000e+02, ptr %.sroa.5.sroa.12.sroa.4.0..sroa.5.sroa.12.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.9.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.12.sroa.0)
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 248 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39550)
  %i.dq = lshr i64 %12, 10                        ; 6 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 4 uses
  %.sroa.0.0.i.i76 = tail call noundef i64 @llvm.umin.i64(i64 %i.dr, i64 257) ; 5 uses
  %.val60.i77 = load ptr, ptr %i.dn, align 8, !alias.scope !39548, !nonnull !52, !align !62, !noundef !52 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %.val61.i78 = load i64, ptr %i.ds, align 8, !alias.scope !39548, !noundef !52 ; 4 uses
  %.not.i79 = icmp ugt i64 %.val61.i78, %i.dq
  br i1 %.not.i79, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = icmp eq i64 %.val61.i78, 0              ; 2 uses
  %spec.select.i80 = select i1 %i.dt, i64 %i.dr, i64 %.val61.i78
  br label %bb.ac

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84", %.thread14.i112, %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %.val44.i86 = load ptr, ptr %i.du, align 8, !alias.scope !39548, !nonnull !52, !align !77, !noundef !52 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 2 uses
  %.val45.i87 = load i64, ptr %i.dv, align 8, !alias.scope !39548, !noundef !52 ; 4 uses
  %.not28.i88 = icmp ugt i64 %.val45.i87, %i.dq
  br i1 %.not28.i88, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95", label %bb.ae

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.06.1.i81 = phi i64 [ %spec.select.i80, %bb.ab ], [ %i.dw, %bb.ac ] ; 6 uses
  %.not26.i82 = icmp ugt i64 %.sroa.06.1.i81, %i.dq
  %i.dw = shl nuw nsw i64 %.sroa.06.1.i81, 1
  br i1 %.not26.i82, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83, label %bb.ac

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83: ; preds = %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39551
  %i.dx = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.06.1.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !39551 ; 4 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.noexc.i113, label %bb.ad

.noexc.i113:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %.sroa.06.1.i81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39552
  unreachable

bb.ad:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i83
  br i1 %i.dt, label %.thread14.i112, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84"

.thread14.i112:                                   ; preds = %bb.ad
  store ptr %i.dx, ptr %i.dn, align 8, !alias.scope !39548
  store i64 %.sroa.06.1.i81, ptr %i.ds, align 8, !alias.scope !39548
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i84": ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull readonly align 1 %.val60.i77, i64 %.val61.i78, i1 false), !alias.scope !39553, !noalias !39552
  store ptr %i.dx, ptr %i.dn, align 8, !alias.scope !39548
  store i64 %.sroa.06.1.i81, ptr %i.ds, align 8, !alias.scope !39548
  tail call void @mi_free(ptr noundef nonnull align 1 %.val60.i77) #38, !noalias !39552
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"

bb.ae:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"
  %i.dz = icmp eq i64 %.val45.i87, 0              ; 2 uses
  %spec.select15.i89 = select i1 %i.dz, i64 %i.dr, i64 %.val45.i87
  br label %bb.ag

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i94", %bb.aj, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit.i85"
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i64 %i.dr, ptr %i.ea, align 8, !alias.scope !39548
  store i64 %.sroa.0.0.i.i76, ptr %i.dp, align 8, !alias.scope !39550
  %i.eb = mul nuw nsw i64 %.sroa.0.0.i.i76, 2832  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39554
  %i.ec = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.eb, i64 noundef range(i64 1, 9) 8) #38, !noalias !39554 ; 7 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"

bb.af:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39555
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i95"
  %.not16.i96 = icmp eq i64 %i.dq, 0
  br i1 %.not16.i96, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.preheader

.lr.ph.i.i.i.i97.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %i.ee = add nsw i64 %.sroa.0.0.i.i76, -1        ; 2 uses
  %i.ef = add nsw i64 %.sroa.0.0.i.i76, -2
  %xtraiter567 = and i64 %i.ee, 7                 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 7
  br i1 %i.eg, label %.lr.ph.i.i.i.i97.epil.preheader, label %.lr.ph.i.i.i.i97.preheader.new

.lr.ph.i.i.i.i97.preheader.new:                   ; preds = %.lr.ph.i.i.i.i97.preheader
  %unroll_iter572 = and i64 %i.ee, -8
  br label %.lr.ph.i.i.i.i97

.lr.ph.i.i.i.i97:                                 ; preds = %.lr.ph.i.i.i.i97, %.lr.ph.i.i.i.i97.preheader.new
  %.sroa.0.08.i.i.i.i98 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i97.preheader.new ], [ %i.eo, %.lr.ph.i.i.i.i97 ] ; 17 uses
  %niter573 = phi i64 [ 0, %.lr.ph.i.i.i.i97.preheader.new ], [ %niter573.next.7, %.lr.ph.i.i.i.i97 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100, align 8, !noalias !39556
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.eh, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.1, align 8, !noalias !39556
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ei, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.2, align 8, !noalias !39556
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ej, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.3, align 8, !noalias !39556
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.ek, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.4, align 8, !noalias !39556
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.el, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.5, align 8, !noalias !39556
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.em, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.6, align 8, !noalias !39556
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.en, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.7, align 8, !noalias !39556
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98, i64 22656 ; 3 uses
  %niter573.next.7 = add i64 %niter573, 8         ; 2 uses
  %niter573.ncmp.7 = icmp eq i64 %niter573.next.7, %unroll_iter572
  br i1 %niter573.ncmp.7, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", label %.lr.ph.i.i.i.i97

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i.i.i97
  %lcmp.mod569.not = icmp eq i64 %xtraiter567, 0
  br i1 %lcmp.mod569.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.epil.preheader

.lr.ph.i.i.i.i97.epil.preheader:                  ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.preheader
  %.sroa.0.08.i.i.i.i98.epil.init = phi ptr [ %i.ec, %.lr.ph.i.i.i.i97.preheader ], [ %i.eo, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa" ]
  %lcmp.mod571 = icmp ne i64 %xtraiter567, 0
  tail call void @llvm.assume(i1 %lcmp.mod571)
  br label %.lr.ph.i.i.i.i97.epil

.lr.ph.i.i.i.i97.epil:                            ; preds = %.lr.ph.i.i.i.i97.epil, %.lr.ph.i.i.i.i97.epil.preheader
  %.sroa.0.08.i.i.i.i98.epil = phi ptr [ %i.ep, %.lr.ph.i.i.i.i97.epil ], [ %.sroa.0.08.i.i.i.i98.epil.init, %.lr.ph.i.i.i.i97.epil.preheader ] ; 3 uses
  %epil.iter568 = phi i64 [ %epil.iter568.next, %.lr.ph.i.i.i.i97.epil ], [ 0, %.lr.ph.i.i.i.i97.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i98.epil, i8 0, i64 2824, i1 false), !noalias !39552
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i100.epil, align 8, !noalias !39556
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i98.epil, i64 2832 ; 2 uses
  %epil.iter568.next = add i64 %epil.iter568, 1   ; 2 uses
  %epil.iter568.cmp.not = icmp eq i64 %epil.iter568.next, %xtraiter567
  br i1 %epil.iter568.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i", label %.lr.ph.i.i.i.i97.epil, !llvm.loop !39425

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i97.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i102 = phi ptr [ %i.ec, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i.i" ], [ %i.eo, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h06f38fa9e0614b4aE.exit.i.loopexit.unr-lcssa" ], [ %i.ep, %.lr.ph.i.i.i.i97.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i103 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i102, i64 2824
end_hunk_7
