Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a

bb.ae:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.il, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc420.i.i unwind label %.thread93.i.i, !noalias !34365

.noexc420.i.i:                                    ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"
  %i.ip = icmp eq i64 %.sroa.14.1.i.i, 0
  br i1 %i.ip, label %bb.dp, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i": ; preds = %.thread93.i.i, %bb.af
  %.pn230.pn.pn.pn.pn100.i.i = phi { ptr, i32 } [ %i.iq, %.thread93.i.i ], [ %.pn230.pn.pn.pn.i.i, %bb.af ]
  %.sroa.016.099.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %.thread93.i.i ], [ %.sroa.016.1.i.i, %bb.af ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.099.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.016.099.i.i) #38, !noalias !34365
  br label %bb.dp

.thread93.i.i:                                    ; preds = %bb.ae
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i": ; preds = %bb.bn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i", %bb.ag
  %.sroa.12.0.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.12.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.12.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.12.3151.i.i, %bb.bn ]
  %.sroa.026.0.i.i = phi ptr [ %i.it, %bb.ag ], [ %.sroa.026.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.026.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.026.3152.i.i, %bb.bn ] ; 2 uses
  %.sroa.14.1.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.14.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.14.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.14.4153.i.i, %bb.bn ]
  %.sroa.016.1.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ag ], [ %.sroa.016.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.sroa.016.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.016.4154.i.i, %bb.bn ]
  %.pn230.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.is, %bb.ag ], [ %.pn230.pn.pn.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i" ], [ %.pn230.pn.pn.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.pn230155.i.i, %bb.bn ] ; 2 uses
  %i.ir = icmp eq i64 %.sroa.12.0.i.i, 0
  br i1 %i.ir, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.026.0.i.i) #38, !noalias !34365
  br label %bb.af

bb.ag:                                            ; preds = %bb.ai
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i: ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.sroa.10.0.i.i418.i.i = phi i64 [ %i.io, %bb.ad ], [ 4, %._crit_edge.i.i.i.i.i ]
  %i.it = inttoptr i64 %.sroa.10.0.i.i418.i.i to ptr ; 4 uses
  %.sroa.0.0.i422.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i, i64 64) ; 17 uses
  %i.iu = mul nuw nsw i64 %.sroa.0.0.i422.i.i, 1040 ; 2 uses
  %i.iv = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.iv, label %._crit_edge.i.i.i429.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34383
  %i.iw = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.iu, i64 noundef range(i64 1, 9) 8) #38, !noalias !34383 ; 5 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ai, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i"

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.iu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc440.i.i unwind label %bb.ag, !noalias !34365

.noexc440.i.i:                                    ; preds = %bb.ai
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i": ; preds = %bb.ah
  %.not1138.i.i = icmp eq i64 %.sroa.0.0.i.i, 1
  br i1 %.not1138.i.i, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.preheader

.lr.ph.i.i.i434.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i"
  %i.iy = add nsw i64 %.sroa.0.0.i422.i.i, -1     ; 2 uses
  %i.iz = add nsw i64 %.sroa.0.0.i422.i.i, -2
  %xtraiter4666 = and i64 %i.iy, 7                ; 3 uses
  %i.ja = icmp ult i64 %i.iz, 7
  br i1 %i.ja, label %.lr.ph.i.i.i434.i.i.epil.preheader, label %.lr.ph.i.i.i434.i.i.preheader.new

.lr.ph.i.i.i434.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i434.i.i.preheader
  %unroll_iter4671 = and i64 %i.iy, -8
  br label %.lr.ph.i.i.i434.i.i

._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i
  %lcmp.mod4668.not = icmp eq i64 %xtraiter4666, 0
  br i1 %lcmp.mod4668.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil.preheader

.lr.ph.i.i.i434.i.i.epil.preheader:               ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.preheader
  %.sroa.0.08.i.i.i435.i.i.epil.init = phi ptr [ %i.iw, %.lr.ph.i.i.i434.i.i.preheader ], [ %i.jj, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4670 = icmp ne i64 %xtraiter4666, 0
  tail call void @llvm.assume(i1 %lcmp.mod4670)
  br label %.lr.ph.i.i.i434.i.i.epil

.lr.ph.i.i.i434.i.i.epil:                         ; preds = %.lr.ph.i.i.i434.i.i.epil, %.lr.ph.i.i.i434.i.i.epil.preheader
  %.sroa.0.08.i.i.i435.i.i.epil = phi ptr [ %i.jb, %.lr.ph.i.i.i434.i.i.epil ], [ %.sroa.0.08.i.i.i435.i.i.epil.init, %.lr.ph.i.i.i434.i.i.epil.preheader ] ; 3 uses
  %epil.iter4667 = phi i64 [ %epil.iter4667.next, %.lr.ph.i.i.i434.i.i.epil ], [ 0, %.lr.ph.i.i.i434.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i.epil, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !34391
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4667.next = add i64 %epil.iter4667, 1 ; 2 uses
  %epil.iter4667.cmp.not = icmp eq i64 %epil.iter4667.next, %xtraiter4666
  br i1 %epil.iter4667.cmp.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil, !llvm.loop !34394

._crit_edge.thread.i.i.i431.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i = phi ptr [ %i.iw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i426.i.i" ], [ %i.jj, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ], [ %i.jb, %.lr.ph.i.i.i434.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i432.i.i, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !34391
  br label %._crit_edge.i.i.i429.thread.i.i

.lr.ph.i.i.i434.i.i:                              ; preds = %.lr.ph.i.i.i434.i.i, %.lr.ph.i.i.i434.i.i.preheader.new
  %.sroa.0.08.i.i.i435.i.i = phi ptr [ %i.iw, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %i.jj, %.lr.ph.i.i.i434.i.i ] ; 17 uses
  %niter4672 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %niter4672.next.7, %.lr.ph.i.i.i434.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !34391
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jc, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !34391
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jd, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !34391
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.je, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !34391
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jf, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !34391
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jg, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !34391
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jh, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !34391
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ji, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !34391
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8320 ; 3 uses
  %niter4672.next.7 = add i64 %niter4672, 8       ; 2 uses
  %niter4672.ncmp.7 = icmp eq i64 %niter4672.next.7, %unroll_iter4671
  br i1 %niter4672.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i

._crit_edge.i.i.i429.thread.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  %.sroa.10.0.i.i.i427915.i.i = phi ptr [ %i.iw, %._crit_edge.thread.i.i.i431.i.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34395
  %i.jk = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !34395 ; 16 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i unwind label %bb.ak, !noalias !34365

.noexc444.i.i:                                    ; preds = %bb.aj
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i", %bb.ak
  %.sroa.1335.0.i.i = phi i64 [ %.sroa.0.0.i422.i.i, %bb.ak ], [ %.sroa.1335.1123199.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ]
  %.sroa.034.0.i.i = phi ptr [ %.sroa.10.0.i.i.i427915.i.i, %bb.ak ], [ %.sroa.034.1124197.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.12.1.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.12.3125195.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.026.1.i.i = phi ptr [ %i.it, %bb.ak ], [ %.sroa.026.3126193.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.14.2.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.14.4127191.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.016.2.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ak ], [ %.sroa.016.4128189.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.pn230.pn.pn.i.i = phi { ptr, i32 } [ %i.jn, %bb.ak ], [ %.pn230.pn202.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %i.jm = icmp eq i64 %.sroa.1335.0.i.i, 0
  br i1 %i.jm, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i) #38, !noalias !34365
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit446.i.i"

bb.ak:                                            ; preds = %bb.aj
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i"

bb.al:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.jk, i8 0, i64 32784, i1 false), !noalias !34365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !34365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ao, i8 0, i64 256, i1 false), !noalias !34365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !34365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.an, i8 0, i64 256, i1 false), !noalias !34365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !34365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.am, i8 0, i64 256, i1 false), !noalias !34365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !34365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.al, i8 0, i64 256, i1 false), !noalias !34365
  br label %bb.dk

.split.i.i:                                       ; preds = %bb.dn, %._crit_edge568.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge568.i.i ], [ %.sroa.0.0.i.i, %bb.dn ] ; 2 uses
  %.sroa.0.0579.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 4 uses
  %.sroa.012.0578.i.i = phi i64 [ %.sroa.012.1.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 7 uses
  %.sroa.018.0577.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 4 uses
  %.sroa.023.0576.i.i = phi i64 [ %.sroa.023.1.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 7 uses
  %.sroa.029.0575.i.i = phi i64 [ %i.un, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 2 uses
  %.sroa.043.0574.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i, %._crit_edge568.i.i ], [ 0, %bb.dn ]
  %.sroa.047.1573.i.i = phi i64 [ %i.uo, %._crit_edge568.i.i ], [ 0, %bb.dn ] ; 4 uses
  %.sroa.016.3572.i.i = phi ptr [ %.sroa.016.7.i.i, %._crit_edge568.i.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.dn ] ; 9 uses
  %.sroa.14.3571.i.i = phi i64 [ %.sroa.14.7.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 9 uses
  %.sroa.026.2570.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge568.i.i ], [ %i.it, %bb.dn ] ; 11 uses
  %.sroa.12.2569.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge568.i.i ], [ %i.hr, %bb.dn ] ; 11 uses
  %i.jo = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax836.i.i = tail call i64 @llvm.umin.i64(i64 %i.jo, i64 64)
  %i.jp = sub nuw i64 %.sroa.0.0.i.i, %.sroa.047.1573.i.i
  %.sroa.0.0.i447.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.jp, i64 64) ; 3 uses
  br label %.lr.ph557.i.i

.thread163.loopexit.i.i:                          ; preds = %._crit_edge.i.i
  %lpad.loopexit255.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread163.loopexit.split-lp.loopexit.i.i:        ; preds = %._crit_edge558.i.i
  %lpad.loopexit258.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke3970, %.invoke3968, %.invoke.i.i, %bb.ct, %bb.cl, %bb.at, %bb.ap
  %.sroa.044.1.ph.ph.ph.i.i = phi ptr [ %i.jk, %bb.ap ], [ %.sroa.044.2.i.i, %bb.at ], [ %i.jk, %.invoke.i.i ], [ %i.jk, %.invoke3968 ], [ %i.jk, %bb.cl ], [ %i.jk, %.invoke3970 ], [ %i.jk, %bb.ct ]
  %.sroa.1335.2.ph.ph.ph.i.i = phi i64 [ 0, %bb.ap ], [ 0, %bb.at ], [ %.sroa.0.0.i422.i.i, %.invoke.i.i ], [ %.sroa.0.0.i422.i.i, %.invoke3968 ], [ %.sroa.0.0.i422.i.i, %bb.cl ], [ %.sroa.0.0.i422.i.i, %.invoke3970 ], [ %.sroa.0.0.i422.i.i, %bb.ct ]
  %.sroa.034.2.ph.ph.ph.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ inttoptr (i64 8 to ptr), %bb.at ], [ %.sroa.10.0.i.i.i427915.i.i, %.invoke.i.i ], [ %.sroa.10.0.i.i.i427915.i.i, %.invoke3968 ], [ %.sroa.10.0.i.i.i427915.i.i, %bb.cl ], [ %.sroa.10.0.i.i.i427915.i.i, %.invoke3970 ], [ %.sroa.10.0.i.i.i427915.i.i, %bb.ct ]
  %.sroa.12.4.ph.ph.ph.i.i = phi i64 [ %.sroa.12.5.i.i, %bb.ap ], [ %.sroa.12.5.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.12.2569.i.i, %.invoke3968 ], [ %.sroa.12.2569.i.i, %bb.cl ], [ %.sroa.12.5.i.i, %.invoke3970 ], [ %.sroa.12.2569.i.i, %bb.ct ]
  %.sroa.026.4.ph.ph.ph.i.i = phi ptr [ %.sroa.026.5.i.i, %bb.ap ], [ %.sroa.026.5.i.i, %bb.at ], [ %i.it, %.invoke.i.i ], [ %.sroa.026.2570.i.i, %.invoke3968 ], [ %.sroa.026.2570.i.i, %bb.cl ], [ %.sroa.026.5.i.i, %.invoke3970 ], [ %.sroa.026.2570.i.i, %bb.ct ]
  %.sroa.14.5.ph.ph.ph.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.ap ], [ %.sroa.14.7.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.14.3571.i.i, %.invoke3968 ], [ %.sroa.14.3571.i.i, %bb.cl ], [ %.sroa.14.7.i.i, %.invoke3970 ], [ %.sroa.14.7.i.i, %bb.ct ]
  %.sroa.016.5.ph.ph.ph.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.ap ], [ %.sroa.016.7.i.i, %bb.at ], [ %.sroa.10.0.i.i.i.i.i, %.invoke.i.i ], [ %.sroa.016.3572.i.i, %.invoke3968 ], [ %.sroa.016.3572.i.i, %bb.cl ], [ %.sroa.016.7.i.i, %.invoke3970 ], [ %.sroa.016.7.i.i, %bb.ct ]
  %lpad.loopexit.split-lp259.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.am:                                            ; preds = %bb.ay, %._crit_edge584.i.i
  %.sroa.11.1.ph159.i.i = phi i1 [ false, %._crit_edge584.i.i ], [ true, %bb.ay ]
  %.sroa.044.1.ph160.i.i = phi ptr [ %.sroa.044.2.i.i, %._crit_edge584.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %.sroa.12.4.ph161.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge584.i.i ], [ 0, %bb.ay ]
  %.sroa.026.4.ph162.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge584.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i

bb.an:                                            ; preds = %._crit_edge568.i.i
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427915.i.i) #38, !noalias !34365
  %i.jq = shl i64 %i.un, 6
  %i.jr = lshr i64 %i.un, 1
  %i.js = mul i64 %i.jr, %i.un
  %.sroa.0.0.i448.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.js, i64 %i.jq) ; 5 uses
  %i.jt = add nuw i64 %.sroa.0.0.i448.i.i, 1      ; 2 uses
  %i.ju = icmp ugt i64 %.sroa.0.0.i448.i.i, 2048
  br i1 %i.ju, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jv = shl i64 %i.jt, 4                        ; 5 uses
  %i.jw = icmp ugt i64 %.sroa.0.0.i448.i.i, 1152921504606846974
  %i.jx = icmp ugt i64 %i.jv, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i = or i1 %i.jw, %i.jx
  br i1 %or.cond.i.i.i.i.i449.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i: ; preds = %bb.ao
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34403
  %i.jy = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.jv, i64 noundef range(i64 1, 9) 4) #38, !noalias !34403 ; 5 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %bb.ap, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, %bb.ao
  %.sroa.4.0.ph.i.i.i455.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i, i64 %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.noexc456.i.i:                                    ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i", %bb.an
  %.sroa.11.2.i.i = phi i64 [ %i.jt, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ 2049, %bb.an ]
  %.sroa.044.2.i.i = phi ptr [ %i.jy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i" ], [ %i.jk, %bb.an ] ; 4 uses
  %i.ka = shl i64 %i.un, 2                        ; 9 uses
  %i.kb = icmp ugt i64 %i.un, 4611686018427387903
  %i.kc = icmp ugt i64 %i.ka, 9223372036854775804
  %or.cond.i.i.i.i458.i.i = or i1 %i.kb, %i.kc
  br i1 %or.cond.i.i.i.i458.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i: ; preds = %bb.aq
  %i.kd = icmp eq i64 %i.ka, 0                    ; 2 uses
  br i1 %i.kd, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34411
  %i.ke = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34411 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kg = ptrtoint ptr %i.ke to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i461.i.i = phi i64 [ 4, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i, i64 %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.noexc462.i.i:                                    ; preds = %bb.at
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i
  %i.kh = add nsw i64 %i.jv, -16                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jy, i8 0, i64 %i.kh, i1 false), !noalias !34416
  %i.ki = getelementptr i8, ptr %i.jy, i64 %i.jv  ; 2 uses
  %scevgep11.i451.i.i = getelementptr i8, ptr %i.jy, i64 %i.kh
  store i32 0, ptr %scevgep11.i451.i.i, align 4, !noalias !34416
  %.sroa.55.0..sroa_idx.i452.i.i = getelementptr i8, ptr %i.ki, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i, align 4, !noalias !34416
  %.sroa.67.0..sroa_idx.i453.i.i = getelementptr i8, ptr %i.ki, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i, align 4, !noalias !34416
  %i.kj = icmp samesign ult i64 %.sroa.0.0.i448.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.kj)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.jk) #38, !noalias !34365
  br label %bb.aq

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  %.sroa.10.0.i.i460.i.i = phi i64 [ %i.kg, %bb.as ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i ]
  %i.kk = inttoptr i64 %.sroa.10.0.i.i460.i.i to ptr ; 13 uses
  %i.kl = icmp samesign ult i64 %i.un, 2305843009213693952
  tail call void @llvm.assume(i1 %i.kl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kk) ]
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ka
  %i.kn = icmp eq i64 %i.un, 0                    ; 3 uses
  br i1 %i.kn, label %._crit_edge584.i.i, label %.lr.ph583.i.i.preheader

.lr.ph583.i.i.preheader:                          ; preds = %bb.au
  %i.ko = add nsw i64 %i.ka, -4                   ; 2 uses
  %i.kp = lshr exact i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check3753 = icmp ult i64 %i.ko, 28
  br i1 %min.iters.check3753, label %.lr.ph583.i.i.preheader4460, label %vector.ph3754

vector.ph3754:                                    ; preds = %.lr.ph583.i.i.preheader
  %n.vec3755 = and i64 %i.kq, 9223372036854775800 ; 4 uses
  %i.kr = trunc i64 %n.vec3755 to i32
  %i.ks = shl i64 %n.vec3755, 2
  %i.kt = getelementptr i8, ptr %i.kk, i64 %i.ks
  br label %vector.body3756

vector.body3756:                                  ; preds = %vector.body3756, %vector.ph3754
  %index3757 = phi i64 [ 0, %vector.ph3754 ], [ %index.next3759, %vector.body3756 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3754 ], [ %vec.ind.next, %vector.body3756 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ku = shl i64 %index3757, 2
  %next.gep3758 = getelementptr i8, ptr %i.kk, i64 %i.ku ; 2 uses
  %i.kv = getelementptr i8, ptr %next.gep3758, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep3758, align 4, !noalias !34365
  store <4 x i32> %step.add, ptr %i.kv, align 4, !noalias !34365
  %index.next3759 = add nuw i64 %index3757, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.kw = icmp eq i64 %index.next3759, %n.vec3755
  br i1 %i.kw, label %middle.block3760, label %vector.body3756, !llvm.loop !34419

middle.block3760:                                 ; preds = %vector.body3756
  %cmp.n = icmp eq i64 %i.kq, %n.vec3755
  br i1 %cmp.n, label %._crit_edge584.i.i, label %.lr.ph583.i.i.preheader4460

.lr.ph583.i.i.preheader4460:                      ; preds = %.lr.ph583.i.i.preheader, %middle.block3760
  %.sroa.047.2581.i.i.ph = phi i32 [ 0, %.lr.ph583.i.i.preheader ], [ %i.kr, %middle.block3760 ]
  %.sroa.0135.0580.i.i.ph = phi ptr [ %i.kk, %.lr.ph583.i.i.preheader ], [ %i.kt, %middle.block3760 ]
  br label %.lr.ph583.i.i

.lr.ph583.i.i:                                    ; preds = %.lr.ph583.i.i.preheader4460, %.lr.ph583.i.i
  %.sroa.047.2581.i.i = phi i32 [ %i.kx, %.lr.ph583.i.i ], [ %.sroa.047.2581.i.i.ph, %.lr.ph583.i.i.preheader4460 ] ; 2 uses
  %.sroa.0135.0580.i.i = phi ptr [ %.sroa.0135.1.i.i, %.lr.ph583.i.i ], [ %.sroa.0135.0580.i.i.ph, %.lr.ph583.i.i.preheader4460 ] ; 2 uses
  %.sroa.0135.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0580.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2581.i.i, ptr %.sroa.0135.0580.i.i, align 4, !noalias !34365
  %i.kx = add i32 %.sroa.047.2581.i.i, 1
  %i.ky = icmp eq ptr %.sroa.0135.1.i.i, %i.km
  br i1 %i.ky, label %._crit_edge584.i.i, label %.lr.ph583.i.i, !llvm.loop !34420

._crit_edge584.i.i:                               ; preds = %.lr.ph583.i.i, %middle.block3760, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %i.kz = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %.sroa.12.5.i.i, ptr noalias noundef nonnull align 4 %i.ho, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 4 %i.kk, i64 noundef %i.un, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %.sroa.11.2.i.i, i64 noundef %i.un, i64 noundef %.sroa.0.0.i.i, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i)
          to label %bb.av unwind label %bb.am, !noalias !34365 ; 3 uses

bb.av:                                            ; preds = %._crit_edge584.i.i
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i) #38, !noalias !34365
  %i.la = icmp eq i64 %.sroa.12.5.i.i, 0
  br i1 %i.la, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i": ; preds = %bb.av
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i) #38, !noalias !34365
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i", %bb.av
  br i1 %i.kd, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34421
  %i.lb = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ka, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34421 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ld = ptrtoint ptr %i.lb to i64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i unwind label %bb.am, !noalias !34365

.noexc472.i.i:                                    ; preds = %bb.ay
  unreachable

end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.pu = load i32, ptr %i.pt, align 4, !noalias !34365, !noundef !27
  %i.pv = zext i32 %i.pu to i64                   ; 2 uses
  %i.pw = icmp ugt i64 %.sroa.14.7.i.i, %i.pv
  br i1 %i.pw, label %.noexc.i.us.i, label %.invoke1136.i.i

.noexc.i.us.i:                                    ; preds = %bb.by
  %i.px = icmp samesign ult i64 %.sroa.0141.1603.i.us.i, %i.kz ; 2 uses
  %i.py = zext i1 %i.px to i64
  %.sroa.0141.1.i.us.i = add nuw nsw i64 %.sroa.0141.1603.i.us.i, %i.py
  br i1 %i.px, label %.lr.ph604.i.us.i, label %._crit_edge605.i.i

._crit_edge605.loopexit.i.i.loopexit1023:         ; preds = %bb.cd
  %.pre = zext i32 %.sroa.089.1.i.i to i64
  br label %._crit_edge605.i.i

._crit_edge605.i.i:                               ; preds = %.noexc.i.us.i, %._crit_edge605.loopexit.i.i.loopexit1023, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.thread.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.i
  %i.pz = phi ptr [ %i.nu, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.thread.i ], [ %i.np, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.i ], [ %i.np, %._crit_edge605.loopexit.i.i.loopexit1023 ], [ %i.nu, %.noexc.i.us.i ]
  %.sroa.043.2.lcssa.i8590848.i = phi i64 [ %.sroa.043.1609.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.thread.i ], [ %i.su, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.i ], [ %i.su, %._crit_edge605.loopexit.i.i.loopexit1023 ], [ %.sroa.043.1609.i.i, %.noexc.i.us.i ]
  %.pre-phi.i.i = phi i64 [ %i.nw, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.thread.i ], [ %i.nr, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.i ], [ %.pre, %._crit_edge605.loopexit.i.i.loopexit1023 ], [ %i.nw, %.noexc.i.us.i ] ; 3 uses
  %.sroa.089.0.lcssa.i.i = phi i32 [ %.sroa.097.0.i84.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.thread.i ], [ %.sroa.097.0.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h99ee51219cdbd5f5E.exit249.i.i ], [ %.sroa.089.1.i.i, %._crit_edge605.loopexit.i.i.loopexit1023 ], [ %.sroa.097.0.i84.i, %.noexc.i.us.i ]
  store i32 %.sroa.089.0.lcssa.i.i, ptr %i.pz, align 4, !noalias !34365
  %i.qa = icmp samesign ugt i64 %i.un, %.pre-phi.i.i
  br i1 %i.qa, label %bb.bz, label %.invoke1136.i.i

bb.bz:                                            ; preds = %._crit_edge605.i.i
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.pre-phi.i.i ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !noalias !34365, !noundef !27
  %i.qd = icmp eq i32 %i.qc, -1
  br i1 %i.qd, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 %.sroa.084.0608.i.i, ptr %i.qb, align 4, !noalias !34365
  %i.qe = add i32 %.sroa.084.0608.i.i, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.084.1.i.i = phi i32 [ %i.qe, %bb.ca ], [ %.sroa.084.0608.i.i, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !34365
  %i.qf = icmp ult i64 %.sroa.0137.1610.i.i, %.sroa.0.0.i.i ; 2 uses
  %i.qg = zext i1 %i.qf to i64
  %.sroa.0137.1.i.i = add nuw i64 %.sroa.0137.1610.i.i, %i.qg
  br i1 %i.qf, label %bb.bx, label %bb.bb

.lr.ph604.i.i:                                    ; preds = %bb.cd, %.lr.ph604.i.preheader.i
  %.sroa.0141.1603.i.i = phi i64 [ %.sroa.0141.1.i.i, %bb.cd ], [ 1, %.lr.ph604.i.preheader.i ] ; 3 uses
  %.sroa.089.0602.i.i = phi i32 [ %.sroa.089.1.i.i, %bb.cd ], [ %.sroa.097.0.i.i, %.lr.ph604.i.preheader.i ]
  %.sroa.093.0601.i.i = phi float [ %.sroa.093.1.i.i, %bb.cd ], [ %i.pr, %.lr.ph604.i.preheader.i ] ; 2 uses
  %.sroa.0141.0600.i.i = phi i64 [ %.sroa.0141.1603.i.i, %bb.cd ], [ 0, %.lr.ph604.i.preheader.i ] ; 3 uses
  %i.qh = icmp samesign ult i64 %.sroa.0141.0600.i.i, %i.un
  br i1 %i.qh, label %bb.cc, label %.invoke1136.i.i

bb.cc:                                            ; preds = %.lr.ph604.i.i
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.sroa.0141.0600.i.i ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !noalias !34365, !noundef !27
  %i.qk = zext i32 %i.qj to i64                   ; 3 uses
  %i.ql = icmp ugt i64 %.sroa.14.7.i.i, %i.qk
  br i1 %i.ql, label %.noexc.i.i, label %.invoke1136.i.i

.noexc.i.i:                                       ; preds = %bb.cc
  %i.qm = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.016.7.i.i, i64 %i.qk ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !34482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.ak, i64 1040, i1 false), !alias.scope !34487, !noalias !34365
  %i.qn = load i64, ptr %i.lj, align 8, !alias.scope !34491, !noalias !34365, !noundef !27
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 1024 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !alias.scope !34494, !noalias !34365, !noundef !27
  %i.qq = add i64 %i.qp, %i.qn
  store i64 %i.qq, ptr %i.lj, align 8, !alias.scope !34497, !noalias !34365
  %bound0 = icmp ult ptr %i.aj, %i.qo
  %bound1 = icmp ult ptr %i.qm, %i.lj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph3763, label %vector.body3765

vector.body3765:                                  ; preds = %.noexc.i.i, %vector.body3765
  %index3766 = phi i64 [ %index.next3771.1, %vector.body3765 ], [ 0, %.noexc.i.i ] ; 4 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index3766 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 2 uses
  %wide.load3767 = load <4 x i32>, ptr %i.qr, align 8, !alias.scope !34500, !noalias !34503
  %wide.load3768 = load <4 x i32>, ptr %i.qs, align 8, !alias.scope !34500, !noalias !34503
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %index3766 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %wide.load3769 = load <4 x i32>, ptr %i.qt, align 4, !alias.scope !34505, !noalias !34365
  %wide.load3770 = load <4 x i32>, ptr %i.qu, align 4, !alias.scope !34505, !noalias !34365
  %i.qv = add <4 x i32> %wide.load3769, %wide.load3767
  %i.qw = add <4 x i32> %wide.load3770, %wide.load3768
  store <4 x i32> %i.qv, ptr %i.qr, align 8, !alias.scope !34500, !noalias !34503
  store <4 x i32> %i.qw, ptr %i.qs, align 8, !alias.scope !34500, !noalias !34503
  %index.next3771 = or disjoint i64 %index3766, 8 ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index.next3771 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16 ; 2 uses
  %wide.load3767.1 = load <4 x i32>, ptr %i.qx, align 8, !alias.scope !34500, !noalias !34503
  %wide.load3768.1 = load <4 x i32>, ptr %i.qy, align 8, !alias.scope !34500, !noalias !34503
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %index.next3771 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %wide.load3769.1 = load <4 x i32>, ptr %i.qz, align 4, !alias.scope !34505, !noalias !34365
  %wide.load3770.1 = load <4 x i32>, ptr %i.ra, align 4, !alias.scope !34505, !noalias !34365
  %i.rb = add <4 x i32> %wide.load3769.1, %wide.load3767.1
  %i.rc = add <4 x i32> %wide.load3770.1, %wide.load3768.1
  store <4 x i32> %i.rb, ptr %i.qx, align 8, !alias.scope !34500, !noalias !34503
  store <4 x i32> %i.rc, ptr %i.qy, align 8, !alias.scope !34500, !noalias !34503
  %index.next3771.1 = add nuw nsw i64 %index3766, 16 ; 2 uses
  %i.rd = icmp eq i64 %index.next3771.1, 256
  br i1 %i.rd, label %.noexc240.i.i, label %vector.body3765, !llvm.loop !34506

scalar.ph3763:                                    ; preds = %.noexc.i.i, %scalar.ph3763
  %.sroa.01.0.i263599.i.i = phi i64 [ %i.rw, %scalar.ph3763 ], [ 0, %.noexc.i.i ] ; 6 uses
  %i.re = or disjoint i64 %.sroa.01.0.i263599.i.i, 1 ; 2 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.sroa.01.0.i263599.i.i ; 2 uses
  %i.rg = load i32, ptr %i.rf, align 8, !noalias !34365, !noundef !27
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %.sroa.01.0.i263599.i.i
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !34365, !noundef !27
  %i.rj = add i32 %i.ri, %i.rg
  store i32 %i.rj, ptr %i.rf, align 8, !noalias !34365
  %i.rk = or disjoint i64 %.sroa.01.0.i263599.i.i, 2 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.re ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !noalias !34365, !noundef !27
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.re
  %i.ro = load i32, ptr %i.rn, align 4, !noalias !34365, !noundef !27
  %i.rp = add i32 %i.ro, %i.rm
  store i32 %i.rp, ptr %i.rl, align 4, !noalias !34365
  %i.rq = or disjoint i64 %.sroa.01.0.i263599.i.i, 3 ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.rk ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 8, !noalias !34365, !noundef !27
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rk
  %i.ru = load i32, ptr %i.rt, align 4, !noalias !34365, !noundef !27
  %i.rv = add i32 %i.ru, %i.rs
  store i32 %i.rv, ptr %i.rr, align 8, !noalias !34365
  %i.rw = add nuw nsw i64 %.sroa.01.0.i263599.i.i, 4 ; 2 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.rq ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !noalias !34365, !noundef !27
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.rq
  %i.sa = load i32, ptr %i.rz, align 4, !noalias !34365, !noundef !27
  %i.sb = add i32 %i.sa, %i.ry
  store i32 %i.sb, ptr %i.rx, align 4, !noalias !34365
  %exitcond842.not.i.i.3 = icmp eq i64 %i.rw, 256
  br i1 %exitcond842.not.i.i.3, label %.noexc240.i.i, label %scalar.ph3763, !llvm.loop !34507

.noexc240.i.i:                                    ; preds = %vector.body3765, %scalar.ph3763
  %i.sc = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.aj)
          to label %.noexc242.i.i unwind label %.loopexit.split-lp.thread.i.i, !noalias !34365

.noexc242.i.i:                                    ; preds = %.noexc240.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qm, i64 1032
  %i.se = load float, ptr %i.sd, align 8, !alias.scope !34508, !noalias !34365, !noundef !27
  %i.sf = fsub float %i.sc, %i.se                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !34482
  %i.sg = fcmp olt float %i.sf, %.sroa.093.0601.i.i
  br i1 %i.sg, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.noexc242.i.i
  %.sroa.093.1.i.i = phi float [ %i.sf, %bb.ce ], [ %.sroa.093.0601.i.i, %.noexc242.i.i ]
  %.sroa.089.1.i.i = phi i32 [ %i.sj, %bb.ce ], [ %.sroa.089.0602.i.i, %.noexc242.i.i ] ; 3 uses
  %i.sh = icmp samesign ult i64 %.sroa.0141.1603.i.i, %i.kz ; 2 uses
  %i.si = zext i1 %i.sh to i64
  %.sroa.0141.1.i.i = add nuw nsw i64 %.sroa.0141.1603.i.i, %i.si
  br i1 %i.sh, label %.lr.ph604.i.i, label %._crit_edge605.loopexit.i.i.loopexit1023

bb.ce:                                            ; preds = %.noexc242.i.i
  %i.sj = load i32, ptr %i.qi, align 4, !noalias !34365, !noundef !27
  br label %bb.cd

.invoke1136.i.i:                                  ; preds = %._crit_edge605.i.i, %._crit_edge595.i.thread.i, %._crit_edge595.i.i, %.lr.ph594.i.i, %bb.cc, %.lr.ph604.i.i, %bb.by, %.lr.ph604.i.us.i
  %i.sk = phi i64 [ %i.qk, %bb.cc ], [ %i.pv, %bb.by ], [ %.sroa.043.2592.i.i, %.lr.ph594.i.i ], [ %i.un, %.lr.ph604.i.us.i ], [ %.sroa.0141.0600.i.i, %.lr.ph604.i.i ], [ %.pre-phi.i.i, %._crit_edge605.i.i ], [ %i.nw, %._crit_edge595.i.thread.i ], [ %i.nr, %._crit_edge595.i.i ]
  %i.sl = phi i64 [ %.sroa.14.7.i.i, %bb.cc ], [ %.sroa.14.7.i.i, %bb.by ], [ %i.aq, %.lr.ph594.i.i ], [ %i.un, %.lr.ph604.i.us.i ], [ %i.un, %.lr.ph604.i.i ], [ %i.un, %._crit_edge605.i.i ], [ %.sroa.14.7.i.i, %._crit_edge595.i.thread.i ], [ %.sroa.14.7.i.i, %._crit_edge595.i.i ]
  %i.sm = phi ptr [ @1555, %bb.cc ], [ @1555, %bb.by ], [ @1556, %.lr.ph594.i.i ], [ @1554, %.lr.ph604.i.us.i ], [ @1554, %.lr.ph604.i.i ], [ @1553, %._crit_edge605.i.i ], [ @1552, %._crit_edge595.i.thread.i ], [ @1552, %._crit_edge595.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.sk, i64 noundef %i.sl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sm) #43
          to label %.cont1137.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.cont1137.i.i:                                    ; preds = %.invoke1136.i.i
  unreachable

bb.cf:                                            ; preds = %.lr.ph594.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.2592.i.i
  %i.so = load i8, ptr %i.sn, align 1, !alias.scope !34511, !noalias !34514, !noundef !27
  %i.sp = zext i8 %i.so to i64
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.sp ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !alias.scope !34515, !noalias !34365, !noundef !27
  %i.ss = add i32 %i.sr, 1
  store i32 %i.ss, ptr %i.sq, align 4, !alias.scope !34515, !noalias !34365
  %i.st = add nuw nsw i64 %i.nn, 1                ; 2 uses
  %i.su = add nuw i64 %.sroa.043.2592.i.i, 1      ; 3 uses
  %exitcond840.not.i.i = icmp eq i64 %i.st, %i.nl
  br i1 %exitcond840.not.i.i, label %._crit_edge595.i.i, label %.lr.ph594.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %bb.az
  %.sroa.1152.2.i.i = phi i64 [ 0, %bb.az ], [ %i.un, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.un, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.051.2.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.az ], [ %i.kk, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.kk, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.14.6.i.i = phi i64 [ 0, %bb.az ], [ %.sroa.14.7.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.14.7.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.016.6.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.az ], [ %.sroa.016.7.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.016.7.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.le, %bb.az ], [ %lpad.loopexit.split-lp251.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit250.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  br i1 %i.kn, label %.thread130.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i": ; preds = %.loopexit.split-lp.i.i, %.loopexit.split-lp.thread.i.i
  %.pn926.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.split-lp.thread.i.i ], [ %.pn.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.016.6925.i.i = phi ptr [ %.sroa.016.7.i.i, %.loopexit.split-lp.thread.i.i ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.14.6924.i.i = phi i64 [ %.sroa.14.7.i.i, %.loopexit.split-lp.thread.i.i ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.051.2923.i.i = phi ptr [ %i.kk, %.loopexit.split-lp.thread.i.i ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.1152.2922.i.i = phi i64 [ %i.un, %.loopexit.split-lp.thread.i.i ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.i.i ]
  tail call void @mi_free(ptr noundef nonnull %i.lf) #38, !noalias !34365
  br label %.thread130.i.i

._crit_edge558.i.i:                               ; preds = %bb.di
  %i.sv = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427915.i.i, i64 noundef %.sroa.0.0.i422.i.i, ptr noalias noundef nonnull align 4 %i.ao, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.am, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.an, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.jk, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i, i64 noundef %.sroa.0.0.i447.i.i, i64 noundef 64, i64 noundef 2048)
          to label %bb.cg unwind label %.thread163.loopexit.split-lp.loopexit.i.i, !noalias !34365 ; 5 uses

bb.cg:                                            ; preds = %._crit_edge558.i.i
  %i.sw = add i64 %i.sv, %.sroa.0.0579.i.i        ; 3 uses
  %i.sx = icmp ult i64 %.sroa.012.0578.i.i, %i.sw
  br i1 %i.sx, label %bb.ch, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"

bb.ch:                                            ; preds = %bb.cg
  %i.sy = icmp eq i64 %.sroa.012.0578.i.i, 0      ; 2 uses
  %..sroa.012.0.i.i = select i1 %i.sy, i64 %i.sw, i64 %.sroa.012.0578.i.i
  br label %bb.ci

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i", %bb.cg
  %.sroa.14.7.i.i = phi i64 [ %.sroa.14.3571.i.i, %bb.cg ], [ %.sroa.066.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.066.1.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i" ] ; 22 uses
  %.sroa.016.7.i.i = phi ptr [ %.sroa.016.3572.i.i, %bb.cg ], [ %.sroa.10.0.i.i.i520.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.10.0.i.i.i520.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i = phi i64 [ %.sroa.012.0578.i.i, %bb.cg ], [ %.sroa.066.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.066.1.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i" ]
  %i.sz = add i64 %i.sv, %.sroa.018.0577.i.i      ; 3 uses
  %i.ta = icmp ult i64 %.sroa.023.0576.i.i, %i.sz
  br i1 %i.ta, label %bb.co, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.066.1.i.i = phi i64 [ %..sroa.012.0.i.i, %bb.ch ], [ %i.tc, %bb.ci ] ; 13 uses
  %i.tb = icmp ult i64 %.sroa.066.1.i.i, %i.sw
  %i.tc = shl i64 %.sroa.066.1.i.i, 1
  br i1 %i.tb, label %bb.ci, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.td = mul i64 %.sroa.066.1.i.i, 1040          ; 3 uses
  %or.cond.i.i.i.i.i517.i.i = icmp ugt i64 %.sroa.066.1.i.i, 8868626958514207
  br i1 %or.cond.i.i.i.i.i517.i.i, label %bb.cl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i: ; preds = %bb.cj
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i", label %bb.ck

bb.ck:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34518
  %i.tf = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.td, i64 noundef range(i64 1, 9) 8) #38, !noalias !34518 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %bb.cl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i"

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.4.0.ph.i.i.i532.i.i = phi i64 [ 8, %bb.ck ], [ 0, %bb.cj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i532.i.i, i64 %i.td, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc533.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.noexc533.i.i:                                    ; preds = %bb.cl
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i": ; preds = %bb.ck, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i
  %.sroa.10.0.i.i.i520.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %i.tf, %bb.ck ] ; 7 uses
  %.sroa.4.0.i.i.i521.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %.sroa.066.1.i.i, %bb.ck ]
  %i.th = icmp samesign ule i64 %.sroa.066.1.i.i, %.sroa.4.0.i.i.i521.i.i
  tail call void @llvm.assume(i1 %i.th)
  %i.ti = icmp samesign ugt i64 %.sroa.066.1.i.i, 1
  br i1 %i.ti, label %.lr.ph.i.i.i527.i.i.preheader, label %.loopexit254.i.i

.lr.ph.i.i.i527.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i"
  %i.tj = add nsw i64 %.sroa.066.1.i.i, -1        ; 2 uses
  %i.tk = add nsw i64 %.sroa.066.1.i.i, -2
  %xtraiter4674 = and i64 %i.tj, 7                ; 3 uses
  %i.tl = icmp ult i64 %i.tk, 7
  br i1 %i.tl, label %.lr.ph.i.i.i527.i.i.epil.preheader, label %.lr.ph.i.i.i527.i.i.preheader.new

.lr.ph.i.i.i527.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i527.i.i.preheader
  %unroll_iter4679 = and i64 %i.tj, -8
  br label %.lr.ph.i.i.i527.i.i

.lr.ph.i.i.i527.i.i:                              ; preds = %.lr.ph.i.i.i527.i.i, %.lr.ph.i.i.i527.i.i.preheader.new
  %.sroa.0.08.i.i.i528.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %i.tt, %.lr.ph.i.i.i527.i.i ] ; 17 uses
  %niter4680 = phi i64 [ 0, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %niter4680.next.7, %.lr.ph.i.i.i527.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i, align 8, !noalias !34526
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tm, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1, align 8, !noalias !34526
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tn, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2, align 8, !noalias !34526
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.to, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3, align 8, !noalias !34526
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tp, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4, align 8, !noalias !34526
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tq, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5, align 8, !noalias !34526
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tr, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6, align 8, !noalias !34526
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ts, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7, align 8, !noalias !34526
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8320 ; 3 uses
  %niter4680.next.7 = add i64 %niter4680, 8       ; 2 uses
  %niter4680.ncmp.7 = icmp eq i64 %niter4680.next.7, %unroll_iter4679
  br i1 %niter4680.ncmp.7, label %.loopexit254.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i527.i.i

.loopexit254.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i527.i.i
  %lcmp.mod4676.not = icmp eq i64 %xtraiter4674, 0
  br i1 %lcmp.mod4676.not, label %.loopexit254.i.i, label %.lr.ph.i.i.i527.i.i.epil.preheader

.lr.ph.i.i.i527.i.i.epil.preheader:               ; preds = %.loopexit254.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.preheader
  %.sroa.0.08.i.i.i528.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader ], [ %i.tt, %.loopexit254.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4678 = icmp ne i64 %xtraiter4674, 0
  tail call void @llvm.assume(i1 %lcmp.mod4678)
  br label %.lr.ph.i.i.i527.i.i.epil

.lr.ph.i.i.i527.i.i.epil:                         ; preds = %.lr.ph.i.i.i527.i.i.epil, %.lr.ph.i.i.i527.i.i.epil.preheader
  %.sroa.0.08.i.i.i528.i.i.epil = phi ptr [ %i.tu, %.lr.ph.i.i.i527.i.i.epil ], [ %.sroa.0.08.i.i.i528.i.i.epil.init, %.lr.ph.i.i.i527.i.i.epil.preheader ] ; 3 uses
  %epil.iter4675 = phi i64 [ %epil.iter4675.next, %.lr.ph.i.i.i527.i.i.epil ], [ 0, %.lr.ph.i.i.i527.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i.epil, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil, align 8, !noalias !34526
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4675.next = add i64 %epil.iter4675, 1 ; 2 uses
  %epil.iter4675.cmp.not = icmp eq i64 %epil.iter4675.next, %xtraiter4674
  br i1 %epil.iter4675.cmp.not, label %.loopexit254.i.i, label %.lr.ph.i.i.i527.i.i.epil, !llvm.loop !34529

.loopexit254.i.i:                                 ; preds = %.loopexit254.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i"
  %.sroa.0.0.lcssa15.i.i.i525.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2a9367020f480ca3E.exit.i.i.i519.i.i" ], [ %i.tt, %.loopexit254.i.i.loopexit.unr-lcssa ], [ %i.tu, %.lr.ph.i.i.i527.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i525.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i525.i.i, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i, align 8, !noalias !34526
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3572.i.i) ]
  %.not227.i.i = icmp ugt i64 %.sroa.012.0578.i.i, %.sroa.14.3571.i.i
  br i1 %.not227.i.i, label %bb.cn, label %bb.cm, !prof !2494

bb.cm:                                            ; preds = %.loopexit254.i.i
  br i1 %i.sy, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cm
  %i.tv = mul nuw nsw i64 %.sroa.012.0578.i.i, 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i520.i.i, ptr nonnull readonly align 8 %.sroa.016.3572.i.i, i64 %i.tv, i1 false), !alias.scope !34530, !noalias !34365
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i"

bb.cn:                                            ; preds = %.loopexit254.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0578.i.i, i64 noundef %.sroa.14.3571.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1565) #43
          to label %bb.bp unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i", !noalias !34365

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i, %bb.cm
  %i.tw = icmp eq i64 %.sroa.14.3571.i.i, 0
  br i1 %i.tw, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1bce71309496fbdfE.exit.i.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.3572.i.i) #38, !noalias !34365
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"

bb.co:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"
  %i.tx = icmp eq i64 %.sroa.023.0576.i.i, 0
  %..sroa.023.0.i.i = select i1 %i.tx, i64 %i.sz, i64 %.sroa.023.0576.i.i
  br label %bb.cp

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i", %bb.cw, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i"
  %.sroa.12.5.i.i = phi i64 [ %.sroa.12.2569.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ] ; 10 uses
  %.sroa.026.5.i.i = phi ptr [ %.sroa.026.2570.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i" ], [ %i.uj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %i.uj, %bb.cw ] ; 11 uses
  %.sroa.023.1.i.i = phi i64 [ %.sroa.023.0576.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ]
  %.not615.i.i = icmp eq i64 %i.sv, 0
  br i1 %.not615.i.i, label %.preheader253.i.i, label %.lr.ph563.preheader.i.i

.lr.ph563.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"
  %reass.sub428.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i, i64 %.sroa.0.0579.i.i)
  %i.ty = add nuw nsw i64 %reass.sub428.i, 1
  %reass.sub429.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i, i64 %.sroa.018.0577.i.i)
  %i.tz = add nuw nsw i64 %reass.sub429.i, 1
  br label %.lr.ph563.i.i

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.sroa.070.1.i.i = phi i64 [ %..sroa.023.0.i.i, %bb.co ], [ %i.ub, %bb.cp ] ; 9 uses
  %i.ua = icmp ult i64 %.sroa.070.1.i.i, %i.sz
  %i.ub = shl i64 %.sroa.070.1.i.i, 1
  br i1 %i.ua, label %bb.cp, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.uc = shl i64 %.sroa.070.1.i.i, 2             ; 4 uses
  %i.ud = icmp ugt i64 %.sroa.070.1.i.i, 4611686018427387903
  %i.ue = icmp ugt i64 %i.uc, 9223372036854775804
  %or.cond.i.i.i.i538.i.i = or i1 %i.ud, %i.ue
  br i1 %or.cond.i.i.i.i538.i.i, label %bb.ct, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i: ; preds = %bb.cq
  %i.uf = icmp eq i64 %i.uc, 0
  br i1 %i.uf, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34537
  %i.ug = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.uc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34537 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ui = ptrtoint ptr %i.ug to i64
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i541.i.i = phi i64 [ 4, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i541.i.i, i64 %i.uc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc542.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.noexc542.i.i:                                    ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  %.sroa.10.0.i.i540.i.i = phi i64 [ %i.ui, %bb.cs ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i ]
  %i.uj = inttoptr i64 %.sroa.10.0.i.i540.i.i to ptr ; 5 uses
  %i.uk = icmp samesign ult i64 %.sroa.070.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.uk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2570.i.i) ]
  %.not229.i.i = icmp ugt i64 %.sroa.023.0576.i.i, %.sroa.12.2569.i.i
  br i1 %.not229.i.i, label %bb.cv, label %bb.cw, !prof !2494

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0576.i.i, i64 noundef %.sroa.12.2569.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.bp unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i", !noalias !34365

bb.cw:                                            ; preds = %bb.cu
  %i.ul = shl nuw nsw i64 %.sroa.023.0576.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uj, ptr nonnull readonly align 4 %.sroa.026.2570.i.i, i64 %i.ul, i1 false), !alias.scope !34542, !noalias !34546
  %i.um = icmp eq i64 %.sroa.12.2569.i.i, 0
  br i1 %i.um, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i": ; preds = %bb.cw
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2570.i.i) #38, !noalias !34365
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"

.preheader253.i.i:                                ; preds = %bb.dg, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"
  %.sroa.018.1.lcssa.i.i = phi i64 [ %.sroa.018.0577.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i" ], [ %i.vr, %bb.dg ]
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.0579.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i" ], [ %i.vk, %bb.dg ]
  %10 = trunc i64 %.sroa.029.0575.i.i to i32
  br label %bb.cx

._crit_edge568.i.i:                               ; preds = %bb.cz
  %i.un = add i64 %i.sv, %.sroa.029.0575.i.i      ; 23 uses
  %i.uo = add i64 %.sroa.047.1573.i.i, 64         ; 2 uses
  %i.up = icmp ult i64 %i.uo, %.sroa.0.0.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.up, label %.split.i.i, label %bb.an

bb.cx:                                            ; preds = %bb.cz, %.preheader253.i.i
  %i.uq = phi i64 [ 1, %.preheader253.i.i ], [ %i.vb, %bb.cz ] ; 3 uses
  %.sroa.0133.0566.i.i = phi i64 [ 0, %.preheader253.i.i ], [ %i.uq, %bb.cz ] ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0133.0566.i.i
  %i.us = load i32, ptr %i.ur, align 4, !noalias !34365, !noundef !27 ; 2 uses
  %i.ut = zext i32 %i.us to i64                   ; 2 uses
  %i.uu = icmp ult i32 %i.us, 64
  br i1 %i.uu, label %bb.cy, label %.invoke3970

bb.cy:                                            ; preds = %bb.cx
  %i.uv = or disjoint i64 %.sroa.0133.0566.i.i, %.sroa.047.1573.i.i ; 3 uses
  %i.uw = icmp ult i64 %i.uv, %.sroa.0.0.i.i
  br i1 %i.uw, label %bb.cz, label %.invoke3970

bb.cz:                                            ; preds = %bb.cy
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ut
  %i.uy = load i32, ptr %i.ux, align 4, !noalias !34365, !noundef !27
  %i.uz = add i32 %i.uy, %10
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.uv
  store i32 %i.uz, ptr %i.va, align 4, !noalias !34365
  %i.vb = add nuw nsw i64 %i.uq, 1
  %exitcond837.not.i.i = icmp eq i64 %i.uq, %umax836.i.i
  br i1 %exitcond837.not.i.i, label %._crit_edge568.i.i, label %bb.cx

.lr.ph563.i.i:                                    ; preds = %bb.dg, %.lr.ph563.preheader.i.i
  %i.vc = phi i64 [ %i.vu, %bb.dg ], [ 1, %.lr.ph563.preheader.i.i ] ; 6 uses
  %.sroa.0.1562.i.i = phi i64 [ %i.vk, %bb.dg ], [ %.sroa.0.0579.i.i, %.lr.ph563.preheader.i.i ] ; 3 uses
  %.sroa.018.1561.i.i = phi i64 [ %i.vr, %bb.dg ], [ %.sroa.018.0577.i.i, %.lr.ph563.preheader.i.i ] ; 3 uses
  %.sroa.0131.0560.i.i = phi i64 [ %i.vc, %bb.dg ], [ 0, %.lr.ph563.preheader.i.i ] ; 2 uses
  %exitcond830.not.i.i = icmp eq i64 %i.vc, 65
  br i1 %exitcond830.not.i.i, label %.invoke3970, label %bb.da

bb.da:                                            ; preds = %.lr.ph563.i.i
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0131.0560.i.i ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !noalias !34365, !noundef !27
  %i.vf = zext i32 %i.ve to i64                   ; 4 uses
  %i.vg = icmp samesign ugt i64 %.sroa.0.0.i422.i.i, %i.vf
  br i1 %i.vg, label %bb.dc, label %.invoke3970

bb.db:                                            ; preds = %bb.dd
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.dc:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  %exitcond832.not.i.i = icmp eq i64 %i.vc, %i.ty
  br i1 %exitcond832.not.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1562.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.bp unwind label %bb.db, !noalias !34365

bb.de:                                            ; preds = %bb.dc
  %i.vi = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427915.i.i, i64 %i.vf
  %i.vj = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.016.7.i.i, i64 %.sroa.0.1562.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vj, ptr noundef nonnull align 8 dereferenceable(1040) %i.vi, i64 1040, i1 false), !noalias !34365
  %i.vk = add nuw i64 %.sroa.0.1562.i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %exitcond834.not.i.i = icmp eq i64 %i.vc, %i.tz
  br i1 %exitcond834.not.i.i, label %.invoke3970, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.vf
  %i.vm = load i32, ptr %i.vl, align 4, !noalias !34365, !noundef !27
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i, i64 %.sroa.018.1561.i.i
  store i32 %i.vm, ptr %i.vn, align 4, !noalias !34365
  %i.vo = load i32, ptr %i.vd, align 4, !noalias !34365, !noundef !27 ; 2 uses
  %i.vp = zext i32 %i.vo to i64                   ; 2 uses
  %i.vq = icmp ult i32 %i.vo, 64
  br i1 %i.vq, label %bb.dg, label %.invoke3970

bb.dg:                                            ; preds = %bb.df
  %i.vr = add nuw i64 %.sroa.018.1561.i.i, 1      ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.vp
  %i.vt = trunc nuw nsw i64 %.sroa.0131.0560.i.i to i32
  store i32 %i.vt, ptr %i.vs, align 4, !noalias !34365
  %i.vu = add nuw nsw i64 %i.vc, 1
  %exitcond835.not.i.i = icmp eq i64 %i.vc, %i.sv
  br i1 %exitcond835.not.i.i, label %.preheader253.i.i, label %.lr.ph563.i.i

.invoke3970:                                      ; preds = %bb.df, %bb.de, %bb.da, %.lr.ph563.i.i, %bb.cy, %bb.cx
  %i.vv = phi i64 [ %i.uv, %bb.cy ], [ %i.ut, %bb.cx ], [ %i.vp, %bb.df ], [ 64, %.lr.ph563.i.i ], [ %i.vf, %bb.da ], [ %.sroa.018.1561.i.i, %bb.de ]
  %i.vw = phi i64 [ %.sroa.0.0.i.i, %bb.cy ], [ 64, %bb.cx ], [ 64, %bb.df ], [ 64, %.lr.ph563.i.i ], [ %.sroa.0.0.i422.i.i, %bb.da ], [ %.sroa.12.5.i.i, %bb.de ]
  %i.vx = phi ptr [ @1558, %bb.cy ], [ @1557, %bb.cx ], [ @1563, %bb.df ], [ @1559, %.lr.ph563.i.i ], [ @1560, %bb.da ], [ @1562, %bb.de ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vv, i64 noundef %i.vw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vx) #43
          to label %.cont3971 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.cont3971:                                        ; preds = %.invoke3970
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i": ; preds = %bb.cv
  %i.vy = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.uj) #38, !noalias !34365
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i": ; preds = %bb.cn
  %i.vz = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i520.i.i) #38, !noalias !34365
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.lr.ph557.i.i:                                    ; preds = %bb.di, %.split.i.i
  %.sroa.0127.1556.i.i = phi i64 [ %.sroa.0127.1.i.i, %bb.di ], [ 1, %.split.i.i ] ; 3 uses
  %.sroa.043.3555.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i, %bb.di ], [ %.sroa.043.0574.i.i, %.split.i.i ] ; 3 uses
  %.sroa.0127.0554.i.i = phi i64 [ %.sroa.0127.1556.i.i, %bb.di ], [ 0, %.split.i.i ] ; 6 uses
  %i.wa = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427915.i.i, i64 %.sroa.0127.0554.i.i ; 5 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1024
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.wa, i8 0, i64 1032, i1 false), !noalias !34365
  store float 3.402000e+38, ptr %i.wc, align 8, !alias.scope !34548, !noalias !34365
  %i.wd = add nuw nsw i64 %.sroa.0127.0554.i.i, %.sroa.047.1573.i.i ; 3 uses
  %i.we = icmp ult i64 %i.wd, %.sroa.0.0.i.i
  br i1 %i.we, label %bb.dh, label %.invoke3968

bb.dh:                                            ; preds = %.lr.ph557.i.i
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %i.wd
  %i.wg = load i32, ptr %i.wf, align 4, !noalias !34365, !noundef !27 ; 2 uses
  %.not.i167.i = icmp eq i32 %i.wg, 0
  br i1 %.not.i167.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dh
  %i.wh = zext i32 %i.wg to i64
  %reass.sub.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.3555.i.i)
  %i.wi = add nuw i64 %reass.sub.i, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.dj, %bb.dh
  %.sroa.043.4.lcssa.i.i = phi i64 [ %.sroa.043.3555.i.i, %bb.dh ], [ %i.xc, %bb.dj ] ; 2 uses
  %i.wj = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.wa)
          to label %bb.di unwind label %.thread163.loopexit.i.i, !noalias !34365

bb.di:                                            ; preds = %._crit_edge.i.i
  store float %i.wj, ptr %i.wc, align 8, !alias.scope !34551, !noalias !34365
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0127.0554.i.i
  %i.wl = trunc nuw nsw i64 %.sroa.0127.0554.i.i to i32 ; 2 uses
  store i32 %i.wl, ptr %i.wk, align 4, !noalias !34365
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0127.0554.i.i
  store i32 %i.wl, ptr %i.wm, align 4, !noalias !34365
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.0127.0554.i.i
  store i32 1, ptr %i.wn, align 4, !noalias !34365
  %i.wo = icmp samesign ult i64 %.sroa.0127.1556.i.i, %.sroa.0.0.i447.i.i ; 2 uses
  %i.wp = zext i1 %i.wo to i64
  %.sroa.0127.1.i.i = add nuw i64 %.sroa.0127.1556.i.i, %i.wp
  br i1 %i.wo, label %.lr.ph557.i.i, label %._crit_edge558.i.i

.lr.ph.i.i:                                       ; preds = %bb.dj, %.lr.ph.preheader.i.i
  %i.wq = phi i64 [ %i.xb, %bb.dj ], [ 0, %.lr.ph.preheader.i.i ]
  %i.wr = phi i64 [ %i.xd, %bb.dj ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.043.4553.i.i = phi i64 [ %i.xc, %bb.dj ], [ %.sroa.043.3555.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond828.not.i.i = icmp eq i64 %i.wr, %i.wi
  br i1 %exitcond828.not.i.i, label %.invoke3968, label %bb.dj

.invoke3968:                                      ; preds = %.lr.ph557.i.i, %.lr.ph.i.i
  %i.ws = phi i64 [ %.sroa.043.4553.i.i, %.lr.ph.i.i ], [ %i.wd, %.lr.ph557.i.i ]
  %i.wt = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %.lr.ph557.i.i ]
  %i.wu = phi ptr [ @1567, %.lr.ph.i.i ], [ @1566, %.lr.ph557.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ws, i64 noundef %i.wt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wu) #43
          to label %.cont3969 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.cont3969:                                        ; preds = %.invoke3968
  unreachable

bb.dj:                                            ; preds = %.lr.ph.i.i
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.4553.i.i
  %i.ww = load i8, ptr %i.wv, align 1, !alias.scope !34554, !noalias !34514, !noundef !27
  %i.wx = zext i8 %i.ww to i64
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %i.wx ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4, !alias.scope !34557, !noalias !34365, !noundef !27
  %i.xa = add i32 %i.wz, 1
  store i32 %i.xa, ptr %i.wy, align 4, !alias.scope !34557, !noalias !34365
  %i.xb = add nuw nsw i64 %i.wq, 1                ; 2 uses
  store i64 %i.xb, ptr %i.wb, align 8, !alias.scope !34560, !noalias !34365
  %i.xc = add nuw i64 %.sroa.043.4553.i.i, 1      ; 2 uses
  %i.xd = add nuw nsw i64 %i.wr, 1
  %exitcond829.not.i.i = icmp eq i64 %i.wr, %i.wh
  br i1 %exitcond829.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dk:                                            ; preds = %bb.dn, %bb.al
  %.sroa.047.0551.i.i = phi i64 [ 0, %bb.al ], [ %i.xi, %bb.dn ] ; 2 uses
  %.sroa.059.0550.i.i = phi i64 [ 0, %bb.al ], [ %.sroa.059.1.i.i, %bb.dn ] ; 5 uses
  %i.xe = icmp ult i64 %.sroa.059.0550.i.i, %.sroa.0.0.i.i
  br i1 %i.xe, label %bb.dl, label %.invoke.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.059.0550.i.i ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !noalias !34365, !noundef !27
  %i.xh = add i32 %i.xg, 1
  store i32 %i.xh, ptr %i.xf, align 4, !noalias !34365
  %i.xi = add nuw i64 %.sroa.047.0551.i.i, 1      ; 3 uses
  %i.xj = icmp eq i64 %i.xi, %i.aq                ; 2 uses
  br i1 %i.xj, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.xk = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.047.0551.i.i
  %i.xl = load i8, ptr %i.xk, align 1, !alias.scope !34351, !noalias !34563, !noundef !27
  %i.xm = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.xi
  %i.xn = load i8, ptr %i.xm, align 1, !alias.scope !34351, !noalias !34563, !noundef !27
  %.not238.i.i = icmp eq i8 %i.xl, %i.xn
  br i1 %.not238.i.i, label %bb.dn, label %bb.do

.invoke.i.i:                                      ; preds = %bb.dk
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0550.i.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34365

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.dn:                                            ; preds = %bb.do, %bb.dm
  %.sroa.059.1.i.i = phi i64 [ %i.xo, %bb.do ], [ %.sroa.059.0550.i.i, %bb.dm ]
  br i1 %i.xj, label %.split.i.i, label %bb.dk

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %i.xo = add nuw nsw i64 %.sroa.059.0550.i.i, 1
  br label %bb.dn

.thread130.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i", %.loopexit.split-lp.i.i, %bb.am
  %.pn230155.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.am ], [ %.pn.i.i, %.loopexit.split-lp.i.i ], [ %.pn926.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.am ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.016.6925.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.am ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.14.6924.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i = phi ptr [ %.sroa.026.4.ph162.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i = phi i64 [ %.sroa.12.4.ph161.i.i, %bb.am ], [ 0, %.loopexit.split-lp.i.i ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i = phi ptr [ %.sroa.044.1.ph160.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.11.0147.i.i = phi i1 [ %.sroa.11.1.ph159.i.i, %bb.am ], [ true, %.loopexit.split-lp.i.i ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.051.0146.i.i = phi ptr [ %i.kk, %bb.am ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.051.2923.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i = phi i64 [ %i.un, %bb.am ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.1152.2922.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %i.xp = icmp eq i64 %.sroa.1152.0145.i.i, 0
  br i1 %i.xp, label %bb.bn, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i": ; preds = %.thread130.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i) #38, !noalias !34365
  br label %bb.bn

bb.dp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i", %bb.af, %.thread86.i.i
  %.pn230.pn.pn.pn.pn.pn90.i.i = phi { ptr, i32 } [ %i.ij, %.thread86.i.i ], [ %.pn230.pn.pn.pn.pn100.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i" ], [ %.pn230.pn.pn.pn.i.i, %bb.af ] ; 2 uses
  %i.xq = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.xq, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i": ; preds = %bb.dp
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i) #38, !noalias !34365
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i": ; preds = %bb.z
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xs = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.xs, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i"
  %i.xt = phi ptr [ %i.ho, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i" ], [ %i.hj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85931.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i" ], [ %i.xr, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xt) ]
  tail call void @mi_free(ptr noundef nonnull %i.xt) #38, !noalias !34365
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.i"

bb.dq:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, %.split.i
  %.sroa.032.1424.i = phi i64 [ 1, %.split.i ], [ %.sroa.032.1.i, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0423.i = phi i64 [ %spec.store.select.i, %.split.i ], [ %i.ans, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34575)
  %i.xu = icmp eq i64 %.sroa.0.0423.i, 0
  br i1 %i.xu, label %.loopexit.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xv = add i64 %.sroa.0.0423.i, 7
  %i.xw = lshr i64 %i.xv, 3                       ; 8 uses
  %i.xx = icmp eq i64 %.sroa.0.0423.i, 1
  br i1 %i.xx, label %.preheader.i.i.preheader, label %bb.ds

.preheader.i.i.preheader:                         ; preds = %bb.dr
  br i1 %min.iters.check, label %.preheader.i.i.preheader4588, label %vector.body3731

.preheader.i.i.preheader4588:                     ; preds = %vector.body3731, %.preheader.i.i.preheader
  %.ph4589 = phi i64 [ 1, %.preheader.i.i.preheader ], [ %i.hb, %vector.body3731 ]
  %.sroa.066.0449.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %vector.body3731 ]
  br label %.preheader.i.i

vector.body3731:                                  ; preds = %.preheader.i.i.preheader, %vector.body3731
  %index3732 = phi i64 [ %index.next3733, %vector.body3731 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index3732 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  store <16 x i8> zeroinitializer, ptr %i.xy, align 1, !alias.scope !34575, !noalias !34577
  store <16 x i8> zeroinitializer, ptr %i.xz, align 1, !alias.scope !34575, !noalias !34577
  %index.next3733 = add nuw i64 %index3732, 32    ; 2 uses
  %i.ya = icmp eq i64 %index.next3733, %n.vec
  br i1 %i.ya, label %.preheader.i.i.preheader4588, label %vector.body3731, !llvm.loop !34578

bb.ds:                                            ; preds = %bb.dr
  %i.yb = shl nuw nsw i64 %.sroa.0.0423.i, 8      ; 2 uses
  %.not121.i.i = icmp samesign ugt i64 %i.yb, %i.ft
  br i1 %.not121.i.i, label %.invoke1149.i, label %.preheader360.i.i, !prof !2494

.invoke1149.i:                                    ; preds = %bb.gd, %.lr.ph403.i.preheader.i, %bb.ds, %bb.ee
  %i.yc = phi i64 [ %i.xw, %bb.ee ], [ %i.yh, %.lr.ph403.i.preheader.i ], [ %i.yb, %bb.ds ], [ %i.ans, %bb.gd ]
  %i.yd = phi i64 [ %i.fs, %bb.ee ], [ %i.ge, %.lr.ph403.i.preheader.i ], [ %i.ft, %bb.ds ], [ %spec.store.select.i, %bb.gd ]
  %i.ye = phi ptr [ @1577, %bb.ee ], [ @1541, %.lr.ph403.i.preheader.i ], [ @1545, %bb.ds ], [ @1930, %bb.gd ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.yc, i64 noundef %i.yd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ye) #43
          to label %.cont1150.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !34245
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !34596, !noalias !34579
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 12
  %.sroa.7.0.copyload.i.i = load float, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !34596, !noalias !34579
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 16
  %.sroa.8.0.copyload.i.i = load float, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !34596, !noalias !34579
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 20
  %.sroa.9.0.copyload.i.i = load float, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !34596, !noalias !34579
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 24
  %.sroa.10.0.copyload.i.i = load float, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !34596, !noalias !34579
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.akx, i64 28
  %.sroa.11.0.copyload.i.i = load float, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !34596, !noalias !34579
  %i.aky = load float, ptr %.sroa.0164.0412.i.i, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.akz = fadd float %.sroa.0.0.copyload.i.i, %i.aky ; 3 uses
  store float %i.akz, ptr %.sroa.0164.0412.i.i, align 4, !alias.scope !34571, !noalias !34580
  %i.ala = fcmp olt float %i.akz, %.sroa.029.0413.i.i
  br i1 %i.ala, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.alb = trunc i64 %i.abw to i8
  store i8 %i.alb, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.029.4.i.i = phi float [ %i.akz, %bb.ff ], [ %.sroa.029.0413.i.i, %bb.fe ] ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 4 ; 2 uses
  %i.ald = load float, ptr %i.alc, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.ale = fadd float %.sroa.5.0.copyload.i.i, %i.ald ; 3 uses
  store float %i.ale, ptr %i.alc, align 4, !alias.scope !34571, !noalias !34580
  %i.alf = fcmp olt float %i.ale, %.sroa.029.4.i.i
  br i1 %i.alf, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.alg = trunc i64 %i.abw to i8
  %i.alh = or disjoint i8 %i.alg, 1
  store i8 %i.alh, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.sroa.029.4.1.i.i = phi float [ %i.ale, %bb.fh ], [ %.sroa.029.4.i.i, %bb.fg ] ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 8 ; 2 uses
  %i.alj = load float, ptr %i.ali, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.alk = fadd float %.sroa.6.0.copyload.i.i, %i.alj ; 3 uses
  store float %i.alk, ptr %i.ali, align 4, !alias.scope !34571, !noalias !34580
  %i.all = fcmp olt float %i.alk, %.sroa.029.4.1.i.i
  br i1 %i.all, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.alm = trunc i64 %i.abw to i8
  %i.aln = or disjoint i8 %i.alm, 2
  store i8 %i.aln, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.029.4.2.i.i = phi float [ %i.alk, %bb.fj ], [ %.sroa.029.4.1.i.i, %bb.fi ] ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 12 ; 2 uses
  %i.alp = load float, ptr %i.alo, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.alq = fadd float %.sroa.7.0.copyload.i.i, %i.alp ; 3 uses
  store float %i.alq, ptr %i.alo, align 4, !alias.scope !34571, !noalias !34580
  %i.alr = fcmp olt float %i.alq, %.sroa.029.4.2.i.i
  br i1 %i.alr, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.als = trunc i64 %i.abw to i8
  %i.alt = or disjoint i8 %i.als, 3
  store i8 %i.alt, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.029.4.3.i.i = phi float [ %i.alq, %bb.fl ], [ %.sroa.029.4.2.i.i, %bb.fk ] ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 16 ; 2 uses
  %i.alv = load float, ptr %i.alu, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.alw = fadd float %.sroa.8.0.copyload.i.i, %i.alv ; 3 uses
  store float %i.alw, ptr %i.alu, align 4, !alias.scope !34571, !noalias !34580
  %i.alx = fcmp olt float %i.alw, %.sroa.029.4.3.i.i
  br i1 %i.alx, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aly = trunc i64 %i.abw to i8
  %i.alz = or disjoint i8 %i.aly, 4
  store i8 %i.alz, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sroa.029.4.4.i.i = phi float [ %i.alw, %bb.fn ], [ %.sroa.029.4.3.i.i, %bb.fm ] ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 20 ; 2 uses
  %i.amb = load float, ptr %i.ama, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.amc = fadd float %.sroa.9.0.copyload.i.i, %i.amb ; 3 uses
  store float %i.amc, ptr %i.ama, align 4, !alias.scope !34571, !noalias !34580
  %i.amd = fcmp olt float %i.amc, %.sroa.029.4.4.i.i
  br i1 %i.amd, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ame = trunc i64 %i.abw to i8
  %i.amf = or disjoint i8 %i.ame, 5
  store i8 %i.amf, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.029.4.5.i.i = phi float [ %i.amc, %bb.fp ], [ %.sroa.029.4.4.i.i, %bb.fo ] ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 24 ; 2 uses
  %i.amh = load float, ptr %i.amg, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.ami = fadd float %.sroa.10.0.copyload.i.i, %i.amh ; 3 uses
  store float %i.ami, ptr %i.amg, align 4, !alias.scope !34571, !noalias !34580
  %i.amj = fcmp olt float %i.ami, %.sroa.029.4.5.i.i
  br i1 %i.amj, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.amk = trunc i64 %i.abw to i8
  %i.aml = or disjoint i8 %i.amk, 6
  store i8 %i.aml, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.029.4.6.i.i = phi float [ %i.ami, %bb.fr ], [ %.sroa.029.4.5.i.i, %bb.fq ] ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 28 ; 2 uses
  %i.amn = load float, ptr %i.amm, align 4, !alias.scope !34571, !noalias !34580, !noundef !27
  %i.amo = fadd float %.sroa.11.0.copyload.i.i, %i.amn ; 3 uses
  store float %i.amo, ptr %i.amm, align 4, !alias.scope !34571, !noalias !34580
  %i.amp = fcmp olt float %i.amo, %.sroa.029.4.6.i.i
  br i1 %i.amp, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.amq = trunc i64 %i.abw to i8
  %i.amr = or disjoint i8 %i.amq, 7
  store i8 %i.amr, ptr %i.abn, align 1, !alias.scope !34575, !noalias !34577
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.029.4.7.i.i = phi float [ %i.amo, %bb.ft ], [ %.sroa.029.4.6.i.i, %bb.fs ] ; 2 uses
  %i.ams = icmp eq ptr %i.abu, %i.yl
  br i1 %i.ams, label %._crit_edge416.i.i, label %.lr.ph415.i.i

bb.fv:                                            ; preds = %bb.fx, %.split.i176.i
  %i.amt = phi i64 [ 1, %.split.i176.i ], [ %i.and, %bb.fx ] ; 4 uses
  %.sroa.071.0400.i.i = phi i64 [ 0, %.split.i176.i ], [ %i.amt, %bb.fx ] ; 4 uses
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.071.0400.i.i
  %i.amv = load float, ptr %i.amu, align 4, !alias.scope !34569, !noalias !34579, !noundef !27
  %exitcond481.not.i.i = icmp eq i64 %i.amt, %i.gr
  br i1 %exitcond481.not.i.i, label %.invoke.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.sroa.071.0400.i.i
  %i.amw = load i32, ptr %gep.i.i, align 4, !alias.scope !34567, !noalias !34600, !noundef !27
  %i.amx = zext i32 %i.amw to i64
  %i.amy = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.amx)
          to label %.noexc196.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i", !noalias !34245

.noexc196.i:                                      ; preds = %bb.fw
  %i.amz = add nuw nsw i64 %.sroa.071.0400.i.i, %i.yj ; 3 uses
  %i.ana = icmp ult i64 %i.amz, %i.ft
  br i1 %i.ana, label %bb.fx, label %.invoke.i

bb.fx:                                            ; preds = %.noexc196.i
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.amz
  %i.anc = fsub float %i.amv, %i.amy
  store float %i.anc, ptr %i.anb, align 4, !alias.scope !34569, !noalias !34579
  %i.and = add nuw nsw i64 %i.amt, 1
  %exitcond482.not.i.i = icmp eq i64 %i.amt, %.sroa.0.0423.i
  br i1 %exitcond482.not.i.i, label %.loopexit358.i.i, label %bb.fv

bb.fy:                                            ; preds = %bb.dt
  %i.ane = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.069.0399.i.i
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 1024
  %i.ang = load i64, ptr %i.anf, align 8, !alias.scope !34601, !noalias !34600, !noundef !27
  %i.anh = and i64 %i.ang, 4294967295             ; 3 uses
  %i.ani = icmp samesign ult i64 %i.anh, 256
  br i1 %i.ani, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.anj = uitofp nneg i64 %i.anh to float
  %i.ank = tail call float @llvm.log2.f32(float %i.anj)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.016.0.i.i = phi float [ %i.ano, %bb.gb ], [ %i.ank, %bb.fz ]
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.069.0399.i.i
  store float %.sroa.016.0.i.i, ptr %i.anl, align 4, !alias.scope !34569, !noalias !34579
  %i.anm = add nuw nsw i64 %i.yf, 1
  %exitcond479.not.i.i = icmp eq i64 %i.yf, %.sroa.0.0423.i
  br i1 %exitcond479.not.i.i, label %.split.i176.i, label %bb.dt

bb.gb:                                            ; preds = %bb.fy
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.anh
  %i.ano = load float, ptr %i.ann, align 4, !noalias !34586, !noundef !27
  br label %bb.ga

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader4588, %bb.gc
  %i.anp = phi i64 [ %i.anr, %bb.gc ], [ %.ph4589, %.preheader.i.i.preheader4588 ] ; 4 uses
  %.sroa.066.0449.i.i = phi i64 [ %i.anp, %bb.gc ], [ %.sroa.066.0449.i.i.ph, %.preheader.i.i.preheader4588 ] ; 2 uses
  %exitcond487.not.i.i = icmp eq i64 %i.anp, %i.gv
  br i1 %exitcond487.not.i.i, label %.invoke.i, label %bb.gc

bb.gc:                                            ; preds = %.preheader.i.i
  %i.anq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.066.0449.i.i
  store i8 0, ptr %i.anq, align 1, !alias.scope !34575, !noalias !34577
  %i.anr = add i64 %i.anp, 1
  %exitcond488.not.i.i = icmp eq i64 %i.anp, %i.aq
  br i1 %exitcond488.not.i.i, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !34604

.loopexit.i:                                      ; preds = %bb.dx, %bb.gc, %bb.dq
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.dq ], [ 1, %bb.gc ], [ %.sroa.03.1.i.i, %bb.dx ] ; 31 uses
  %i.ans = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.fp, i64 noundef %i.aq, i64 noundef %i.aq, ptr noalias noundef nonnull align 2 %i.gn, i64 noundef %spec.store.select.i, i64 noundef %.sroa.0.0423.i)
          to label %bb.gd unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i", !noalias !34245 ; 5 uses

bb.gd:                                            ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34610)
  %.not.i.i202.i = icmp ugt i64 %i.ans, %spec.store.select.i
  br i1 %.not.i.i202.i, label %.invoke1149.i, label %bb.ge, !prof !2494

bb.ge:                                            ; preds = %bb.gd
  %.idx.i.i203.i = mul i64 %i.ans, 1040           ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i203.i
  %i.anu = icmp eq i64 %i.ans, 0
  br i1 %i.anu, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i204.i.preheader

.lr.ph.i.i204.i.preheader:                        ; preds = %bb.ge
  %i.anv = add i64 %.idx.i.i203.i, -1040          ; 2 uses
  %i.anw = udiv i64 %i.anv, 1040
  %i.anx = add nuw nsw i64 %i.anw, 1
  %xtraiter4656 = and i64 %i.anx, 7               ; 2 uses
  %lcmp.mod4657.not = icmp eq i64 %xtraiter4656, 0
  br i1 %lcmp.mod4657.not, label %.lr.ph.i.i204.i.prol.loopexit, label %.lr.ph.i.i204.i.prol

.lr.ph.i.i204.i.prol:                             ; preds = %.lr.ph.i.i204.i.preheader, %.lr.ph.i.i204.i.prol
  %.sroa.02.05.i.i205.i.prol = phi ptr [ %i.any, %.lr.ph.i.i204.i.prol ], [ %i.bd, %.lr.ph.i.i204.i.preheader ] ; 3 uses
  %prol.iter4658 = phi i64 [ %prol.iter4658.next, %.lr.ph.i.i204.i.prol ], [ 0, %.lr.ph.i.i204.i.preheader ]
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i.prol, i64 1040 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i205.i.prol, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.anz, align 8, !alias.scope !34616, !noalias !34615
  %prol.iter4658.next = add i64 %prol.iter4658, 1 ; 2 uses
  %prol.iter4658.cmp.not = icmp eq i64 %prol.iter4658.next, %xtraiter4656
  br i1 %prol.iter4658.cmp.not, label %.lr.ph.i.i204.i.prol.loopexit, label %.lr.ph.i.i204.i.prol, !llvm.loop !34619

.lr.ph.i.i204.i.prol.loopexit:                    ; preds = %.lr.ph.i.i204.i.prol, %.lr.ph.i.i204.i.preheader
  %.sroa.02.05.i.i205.i.unr = phi ptr [ %i.bd, %.lr.ph.i.i204.i.preheader ], [ %i.any, %.lr.ph.i.i204.i.prol ]
  %i.aoa = icmp ult i64 %i.anv, 7280
  br i1 %i.aoa, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i204.i

.lr.ph.i.i204.i:                                  ; preds = %.lr.ph.i.i204.i.prol.loopexit, %.lr.ph.i.i204.i
  %.sroa.02.05.i.i205.i = phi ptr [ %i.aop, %.lr.ph.i.i204.i ], [ %.sroa.02.05.i.i205.i.unr, %.lr.ph.i.i204.i.prol.loopexit ] ; 17 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 1040
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i205.i, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aoc, align 8, !alias.scope !34616, !noalias !34615
  %i.aod = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 2080
  %i.aoe = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aob, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aoe, align 8, !alias.scope !34616, !noalias !34615
  %i.aof = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 3120
  %i.aog = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aod, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aog, align 8, !alias.scope !34616, !noalias !34615
  %i.aoh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 4160
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aof, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aoi, align 8, !alias.scope !34616, !noalias !34615
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 5200
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aoh, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aok, align 8, !alias.scope !34616, !noalias !34615
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 6240
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aoj, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aom, align 8, !alias.scope !34616, !noalias !34615
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 7280
  %i.aoo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aol, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aoo, align 8, !alias.scope !34616, !noalias !34615
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 8320 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aon, i8 0, i64 1032, i1 false), !alias.scope !34612, !noalias !34615
  store float 3.402000e+38, ptr %i.aoq, align 8, !alias.scope !34616, !noalias !34615
  %i.aor = icmp eq ptr %i.aop, %i.ant
  br i1 %i.aor, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, label %.lr.ph.i.i204.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader: ; preds = %.lr.ph.i.i204.i.prol.loopexit, %.lr.ph.i.i204.i, %bb.ge
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader, %bb.gf
  %.sroa.01.010.i.i = phi i64 [ %i.aov, %bb.gf ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i.preheader ] ; 3 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.01.010.i.i
  %i.aot = load i8, ptr %i.aos, align 1, !alias.scope !34608, !noalias !34620, !noundef !27
  %i.aou = zext i8 %i.aot to i64                  ; 3 uses
  %.not102.i = icmp samesign ult i64 %i.az, %i.aou
  br i1 %.not102.i, label %.invoke.i, label %bb.gf

bb.gf:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i
  %i.aov = add nuw i64 %.sroa.01.010.i.i, 1       ; 2 uses
  %i.aow = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.aou ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.010.i.i
  %i.aoy = load i8, ptr %i.aox, align 1, !alias.scope !34621, !noalias !34624, !noundef !27
  %i.aoz = zext i8 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aow, i64 %i.aoz ; 2 uses
  %i.apb = load i32, ptr %i.apa, align 4, !alias.scope !34625, !noalias !34615, !noundef !27
  %i.apc = add i32 %i.apb, 1
  store i32 %i.apc, ptr %i.apa, align 4, !alias.scope !34625, !noalias !34615
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aow, i64 1024 ; 2 uses
  %i.ape = load i64, ptr %i.apd, align 8, !alias.scope !34628, !noalias !34615, !noundef !27
  %i.apf = add i64 %i.ape, 1
  store i64 %i.apf, ptr %i.apd, align 8, !alias.scope !34631, !noalias !34615
  %exitcond17.not.i.i = icmp eq i64 %i.aov, %i.aq
  br i1 %exitcond17.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i

.invoke.i:                                        ; preds = %bb.dt, %.lr.ph434.split.i.i, %.lr.ph447.i.i, %.preheader.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i, %.noexc196.i, %bb.fv, %.lr.ph424.preheader.i.i, %.lr.ph424.i.i.1, %.lr.ph424.i.i.2, %.lr.ph424.i.i.3, %.lr.ph424.i.i.4, %.lr.ph424.i.i.5, %.lr.ph424.i.i.6, %.lr.ph430.i.i
  %i.apg = phi i64 [ %i.aou, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ %i.abb, %.lr.ph447.i.i ], [ %i.aii, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %.sroa.066.0449.i.i, %.preheader.i.i ], [ %i.aaf, %.lr.ph424.i.i.6 ], [ %.sroa.071.0400.i.i, %bb.fv ], [ %i.yr, %.lr.ph424.preheader.i.i ], [ %i.yw, %.lr.ph424.i.i.1 ], [ %i.ze, %.lr.ph424.i.i.2 ], [ %i.zn, %.lr.ph424.i.i.3 ], [ %i.zt, %.lr.ph424.i.i.4 ], [ %i.zz, %.lr.ph424.i.i.5 ], [ %i.amz, %.noexc196.i ], [ %.sroa.069.0399.i.i, %bb.dt ]
  %i.aph = phi i64 [ %spec.store.select.i, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ %i.ge, %.lr.ph447.i.i ], [ %i.ge, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %i.aq, %.preheader.i.i ], [ %i.fs, %.lr.ph424.preheader.i.i ], [ %spec.store.select.i, %bb.fv ], [ %i.fs, %.lr.ph424.i.i.6 ], [ %i.fs, %.lr.ph424.i.i.5 ], [ %i.fs, %.lr.ph424.i.i.4 ], [ %i.fs, %.lr.ph424.i.i.3 ], [ %i.fs, %.lr.ph424.i.i.2 ], [ %i.fs, %.lr.ph424.i.i.1 ], [ %i.ft, %.noexc196.i ], [ %spec.store.select.i, %bb.dt ]
  %i.api = phi ptr [ @1574, %_ZN6brotli3enc9histogram15ClearHistograms17h1aacda452d1c7728E.exit.i.i ], [ @1531, %.lr.ph447.i.i ], [ @1576, %.lr.ph430.i.i ], [ @1532, %.lr.ph434.split.i.i ], [ @1546, %.preheader.i.i ], [ @1537, %.lr.ph424.preheader.i.i ], [ @1542, %bb.fv ], [ @1537, %.lr.ph424.i.i.6 ], [ @1537, %.lr.ph424.i.i.5 ], [ @1537, %.lr.ph424.i.i.4 ], [ @1537, %.lr.ph424.i.i.3 ], [ @1537, %.lr.ph424.i.i.2 ], [ @1537, %.lr.ph424.i.i.1 ], [ @1543, %.noexc196.i ], [ @1544, %bb.dt ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.apg, i64 noundef %i.aph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.api) #43
          to label %.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !34245

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i": ; preds = %bb.fw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i": ; preds = %.loopexit.i
  %lpad.loopexit111.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i": ; preds = %.invoke.i, %.split440.us.i.invoke.i, %.invoke1149.i
  %lpad.loopexit.split-lp112.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i"
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i" ], [ %lpad.loopexit111.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i" ], [ %lpad.loopexit.split-lp112.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i" ]
  call void @mi_free(ptr noundef nonnull %i.gn) #38, !noalias !34245
  br label %bb.gg

bb.gg:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i", %.thread55.i
  %.pn62.i = phi { ptr, i32 } [ %i.gp, %.thread55.i ], [ %lpad.phi.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i" ]
  br i1 %i.gg, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i211.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i211.i": ; preds = %bb.gg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @mi_free(ptr noundef nonnull %i.gl) #38, !noalias !34245
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i211.i", %bb.gg
  call void @mi_free(ptr noundef nonnull %i.fz) #38, !noalias !34245
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i", %.thread39.i
  %.pn.pn.pn44.i = phi { ptr, i32 } [ %i.gd, %.thread39.i ], [ %i.gk, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i" ], [ %.pn62.i, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i" ]
  call void @mi_free(ptr noundef nonnull %i.fv) #38, !noalias !34245
  call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !34245
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %bb.dp, %.body.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.xr, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i, %bb.dp ], [ %.pn230.pn.pn.pn.pn.pn.pn85931.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i" ]
  tail call void @mi_free(ptr noundef nonnull %i.fp) #38, !noalias !34245
  br label %.body

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.thread.i", %.thread.i
  %.pn.pn.pn.pn.pn38.i = phi { ptr, i32 } [ %i.bu, %.thread.i ], [ %.pn.pn.pn44.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i" ], [ %i.fx, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.thread.i" ]
  call void @mi_free(ptr noundef nonnull %i.bd) #38, !noalias !34245
  br label %.body

bb.gh:                                            ; preds = %bb.i
  %i.apj = icmp eq i64 %.val111.i, 0              ; 2 uses
  %spec.select.i = select i1 %i.apj, i64 %i.bs, i64 %.val111.i
  br label %bb.gi

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit224.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i", %bb.gk, %bb.i
  %.val.i = phi ptr [ %i.apq, %bb.gk ], [ %i.apq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i" ], [ %.val110.i, %bb.i ]
  %.val63.i = phi i64 [ %.sroa.014.1.i, %bb.gk ], [ %.sroa.014.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i" ], [ %.val111.i, %bb.i ] ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val90.i = load ptr, ptr %i.apk, align 8, !alias.scope !34235, !noalias !34232, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val91.i = load i64, ptr %i.apl, align 8, !alias.scope !34235, !noalias !34232, !noundef !27 ; 5 uses
  %i.apm = icmp ult i64 %.val91.i, %i.bs
  br i1 %i.apm, label %bb.gl, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i"

bb.gi:                                            ; preds = %bb.gi, %bb.gh
  %.sroa.014.1.i = phi i64 [ %spec.select.i, %bb.gh ], [ %i.apo, %bb.gi ] ; 9 uses
  %i.apn = icmp ult i64 %.sroa.014.1.i, %i.bs
  %i.apo = shl i64 %.sroa.014.1.i, 1
  br i1 %i.apn, label %bb.gi, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.app = icmp slt i64 %.sroa.014.1.i, 0
  br i1 %i.app, label %.invoke2925, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i217.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i217.i: ; preds = %bb.gj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34634
  %i.apq = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !34634 ; 5 uses
  %i.apr = icmp eq ptr %i.apq, null
  br i1 %i.apr, label %.invoke2925, label %bb.gk

bb.gk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i217.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apq, ptr nonnull readonly align 1 %.val110.i, i64 %.val111.i, i1 false), !alias.scope !34639, !noalias !34643
  store ptr %i.apq, ptr %7, align 8, !alias.scope !34235, !noalias !34232
  store i64 %.sroa.014.1.i, ptr %i.bp, align 8, !alias.scope !34235, !noalias !34232
  br i1 %i.apj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit224.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i"
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a

bb.hu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i214
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bav, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc420.i.i396 unwind label %.thread93.i.i395, !noalias !34805

.noexc420.i.i396:                                 ; preds = %bb.hu
  unreachable

bb.hv:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i262", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"
  %i.baz = icmp eq i64 %.sroa.14.1.i.i259, 0
  br i1 %i.baz, label %bb.lh, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i": ; preds = %.thread93.i.i395, %bb.hv
  %.pn230.pn.pn.pn.pn100.i.i263 = phi { ptr, i32 } [ %i.bba, %.thread93.i.i395 ], [ %.pn230.pn.pn.pn.i.i261, %bb.hv ]
  %.sroa.016.099.i.i264 = phi ptr [ %.sroa.10.0.i.i.i.i.i210, %.thread93.i.i395 ], [ %.sroa.016.1.i.i260, %bb.hv ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.099.i.i264) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.016.099.i.i264) #38, !noalias !34805
  br label %bb.lh

.thread93.i.i395:                                 ; preds = %bb.hu
  %i.bba = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i": ; preds = %bb.jd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248", %bb.hw
  %.sroa.12.0.i.i257 = phi i64 [ %i.bab, %bb.hw ], [ %.sroa.12.1.i.i251, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248" ], [ %.sroa.12.1.i.i251, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.12.3151.i.i311, %bb.jd ]
  %.sroa.026.0.i.i258 = phi ptr [ %i.bbd, %bb.hw ], [ %.sroa.026.1.i.i252, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248" ], [ %.sroa.026.1.i.i252, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.026.3152.i.i310, %bb.jd ] ; 2 uses
  %.sroa.14.1.i.i259 = phi i64 [ %i.bab, %bb.hw ], [ %.sroa.14.2.i.i253, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248" ], [ %.sroa.14.2.i.i253, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.14.4153.i.i309, %bb.jd ]
  %.sroa.016.1.i.i260 = phi ptr [ %.sroa.10.0.i.i.i.i.i210, %bb.hw ], [ %.sroa.016.2.i.i254, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248" ], [ %.sroa.016.2.i.i254, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.016.4154.i.i308, %bb.jd ]
  %.pn230.pn.pn.pn.i.i261 = phi { ptr, i32 } [ %i.bbc, %bb.hw ], [ %.pn230.pn.pn.i.i255, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248" ], [ %.pn230.pn.pn.i.i255, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.pn230155.i.i307, %bb.jd ] ; 2 uses
  %i.bbb = icmp eq i64 %.sroa.12.0.i.i257, 0
  br i1 %i.bbb, label %bb.hv, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i262"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i262": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i258) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.026.0.i.i258) #38, !noalias !34805
  br label %bb.hv

bb.hw:                                            ; preds = %bb.hy
  %i.bbc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217: ; preds = %bb.ht, %._crit_edge.i.i.i.i.i212
  %.sroa.10.0.i.i418.i.i218 = phi i64 [ %i.bay, %bb.ht ], [ 4, %._crit_edge.i.i.i.i.i212 ]
  %i.bbd = inttoptr i64 %.sroa.10.0.i.i418.i.i218 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i219 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i204, i64 64) ; 17 uses
  %i.bbe = mul nuw nsw i64 %.sroa.0.0.i422.i.i219, 2832 ; 2 uses
  %i.bbf = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.bbf, label %._crit_edge.i.i.i429.thread.i.i228, label %bb.hx

bb.hx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34823
  %i.bbg = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bbe, i64 noundef range(i64 1, 9) 8) #38, !noalias !34823 ; 5 uses
  %i.bbh = icmp eq ptr %i.bbg, null
  br i1 %i.bbh, label %bb.hy, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i"

bb.hy:                                            ; preds = %bb.hx
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bbe, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc440.i.i394 unwind label %bb.hw, !noalias !34805

.noexc440.i.i394:                                 ; preds = %bb.hy
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i": ; preds = %bb.hx
  %.not1174.i.i = icmp eq i64 %.sroa.0.0.i.i204, 1
  br i1 %.not1174.i.i, label %._crit_edge.thread.i.i.i431.i.i225, label %.lr.ph.i.i.i434.i.i220.preheader

.lr.ph.i.i.i434.i.i220.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i"
  %i.bbi = add nsw i64 %.sroa.0.0.i422.i.i219, -1 ; 2 uses
  %i.bbj = add nsw i64 %.sroa.0.0.i422.i.i219, -2
  %xtraiter4704 = and i64 %i.bbi, 7               ; 3 uses
  %i.bbk = icmp ult i64 %i.bbj, 7
  br i1 %i.bbk, label %.lr.ph.i.i.i434.i.i220.epil.preheader, label %.lr.ph.i.i.i434.i.i220.preheader.new

.lr.ph.i.i.i434.i.i220.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i220.preheader
  %unroll_iter4709 = and i64 %i.bbi, -8
  br label %.lr.ph.i.i.i434.i.i220

._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i220
  %lcmp.mod4706.not = icmp eq i64 %xtraiter4704, 0
  br i1 %lcmp.mod4706.not, label %._crit_edge.thread.i.i.i431.i.i225, label %.lr.ph.i.i.i434.i.i220.epil.preheader

.lr.ph.i.i.i434.i.i220.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i220.preheader
  %.sroa.0.08.i.i.i435.i.i221.epil.init = phi ptr [ %i.bbg, %.lr.ph.i.i.i434.i.i220.preheader ], [ %i.bbt, %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa ]
  %lcmp.mod4708 = icmp ne i64 %xtraiter4704, 0
  call void @llvm.assume(i1 %lcmp.mod4708)
  br label %.lr.ph.i.i.i434.i.i220.epil

.lr.ph.i.i.i434.i.i220.epil:                      ; preds = %.lr.ph.i.i.i434.i.i220.epil, %.lr.ph.i.i.i434.i.i220.epil.preheader
  %.sroa.0.08.i.i.i435.i.i221.epil = phi ptr [ %i.bbl, %.lr.ph.i.i.i434.i.i220.epil ], [ %.sroa.0.08.i.i.i435.i.i221.epil.init, %.lr.ph.i.i.i434.i.i220.epil.preheader ] ; 3 uses
  %epil.iter4705 = phi i64 [ %epil.iter4705.next, %.lr.ph.i.i.i434.i.i220.epil ], [ 0, %.lr.ph.i.i.i434.i.i220.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i221.epil, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.epil, align 8, !noalias !34831
  %i.bbl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221.epil, i64 2832 ; 2 uses
  %epil.iter4705.next = add i64 %epil.iter4705, 1 ; 2 uses
  %epil.iter4705.cmp.not = icmp eq i64 %epil.iter4705.next, %xtraiter4704
  br i1 %epil.iter4705.cmp.not, label %._crit_edge.thread.i.i.i431.i.i225, label %.lr.ph.i.i.i434.i.i220.epil, !llvm.loop !34834

._crit_edge.thread.i.i.i431.i.i225:               ; preds = %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i220.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i226 = phi ptr [ %i.bbg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i426.i.i" ], [ %i.bbt, %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa ], [ %i.bbl, %.lr.ph.i.i.i434.i.i220.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i227 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i226, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i432.i.i226, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i227, align 8, !noalias !34831
  br label %._crit_edge.i.i.i429.thread.i.i228

.lr.ph.i.i.i434.i.i220:                           ; preds = %.lr.ph.i.i.i434.i.i220, %.lr.ph.i.i.i434.i.i220.preheader.new
  %.sroa.0.08.i.i.i435.i.i221 = phi ptr [ %i.bbg, %.lr.ph.i.i.i434.i.i220.preheader.new ], [ %i.bbt, %.lr.ph.i.i.i434.i.i220 ] ; 17 uses
  %niter4710 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i220.preheader.new ], [ %niter4710.next.7, %.lr.ph.i.i.i434.i.i220 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i221, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223, align 8, !noalias !34831
  %i.bbm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbm, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.1, align 8, !noalias !34831
  %i.bbn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbn, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.2, align 8, !noalias !34831
  %i.bbo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbo, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.3, align 8, !noalias !34831
  %i.bbp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbp, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.4, align 8, !noalias !34831
  %i.bbq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbq, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.5, align 8, !noalias !34831
  %i.bbr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbr, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.6, align 8, !noalias !34831
  %i.bbs = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbs, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.7, align 8, !noalias !34831
  %i.bbt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 22656 ; 3 uses
  %niter4710.next.7 = add i64 %niter4710, 8       ; 2 uses
  %niter4710.ncmp.7 = icmp eq i64 %niter4710.next.7, %unroll_iter4709
  br i1 %niter4710.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i220

._crit_edge.i.i.i429.thread.i.i228:               ; preds = %._crit_edge.thread.i.i.i431.i.i225, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217
  %.sroa.10.0.i.i.i427933.i.i = phi ptr [ %i.bbg, %._crit_edge.thread.i.i.i431.i.i225 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34835
  %i.bbu = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !34835 ; 16 uses
  %i.bbv = icmp eq ptr %i.bbu, null
  br i1 %i.bbv, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i228
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i393 unwind label %bb.ia, !noalias !34805

.noexc444.i.i393:                                 ; preds = %bb.hz
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239", %bb.ia
  %.sroa.1335.0.i.i249 = phi i64 [ %.sroa.0.0.i422.i.i219, %bb.ia ], [ %.sroa.1335.1123199.i.i242, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239" ]
  %.sroa.034.0.i.i250 = phi ptr [ %.sroa.10.0.i.i.i427933.i.i, %bb.ia ], [ %.sroa.034.1124197.i.i243, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239" ] ; 2 uses
  %.sroa.12.1.i.i251 = phi i64 [ %i.bab, %bb.ia ], [ %.sroa.12.3125195.i.i244, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239" ] ; 2 uses
  %.sroa.026.1.i.i252 = phi ptr [ %i.bbd, %bb.ia ], [ %.sroa.026.3126193.i.i245, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239" ] ; 2 uses
  %.sroa.14.2.i.i253 = phi i64 [ %i.bab, %bb.ia ], [ %.sroa.14.4127191.i.i246, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239" ] ; 2 uses
  %.sroa.016.2.i.i254 = phi ptr [ %.sroa.10.0.i.i.i.i.i210, %bb.ia ], [ %.sroa.016.4128189.i.i247, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239" ] ; 2 uses
  %.pn230.pn.pn.i.i255 = phi { ptr, i32 } [ %i.bbx, %bb.ia ], [ %.pn230.pn202.i.i240, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239" ] ; 2 uses
  %i.bbw = icmp eq i64 %.sroa.1335.0.i.i249, 0
  br i1 %i.bbw, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i250) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i250) #38, !noalias !34805
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit446.i.i"

bb.ia:                                            ; preds = %bb.hz
  %i.bbx = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i248"

bb.ib:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.bbu, i8 0, i64 32784, i1 false), !noalias !34805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !34805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.aa, i8 0, i64 256, i1 false), !noalias !34805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !34805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.z, i8 0, i64 256, i1 false), !noalias !34805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !34805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.y, i8 0, i64 256, i1 false), !noalias !34805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !34805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.x, i8 0, i64 256, i1 false), !noalias !34805
  br label %bb.lc

.split.i.i270:                                    ; preds = %bb.lf, %._crit_edge582.i.i
  %indvars.iv.i.i271 = phi i64 [ %indvars.iv.next.i.i293, %._crit_edge582.i.i ], [ %.sroa.0.0.i.i204, %bb.lf ] ; 2 uses
  %.sroa.0.0593.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i292, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 4 uses
  %.sroa.012.0592.i.i = phi i64 [ %.sroa.012.1.i.i286, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 7 uses
  %.sroa.018.0591.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i291, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 4 uses
  %.sroa.023.0590.i.i = phi i64 [ %.sroa.023.1.i.i289, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 7 uses
  %.sroa.029.0589.i.i = phi i64 [ %i.bne, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 2 uses
  %.sroa.043.0588.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i277, %._crit_edge582.i.i ], [ 0, %bb.lf ]
  %.sroa.047.1587.i.i = phi i64 [ %i.bnf, %._crit_edge582.i.i ], [ 0, %bb.lf ] ; 4 uses
  %.sroa.016.3586.i.i = phi ptr [ %.sroa.016.7.i.i285, %._crit_edge582.i.i ], [ %.sroa.10.0.i.i.i.i.i210, %bb.lf ] ; 9 uses
  %.sroa.14.3585.i.i = phi i64 [ %.sroa.14.7.i.i284, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 9 uses
  %.sroa.026.2584.i.i = phi ptr [ %.sroa.026.5.i.i288, %._crit_edge582.i.i ], [ %i.bbd, %bb.lf ] ; 11 uses
  %.sroa.12.2583.i.i = phi i64 [ %.sroa.12.5.i.i287, %._crit_edge582.i.i ], [ %i.bab, %bb.lf ] ; 11 uses
  %i.bby = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i271, i64 1)
  %umax856.i.i = tail call i64 @llvm.umin.i64(i64 %i.bby, i64 64)
  %i.bbz = sub nuw i64 %.sroa.0.0.i.i204, %.sroa.047.1587.i.i
  %.sroa.0.0.i447.i.i272 = tail call noundef i64 @llvm.umin.i64(i64 %i.bbz, i64 64) ; 3 uses
  br label %.lr.ph571.i.i

.thread163.loopexit.i.i278:                       ; preds = %._crit_edge.i.i276
  %lpad.loopexit255.i.i279 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

.thread163.loopexit.split-lp.loopexit.i.i282:     ; preds = %._crit_edge572.i.i
  %lpad.loopexit258.i.i283 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i230: ; preds = %.invoke3974, %.invoke3972, %.invoke.i.i229, %bb.kk, %bb.kc, %bb.ij, %bb.if
  %.sroa.044.1.ph.ph.ph.i.i231 = phi ptr [ %i.bbu, %bb.if ], [ %.sroa.044.2.i.i296, %bb.ij ], [ %i.bbu, %.invoke.i.i229 ], [ %i.bbu, %.invoke3972 ], [ %i.bbu, %bb.kc ], [ %i.bbu, %.invoke3974 ], [ %i.bbu, %bb.kk ]
  %.sroa.1335.2.ph.ph.ph.i.i232 = phi i64 [ 0, %bb.if ], [ 0, %bb.ij ], [ %.sroa.0.0.i422.i.i219, %.invoke.i.i229 ], [ %.sroa.0.0.i422.i.i219, %.invoke3972 ], [ %.sroa.0.0.i422.i.i219, %bb.kc ], [ %.sroa.0.0.i422.i.i219, %.invoke3974 ], [ %.sroa.0.0.i422.i.i219, %bb.kk ]
  %.sroa.034.2.ph.ph.ph.i.i233 = phi ptr [ inttoptr (i64 8 to ptr), %bb.if ], [ inttoptr (i64 8 to ptr), %bb.ij ], [ %.sroa.10.0.i.i.i427933.i.i, %.invoke.i.i229 ], [ %.sroa.10.0.i.i.i427933.i.i, %.invoke3972 ], [ %.sroa.10.0.i.i.i427933.i.i, %bb.kc ], [ %.sroa.10.0.i.i.i427933.i.i, %.invoke3974 ], [ %.sroa.10.0.i.i.i427933.i.i, %bb.kk ]
  %.sroa.12.4.ph.ph.ph.i.i234 = phi i64 [ %.sroa.12.5.i.i287, %bb.if ], [ %.sroa.12.5.i.i287, %bb.ij ], [ %i.bab, %.invoke.i.i229 ], [ %.sroa.12.2583.i.i, %.invoke3972 ], [ %.sroa.12.2583.i.i, %bb.kc ], [ %.sroa.12.5.i.i287, %.invoke3974 ], [ %.sroa.12.2583.i.i, %bb.kk ]
  %.sroa.026.4.ph.ph.ph.i.i235 = phi ptr [ %.sroa.026.5.i.i288, %bb.if ], [ %.sroa.026.5.i.i288, %bb.ij ], [ %i.bbd, %.invoke.i.i229 ], [ %.sroa.026.2584.i.i, %.invoke3972 ], [ %.sroa.026.2584.i.i, %bb.kc ], [ %.sroa.026.5.i.i288, %.invoke3974 ], [ %.sroa.026.2584.i.i, %bb.kk ]
  %.sroa.14.5.ph.ph.ph.i.i236 = phi i64 [ %.sroa.14.7.i.i284, %bb.if ], [ %.sroa.14.7.i.i284, %bb.ij ], [ %i.bab, %.invoke.i.i229 ], [ %.sroa.14.3585.i.i, %.invoke3972 ], [ %.sroa.14.3585.i.i, %bb.kc ], [ %.sroa.14.7.i.i284, %.invoke3974 ], [ %.sroa.14.7.i.i284, %bb.kk ]
  %.sroa.016.5.ph.ph.ph.i.i237 = phi ptr [ %.sroa.016.7.i.i285, %bb.if ], [ %.sroa.016.7.i.i285, %bb.ij ], [ %.sroa.10.0.i.i.i.i.i210, %.invoke.i.i229 ], [ %.sroa.016.3586.i.i, %.invoke3972 ], [ %.sroa.016.3586.i.i, %bb.kc ], [ %.sroa.016.7.i.i285, %.invoke3974 ], [ %.sroa.016.7.i.i285, %bb.kk ]
  %lpad.loopexit.split-lp259.i.i238 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

bb.ic:                                            ; preds = %bb.io, %._crit_edge598.i.i
  %.sroa.11.1.ph159.i.i301 = phi i1 [ true, %bb.io ], [ false, %._crit_edge598.i.i ]
  %.sroa.044.1.ph160.i.i302 = phi ptr [ inttoptr (i64 4 to ptr), %bb.io ], [ %.sroa.044.2.i.i296, %._crit_edge598.i.i ]
  %.sroa.12.4.ph161.i.i303 = phi i64 [ 0, %bb.io ], [ %.sroa.12.5.i.i287, %._crit_edge598.i.i ]
  %.sroa.026.4.ph162.i.i304 = phi ptr [ inttoptr (i64 4 to ptr), %bb.io ], [ %.sroa.026.5.i.i288, %._crit_edge598.i.i ]
  %lpad.thr_comm.split-lp.i.i305 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i306

bb.id:                                            ; preds = %._crit_edge582.i.i
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i) #38, !noalias !34805
  %i.bca = shl i64 %i.bne, 6
  %i.bcb = lshr i64 %i.bne, 1
  %i.bcc = mul i64 %i.bcb, %i.bne
  %.sroa.0.0.i448.i.i294 = tail call noundef i64 @llvm.umin.i64(i64 %i.bcc, i64 %i.bca) ; 5 uses
  %i.bcd = add nuw i64 %.sroa.0.0.i448.i.i294, 1  ; 2 uses
  %i.bce = icmp ugt i64 %.sroa.0.0.i448.i.i294, 2048
  br i1 %i.bce, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.bcf = shl i64 %i.bcd, 4                      ; 5 uses
  %i.bcg = icmp ugt i64 %.sroa.0.0.i448.i.i294, 1152921504606846974
  %i.bch = icmp ugt i64 %i.bcf, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i376 = or i1 %i.bcg, %i.bch
  br i1 %or.cond.i.i.i.i.i449.i.i376, label %bb.if, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377: ; preds = %bb.ie
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34843
  %i.bci = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bcf, i64 noundef range(i64 1, 9) 4) #38, !noalias !34843 ; 5 uses
  %i.bcj = icmp eq ptr %i.bci, null
  br i1 %i.bcj, label %bb.if, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378"

bb.if:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377, %bb.ie
  %.sroa.4.0.ph.i.i.i455.i.i383 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377 ], [ 0, %bb.ie ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i383, i64 %i.bcf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i384 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.noexc456.i.i384:                                 ; preds = %bb.if
  unreachable

bb.ig:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378", %bb.id
  %.sroa.11.2.i.i295 = phi i64 [ %i.bcd, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378" ], [ 2049, %bb.id ]
  %.sroa.044.2.i.i296 = phi ptr [ %i.bci, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378" ], [ %i.bbu, %bb.id ] ; 4 uses
  %i.bck = shl i64 %i.bne, 2                      ; 9 uses
  %i.bcl = icmp ugt i64 %i.bne, 4611686018427387903
  %i.bcm = icmp ugt i64 %i.bck, 9223372036854775804
  %or.cond.i.i.i.i458.i.i297 = or i1 %i.bcl, %i.bcm
  br i1 %or.cond.i.i.i.i458.i.i297, label %bb.ij, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298: ; preds = %bb.ig
  %i.bcn = icmp eq i64 %i.bck, 0                  ; 2 uses
  br i1 %i.bcn, label %bb.ik, label %bb.ih

bb.ih:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34851
  %i.bco = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bck, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34851 ; 2 uses
  %i.bcp = icmp eq ptr %i.bco, null
  br i1 %i.bcp, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bcq = ptrtoint ptr %i.bco to i64
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih, %bb.ig
  %.sroa.4.0.ph.i.i461.i.i374 = phi i64 [ 4, %bb.ih ], [ 0, %bb.ig ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i374, i64 %i.bck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i375 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.noexc462.i.i375:                                 ; preds = %bb.ij
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i378": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i377
  %i.bcr = add nsw i64 %i.bcf, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bci, i8 0, i64 %i.bcr, i1 false), !noalias !34856
  %i.bcs = getelementptr i8, ptr %i.bci, i64 %i.bcf ; 2 uses
  %scevgep11.i451.i.i379 = getelementptr i8, ptr %i.bci, i64 %i.bcr
  store i32 0, ptr %scevgep11.i451.i.i379, align 4, !noalias !34856
  %.sroa.55.0..sroa_idx.i452.i.i380 = getelementptr i8, ptr %i.bcs, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i380, align 4, !noalias !34856
  %.sroa.67.0..sroa_idx.i453.i.i381 = getelementptr i8, ptr %i.bcs, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i381, align 4, !noalias !34856
  %i.bct = icmp samesign ult i64 %.sroa.0.0.i448.i.i294, 576460752303423487
  tail call void @llvm.assume(i1 %i.bct)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bbu) #38, !noalias !34805
  br label %bb.ig

bb.ik:                                            ; preds = %bb.ii, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298
  %.sroa.10.0.i.i460.i.i299 = phi i64 [ %i.bcq, %bb.ii ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i298 ]
  %i.bcu = inttoptr i64 %.sroa.10.0.i.i460.i.i299 to ptr ; 13 uses
  %i.bcv = icmp samesign ult i64 %i.bne, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bcv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bcu) ]
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcu, i64 %i.bck
  %i.bcx = icmp eq i64 %i.bne, 0                  ; 3 uses
  br i1 %i.bcx, label %._crit_edge598.i.i, label %.lr.ph597.i.i.preheader

.lr.ph597.i.i.preheader:                          ; preds = %bb.ik
  %i.bcy = add nsw i64 %i.bck, -4                 ; 2 uses
  %i.bcz = lshr exact i64 %i.bcy, 2
  %i.bda = add nuw nsw i64 %i.bcz, 1              ; 2 uses
  %min.iters.check3843 = icmp ult i64 %i.bcy, 28
  br i1 %min.iters.check3843, label %.lr.ph597.i.i.preheader4241, label %vector.ph3844

vector.ph3844:                                    ; preds = %.lr.ph597.i.i.preheader
  %n.vec3845 = and i64 %i.bda, 9223372036854775800 ; 4 uses
  %i.bdb = trunc i64 %n.vec3845 to i32
  %i.bdc = shl i64 %n.vec3845, 2
  %i.bdd = getelementptr i8, ptr %i.bcu, i64 %i.bdc
  br label %vector.body3846

vector.body3846:                                  ; preds = %vector.body3846, %vector.ph3844
  %index3847 = phi i64 [ 0, %vector.ph3844 ], [ %index.next3851, %vector.body3846 ] ; 2 uses
  %vec.ind3848 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3844 ], [ %vec.ind.next3852, %vector.body3846 ] ; 3 uses
  %step.add3849 = add <4 x i32> %vec.ind3848, splat (i32 4)
  %i.bde = shl i64 %index3847, 2
  %next.gep3850 = getelementptr i8, ptr %i.bcu, i64 %i.bde ; 2 uses
  %i.bdf = getelementptr i8, ptr %next.gep3850, i64 16
  store <4 x i32> %vec.ind3848, ptr %next.gep3850, align 4, !noalias !34805
  store <4 x i32> %step.add3849, ptr %i.bdf, align 4, !noalias !34805
  %index.next3851 = add nuw i64 %index3847, 8     ; 2 uses
  %vec.ind.next3852 = add <4 x i32> %vec.ind3848, splat (i32 8)
  %i.bdg = icmp eq i64 %index.next3851, %n.vec3845
  br i1 %i.bdg, label %middle.block3853, label %vector.body3846, !llvm.loop !34859

middle.block3853:                                 ; preds = %vector.body3846
  %cmp.n3854 = icmp eq i64 %i.bda, %n.vec3845
  br i1 %cmp.n3854, label %._crit_edge598.i.i, label %.lr.ph597.i.i.preheader4241

.lr.ph597.i.i.preheader4241:                      ; preds = %.lr.ph597.i.i.preheader, %middle.block3853
  %.sroa.047.2595.i.i.ph = phi i32 [ 0, %.lr.ph597.i.i.preheader ], [ %i.bdb, %middle.block3853 ]
  %.sroa.0135.0594.i.i.ph = phi ptr [ %i.bcu, %.lr.ph597.i.i.preheader ], [ %i.bdd, %middle.block3853 ]
  br label %.lr.ph597.i.i

.lr.ph597.i.i:                                    ; preds = %.lr.ph597.i.i.preheader4241, %.lr.ph597.i.i
  %.sroa.047.2595.i.i = phi i32 [ %i.bdh, %.lr.ph597.i.i ], [ %.sroa.047.2595.i.i.ph, %.lr.ph597.i.i.preheader4241 ] ; 2 uses
  %.sroa.0135.0594.i.i = phi ptr [ %.sroa.0135.1.i.i300, %.lr.ph597.i.i ], [ %.sroa.0135.0594.i.i.ph, %.lr.ph597.i.i.preheader4241 ] ; 2 uses
  %.sroa.0135.1.i.i300 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0594.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2595.i.i, ptr %.sroa.0135.0594.i.i, align 4, !noalias !34805
  %i.bdh = add i32 %.sroa.047.2595.i.i, 1
  %i.bdi = icmp eq ptr %.sroa.0135.1.i.i300, %i.bcw
  br i1 %i.bdi, label %._crit_edge598.i.i, label %.lr.ph597.i.i, !llvm.loop !34860

._crit_edge598.i.i:                               ; preds = %.lr.ph597.i.i, %middle.block3853, %bb.ik
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i285) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i288) ]
  %i.bdj = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i285, i64 noundef %.sroa.14.7.i.i284, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i288, i64 noundef %.sroa.12.5.i.i287, ptr noalias noundef nonnull align 4 %i.azy, i64 noundef %.sroa.0.0.i.i204, ptr noalias noundef nonnull align 4 %i.bcu, i64 noundef %i.bne, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i296, i64 noundef %.sroa.11.2.i.i295, i64 noundef %i.bne, i64 noundef %.sroa.0.0.i.i204, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i294)
          to label %bb.il unwind label %bb.ic, !noalias !34805 ; 3 uses

bb.il:                                            ; preds = %._crit_edge598.i.i
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i296) #38, !noalias !34805
  %i.bdk = icmp eq i64 %.sroa.12.5.i.i287, 0
  br i1 %i.bdk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i316"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i316": ; preds = %bb.il
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i288) #38, !noalias !34805
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i316", %bb.il
  br i1 %i.bcn, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i317
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34861
  %i.bdl = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bck, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34861 ; 2 uses
  %i.bdm = icmp eq ptr %i.bdl, null
  br i1 %i.bdm, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.bdn = ptrtoint ptr %i.bdl to i64
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i373 unwind label %bb.ic, !noalias !34805

.noexc472.i.i373:                                 ; preds = %bb.io
  unreachable

end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a

._crit_edge615.loopexit.i.i:                      ; preds = %bb.jt, %.noexc.i.us.i371
  %.sroa.043.2.lcssa938943.i892901.i = phi i64 [ %.sroa.043.2.lcssa938943.i.i, %.noexc.i.us.i371 ], [ %i.blk, %bb.jt ]
  %i.bim = phi ptr [ %i.bia, %.noexc.i.us.i371 ], [ %i.bfz, %bb.jt ]
  %.us-phi445.i = phi i32 [ %.sroa.097.0939942.i.i, %.noexc.i.us.i371 ], [ %.sroa.089.1.i.i340, %bb.jt ] ; 2 uses
  %.pre.i.i342 = zext i32 %.us-phi445.i to i64
  br label %._crit_edge615.i.i

._crit_edge615.i.i:                               ; preds = %._crit_edge615.loopexit.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.thread.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.i
  %i.bin = phi ptr [ %i.bim, %._crit_edge615.loopexit.i.i ], [ %i.bia, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.i ], [ %i.bfz, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.thread.i ]
  %.sroa.043.2.lcssa938943.i893.i = phi i64 [ %.sroa.043.2.lcssa938943.i892901.i, %._crit_edge615.loopexit.i.i ], [ %.sroa.043.2.lcssa938943.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.i ], [ %i.blk, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.thread.i ]
  %.pre-phi.i.i343 = phi i64 [ %.pre.i.i342, %._crit_edge615.loopexit.i.i ], [ %i.bib, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.i ], [ %i.bgb, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.thread.i ] ; 3 uses
  %.sroa.089.0.lcssa.i.i344 = phi i32 [ %.us-phi445.i, %._crit_edge615.loopexit.i.i ], [ %.sroa.097.0939942.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.i ], [ %.sroa.097.0.i.i329, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h549dfdad1e1f7ec5E.exit249.i.thread.i ]
  store i32 %.sroa.089.0.lcssa.i.i344, ptr %i.bin, align 4, !noalias !34805
  %i.bio = icmp samesign ugt i64 %i.bne, %.pre-phi.i.i343
  br i1 %i.bio, label %bb.jp, label %.invoke1172.i.i

bb.jp:                                            ; preds = %._crit_edge615.i.i
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %i.bdp, i64 %.pre-phi.i.i343 ; 2 uses
  %i.biq = load i32, ptr %i.bip, align 4, !noalias !34805, !noundef !27
  %i.bir = icmp eq i32 %i.biq, -1
  br i1 %i.bir, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  store i32 %.sroa.084.0618.i.i, ptr %i.bip, align 4, !noalias !34805
  %i.bis = add i32 %.sroa.084.0618.i.i, 1
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.sroa.084.1.i.i345 = phi i32 [ %i.bis, %bb.jq ], [ %.sroa.084.0618.i.i, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !34805
  %i.bit = icmp ult i64 %.sroa.0137.1620.i.i, %.sroa.0.0.i.i204 ; 2 uses
  %i.biu = zext i1 %i.bit to i64
  %.sroa.0137.1.i.i346 = add nuw i64 %.sroa.0137.1620.i.i, %i.biu
  br i1 %i.bit, label %bb.jn, label %bb.ir

.lr.ph614.i.i:                                    ; preds = %.lr.ph614.i.i.preheader, %bb.jt
  %.sroa.0141.1613.i.i = phi i64 [ %.sroa.0141.1.i.i341, %bb.jt ], [ 1, %.lr.ph614.i.i.preheader ] ; 3 uses
  %.sroa.089.0612.i.i = phi i32 [ %.sroa.089.1.i.i340, %bb.jt ], [ %.sroa.097.0.i.i329, %.lr.ph614.i.i.preheader ]
  %.sroa.093.0611.i.i = phi float [ %.sroa.093.1.i.i339, %bb.jt ], [ %i.bie, %.lr.ph614.i.i.preheader ] ; 2 uses
  %.sroa.0141.0610.i.i = phi i64 [ %.sroa.0141.1613.i.i, %bb.jt ], [ 0, %.lr.ph614.i.i.preheader ] ; 3 uses
  %i.biv = icmp samesign ult i64 %.sroa.0141.0610.i.i, %i.bne
  br i1 %i.biv, label %bb.js, label %.invoke1172.i.i

bb.js:                                            ; preds = %.lr.ph614.i.i
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %.sroa.0141.0610.i.i ; 2 uses
  %i.bix = load i32, ptr %i.biw, align 4, !noalias !34805, !noundef !27
  %i.biy = zext i32 %i.bix to i64                 ; 3 uses
  %i.biz = icmp ugt i64 %.sroa.14.7.i.i284, %i.biy
  br i1 %i.biz, label %.noexc.i.i334, label %.invoke1172.i.i

.noexc.i.i334:                                    ; preds = %bb.js
  %i.bja = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.016.7.i.i285, i64 %i.biy ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !34922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(2832) %i.w, i64 2832, i1 false), !alias.scope !34927, !noalias !34805
  %i.bjb = load i64, ptr %i.bdt, align 8, !alias.scope !34931, !noalias !34805, !noundef !27
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bja, i64 2816 ; 2 uses
  %i.bjd = load i64, ptr %i.bjc, align 8, !alias.scope !34934, !noalias !34805, !noundef !27
  %i.bje = add i64 %i.bjd, %i.bjb
  store i64 %i.bje, ptr %i.bdt, align 8, !alias.scope !34937, !noalias !34805
  %bound03858 = icmp ult ptr %i.v, %i.bjc
  %bound13859 = icmp ult ptr %i.bja, %i.bdt
  %found.conflict3860 = and i1 %bound03858, %bound13859
  br i1 %found.conflict3860, label %scalar.ph3861, label %vector.body3863

vector.body3863:                                  ; preds = %.noexc.i.i334, %vector.body3863
  %index3864 = phi i64 [ %index.next3869.1, %vector.body3863 ], [ 0, %.noexc.i.i334 ] ; 4 uses
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index3864 ; 3 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 16 ; 2 uses
  %wide.load3865 = load <4 x i32>, ptr %i.bjf, align 8, !alias.scope !34940, !noalias !34943
  %wide.load3866 = load <4 x i32>, ptr %i.bjg, align 8, !alias.scope !34940, !noalias !34943
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %index3864 ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 16
  %wide.load3867 = load <4 x i32>, ptr %i.bjh, align 4, !alias.scope !34945, !noalias !34805
  %wide.load3868 = load <4 x i32>, ptr %i.bji, align 4, !alias.scope !34945, !noalias !34805
  %i.bjj = add <4 x i32> %wide.load3867, %wide.load3865
  %i.bjk = add <4 x i32> %wide.load3868, %wide.load3866
  store <4 x i32> %i.bjj, ptr %i.bjf, align 8, !alias.scope !34940, !noalias !34943
  store <4 x i32> %i.bjk, ptr %i.bjg, align 8, !alias.scope !34940, !noalias !34943
  %index.next3869 = or disjoint i64 %index3864, 8 ; 2 uses
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index.next3869 ; 3 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16 ; 2 uses
  %wide.load3865.1 = load <4 x i32>, ptr %i.bjl, align 8, !alias.scope !34940, !noalias !34943
  %wide.load3866.1 = load <4 x i32>, ptr %i.bjm, align 8, !alias.scope !34940, !noalias !34943
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %index.next3869 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 16
  %wide.load3867.1 = load <4 x i32>, ptr %i.bjn, align 4, !alias.scope !34945, !noalias !34805
  %wide.load3868.1 = load <4 x i32>, ptr %i.bjo, align 4, !alias.scope !34945, !noalias !34805
  %i.bjp = add <4 x i32> %wide.load3867.1, %wide.load3865.1
  %i.bjq = add <4 x i32> %wide.load3868.1, %wide.load3866.1
  store <4 x i32> %i.bjp, ptr %i.bjl, align 8, !alias.scope !34940, !noalias !34943
  store <4 x i32> %i.bjq, ptr %i.bjm, align 8, !alias.scope !34940, !noalias !34943
  %index.next3869.1 = add nuw nsw i64 %index3864, 16 ; 2 uses
  %i.bjr = icmp eq i64 %index.next3869.1, 704
  br i1 %i.bjr, label %.noexc240.i.i335, label %vector.body3863, !llvm.loop !34946

scalar.ph3861:                                    ; preds = %.noexc.i.i334, %scalar.ph3861
  %.sroa.01.0.i263609.i.i = phi i64 [ %i.bkk, %scalar.ph3861 ], [ 0, %.noexc.i.i334 ] ; 6 uses
  %i.bjs = or disjoint i64 %.sroa.01.0.i263609.i.i, 1 ; 2 uses
  %i.bjt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.01.0.i263609.i.i ; 2 uses
  %i.bju = load i32, ptr %i.bjt, align 8, !noalias !34805, !noundef !27
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %.sroa.01.0.i263609.i.i
  %i.bjw = load i32, ptr %i.bjv, align 4, !noalias !34805, !noundef !27
  %i.bjx = add i32 %i.bjw, %i.bju
  store i32 %i.bjx, ptr %i.bjt, align 8, !noalias !34805
  %i.bjy = or disjoint i64 %.sroa.01.0.i263609.i.i, 2 ; 2 uses
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bjs ; 2 uses
  %i.bka = load i32, ptr %i.bjz, align 4, !noalias !34805, !noundef !27
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bjs
  %i.bkc = load i32, ptr %i.bkb, align 4, !noalias !34805, !noundef !27
  %i.bkd = add i32 %i.bkc, %i.bka
  store i32 %i.bkd, ptr %i.bjz, align 4, !noalias !34805
  %i.bke = or disjoint i64 %.sroa.01.0.i263609.i.i, 3 ; 2 uses
  %i.bkf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bjy ; 2 uses
  %i.bkg = load i32, ptr %i.bkf, align 8, !noalias !34805, !noundef !27
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bjy
  %i.bki = load i32, ptr %i.bkh, align 4, !noalias !34805, !noundef !27
  %i.bkj = add i32 %i.bki, %i.bkg
  store i32 %i.bkj, ptr %i.bkf, align 8, !noalias !34805
  %i.bkk = add nuw nsw i64 %.sroa.01.0.i263609.i.i, 4 ; 2 uses
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bke ; 2 uses
  %i.bkm = load i32, ptr %i.bkl, align 4, !noalias !34805, !noundef !27
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bke
  %i.bko = load i32, ptr %i.bkn, align 4, !noalias !34805, !noundef !27
  %i.bkp = add i32 %i.bko, %i.bkm
  store i32 %i.bkp, ptr %i.bkl, align 4, !noalias !34805
  %exitcond862.not.i.i.3 = icmp eq i64 %i.bkk, 704
  br i1 %exitcond862.not.i.i.3, label %.noexc240.i.i335, label %scalar.ph3861, !llvm.loop !34947

.noexc240.i.i335:                                 ; preds = %vector.body3863, %scalar.ph3861
  %i.bkq = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.v)
          to label %.noexc242.i.i338 unwind label %.loopexit.split-lp.thread.i.i336, !noalias !34805

.noexc242.i.i338:                                 ; preds = %.noexc240.i.i335
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bja, i64 2824
  %i.bks = load float, ptr %i.bkr, align 8, !alias.scope !34948, !noalias !34805, !noundef !27
  %i.bkt = fsub float %i.bkq, %i.bks              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !34922
  %i.bku = fcmp olt float %i.bkt, %.sroa.093.0611.i.i
  br i1 %i.bku, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.ju, %.noexc242.i.i338
  %.sroa.093.1.i.i339 = phi float [ %i.bkt, %bb.ju ], [ %.sroa.093.0611.i.i, %.noexc242.i.i338 ]
  %.sroa.089.1.i.i340 = phi i32 [ %i.bkx, %bb.ju ], [ %.sroa.089.0612.i.i, %.noexc242.i.i338 ] ; 2 uses
  %i.bkv = icmp samesign ult i64 %.sroa.0141.1613.i.i, %i.bdj ; 2 uses
  %i.bkw = zext i1 %i.bkv to i64
  %.sroa.0141.1.i.i341 = add nuw nsw i64 %.sroa.0141.1613.i.i, %i.bkw
  br i1 %i.bkv, label %.lr.ph614.i.i, label %._crit_edge615.loopexit.i.i

bb.ju:                                            ; preds = %.noexc242.i.i338
  %i.bkx = load i32, ptr %i.biw, align 4, !noalias !34805, !noundef !27
  br label %bb.jt

bb.jv:                                            ; preds = %.lr.ph605.i.i
  %i.bky = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %.sroa.043.2603.i.i
  %i.bkz = load i16, ptr %i.bky, align 2, !alias.scope !34951, !noalias !34954, !noundef !27 ; 2 uses
  %i.bla = zext i16 %i.bkz to i64                 ; 2 uses
  %i.blb = icmp ult i16 %i.bkz, 704
  br i1 %i.blb, label %bb.jw, label %.invoke1172.i.i

.invoke1172.i.i:                                  ; preds = %._crit_edge615.i.i, %._crit_edge606.thread.i.i, %._crit_edge606.i.i, %bb.jv, %.lr.ph605.i.i, %bb.js, %.lr.ph614.i.i, %bb.jo, %.lr.ph614.i.us.i
  %i.blc = phi i64 [ %i.biy, %bb.js ], [ %i.bii, %bb.jo ], [ %.sroa.043.2603.i.i, %.lr.ph605.i.i ], [ %i.bne, %.lr.ph614.i.us.i ], [ %.sroa.0141.0610.i.i, %.lr.ph614.i.i ], [ %i.bla, %bb.jv ], [ %i.bgg, %._crit_edge606.thread.i.i ], [ %i.bgb, %._crit_edge606.i.i ], [ %.pre-phi.i.i343, %._crit_edge615.i.i ]
  %i.bld = phi i64 [ %.sroa.14.7.i.i284, %bb.js ], [ %.sroa.14.7.i.i284, %bb.jo ], [ %2, %.lr.ph605.i.i ], [ %i.bne, %.lr.ph614.i.us.i ], [ %i.bne, %.lr.ph614.i.i ], [ 704, %bb.jv ], [ %.sroa.14.7.i.i284, %._crit_edge606.thread.i.i ], [ %.sroa.14.7.i.i284, %._crit_edge606.i.i ], [ %i.bne, %._crit_edge615.i.i ]
  %i.ble = phi ptr [ @1555, %bb.js ], [ @1555, %bb.jo ], [ @1556, %.lr.ph605.i.i ], [ @1554, %.lr.ph614.i.us.i ], [ @1554, %.lr.ph614.i.i ], [ @1931, %bb.jv ], [ @1552, %._crit_edge606.thread.i.i ], [ @1552, %._crit_edge606.i.i ], [ @1553, %._crit_edge615.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.blc, i64 noundef %i.bld, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ble) #43
          to label %.cont1173.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i320, !noalias !34805

.cont1173.i.i:                                    ; preds = %.invoke1172.i.i
  unreachable

bb.jw:                                            ; preds = %bb.jv
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bla ; 2 uses
  %i.blg = load i32, ptr %i.blf, align 4, !alias.scope !34955, !noalias !34805, !noundef !27
  %i.blh = add i32 %i.blg, 1
  store i32 %i.blh, ptr %i.blf, align 4, !alias.scope !34955, !noalias !34805
  %i.bli = load i64, ptr %i.bdq, align 8, !alias.scope !34958, !noalias !34805, !noundef !27
  %i.blj = add i64 %i.bli, 1                      ; 2 uses
  store i64 %i.blj, ptr %i.bdq, align 8, !alias.scope !34961, !noalias !34805
  %i.blk = add nuw i64 %.sroa.043.2603.i.i, 1     ; 4 uses
  %i.bll = add nuw nsw i64 %i.bfx, 1
  %exitcond860.not.i.i = icmp eq i64 %i.bfx, %i.bfv
  br i1 %exitcond860.not.i.i, label %._crit_edge606.i.i, label %.lr.ph605.i.i

.loopexit.split-lp.i.i322:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i320, %.loopexit.split-lp.loopexit.i.i332, %bb.ip
  %.sroa.1152.2.i.i323 = phi i64 [ 0, %bb.ip ], [ %i.bne, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %i.bne, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.sroa.051.2.i.i324 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ip ], [ %i.bcu, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %i.bcu, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.sroa.14.6.i.i325 = phi i64 [ 0, %bb.ip ], [ %.sroa.14.7.i.i284, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %.sroa.14.7.i.i284, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.sroa.016.6.i.i326 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ip ], [ %.sroa.016.7.i.i285, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %.sroa.016.7.i.i285, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  %.pn.i.i327 = phi { ptr, i32 } [ %i.bdo, %bb.ip ], [ %lpad.loopexit.split-lp251.i.i321, %.loopexit.split-lp.loopexit.split-lp.i.i320 ], [ %lpad.loopexit250.i.i333, %.loopexit.split-lp.loopexit.i.i332 ] ; 2 uses
  br i1 %i.bcx, label %.thread130.i.i306, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i": ; preds = %.loopexit.split-lp.i.i322, %.loopexit.split-lp.thread.i.i336
  %.pn953.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i337, %.loopexit.split-lp.thread.i.i336 ], [ %.pn.i.i327, %.loopexit.split-lp.i.i322 ]
  %.sroa.016.6952.i.i = phi ptr [ %.sroa.016.7.i.i285, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.016.6.i.i326, %.loopexit.split-lp.i.i322 ]
  %.sroa.14.6951.i.i = phi i64 [ %.sroa.14.7.i.i284, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.14.6.i.i325, %.loopexit.split-lp.i.i322 ]
  %.sroa.051.2950.i.i = phi ptr [ %i.bcu, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.051.2.i.i324, %.loopexit.split-lp.i.i322 ]
  %.sroa.1152.2949.i.i = phi i64 [ %i.bne, %.loopexit.split-lp.thread.i.i336 ], [ %.sroa.1152.2.i.i323, %.loopexit.split-lp.i.i322 ]
  tail call void @mi_free(ptr noundef nonnull %i.bdp) #38, !noalias !34805
  br label %.thread130.i.i306

._crit_edge572.i.i:                               ; preds = %bb.kz
  %i.blm = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i, i64 noundef %.sroa.0.0.i422.i.i219, ptr noalias noundef nonnull align 4 %i.aa, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.y, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.z, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.bbu, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i272, i64 noundef %.sroa.0.0.i447.i.i272, i64 noundef 64, i64 noundef 2048)
          to label %bb.jx unwind label %.thread163.loopexit.split-lp.loopexit.i.i282, !noalias !34805 ; 5 uses

bb.jx:                                            ; preds = %._crit_edge572.i.i
  %i.bln = add i64 %i.blm, %.sroa.0.0593.i.i      ; 3 uses
  %i.blo = icmp ult i64 %.sroa.012.0592.i.i, %i.bln
  br i1 %i.blo, label %bb.jy, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"

bb.jy:                                            ; preds = %bb.jx
  %i.blp = icmp eq i64 %.sroa.012.0592.i.i, 0     ; 2 uses
  %..sroa.012.0.i.i388 = select i1 %i.blp, i64 %i.bln, i64 %.sroa.012.0592.i.i
  br label %bb.jz

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i", %bb.jx
  %.sroa.14.7.i.i284 = phi i64 [ %.sroa.14.3585.i.i, %bb.jx ], [ %.sroa.066.1.i.i389, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.066.1.i.i389, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i" ] ; 22 uses
  %.sroa.016.7.i.i285 = phi ptr [ %.sroa.016.3586.i.i, %bb.jx ], [ %.sroa.10.0.i.i.i521.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.10.0.i.i.i521.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i286 = phi i64 [ %.sroa.012.0592.i.i, %bb.jx ], [ %.sroa.066.1.i.i389, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.066.1.i.i389, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i" ]
  %i.blq = add i64 %i.blm, %.sroa.018.0591.i.i    ; 3 uses
  %i.blr = icmp ult i64 %.sroa.023.0590.i.i, %i.blq
  br i1 %i.blr, label %bb.kf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"

bb.jz:                                            ; preds = %bb.jz, %bb.jy
  %.sroa.066.1.i.i389 = phi i64 [ %..sroa.012.0.i.i388, %bb.jy ], [ %i.blt, %bb.jz ] ; 13 uses
  %i.bls = icmp ult i64 %.sroa.066.1.i.i389, %i.bln
  %i.blt = shl i64 %.sroa.066.1.i.i389, 1
  br i1 %i.bls, label %bb.jz, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.blu = mul i64 %.sroa.066.1.i.i389, 2832      ; 3 uses
  %or.cond.i.i.i.i.i518.i.i = icmp ugt i64 %.sroa.066.1.i.i389, 3256840408493918
  br i1 %or.cond.i.i.i.i.i518.i.i, label %bb.kc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i: ; preds = %bb.ka
  %i.blv = icmp eq i64 %i.blu, 0
  br i1 %i.blv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i", label %bb.kb

bb.kb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34964
  %i.blw = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.blu, i64 noundef range(i64 1, 9) 8) #38, !noalias !34964 ; 2 uses
  %i.blx = icmp eq ptr %i.blw, null
  br i1 %i.blx, label %bb.kc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i"

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %.sroa.4.0.ph.i.i.i533.i.i = phi i64 [ 8, %bb.kb ], [ 0, %bb.ka ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i, i64 %i.blu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc534.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.noexc534.i.i:                                    ; preds = %bb.kc
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i": ; preds = %bb.kb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i
  %.sroa.10.0.i.i.i521.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %i.blw, %bb.kb ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %.sroa.066.1.i.i389, %bb.kb ]
  %i.bly = icmp samesign ule i64 %.sroa.066.1.i.i389, %.sroa.4.0.i.i.i522.i.i
  tail call void @llvm.assume(i1 %i.bly)
  %i.blz = icmp samesign ugt i64 %.sroa.066.1.i.i389, 1
  br i1 %i.blz, label %.lr.ph.i.i.i528.i.i.preheader, label %.loopexit254.i.i390

.lr.ph.i.i.i528.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i"
  %i.bma = add nsw i64 %.sroa.066.1.i.i389, -1    ; 2 uses
  %i.bmb = add nsw i64 %.sroa.066.1.i.i389, -2
  %xtraiter4712 = and i64 %i.bma, 7               ; 3 uses
  %i.bmc = icmp ult i64 %i.bmb, 7
  br i1 %i.bmc, label %.lr.ph.i.i.i528.i.i.epil.preheader, label %.lr.ph.i.i.i528.i.i.preheader.new

.lr.ph.i.i.i528.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i528.i.i.preheader
  %unroll_iter4717 = and i64 %i.bma, -8
  br label %.lr.ph.i.i.i528.i.i

.lr.ph.i.i.i528.i.i:                              ; preds = %.lr.ph.i.i.i528.i.i, %.lr.ph.i.i.i528.i.i.preheader.new
  %.sroa.0.08.i.i.i529.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %i.bmk, %.lr.ph.i.i.i528.i.i ] ; 17 uses
  %niter4718 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %niter4718.next.7, %.lr.ph.i.i.i528.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !34972
  %i.bmd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmd, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !34972
  %i.bme = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bme, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !34972
  %i.bmf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmf, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !34972
  %i.bmg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmg, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !34972
  %i.bmh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmh, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !34972
  %i.bmi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmi, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !34972
  %i.bmj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmj, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !34972
  %i.bmk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22656 ; 3 uses
  %niter4718.next.7 = add i64 %niter4718, 8       ; 2 uses
  %niter4718.ncmp.7 = icmp eq i64 %niter4718.next.7, %unroll_iter4717
  br i1 %niter4718.ncmp.7, label %.loopexit254.i.i390.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i

.loopexit254.i.i390.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i
  %lcmp.mod4714.not = icmp eq i64 %xtraiter4712, 0
  br i1 %lcmp.mod4714.not, label %.loopexit254.i.i390, label %.lr.ph.i.i.i528.i.i.epil.preheader

.lr.ph.i.i.i528.i.i.epil.preheader:               ; preds = %.loopexit254.i.i390.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.preheader
  %.sroa.0.08.i.i.i529.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader ], [ %i.bmk, %.loopexit254.i.i390.loopexit.unr-lcssa ]
  %lcmp.mod4716 = icmp ne i64 %xtraiter4712, 0
  call void @llvm.assume(i1 %lcmp.mod4716)
  br label %.lr.ph.i.i.i528.i.i.epil

.lr.ph.i.i.i528.i.i.epil:                         ; preds = %.lr.ph.i.i.i528.i.i.epil, %.lr.ph.i.i.i528.i.i.epil.preheader
  %.sroa.0.08.i.i.i529.i.i.epil = phi ptr [ %i.bml, %.lr.ph.i.i.i528.i.i.epil ], [ %.sroa.0.08.i.i.i529.i.i.epil.init, %.lr.ph.i.i.i528.i.i.epil.preheader ] ; 3 uses
  %epil.iter4713 = phi i64 [ %epil.iter4713.next, %.lr.ph.i.i.i528.i.i.epil ], [ 0, %.lr.ph.i.i.i528.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i.epil, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !34972
  %i.bml = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2832 ; 2 uses
  %epil.iter4713.next = add i64 %epil.iter4713, 1 ; 2 uses
  %epil.iter4713.cmp.not = icmp eq i64 %epil.iter4713.next, %xtraiter4712
  br i1 %epil.iter4713.cmp.not, label %.loopexit254.i.i390, label %.lr.ph.i.i.i528.i.i.epil, !llvm.loop !34975

.loopexit254.i.i390:                              ; preds = %.loopexit254.i.i390.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h51ceadf79967c60eE.exit.i.i.i520.i.i" ], [ %i.bmk, %.loopexit254.i.i390.loopexit.unr-lcssa ], [ %i.bml, %.lr.ph.i.i.i528.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i526.i.i, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !34972
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3586.i.i) ]
  %.not227.i.i391 = icmp ugt i64 %.sroa.012.0592.i.i, %.sroa.14.3585.i.i
  br i1 %.not227.i.i391, label %bb.ke, label %bb.kd, !prof !2494

bb.kd:                                            ; preds = %.loopexit254.i.i390
  br i1 %i.blp, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i", label %.lr.ph.preheader.i.i.i392

.lr.ph.preheader.i.i.i392:                        ; preds = %bb.kd
  %i.bmm = mul nuw nsw i64 %.sroa.012.0592.i.i, 2832
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i, ptr nonnull readonly align 8 %.sroa.016.3586.i.i, i64 %i.bmm, i1 false), !alias.scope !34976, !noalias !34805
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i"

bb.ke:                                            ; preds = %.loopexit254.i.i390
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0592.i.i, i64 noundef %.sroa.14.3585.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1565) #43
          to label %bb.jf unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i", !noalias !34805

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i392, %bb.kd
  %i.bmn = icmp eq i64 %.sroa.14.3585.i.i, 0
  br i1 %i.bmn, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h141b1da56c8f9adbE.exit.i.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.3586.i.i) #38, !noalias !34805
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"

bb.kf:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"
  %i.bmo = icmp eq i64 %.sroa.023.0590.i.i, 0
  %..sroa.023.0.i.i385 = select i1 %i.bmo, i64 %i.blq, i64 %.sroa.023.0590.i.i
  br label %bb.kg

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i", %bb.kn, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i"
  %.sroa.12.5.i.i287 = phi i64 [ %.sroa.12.2583.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i" ], [ %.sroa.070.1.i.i386, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i386, %bb.kn ] ; 10 uses
  %.sroa.026.5.i.i288 = phi ptr [ %.sroa.026.2584.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i" ], [ %i.bna, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %i.bna, %bb.kn ] ; 11 uses
  %.sroa.023.1.i.i289 = phi i64 [ %.sroa.023.0590.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hfd622555539a5c88E.exit538.i.i" ], [ %.sroa.070.1.i.i386, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i386, %bb.kn ]
  %.not625.i.i = icmp eq i64 %i.blm, 0
  br i1 %.not625.i.i, label %.preheader253.i.i290, label %.lr.ph577.preheader.i.i

.lr.ph577.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"
  %reass.sub446.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i284, i64 %.sroa.0.0593.i.i)
  %i.bmp = add nuw nsw i64 %reass.sub446.i, 1
  %reass.sub447.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i287, i64 %.sroa.018.0591.i.i)
  %i.bmq = add nuw nsw i64 %reass.sub447.i, 1
  br label %.lr.ph577.i.i

bb.kg:                                            ; preds = %bb.kg, %bb.kf
  %.sroa.070.1.i.i386 = phi i64 [ %..sroa.023.0.i.i385, %bb.kf ], [ %i.bms, %bb.kg ] ; 9 uses
  %i.bmr = icmp ult i64 %.sroa.070.1.i.i386, %i.blq
  %i.bms = shl i64 %.sroa.070.1.i.i386, 1
  br i1 %i.bmr, label %bb.kg, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.bmt = shl i64 %.sroa.070.1.i.i386, 2         ; 4 uses
  %i.bmu = icmp ugt i64 %.sroa.070.1.i.i386, 4611686018427387903
  %i.bmv = icmp ugt i64 %i.bmt, 9223372036854775804
  %or.cond.i.i.i.i539.i.i = or i1 %i.bmu, %i.bmv
  br i1 %or.cond.i.i.i.i539.i.i, label %bb.kk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i: ; preds = %bb.kh
  %i.bmw = icmp eq i64 %i.bmt, 0
  br i1 %i.bmw, label %bb.kl, label %bb.ki

bb.ki:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !34983
  %i.bmx = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bmt, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34983 ; 2 uses
  %i.bmy = icmp eq ptr %i.bmx, null
  br i1 %i.bmy, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bmz = ptrtoint ptr %i.bmx to i64
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki, %bb.kh
  %.sroa.4.0.ph.i.i542.i.i = phi i64 [ 4, %bb.ki ], [ 0, %bb.kh ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i, i64 %i.bmt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc543.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.noexc543.i.i:                                    ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  %.sroa.10.0.i.i541.i.i = phi i64 [ %i.bmz, %bb.kj ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i ]
  %i.bna = inttoptr i64 %.sroa.10.0.i.i541.i.i to ptr ; 5 uses
  %i.bnb = icmp samesign ult i64 %.sroa.070.1.i.i386, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bnb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bna) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2584.i.i) ]
  %.not229.i.i387 = icmp ugt i64 %.sroa.023.0590.i.i, %.sroa.12.2583.i.i
  br i1 %.not229.i.i387, label %bb.km, label %bb.kn, !prof !2494

bb.km:                                            ; preds = %bb.kl
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0590.i.i, i64 noundef %.sroa.12.2583.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.jf unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i", !noalias !34805

bb.kn:                                            ; preds = %bb.kl
  %i.bnc = shl nuw nsw i64 %.sroa.023.0590.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bna, ptr nonnull readonly align 4 %.sroa.026.2584.i.i, i64 %i.bnc, i1 false), !alias.scope !34988, !noalias !34992
  %i.bnd = icmp eq i64 %.sroa.12.2583.i.i, 0
  br i1 %i.bnd, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i": ; preds = %bb.kn
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2584.i.i) #38, !noalias !34805
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"

.preheader253.i.i290:                             ; preds = %bb.kx, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"
  %.sroa.018.1.lcssa.i.i291 = phi i64 [ %.sroa.018.0591.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i" ], [ %i.boi, %bb.kx ]
  %.sroa.0.1.lcssa.i.i292 = phi i64 [ %.sroa.0.0593.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i" ], [ %i.bob, %bb.kx ]
  %11 = trunc i64 %.sroa.029.0589.i.i to i32
  br label %bb.ko

._crit_edge582.i.i:                               ; preds = %bb.kq
  %i.bne = add i64 %i.blm, %.sroa.029.0589.i.i    ; 23 uses
  %i.bnf = add i64 %.sroa.047.1587.i.i, 64        ; 2 uses
  %i.bng = icmp ult i64 %i.bnf, %.sroa.0.0.i.i204
  %indvars.iv.next.i.i293 = add i64 %indvars.iv.i.i271, -64
  br i1 %i.bng, label %.split.i.i270, label %bb.id

bb.ko:                                            ; preds = %bb.kq, %.preheader253.i.i290
  %i.bnh = phi i64 [ 1, %.preheader253.i.i290 ], [ %i.bns, %bb.kq ] ; 3 uses
  %.sroa.0133.0580.i.i = phi i64 [ 0, %.preheader253.i.i290 ], [ %i.bnh, %bb.kq ] ; 2 uses
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0133.0580.i.i
  %i.bnj = load i32, ptr %i.bni, align 4, !noalias !34805, !noundef !27 ; 2 uses
  %i.bnk = zext i32 %i.bnj to i64                 ; 2 uses
  %i.bnl = icmp ult i32 %i.bnj, 64
  br i1 %i.bnl, label %bb.kp, label %.invoke3974

bb.kp:                                            ; preds = %bb.ko
  %i.bnm = or disjoint i64 %.sroa.0133.0580.i.i, %.sroa.047.1587.i.i ; 3 uses
  %i.bnn = icmp ult i64 %i.bnm, %.sroa.0.0.i.i204
  br i1 %i.bnn, label %bb.kq, label %.invoke3974

bb.kq:                                            ; preds = %bb.kp
  %i.bno = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bnk
  %i.bnp = load i32, ptr %i.bno, align 4, !noalias !34805, !noundef !27
  %i.bnq = add i32 %i.bnp, %11
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %i.bnm
  store i32 %i.bnq, ptr %i.bnr, align 4, !noalias !34805
  %i.bns = add nuw nsw i64 %i.bnh, 1
  %exitcond857.not.i.i = icmp eq i64 %i.bnh, %umax856.i.i
  br i1 %exitcond857.not.i.i, label %._crit_edge582.i.i, label %bb.ko

.lr.ph577.i.i:                                    ; preds = %bb.kx, %.lr.ph577.preheader.i.i
  %i.bnt = phi i64 [ %i.bol, %bb.kx ], [ 1, %.lr.ph577.preheader.i.i ] ; 6 uses
  %.sroa.0.1576.i.i = phi i64 [ %i.bob, %bb.kx ], [ %.sroa.0.0593.i.i, %.lr.ph577.preheader.i.i ] ; 3 uses
  %.sroa.018.1575.i.i = phi i64 [ %i.boi, %bb.kx ], [ %.sroa.018.0591.i.i, %.lr.ph577.preheader.i.i ] ; 3 uses
  %.sroa.0131.0574.i.i = phi i64 [ %i.bnt, %bb.kx ], [ 0, %.lr.ph577.preheader.i.i ] ; 2 uses
  %exitcond850.not.i.i = icmp eq i64 %i.bnt, 65
  br i1 %exitcond850.not.i.i, label %.invoke3974, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph577.i.i
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0131.0574.i.i ; 2 uses
  %i.bnv = load i32, ptr %i.bnu, align 4, !noalias !34805, !noundef !27
  %i.bnw = zext i32 %i.bnv to i64                 ; 4 uses
  %i.bnx = icmp samesign ugt i64 %.sroa.0.0.i422.i.i219, %i.bnw
  br i1 %i.bnx, label %bb.kt, label %.invoke3974

bb.ks:                                            ; preds = %bb.ku
  %i.bny = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

bb.kt:                                            ; preds = %bb.kr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i285) ]
  %exitcond852.not.i.i = icmp eq i64 %i.bnt, %i.bmp
  br i1 %exitcond852.not.i.i, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1576.i.i, i64 noundef %.sroa.14.7.i.i284, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.jf unwind label %bb.ks, !noalias !34805

bb.kv:                                            ; preds = %bb.kt
  %i.bnz = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427933.i.i, i64 %i.bnw
  %i.boa = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.016.7.i.i285, i64 %.sroa.0.1576.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.boa, ptr noundef nonnull align 8 dereferenceable(2832) %i.bnz, i64 2832, i1 false), !noalias !34805
  %i.bob = add nuw i64 %.sroa.0.1576.i.i, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i288) ]
  %exitcond854.not.i.i = icmp eq i64 %i.bnt, %i.bmq
  br i1 %exitcond854.not.i.i, label %.invoke3974, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.boc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bnw
  %i.bod = load i32, ptr %i.boc, align 4, !noalias !34805, !noundef !27
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i288, i64 %.sroa.018.1575.i.i
  store i32 %i.bod, ptr %i.boe, align 4, !noalias !34805
  %i.bof = load i32, ptr %i.bnu, align 4, !noalias !34805, !noundef !27 ; 2 uses
  %i.bog = zext i32 %i.bof to i64                 ; 2 uses
  %i.boh = icmp ult i32 %i.bof, 64
  br i1 %i.boh, label %bb.kx, label %.invoke3974

bb.kx:                                            ; preds = %bb.kw
  %i.boi = add nuw i64 %.sroa.018.1575.i.i, 1     ; 2 uses
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bog
  %i.bok = trunc nuw nsw i64 %.sroa.0131.0574.i.i to i32
  store i32 %i.bok, ptr %i.boj, align 4, !noalias !34805
  %i.bol = add nuw nsw i64 %i.bnt, 1
  %exitcond855.not.i.i = icmp eq i64 %i.bnt, %i.blm
  br i1 %exitcond855.not.i.i, label %.preheader253.i.i290, label %.lr.ph577.i.i

.invoke3974:                                      ; preds = %bb.kw, %bb.kv, %bb.kr, %.lr.ph577.i.i, %bb.kp, %bb.ko
  %i.bom = phi i64 [ %i.bnm, %bb.kp ], [ %i.bnk, %bb.ko ], [ %i.bog, %bb.kw ], [ 64, %.lr.ph577.i.i ], [ %i.bnw, %bb.kr ], [ %.sroa.018.1575.i.i, %bb.kv ]
  %i.bon = phi i64 [ %.sroa.0.0.i.i204, %bb.kp ], [ 64, %bb.ko ], [ 64, %bb.kw ], [ 64, %.lr.ph577.i.i ], [ %.sroa.0.0.i422.i.i219, %bb.kr ], [ %.sroa.12.5.i.i287, %bb.kv ]
  %i.boo = phi ptr [ @1558, %bb.kp ], [ @1557, %bb.ko ], [ @1563, %bb.kw ], [ @1559, %.lr.ph577.i.i ], [ @1560, %bb.kr ], [ @1562, %bb.kv ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bom, i64 noundef %i.bon, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.boo) #43
          to label %.cont3975 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.cont3975:                                        ; preds = %.invoke3974
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i": ; preds = %bb.km
  %i.bop = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.bna) #38, !noalias !34805
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i": ; preds = %bb.ke
  %i.boq = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i) #38, !noalias !34805
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

.lr.ph571.i.i:                                    ; preds = %bb.kz, %.split.i.i270
  %.sroa.0127.1570.i.i = phi i64 [ %.sroa.0127.1.i.i280, %bb.kz ], [ 1, %.split.i.i270 ] ; 3 uses
  %.sroa.043.3569.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i277, %bb.kz ], [ %.sroa.043.0588.i.i, %.split.i.i270 ] ; 3 uses
  %.sroa.0127.0568.i.i = phi i64 [ %.sroa.0127.1570.i.i, %bb.kz ], [ 0, %.split.i.i270 ] ; 6 uses
  %i.bor = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427933.i.i, i64 %.sroa.0127.0568.i.i ; 5 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 2816 ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bor, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bor, i8 0, i64 2824, i1 false), !noalias !34805
  store float 3.402000e+38, ptr %i.bot, align 8, !alias.scope !34994, !noalias !34805
  %i.bou = add nuw nsw i64 %.sroa.0127.0568.i.i, %.sroa.047.1587.i.i ; 3 uses
  %i.bov = icmp ult i64 %i.bou, %.sroa.0.0.i.i204
  br i1 %i.bov, label %bb.ky, label %.invoke3972

bb.ky:                                            ; preds = %.lr.ph571.i.i
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %i.bou
  %i.box = load i32, ptr %i.bow, align 4, !noalias !34805, !noundef !27 ; 2 uses
  %.not.i169.i = icmp eq i32 %i.box, 0
  br i1 %.not.i169.i, label %._crit_edge.i.i276, label %.lr.ph.preheader.i.i273

.lr.ph.preheader.i.i273:                          ; preds = %bb.ky
  %i.boy = zext i32 %i.box to i64
  %reass.sub.i274 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3569.i.i)
  %i.boz = add nuw nsw i64 %reass.sub.i274, 1
  br label %.lr.ph.i.i275

._crit_edge.i.i276:                               ; preds = %bb.lb, %bb.ky
  %.sroa.043.4.lcssa.i.i277 = phi i64 [ %.sroa.043.3569.i.i, %bb.ky ], [ %i.bpu, %bb.lb ] ; 2 uses
  %i.bpa = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.bor)
          to label %bb.kz unwind label %.thread163.loopexit.i.i278, !noalias !34805

bb.kz:                                            ; preds = %._crit_edge.i.i276
  store float %i.bpa, ptr %i.bot, align 8, !alias.scope !34997, !noalias !34805
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0127.0568.i.i
  %i.bpc = trunc nuw nsw i64 %.sroa.0127.0568.i.i to i32 ; 2 uses
  store i32 %i.bpc, ptr %i.bpb, align 4, !noalias !34805
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0127.0568.i.i
  store i32 %i.bpc, ptr %i.bpd, align 4, !noalias !34805
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.0127.0568.i.i
  store i32 1, ptr %i.bpe, align 4, !noalias !34805
  %i.bpf = icmp samesign ult i64 %.sroa.0127.1570.i.i, %.sroa.0.0.i447.i.i272 ; 2 uses
  %i.bpg = zext i1 %i.bpf to i64
  %.sroa.0127.1.i.i280 = add nuw i64 %.sroa.0127.1570.i.i, %i.bpg
  br i1 %i.bpf, label %.lr.ph571.i.i, label %._crit_edge572.i.i

.lr.ph.i.i275:                                    ; preds = %bb.lb, %.lr.ph.preheader.i.i273
  %i.bph = phi i64 [ %i.bpv, %bb.lb ], [ 1, %.lr.ph.preheader.i.i273 ] ; 3 uses
  %.sroa.043.4567.i.i = phi i64 [ %i.bpu, %bb.lb ], [ %.sroa.043.3569.i.i, %.lr.ph.preheader.i.i273 ] ; 3 uses
  %exitcond848.not.i.i = icmp eq i64 %i.bph, %i.boz
  br i1 %exitcond848.not.i.i, label %.invoke3972, label %bb.la

bb.la:                                            ; preds = %.lr.ph.i.i275
  %i.bpi = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %.sroa.043.4567.i.i
  %i.bpj = load i16, ptr %i.bpi, align 2, !alias.scope !35000, !noalias !34954, !noundef !27 ; 2 uses
  %i.bpk = zext i16 %i.bpj to i64                 ; 2 uses
  %i.bpl = icmp ult i16 %i.bpj, 704
  br i1 %i.bpl, label %bb.lb, label %.invoke3972

.invoke3972:                                      ; preds = %.lr.ph571.i.i, %bb.la, %.lr.ph.i.i275
  %i.bpm = phi i64 [ %.sroa.043.4567.i.i, %.lr.ph.i.i275 ], [ %i.bpk, %bb.la ], [ %i.bou, %.lr.ph571.i.i ]
  %i.bpn = phi i64 [ %2, %.lr.ph.i.i275 ], [ 704, %bb.la ], [ %.sroa.0.0.i.i204, %.lr.ph571.i.i ]
  %i.bpo = phi ptr [ @1567, %.lr.ph.i.i275 ], [ @1931, %bb.la ], [ @1566, %.lr.ph571.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bpm, i64 noundef %i.bpn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bpo) #43
          to label %.cont3973 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.cont3973:                                        ; preds = %.invoke3972
  unreachable

bb.lb:                                            ; preds = %bb.la
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.bor, i64 %i.bpk ; 2 uses
  %i.bpq = load i32, ptr %i.bpp, align 4, !alias.scope !35003, !noalias !34805, !noundef !27
  %i.bpr = add i32 %i.bpq, 1
  store i32 %i.bpr, ptr %i.bpp, align 4, !alias.scope !35003, !noalias !34805
  %i.bps = load i64, ptr %i.bos, align 8, !alias.scope !35006, !noalias !34805, !noundef !27
  %i.bpt = add i64 %i.bps, 1
  store i64 %i.bpt, ptr %i.bos, align 8, !alias.scope !35009, !noalias !34805
  %i.bpu = add nuw i64 %.sroa.043.4567.i.i, 1     ; 2 uses
  %i.bpv = add nuw nsw i64 %i.bph, 1
  %exitcond849.not.i.i = icmp eq i64 %i.bph, %i.boy
  br i1 %exitcond849.not.i.i, label %._crit_edge.i.i276, label %.lr.ph.i.i275

bb.lc:                                            ; preds = %bb.lf, %bb.ib
  %.sroa.047.0565.i.i = phi i64 [ 0, %bb.ib ], [ %i.bqa, %bb.lf ] ; 2 uses
  %.sroa.059.0564.i.i = phi i64 [ 0, %bb.ib ], [ %.sroa.059.1.i.i269, %bb.lf ] ; 5 uses
  %i.bpw = icmp ult i64 %.sroa.059.0564.i.i, %.sroa.0.0.i.i204
  br i1 %i.bpw, label %bb.ld, label %.invoke.i.i229

bb.ld:                                            ; preds = %bb.lc
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %.sroa.059.0564.i.i ; 2 uses
  %i.bpy = load i32, ptr %i.bpx, align 4, !noalias !34805, !noundef !27
  %i.bpz = add i32 %i.bpy, 1
  store i32 %i.bpz, ptr %i.bpx, align 4, !noalias !34805
  %i.bqa = add nuw i64 %.sroa.047.0565.i.i, 1     ; 3 uses
  %i.bqb = icmp eq i64 %i.bqa, %2                 ; 2 uses
  br i1 %i.bqb, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.sroa.047.0565.i.i
  %i.bqd = load i8, ptr %i.bqc, align 1, !alias.scope !34791, !noalias !35012, !noundef !27
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.axz, i64 %i.bqa
  %i.bqf = load i8, ptr %i.bqe, align 1, !alias.scope !34791, !noalias !35012, !noundef !27
  %.not238.i.i268 = icmp eq i8 %i.bqd, %i.bqf
  br i1 %.not238.i.i268, label %bb.lf, label %bb.lg

.invoke.i.i229:                                   ; preds = %bb.lc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i, i64 noundef %.sroa.0.0.i.i204, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i267 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34805

.cont.i.i267:                                     ; preds = %.invoke.i.i229
  unreachable

bb.lf:                                            ; preds = %bb.lg, %bb.le
  %.sroa.059.1.i.i269 = phi i64 [ %i.bqg, %bb.lg ], [ %.sroa.059.0564.i.i, %bb.le ]
  br i1 %i.bqb, label %.split.i.i270, label %bb.lc

bb.lg:                                            ; preds = %bb.le, %bb.ld
  %i.bqg = add nuw nsw i64 %.sroa.059.0564.i.i, 1
  br label %bb.lf

.thread130.i.i306:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i", %.loopexit.split-lp.i.i322, %bb.ic
  %.pn230155.i.i307 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i305, %bb.ic ], [ %.pn.i.i327, %.loopexit.split-lp.i.i322 ], [ %.pn953.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i308 = phi ptr [ %.sroa.016.7.i.i285, %bb.ic ], [ %.sroa.016.6.i.i326, %.loopexit.split-lp.i.i322 ], [ %.sroa.016.6952.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i309 = phi i64 [ %.sroa.14.7.i.i284, %bb.ic ], [ %.sroa.14.6.i.i325, %.loopexit.split-lp.i.i322 ], [ %.sroa.14.6951.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i310 = phi ptr [ %.sroa.026.4.ph162.i.i304, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i322 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i311 = phi i64 [ %.sroa.12.4.ph161.i.i303, %bb.ic ], [ 0, %.loopexit.split-lp.i.i322 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i312 = phi ptr [ %.sroa.044.1.ph160.i.i302, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i322 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.11.0147.i.i313 = phi i1 [ %.sroa.11.1.ph159.i.i301, %bb.ic ], [ true, %.loopexit.split-lp.i.i322 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.051.0146.i.i314 = phi ptr [ %i.bcu, %bb.ic ], [ %.sroa.051.2.i.i324, %.loopexit.split-lp.i.i322 ], [ %.sroa.051.2950.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i315 = phi i64 [ %i.bne, %bb.ic ], [ %.sroa.1152.2.i.i323, %.loopexit.split-lp.i.i322 ], [ %.sroa.1152.2949.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %i.bqh = icmp eq i64 %.sroa.1152.0145.i.i315, 0
  br i1 %i.bqh, label %bb.jd, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i": ; preds = %.thread130.i.i306
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i314) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i314) #38, !noalias !34805
  br label %bb.jd

bb.lh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i", %bb.hv, %.thread86.i.i403
  %.pn230.pn.pn.pn.pn.pn90.i.i265 = phi { ptr, i32 } [ %i.bat, %.thread86.i.i403 ], [ %.pn230.pn.pn.pn.pn100.i.i263, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i" ], [ %.pn230.pn.pn.pn.i.i261, %bb.hv ] ; 2 uses
  %i.bqi = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.bqi, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i": ; preds = %bb.lh
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i207) #38, !noalias !34805
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i": ; preds = %bb.hp
  %i.bqj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqk = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.bqk, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i"
  %i.bql = phi ptr [ %i.azy, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i" ], [ %i.azt, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85958.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i265, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i" ], [ %i.bqj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bql) ]
  tail call void @mi_free(ptr noundef nonnull %i.bql) #38, !noalias !34805
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i"

bb.li:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, %.split.i76
  %.sroa.032.1442.i = phi i64 [ 1, %.split.i76 ], [ %.sroa.032.1.i206, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i = phi i64 [ %spec.store.select.i44, %.split.i76 ], [ %i.cgk, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35024)
  %i.bqm = icmp eq i64 %.sroa.0.0441.i, 0
  br i1 %i.bqm, label %.loopexit.i203, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bqn = add i64 %.sroa.0.0441.i, 7
  %i.bqo = lshr i64 %i.bqn, 3                     ; 8 uses
  %i.bqp = icmp eq i64 %.sroa.0.0441.i, 1
  br i1 %i.bqp, label %.preheader.i.i413.preheader, label %bb.lk

.preheader.i.i413.preheader:                      ; preds = %bb.lj
  br i1 %min.iters.check3813, label %.preheader.i.i413.preheader4374, label %vector.body3816

.preheader.i.i413.preheader4374:                  ; preds = %vector.body3816, %.preheader.i.i413.preheader
  %.ph4375 = phi i64 [ 1, %.preheader.i.i413.preheader ], [ %i.azl, %vector.body3816 ]
  %.sroa.066.0449.i.i414.ph = phi i64 [ 0, %.preheader.i.i413.preheader ], [ %n.vec3815, %vector.body3816 ]
  br label %.preheader.i.i413

vector.body3816:                                  ; preds = %.preheader.i.i413.preheader, %vector.body3816
  %index3817 = phi i64 [ %index.next3818, %vector.body3816 ], [ 0, %.preheader.i.i413.preheader ] ; 2 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.axz, i64 %index3817 ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 16
  store <16 x i8> zeroinitializer, ptr %i.bqq, align 1, !alias.scope !35024, !noalias !35026
  store <16 x i8> zeroinitializer, ptr %i.bqr, align 1, !alias.scope !35024, !noalias !35026
  %index.next3818 = add nuw i64 %index3817, 32    ; 2 uses
  %i.bqs = icmp eq i64 %index.next3818, %n.vec3815
  br i1 %i.bqs, label %.preheader.i.i413.preheader4374, label %vector.body3816, !llvm.loop !35027

bb.lk:                                            ; preds = %bb.lj
  %.not121.i.i79 = icmp ugt i64 %.sroa.0.0441.i, %spec.store.select.i44
  br i1 %.not121.i.i79, label %bb.ll, label %.preheader360.i.i80, !prof !2494

bb.ll:                                            ; preds = %bb.lk
  %i.bqt = mul nuw nsw i64 %.sroa.0.0441.i, 704
  br label %.invoke1203.i
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.6.0.copyload.i.i128 = load float, ptr %.sroa.6.0..sroa_idx.i.i127, align 4, !alias.scope !35045, !noalias !35028
  %.sroa.7.0..sroa_idx.i.i129 = getelementptr inbounds nuw i8, ptr %i.cdp, i64 12
  %.sroa.7.0.copyload.i.i130 = load float, ptr %.sroa.7.0..sroa_idx.i.i129, align 4, !alias.scope !35045, !noalias !35028
  %.sroa.8.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %i.cdp, i64 16
  %.sroa.8.0.copyload.i.i132 = load float, ptr %.sroa.8.0..sroa_idx.i.i131, align 4, !alias.scope !35045, !noalias !35028
  %.sroa.9.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %i.cdp, i64 20
  %.sroa.9.0.copyload.i.i134 = load float, ptr %.sroa.9.0..sroa_idx.i.i133, align 4, !alias.scope !35045, !noalias !35028
  %.sroa.10.0..sroa_idx.i.i135 = getelementptr inbounds nuw i8, ptr %i.cdp, i64 24
  %.sroa.10.0.copyload.i.i136 = load float, ptr %.sroa.10.0..sroa_idx.i.i135, align 4, !alias.scope !35045, !noalias !35028
  %.sroa.11.0..sroa_idx.i.i137 = getelementptr inbounds nuw i8, ptr %i.cdp, i64 28
  %.sroa.11.0.copyload.i.i138 = load float, ptr %.sroa.11.0..sroa_idx.i.i137, align 4, !alias.scope !35045, !noalias !35028
  %i.cdq = load float, ptr %.sroa.0164.0412.i.i118, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.cdr = fadd float %.sroa.0.0.copyload.i.i124, %i.cdq ; 3 uses
  store float %i.cdr, ptr %.sroa.0164.0412.i.i118, align 4, !alias.scope !35020, !noalias !35029
  %i.cds = fcmp olt float %i.cdr, %.sroa.029.0413.i.i117
  br i1 %i.cds, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.cdt = trunc i64 %i.buo to i8
  store i8 %i.cdt, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx
  %.sroa.029.4.i.i139 = phi float [ %i.cdr, %bb.my ], [ %.sroa.029.0413.i.i117, %bb.mx ] ; 2 uses
  %i.cdu = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 4 ; 2 uses
  %i.cdv = load float, ptr %i.cdu, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.cdw = fadd float %.sroa.5.0.copyload.i.i126, %i.cdv ; 3 uses
  store float %i.cdw, ptr %i.cdu, align 4, !alias.scope !35020, !noalias !35029
  %i.cdx = fcmp olt float %i.cdw, %.sroa.029.4.i.i139
  br i1 %i.cdx, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.cdy = trunc i64 %i.buo to i8
  %i.cdz = or disjoint i8 %i.cdy, 1
  store i8 %i.cdz, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.sroa.029.4.1.i.i140 = phi float [ %i.cdw, %bb.na ], [ %.sroa.029.4.i.i139, %bb.mz ] ; 2 uses
  %i.cea = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 8 ; 2 uses
  %i.ceb = load float, ptr %i.cea, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.cec = fadd float %.sroa.6.0.copyload.i.i128, %i.ceb ; 3 uses
  store float %i.cec, ptr %i.cea, align 4, !alias.scope !35020, !noalias !35029
  %i.ced = fcmp olt float %i.cec, %.sroa.029.4.1.i.i140
  br i1 %i.ced, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.cee = trunc i64 %i.buo to i8
  %i.cef = or disjoint i8 %i.cee, 2
  store i8 %i.cef, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %.sroa.029.4.2.i.i141 = phi float [ %i.cec, %bb.nc ], [ %.sroa.029.4.1.i.i140, %bb.nb ] ; 2 uses
  %i.ceg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 12 ; 2 uses
  %i.ceh = load float, ptr %i.ceg, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.cei = fadd float %.sroa.7.0.copyload.i.i130, %i.ceh ; 3 uses
  store float %i.cei, ptr %i.ceg, align 4, !alias.scope !35020, !noalias !35029
  %i.cej = fcmp olt float %i.cei, %.sroa.029.4.2.i.i141
  br i1 %i.cej, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.cek = trunc i64 %i.buo to i8
  %i.cel = or disjoint i8 %i.cek, 3
  store i8 %i.cel, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.sroa.029.4.3.i.i142 = phi float [ %i.cei, %bb.ne ], [ %.sroa.029.4.2.i.i141, %bb.nd ] ; 2 uses
  %i.cem = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 16 ; 2 uses
  %i.cen = load float, ptr %i.cem, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.ceo = fadd float %.sroa.8.0.copyload.i.i132, %i.cen ; 3 uses
  store float %i.ceo, ptr %i.cem, align 4, !alias.scope !35020, !noalias !35029
  %i.cep = fcmp olt float %i.ceo, %.sroa.029.4.3.i.i142
  br i1 %i.cep, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.ceq = trunc i64 %i.buo to i8
  %i.cer = or disjoint i8 %i.ceq, 4
  store i8 %i.cer, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.sroa.029.4.4.i.i143 = phi float [ %i.ceo, %bb.ng ], [ %.sroa.029.4.3.i.i142, %bb.nf ] ; 2 uses
  %i.ces = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 20 ; 2 uses
  %i.cet = load float, ptr %i.ces, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.ceu = fadd float %.sroa.9.0.copyload.i.i134, %i.cet ; 3 uses
  store float %i.ceu, ptr %i.ces, align 4, !alias.scope !35020, !noalias !35029
  %i.cev = fcmp olt float %i.ceu, %.sroa.029.4.4.i.i143
  br i1 %i.cev, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.cew = trunc i64 %i.buo to i8
  %i.cex = or disjoint i8 %i.cew, 5
  store i8 %i.cex, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.nh
  %.sroa.029.4.5.i.i144 = phi float [ %i.ceu, %bb.ni ], [ %.sroa.029.4.4.i.i143, %bb.nh ] ; 2 uses
  %i.cey = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 24 ; 2 uses
  %i.cez = load float, ptr %i.cey, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.cfa = fadd float %.sroa.10.0.copyload.i.i136, %i.cez ; 3 uses
  store float %i.cfa, ptr %i.cey, align 4, !alias.scope !35020, !noalias !35029
  %i.cfb = fcmp olt float %i.cfa, %.sroa.029.4.5.i.i144
  br i1 %i.cfb, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cfc = trunc i64 %i.buo to i8
  %i.cfd = or disjoint i8 %i.cfc, 6
  store i8 %i.cfd, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.029.4.6.i.i145 = phi float [ %i.cfa, %bb.nk ], [ %.sroa.029.4.5.i.i144, %bb.nj ] ; 2 uses
  %i.cfe = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 28 ; 2 uses
  %i.cff = load float, ptr %i.cfe, align 4, !alias.scope !35020, !noalias !35029, !noundef !27
  %i.cfg = fadd float %.sroa.11.0.copyload.i.i138, %i.cff ; 3 uses
  store float %i.cfg, ptr %i.cfe, align 4, !alias.scope !35020, !noalias !35029
  %i.cfh = fcmp olt float %i.cfg, %.sroa.029.4.6.i.i145
  br i1 %i.cfh, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  %i.cfi = trunc i64 %i.buo to i8
  %i.cfj = or disjoint i8 %i.cfi, 7
  store i8 %i.cfj, ptr %i.buf, align 1, !alias.scope !35024, !noalias !35026
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %.sroa.029.4.7.i.i146 = phi float [ %i.cfg, %bb.nm ], [ %.sroa.029.4.6.i.i145, %bb.nl ] ; 2 uses
  %i.cfk = icmp eq ptr %i.bum, %i.brd
  br i1 %i.cfk, label %._crit_edge416.i.i147, label %.lr.ph415.i.i116

bb.no:                                            ; preds = %bb.nq, %.split.i178.i
  %i.cfl = phi i64 [ 1, %.split.i178.i ], [ %i.cfv, %bb.nq ] ; 4 uses
  %.sroa.071.0400.i.i86 = phi i64 [ 0, %.split.i178.i ], [ %i.cfl, %bb.nq ] ; 4 uses
  %i.cfm = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %.sroa.071.0400.i.i86
  %i.cfn = load float, ptr %i.cfm, align 4, !alias.scope !35018, !noalias !35028, !noundef !27
  %exitcond482.not.i.i87 = icmp eq i64 %i.cfl, %i.azb
  br i1 %exitcond482.not.i.i87, label %.invoke.i97, label %bb.np

bb.np:                                            ; preds = %bb.no
  %gep.i.i88 = getelementptr [2832 x i8], ptr %invariant.gep.i.i85, i64 %.sroa.071.0400.i.i86
  %i.cfo = load i32, ptr %gep.i.i88, align 4, !alias.scope !35016, !noalias !35049, !noundef !27
  %i.cfp = zext i32 %i.cfo to i64
  %i.cfq = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.cfp)
          to label %.noexc198.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i89", !noalias !34682

.noexc198.i:                                      ; preds = %bb.np
  %i.cfr = add nuw nsw i64 %.sroa.071.0400.i.i86, %i.brb ; 3 uses
  %i.cfs = icmp ult i64 %i.cfr, %i.ayd
  br i1 %i.cfs, label %bb.nq, label %.invoke.i97

bb.nq:                                            ; preds = %.noexc198.i
  %i.cft = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %i.cfr
  %i.cfu = fsub float %i.cfn, %i.cfq
  store float %i.cfu, ptr %i.cft, align 4, !alias.scope !35018, !noalias !35028
  %i.cfv = add nuw nsw i64 %i.cfl, 1
  %exitcond483.not.i.i = icmp eq i64 %i.cfl, %.sroa.0.0441.i
  br i1 %exitcond483.not.i.i, label %.loopexit358.i.i100, label %bb.no

bb.nr:                                            ; preds = %bb.lm
  %i.cfw = getelementptr inbounds nuw [2832 x i8], ptr %i.atf, i64 %.sroa.069.0399.i.i82
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfw, i64 2816
  %i.cfy = load i64, ptr %i.cfx, align 8, !alias.scope !35050, !noalias !35049, !noundef !27
  %i.cfz = and i64 %i.cfy, 4294967295             ; 3 uses
  %i.cga = icmp samesign ult i64 %i.cfz, 256
  br i1 %i.cga, label %bb.nu, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cgb = uitofp nneg i64 %i.cfz to float
  %i.cgc = tail call float @llvm.log2.f32(float %i.cgb)
  br label %bb.nt

bb.nt:                                            ; preds = %bb.nu, %bb.ns
  %.sroa.016.0.i.i83 = phi float [ %i.cgg, %bb.nu ], [ %i.cgc, %bb.ns ]
  %i.cgd = getelementptr inbounds nuw [4 x i8], ptr %i.ayf, i64 %.sroa.069.0399.i.i82
  store float %.sroa.016.0.i.i83, ptr %i.cgd, align 4, !alias.scope !35018, !noalias !35028
  %i.cge = add nuw nsw i64 %i.bqx, 1
  %exitcond480.not.i.i = icmp eq i64 %i.bqx, %.sroa.0.0441.i
  br i1 %exitcond480.not.i.i, label %.split.i178.i, label %bb.lm

bb.nu:                                            ; preds = %bb.nr
  %i.cgf = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.cfz
  %i.cgg = load float, ptr %i.cgf, align 4, !noalias !35035, !noundef !27
  br label %bb.nt

.preheader.i.i413:                                ; preds = %.preheader.i.i413.preheader4374, %bb.nv
  %i.cgh = phi i64 [ %i.cgj, %bb.nv ], [ %.ph4375, %.preheader.i.i413.preheader4374 ] ; 4 uses
  %.sroa.066.0449.i.i414 = phi i64 [ %i.cgh, %bb.nv ], [ %.sroa.066.0449.i.i414.ph, %.preheader.i.i413.preheader4374 ] ; 2 uses
  %exitcond488.not.i.i415 = icmp eq i64 %i.cgh, %i.azf
  br i1 %exitcond488.not.i.i415, label %.invoke.i97, label %bb.nv

bb.nv:                                            ; preds = %.preheader.i.i413
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.sroa.066.0449.i.i414
  store i8 0, ptr %i.cgi, align 1, !alias.scope !35024, !noalias !35026
  %i.cgj = add nuw nsw i64 %i.cgh, 1
  %exitcond489.not.i.i = icmp eq i64 %i.cgh, %2
  br i1 %exitcond489.not.i.i, label %.loopexit.i203, label %.preheader.i.i413, !llvm.loop !35053

.loopexit.i203:                                   ; preds = %bb.lq, %bb.nv, %bb.li
  %.sroa.0.0.i.i204 = phi i64 [ 0, %bb.li ], [ 1, %bb.nv ], [ %.sroa.03.1.i.i201, %bb.lq ] ; 31 uses
  %i.cgk = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.axz, i64 noundef %2, i64 noundef %2, ptr noalias noundef nonnull align 2 %i.ayx, i64 noundef %spec.store.select.i44, i64 noundef %.sroa.0.0441.i)
          to label %bb.nw unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i205", !noalias !34682 ; 5 uses

bb.nw:                                            ; preds = %.loopexit.i203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35059)
  %.not.i.i204.i = icmp ugt i64 %i.cgk, %spec.store.select.i44
  br i1 %.not.i.i204.i, label %.invoke1203.i, label %bb.nx, !prof !2494

bb.nx:                                            ; preds = %bb.nw
  %.idx.i.i205.i = mul i64 %i.cgk, 2832           ; 2 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.atf, i64 %.idx.i.i205.i
  %i.cgm = icmp eq i64 %i.cgk, 0
  br i1 %i.cgm, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i206.i.preheader

.lr.ph.i.i206.i.preheader:                        ; preds = %bb.nx
  %i.cgn = add i64 %.idx.i.i205.i, -2832          ; 2 uses
  %i.cgo = udiv i64 %i.cgn, 2832
  %i.cgp = add nuw nsw i64 %i.cgo, 1
  %xtraiter4694 = and i64 %i.cgp, 7               ; 2 uses
  %lcmp.mod4695.not = icmp eq i64 %xtraiter4694, 0
  br i1 %lcmp.mod4695.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol

.lr.ph.i.i206.i.prol:                             ; preds = %.lr.ph.i.i206.i.preheader, %.lr.ph.i.i206.i.prol
  %.sroa.02.05.i.i207.i.prol = phi ptr [ %i.cgq, %.lr.ph.i.i206.i.prol ], [ %i.atf, %.lr.ph.i.i206.i.preheader ] ; 3 uses
  %prol.iter4696 = phi i64 [ %prol.iter4696.next, %.lr.ph.i.i206.i.prol ], [ 0, %.lr.ph.i.i206.i.preheader ]
  %i.cgq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 2832 ; 2 uses
  %i.cgr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i207.i.prol, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.cgr, align 8, !alias.scope !35065, !noalias !35064
  %prol.iter4696.next = add i64 %prol.iter4696, 1 ; 2 uses
  %prol.iter4696.cmp.not = icmp eq i64 %prol.iter4696.next, %xtraiter4694
  br i1 %prol.iter4696.cmp.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol, !llvm.loop !35068

.lr.ph.i.i206.i.prol.loopexit:                    ; preds = %.lr.ph.i.i206.i.prol, %.lr.ph.i.i206.i.preheader
  %.sroa.02.05.i.i207.i.unr = phi ptr [ %i.atf, %.lr.ph.i.i206.i.preheader ], [ %i.cgq, %.lr.ph.i.i206.i.prol ]
  %i.cgs = icmp ult i64 %i.cgn, 19824
  br i1 %i.cgs, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i206.i

.lr.ph.i.i206.i:                                  ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i
  %.sroa.02.05.i.i207.i = phi ptr [ %i.chh, %.lr.ph.i.i206.i ], [ %.sroa.02.05.i.i207.i.unr, %.lr.ph.i.i206.i.prol.loopexit ] ; 17 uses
  %i.cgt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2832
  %i.cgu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i207.i, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.cgu, align 8, !alias.scope !35065, !noalias !35064
  %i.cgv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5664
  %i.cgw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cgt, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.cgw, align 8, !alias.scope !35065, !noalias !35064
  %i.cgx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8496
  %i.cgy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cgv, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.cgy, align 8, !alias.scope !35065, !noalias !35064
  %i.cgz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 11328
  %i.cha = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cgx, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.cha, align 8, !alias.scope !35065, !noalias !35064
  %i.chb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 14160
  %i.chc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cgz, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.chc, align 8, !alias.scope !35065, !noalias !35064
  %i.chd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 16992
  %i.che = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chb, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.che, align 8, !alias.scope !35065, !noalias !35064
  %i.chf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 19824
  %i.chg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chd, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.chg, align 8, !alias.scope !35065, !noalias !35064
  %i.chh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 22656 ; 2 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chf, i8 0, i64 2824, i1 false), !alias.scope !35061, !noalias !35064
  store float 3.402000e+38, ptr %i.chi, align 8, !alias.scope !35065, !noalias !35064
  %i.chj = icmp eq ptr %i.chh, %i.cgl
  br i1 %i.chj, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, label %.lr.ph.i.i206.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader: ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i, %bb.nx
  br label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.chk, %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i.preheader ] ; 3 uses
  %i.chk = add nuw i64 %.sroa.01.013.i.i, 1       ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.sroa.01.013.i.i
  %i.chm = load i8, ptr %i.chl, align 1, !alias.scope !35057, !noalias !35069, !noundef !27
  %i.chn = zext i8 %i.chm to i64                  ; 3 uses
  %.not93.i = icmp samesign ult i64 %i.ata, %i.chn
  br i1 %.not93.i, label %.invoke.i97, label %bb.ny

bb.ny:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i
  %i.cho = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %.sroa.01.013.i.i
  %i.chp = load i16, ptr %i.cho, align 2, !alias.scope !35070, !noalias !35073, !noundef !27 ; 2 uses
  %i.chq = zext i16 %i.chp to i64                 ; 2 uses
  %i.chr = icmp ult i16 %i.chp, 704
  br i1 %i.chr, label %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i, label %.invoke.i97

_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i.i: ; preds = %bb.ny
  %i.chs = getelementptr inbounds nuw [2832 x i8], ptr %i.atf, i64 %i.chn ; 2 uses
  %i.cht = getelementptr inbounds nuw [4 x i8], ptr %i.chs, i64 %i.chq ; 2 uses
  %i.chu = load i32, ptr %i.cht, align 4, !alias.scope !35074, !noalias !35064, !noundef !27
  %i.chv = add i32 %i.chu, 1
  store i32 %i.chv, ptr %i.cht, align 4, !alias.scope !35074, !noalias !35064
  %i.chw = getelementptr inbounds nuw i8, ptr %i.chs, i64 2816 ; 2 uses
  %i.chx = load i64, ptr %i.chw, align 8, !alias.scope !35077, !noalias !35064, !noundef !27
  %i.chy = add i64 %i.chx, 1
  store i64 %i.chy, ptr %i.chw, align 8, !alias.scope !35080, !noalias !35064
  %exitcond24.not.i.i = icmp eq i64 %i.chk, %2
  br i1 %exitcond24.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i

.invoke.i97:                                      ; preds = %bb.lm, %.lr.ph434.split.i.i111, %.lr.ph447.i.i193, %.preheader.i.i413, %bb.ny, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i, %.noexc198.i, %bb.no, %.lr.ph424.preheader.i.i151, %.lr.ph424.i.i153.1, %.lr.ph424.i.i153.2, %.lr.ph424.i.i153.3, %.lr.ph424.i.i153.4, %.lr.ph424.i.i153.5, %.lr.ph424.i.i153.6, %.lr.ph430.i.i164
  %i.chz = phi i64 [ %i.chq, %bb.ny ], [ %i.btt, %.lr.ph447.i.i193 ], [ %i.cba, %.lr.ph430.i.i164 ], [ %2, %.lr.ph434.split.i.i111 ], [ %.sroa.066.0449.i.i414, %.preheader.i.i413 ], [ %i.bsx, %.lr.ph424.i.i153.6 ], [ %.sroa.071.0400.i.i86, %bb.no ], [ %i.brj, %.lr.ph424.preheader.i.i151 ], [ %i.bro, %.lr.ph424.i.i153.1 ], [ %i.brw, %.lr.ph424.i.i153.2 ], [ %i.bsf, %.lr.ph424.i.i153.3 ], [ %i.bsl, %.lr.ph424.i.i153.4 ], [ %i.bsr, %.lr.ph424.i.i153.5 ], [ %i.cfr, %.noexc198.i ], [ %i.chn, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %.sroa.069.0399.i.i82, %bb.lm ]
  %i.cia = phi i64 [ 704, %bb.ny ], [ %i.ayo, %.lr.ph447.i.i193 ], [ %i.ayo, %.lr.ph430.i.i164 ], [ %2, %.lr.ph434.split.i.i111 ], [ %2, %.preheader.i.i413 ], [ %i.ayc, %.lr.ph424.preheader.i.i151 ], [ %spec.store.select.i44, %bb.no ], [ %i.ayc, %.lr.ph424.i.i153.6 ], [ %i.ayc, %.lr.ph424.i.i153.5 ], [ %i.ayc, %.lr.ph424.i.i153.4 ], [ %i.ayc, %.lr.ph424.i.i153.3 ], [ %i.ayc, %.lr.ph424.i.i153.2 ], [ %i.ayc, %.lr.ph424.i.i153.1 ], [ %i.ayd, %.noexc198.i ], [ %spec.store.select.i44, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %spec.store.select.i44, %bb.lm ]
  %i.cib = phi ptr [ @1931, %bb.ny ], [ @1531, %.lr.ph447.i.i193 ], [ @1576, %.lr.ph430.i.i164 ], [ @1532, %.lr.ph434.split.i.i111 ], [ @1546, %.preheader.i.i413 ], [ @1537, %.lr.ph424.preheader.i.i151 ], [ @1542, %bb.no ], [ @1537, %.lr.ph424.i.i153.6 ], [ @1537, %.lr.ph424.i.i153.5 ], [ @1537, %.lr.ph424.i.i153.4 ], [ @1537, %.lr.ph424.i.i153.3 ], [ @1537, %.lr.ph424.i.i153.2 ], [ @1537, %.lr.ph424.i.i153.1 ], [ @1543, %.noexc198.i ], [ @1574, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ @1544, %bb.lm ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.chz, i64 noundef %i.cia, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cib) #43
          to label %.cont.i99 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i98", !noalias !34682

.cont.i99:                                        ; preds = %.invoke.i97
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i89": ; preds = %bb.np
  %lpad.loopexit.i90 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i91"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i205": ; preds = %.loopexit.i203
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i91"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i98": ; preds = %.invoke.i97, %.split440.us.i.invoke.i121, %.invoke1203.i
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i91"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i91": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i98", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i205", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i89"
  %lpad.phi.i92 = phi { ptr, i32 } [ %lpad.loopexit.i90, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i89" ], [ %lpad.loopexit105.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i205" ], [ %lpad.loopexit.split-lp106.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i98" ]
  call void @mi_free(ptr noundef nonnull %i.ayx) #38, !noalias !34682
  br label %bb.nz

bb.nz:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i91", %.thread55.i416
  %.pn62.i93 = phi { ptr, i32 } [ %i.ayz, %.thread55.i416 ], [ %lpad.phi.i92, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i91" ]
  br i1 %i.ayq, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i94", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i": ; preds = %bb.nz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ayv) ]
  call void @mi_free(ptr noundef nonnull %i.ayv) #38, !noalias !34682
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i94"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i94": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i", %bb.nz
  call void @mi_free(ptr noundef nonnull %i.ayj) #38, !noalias !34682
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i95"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i95": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i94", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i417", %.thread39.i419
  %.pn.pn.pn44.i96 = phi { ptr, i32 } [ %i.ayn, %.thread39.i419 ], [ %i.ayu, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i417" ], [ %.pn62.i93, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i94" ]
  call void @mi_free(ptr noundef nonnull %i.ayf) #38, !noalias !34682
  call void @mi_free(ptr noundef nonnull %i.axz) #38, !noalias !34682
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %bb.lh, %.body.i406
  %.pn.pn.pn.pn.i266 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i407, %.body.i406 ], [ %i.bqj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i265, %bb.lh ], [ %.pn230.pn.pn.pn.pn.pn.pn85958.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i" ]
  tail call void @mi_free(ptr noundef nonnull %i.axz) #38, !noalias !34682
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i95", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.thread.i", %.thread.i60
  %.pn.pn.pn.pn.pn38.i61 = phi { ptr, i32 } [ %i.aty, %.thread.i60 ], [ %.pn.pn.pn44.i96, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i95" ], [ %i.ayh, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.thread.i" ]
  call void @mi_free(ptr noundef nonnull %i.atf) #38, !noalias !34682
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

bb.oa:                                            ; preds = %bb.gw
  %i.cic = icmp eq i64 %.val111.i422, 0           ; 2 uses
  %spec.select.i431 = select i1 %i.cic, i64 %i.atw, i64 %.val111.i422
  br label %bb.ob

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit227.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i", %bb.od, %bb.gw
  %.val.i423 = phi ptr [ %i.cij, %bb.od ], [ %i.cij, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i" ], [ %.val110.i421, %bb.gw ]
  %.val63.i424 = phi i64 [ %.sroa.014.1.i432, %bb.od ], [ %.sroa.014.1.i432, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i" ], [ %.val111.i422, %bb.gw ] ; 2 uses
  %i.cid = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val90.i425 = load ptr, ptr %i.cid, align 8, !alias.scope !34672, !noalias !34669, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.cie = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val91.i426 = load i64, ptr %i.cie, align 8, !alias.scope !34672, !noalias !34669, !noundef !27 ; 5 uses
  %i.cif = icmp ult i64 %.val91.i426, %i.atw
  br i1 %i.cif, label %bb.oe, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i427"

bb.ob:                                            ; preds = %bb.ob, %bb.oa
  %.sroa.014.1.i432 = phi i64 [ %spec.select.i431, %bb.oa ], [ %i.cih, %bb.ob ] ; 9 uses
  %i.cig = icmp ult i64 %.sroa.014.1.i432, %i.atw
  %i.cih = shl i64 %.sroa.014.1.i432, 1
  br i1 %i.cig, label %bb.ob, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.cii = icmp slt i64 %.sroa.014.1.i432, 0
  br i1 %i.cii, label %.invoke2927, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i: ; preds = %bb.oc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35083
  %i.cij = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i432, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35083 ; 5 uses
  %i.cik = icmp eq ptr %i.cij, null
  br i1 %i.cik, label %.invoke2927, label %bb.od

bb.od:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a

bb.pr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.i.i656
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cru, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc420.i.i964 unwind label %.thread93.i.i963, !noalias !35247

.noexc420.i.i964:                                 ; preds = %bb.pr
  unreachable

bb.ps:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i705", %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"
  %i.cry = icmp eq i64 %.sroa.14.1.i.i702, 0
  br i1 %i.cry, label %bb.te, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i706"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i706": ; preds = %.thread93.i.i963, %bb.ps
  %.pn230.pn.pn.pn.pn100.i.i707 = phi { ptr, i32 } [ %i.crz, %.thread93.i.i963 ], [ %.pn230.pn.pn.pn.i.i704, %bb.ps ]
  %.sroa.016.099.i.i708 = phi ptr [ %.sroa.10.0.i.i.i.i.i652, %.thread93.i.i963 ], [ %.sroa.016.1.i.i703, %bb.ps ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.099.i.i708) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.016.099.i.i708) #38, !noalias !35247
  br label %bb.te

.thread93.i.i963:                                 ; preds = %bb.pr
  %i.crz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i706"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i": ; preds = %bb.ra, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691", %bb.pt
  %.sroa.12.0.i.i700 = phi i64 [ %i.cra, %bb.pt ], [ %.sroa.12.1.i.i694, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691" ], [ %.sroa.12.1.i.i694, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699" ], [ %.sroa.12.3151.i.i803, %bb.ra ]
  %.sroa.026.0.i.i701 = phi ptr [ %i.csc, %bb.pt ], [ %.sroa.026.1.i.i695, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691" ], [ %.sroa.026.1.i.i695, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699" ], [ %.sroa.026.3152.i.i802, %bb.ra ] ; 2 uses
  %.sroa.14.1.i.i702 = phi i64 [ %i.cra, %bb.pt ], [ %.sroa.14.2.i.i696, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691" ], [ %.sroa.14.2.i.i696, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699" ], [ %.sroa.14.4153.i.i801, %bb.ra ]
  %.sroa.016.1.i.i703 = phi ptr [ %.sroa.10.0.i.i.i.i.i652, %bb.pt ], [ %.sroa.016.2.i.i697, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691" ], [ %.sroa.016.2.i.i697, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699" ], [ %.sroa.016.4154.i.i800, %bb.ra ]
  %.pn230.pn.pn.pn.i.i704 = phi { ptr, i32 } [ %i.csb, %bb.pt ], [ %.pn230.pn.pn.i.i698, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691" ], [ %.pn230.pn.pn.i.i698, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699" ], [ %.pn230155.i.i799, %bb.ra ] ; 2 uses
  %i.csa = icmp eq i64 %.sroa.12.0.i.i700, 0
  br i1 %i.csa, label %bb.ps, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i705"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i705": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i701) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.026.0.i.i701) #38, !noalias !35247
  br label %bb.ps

bb.pt:                                            ; preds = %bb.pv
  %i.csb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i658: ; preds = %bb.pq, %._crit_edge.i.i.i.i.i654
  %.sroa.10.0.i.i418.i.i659 = phi i64 [ %i.crx, %bb.pq ], [ 4, %._crit_edge.i.i.i.i.i654 ]
  %i.csc = inttoptr i64 %.sroa.10.0.i.i418.i.i659 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i660 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i634, i64 64) ; 17 uses
  %i.csd = mul nuw nsw i64 %.sroa.0.0.i422.i.i660, 2192 ; 2 uses
  %i.cse = icmp eq i64 %.sroa.0.0.i.i634, 0
  br i1 %i.cse, label %._crit_edge.i.i.i429.thread.i.i668, label %bb.pu

bb.pu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i658
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35265
  %i.csf = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.csd, i64 noundef range(i64 1, 9) 8) #38, !noalias !35265 ; 5 uses
  %i.csg = icmp eq ptr %i.csf, null
  br i1 %i.csg, label %bb.pv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i"

bb.pv:                                            ; preds = %bb.pu
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.csd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc440.i.i962 unwind label %bb.pt, !noalias !35247

.noexc440.i.i962:                                 ; preds = %bb.pv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i": ; preds = %bb.pu
  %.not1174.i.i661 = icmp eq i64 %.sroa.0.0.i.i634, 1
  br i1 %.not1174.i.i661, label %._crit_edge.thread.i.i.i431.i.i666, label %.lr.ph.i.i.i434.i.i662.preheader

.lr.ph.i.i.i434.i.i662.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i"
  %i.csh = add nsw i64 %.sroa.0.0.i422.i.i660, -1 ; 2 uses
  %i.csi = add nsw i64 %.sroa.0.0.i422.i.i660, -2
  %xtraiter4739 = and i64 %i.csh, 7               ; 3 uses
  %i.csj = icmp ult i64 %i.csi, 7
  br i1 %i.csj, label %.lr.ph.i.i.i434.i.i662.epil.preheader, label %.lr.ph.i.i.i434.i.i662.preheader.new

.lr.ph.i.i.i434.i.i662.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i662.preheader
  %unroll_iter4744 = and i64 %i.csh, -8
  br label %.lr.ph.i.i.i434.i.i662

._crit_edge.thread.i.i.i431.i.i666.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i662
  %lcmp.mod4741.not = icmp eq i64 %xtraiter4739, 0
  br i1 %lcmp.mod4741.not, label %._crit_edge.thread.i.i.i431.i.i666, label %.lr.ph.i.i.i434.i.i662.epil.preheader

.lr.ph.i.i.i434.i.i662.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i666.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i662.preheader
  %.sroa.0.08.i.i.i435.i.i663.epil.init = phi ptr [ %i.csf, %.lr.ph.i.i.i434.i.i662.preheader ], [ %i.css, %._crit_edge.thread.i.i.i431.i.i666.loopexit.unr-lcssa ]
  %lcmp.mod4743 = icmp ne i64 %xtraiter4739, 0
  call void @llvm.assume(i1 %lcmp.mod4743)
  br label %.lr.ph.i.i.i434.i.i662.epil

.lr.ph.i.i.i434.i.i662.epil:                      ; preds = %.lr.ph.i.i.i434.i.i662.epil, %.lr.ph.i.i.i434.i.i662.epil.preheader
  %.sroa.0.08.i.i.i435.i.i663.epil = phi ptr [ %i.csk, %.lr.ph.i.i.i434.i.i662.epil ], [ %.sroa.0.08.i.i.i435.i.i663.epil.init, %.lr.ph.i.i.i434.i.i662.epil.preheader ] ; 3 uses
  %epil.iter4740 = phi i64 [ %epil.iter4740.next, %.lr.ph.i.i.i434.i.i662.epil ], [ 0, %.lr.ph.i.i.i434.i.i662.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i663.epil, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !35273
  %i.csk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663.epil, i64 2192 ; 2 uses
  %epil.iter4740.next = add i64 %epil.iter4740, 1 ; 2 uses
  %epil.iter4740.cmp.not = icmp eq i64 %epil.iter4740.next, %xtraiter4739
  br i1 %epil.iter4740.cmp.not, label %._crit_edge.thread.i.i.i431.i.i666, label %.lr.ph.i.i.i434.i.i662.epil, !llvm.loop !35276

._crit_edge.thread.i.i.i431.i.i666:               ; preds = %._crit_edge.thread.i.i.i431.i.i666.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i662.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i667 = phi ptr [ %i.csf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i426.i.i" ], [ %i.css, %._crit_edge.thread.i.i.i431.i.i666.loopexit.unr-lcssa ], [ %i.csk, %.lr.ph.i.i.i434.i.i662.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i432.i.i667, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i667, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !35273
  br label %._crit_edge.i.i.i429.thread.i.i668

.lr.ph.i.i.i434.i.i662:                           ; preds = %.lr.ph.i.i.i434.i.i662, %.lr.ph.i.i.i434.i.i662.preheader.new
  %.sroa.0.08.i.i.i435.i.i663 = phi ptr [ %i.csf, %.lr.ph.i.i.i434.i.i662.preheader.new ], [ %i.css, %.lr.ph.i.i.i434.i.i662 ] ; 17 uses
  %niter4745 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i662.preheader.new ], [ %niter4745.next.7, %.lr.ph.i.i.i434.i.i662 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i663, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !35273
  %i.csl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csl, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !35273
  %i.csm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csm, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !35273
  %i.csn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csn, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !35273
  %i.cso = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cso, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !35273
  %i.csp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csp, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !35273
  %i.csq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csq, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !35273
  %i.csr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.csr, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !35273
  %i.css = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i663, i64 17536 ; 3 uses
  %niter4745.next.7 = add i64 %niter4745, 8       ; 2 uses
  %niter4745.ncmp.7 = icmp eq i64 %niter4745.next.7, %unroll_iter4744
  br i1 %niter4745.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i666.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i662

._crit_edge.i.i.i429.thread.i.i668:               ; preds = %._crit_edge.thread.i.i.i431.i.i666, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i658
  %.sroa.10.0.i.i.i427933.i.i669 = phi ptr [ %i.csf, %._crit_edge.thread.i.i.i431.i.i666 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i658 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35277
  %i.cst = tail call noundef ptr @mi_malloc_aligned(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #38, !noalias !35277 ; 16 uses
  %i.csu = icmp eq ptr %i.cst, null
  br i1 %i.csu, label %bb.pw, label %bb.py

bb.pw:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i668
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc444.i.i961 unwind label %bb.px, !noalias !35247

.noexc444.i.i961:                                 ; preds = %bb.pw
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682", %bb.px
  %.sroa.1335.0.i.i692 = phi i64 [ %.sroa.0.0.i422.i.i660, %bb.px ], [ %.sroa.1335.1123199.i.i685, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682" ]
  %.sroa.034.0.i.i693 = phi ptr [ %.sroa.10.0.i.i.i427933.i.i669, %bb.px ], [ %.sroa.034.1124197.i.i686, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682" ] ; 2 uses
  %.sroa.12.1.i.i694 = phi i64 [ %i.cra, %bb.px ], [ %.sroa.12.3125195.i.i687, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682" ] ; 2 uses
  %.sroa.026.1.i.i695 = phi ptr [ %i.csc, %bb.px ], [ %.sroa.026.3126193.i.i688, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682" ] ; 2 uses
  %.sroa.14.2.i.i696 = phi i64 [ %i.cra, %bb.px ], [ %.sroa.14.4127191.i.i689, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682" ] ; 2 uses
  %.sroa.016.2.i.i697 = phi ptr [ %.sroa.10.0.i.i.i.i.i652, %bb.px ], [ %.sroa.016.4128189.i.i690, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682" ] ; 2 uses
  %.pn230.pn.pn.i.i698 = phi { ptr, i32 } [ %i.csw, %bb.px ], [ %.pn230.pn202.i.i683, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682" ] ; 2 uses
  %i.csv = icmp eq i64 %.sroa.1335.0.i.i692, 0
  br i1 %i.csv, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i699": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i693) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.034.0.i.i693) #38, !noalias !35247
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit446.i.i"

bb.px:                                            ; preds = %bb.pw
  %i.csw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit.i.i691"

bb.py:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.cst, i8 0, i64 32784, i1 false), !noalias !35247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !35247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.m, i8 0, i64 256, i1 false), !noalias !35247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !35247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.l, i8 0, i64 256, i1 false), !noalias !35247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !35247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.k, i8 0, i64 256, i1 false), !noalias !35247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.j, i8 0, i64 256, i1 false), !noalias !35247
  br label %bb.sz

.split.i.i718:                                    ; preds = %bb.tc, %._crit_edge582.i.i780
  %indvars.iv.i.i719 = phi i64 [ %indvars.iv.next.i.i781, %._crit_edge582.i.i780 ], [ %.sroa.0.0.i.i634, %bb.tc ] ; 2 uses
  %.sroa.0.0593.i.i720 = phi i64 [ %.sroa.0.1.lcssa.i.i776, %._crit_edge582.i.i780 ], [ 0, %bb.tc ] ; 4 uses
  %.sroa.012.0592.i.i721 = phi i64 [ %.sroa.012.1.i.i757, %._crit_edge582.i.i780 ], [ %i.cra, %bb.tc ] ; 7 uses
  %.sroa.018.0591.i.i722 = phi i64 [ %.sroa.018.1.lcssa.i.i775, %._crit_edge582.i.i780 ], [ 0, %bb.tc ] ; 4 uses
  %.sroa.023.0590.i.i723 = phi i64 [ %.sroa.023.1.i.i761, %._crit_edge582.i.i780 ], [ %i.cra, %bb.tc ] ; 7 uses
  %.sroa.029.0589.i.i724 = phi i64 [ %i.ded, %._crit_edge582.i.i780 ], [ 0, %bb.tc ] ; 2 uses
  %.sroa.043.0588.i.i725 = phi i64 [ %.sroa.043.4.lcssa.i.i747, %._crit_edge582.i.i780 ], [ 0, %bb.tc ]
  %.sroa.047.1587.i.i726 = phi i64 [ %i.dee, %._crit_edge582.i.i780 ], [ 0, %bb.tc ] ; 4 uses
  %.sroa.016.3586.i.i727 = phi ptr [ %.sroa.016.7.i.i756, %._crit_edge582.i.i780 ], [ %.sroa.10.0.i.i.i.i.i652, %bb.tc ] ; 9 uses
  %.sroa.14.3585.i.i728 = phi i64 [ %.sroa.14.7.i.i755, %._crit_edge582.i.i780 ], [ %i.cra, %bb.tc ] ; 9 uses
  %.sroa.026.2584.i.i729 = phi ptr [ %.sroa.026.5.i.i760, %._crit_edge582.i.i780 ], [ %i.csc, %bb.tc ] ; 11 uses
  %.sroa.12.2583.i.i730 = phi i64 [ %.sroa.12.5.i.i759, %._crit_edge582.i.i780 ], [ %i.cra, %bb.tc ] ; 11 uses
  %i.csx = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i719, i64 1)
  %umax856.i.i731 = tail call i64 @llvm.umin.i64(i64 %i.csx, i64 64)
  %i.csy = sub nuw i64 %.sroa.0.0.i.i634, %.sroa.047.1587.i.i726
  %.sroa.0.0.i447.i.i732 = tail call noundef i64 @llvm.umin.i64(i64 %i.csy, i64 64) ; 3 uses
  br label %.lr.ph571.i.i734

.thread163.loopexit.i.i748:                       ; preds = %._crit_edge.i.i746
  %lpad.loopexit255.i.i749 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

.thread163.loopexit.split-lp.loopexit.i.i753:     ; preds = %._crit_edge572.i.i751
  %lpad.loopexit258.i.i754 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

.thread163.loopexit.split-lp.loopexit.split-lp.i.i673: ; preds = %.invoke3978, %.invoke3976, %.invoke.i.i672, %bb.sh, %bb.rz, %bb.qg, %bb.qc
  %.sroa.044.1.ph.ph.ph.i.i674 = phi ptr [ %i.cst, %bb.qc ], [ %.sroa.044.2.i.i784, %bb.qg ], [ %i.cst, %.invoke.i.i672 ], [ %i.cst, %.invoke3976 ], [ %i.cst, %bb.rz ], [ %i.cst, %.invoke3978 ], [ %i.cst, %bb.sh ]
  %.sroa.1335.2.ph.ph.ph.i.i675 = phi i64 [ 0, %bb.qc ], [ 0, %bb.qg ], [ %.sroa.0.0.i422.i.i660, %.invoke.i.i672 ], [ %.sroa.0.0.i422.i.i660, %.invoke3976 ], [ %.sroa.0.0.i422.i.i660, %bb.rz ], [ %.sroa.0.0.i422.i.i660, %.invoke3978 ], [ %.sroa.0.0.i422.i.i660, %bb.sh ]
  %.sroa.034.2.ph.ph.ph.i.i676 = phi ptr [ inttoptr (i64 8 to ptr), %bb.qc ], [ inttoptr (i64 8 to ptr), %bb.qg ], [ %.sroa.10.0.i.i.i427933.i.i669, %.invoke.i.i672 ], [ %.sroa.10.0.i.i.i427933.i.i669, %.invoke3976 ], [ %.sroa.10.0.i.i.i427933.i.i669, %bb.rz ], [ %.sroa.10.0.i.i.i427933.i.i669, %.invoke3978 ], [ %.sroa.10.0.i.i.i427933.i.i669, %bb.sh ]
  %.sroa.12.4.ph.ph.ph.i.i677 = phi i64 [ %.sroa.12.5.i.i759, %bb.qc ], [ %.sroa.12.5.i.i759, %bb.qg ], [ %i.cra, %.invoke.i.i672 ], [ %.sroa.12.2583.i.i730, %.invoke3976 ], [ %.sroa.12.2583.i.i730, %bb.rz ], [ %.sroa.12.5.i.i759, %.invoke3978 ], [ %.sroa.12.2583.i.i730, %bb.sh ]
  %.sroa.026.4.ph.ph.ph.i.i678 = phi ptr [ %.sroa.026.5.i.i760, %bb.qc ], [ %.sroa.026.5.i.i760, %bb.qg ], [ %i.csc, %.invoke.i.i672 ], [ %.sroa.026.2584.i.i729, %.invoke3976 ], [ %.sroa.026.2584.i.i729, %bb.rz ], [ %.sroa.026.5.i.i760, %.invoke3978 ], [ %.sroa.026.2584.i.i729, %bb.sh ]
  %.sroa.14.5.ph.ph.ph.i.i679 = phi i64 [ %.sroa.14.7.i.i755, %bb.qc ], [ %.sroa.14.7.i.i755, %bb.qg ], [ %i.cra, %.invoke.i.i672 ], [ %.sroa.14.3585.i.i728, %.invoke3976 ], [ %.sroa.14.3585.i.i728, %bb.rz ], [ %.sroa.14.7.i.i755, %.invoke3978 ], [ %.sroa.14.7.i.i755, %bb.sh ]
  %.sroa.016.5.ph.ph.ph.i.i680 = phi ptr [ %.sroa.016.7.i.i756, %bb.qc ], [ %.sroa.016.7.i.i756, %bb.qg ], [ %.sroa.10.0.i.i.i.i.i652, %.invoke.i.i672 ], [ %.sroa.016.3586.i.i727, %.invoke3976 ], [ %.sroa.016.3586.i.i727, %bb.rz ], [ %.sroa.016.7.i.i756, %.invoke3978 ], [ %.sroa.016.7.i.i756, %bb.sh ]
  %lpad.loopexit.split-lp259.i.i681 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

bb.pz:                                            ; preds = %bb.ql, %._crit_edge598.i.i792
  %.sroa.11.1.ph159.i.i793 = phi i1 [ true, %bb.ql ], [ false, %._crit_edge598.i.i792 ]
  %.sroa.044.1.ph160.i.i794 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ql ], [ %.sroa.044.2.i.i784, %._crit_edge598.i.i792 ]
  %.sroa.12.4.ph161.i.i795 = phi i64 [ 0, %bb.ql ], [ %.sroa.12.5.i.i759, %._crit_edge598.i.i792 ]
  %.sroa.026.4.ph162.i.i796 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ql ], [ %.sroa.026.5.i.i760, %._crit_edge598.i.i792 ]
  %lpad.thr_comm.split-lp.i.i797 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i.i798

bb.qa:                                            ; preds = %._crit_edge582.i.i780
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i669) #38, !noalias !35247
  %i.csz = shl i64 %i.ded, 6
  %i.cta = lshr i64 %i.ded, 1
  %i.ctb = mul i64 %i.cta, %i.ded
  %.sroa.0.0.i448.i.i782 = tail call noundef i64 @llvm.umin.i64(i64 %i.ctb, i64 %i.csz) ; 5 uses
  %i.ctc = add nuw i64 %.sroa.0.0.i448.i.i782, 1  ; 2 uses
  %i.ctd = icmp ugt i64 %.sroa.0.0.i448.i.i782, 2048
  br i1 %i.ctd, label %bb.qb, label %bb.qd

bb.qb:                                            ; preds = %bb.qa
  %i.cte = shl i64 %i.ctc, 4                      ; 5 uses
  %i.ctf = icmp ugt i64 %.sroa.0.0.i448.i.i782, 1152921504606846974
  %i.ctg = icmp ugt i64 %i.cte, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i925 = or i1 %i.ctf, %i.ctg
  br i1 %or.cond.i.i.i.i.i449.i.i925, label %bb.qc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926: ; preds = %bb.qb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35285
  %i.cth = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cte, i64 noundef range(i64 1, 9) 4) #38, !noalias !35285 ; 5 uses
  %i.cti = icmp eq ptr %i.cth, null
  br i1 %i.cti, label %bb.qc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927"

bb.qc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926, %bb.qb
  %.sroa.4.0.ph.i.i.i455.i.i932 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926 ], [ 0, %bb.qb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i932, i64 %i.cte, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc456.i.i933 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.noexc456.i.i933:                                 ; preds = %bb.qc
  unreachable

bb.qd:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927", %bb.qa
  %.sroa.11.2.i.i783 = phi i64 [ %i.ctc, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927" ], [ 2049, %bb.qa ]
  %.sroa.044.2.i.i784 = phi ptr [ %i.cth, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927" ], [ %i.cst, %bb.qa ] ; 4 uses
  %i.ctj = shl i64 %i.ded, 2                      ; 9 uses
  %i.ctk = icmp ugt i64 %i.ded, 4611686018427387903
  %i.ctl = icmp ugt i64 %i.ctj, 9223372036854775804
  %or.cond.i.i.i.i458.i.i785 = or i1 %i.ctk, %i.ctl
  br i1 %or.cond.i.i.i.i458.i.i785, label %bb.qg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786: ; preds = %bb.qd
  %i.ctm = icmp eq i64 %i.ctj, 0                  ; 2 uses
  br i1 %i.ctm, label %bb.qh, label %bb.qe

bb.qe:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35293
  %i.ctn = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ctj, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35293 ; 2 uses
  %i.cto = icmp eq ptr %i.ctn, null
  br i1 %i.cto, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.ctp = ptrtoint ptr %i.ctn to i64
  br label %bb.qh

bb.qg:                                            ; preds = %bb.qe, %bb.qd
  %.sroa.4.0.ph.i.i461.i.i923 = phi i64 [ 4, %bb.qe ], [ 0, %bb.qd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i923, i64 %i.ctj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc462.i.i924 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.noexc462.i.i924:                                 ; preds = %bb.qg
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17haae1949dc49114a6E.exit.i.i927": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i926
  %i.ctq = add nsw i64 %i.cte, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cth, i8 0, i64 %i.ctq, i1 false), !noalias !35298
  %i.ctr = getelementptr i8, ptr %i.cth, i64 %i.cte ; 2 uses
  %scevgep11.i451.i.i928 = getelementptr i8, ptr %i.cth, i64 %i.ctq
  store i32 0, ptr %scevgep11.i451.i.i928, align 4, !noalias !35298
  %.sroa.55.0..sroa_idx.i452.i.i929 = getelementptr i8, ptr %i.ctr, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i929, align 4, !noalias !35298
  %.sroa.67.0..sroa_idx.i453.i.i930 = getelementptr i8, ptr %i.ctr, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i930, align 4, !noalias !35298
  %i.cts = icmp samesign ult i64 %.sroa.0.0.i448.i.i782, 576460752303423487
  tail call void @llvm.assume(i1 %i.cts)
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cst) #38, !noalias !35247
  br label %bb.qd

bb.qh:                                            ; preds = %bb.qf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786
  %.sroa.10.0.i.i460.i.i787 = phi i64 [ %i.ctp, %bb.qf ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i786 ]
  %i.ctt = inttoptr i64 %.sroa.10.0.i.i460.i.i787 to ptr ; 13 uses
  %i.ctu = icmp samesign ult i64 %i.ded, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ctu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ctt) ]
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.ctt, i64 %i.ctj
  %i.ctw = icmp eq i64 %i.ded, 0                  ; 3 uses
  br i1 %i.ctw, label %._crit_edge598.i.i792, label %.lr.ph597.i.i788.preheader

.lr.ph597.i.i788.preheader:                       ; preds = %bb.qh
  %i.ctx = add nsw i64 %i.ctj, -4                 ; 2 uses
  %i.cty = lshr exact i64 %i.ctx, 2
  %i.ctz = add nuw nsw i64 %i.cty, 1              ; 2 uses
  %min.iters.check3926 = icmp ult i64 %i.ctx, 28
  br i1 %min.iters.check3926, label %.lr.ph597.i.i788.preheader4006, label %vector.ph3927

vector.ph3927:                                    ; preds = %.lr.ph597.i.i788.preheader
  %n.vec3928 = and i64 %i.ctz, 9223372036854775800 ; 4 uses
  %i.cua = trunc i64 %n.vec3928 to i32
  %i.cub = shl i64 %n.vec3928, 2
  %i.cuc = getelementptr i8, ptr %i.ctt, i64 %i.cub
  br label %vector.body3929

vector.body3929:                                  ; preds = %vector.body3929, %vector.ph3927
  %index3930 = phi i64 [ 0, %vector.ph3927 ], [ %index.next3934, %vector.body3929 ] ; 2 uses
  %vec.ind3931 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3927 ], [ %vec.ind.next3935, %vector.body3929 ] ; 3 uses
  %step.add3932 = add <4 x i32> %vec.ind3931, splat (i32 4)
  %i.cud = shl i64 %index3930, 2
  %next.gep3933 = getelementptr i8, ptr %i.ctt, i64 %i.cud ; 2 uses
  %i.cue = getelementptr i8, ptr %next.gep3933, i64 16
  store <4 x i32> %vec.ind3931, ptr %next.gep3933, align 4, !noalias !35247
  store <4 x i32> %step.add3932, ptr %i.cue, align 4, !noalias !35247
  %index.next3934 = add nuw i64 %index3930, 8     ; 2 uses
  %vec.ind.next3935 = add <4 x i32> %vec.ind3931, splat (i32 8)
  %i.cuf = icmp eq i64 %index.next3934, %n.vec3928
  br i1 %i.cuf, label %middle.block3936, label %vector.body3929, !llvm.loop !35301

middle.block3936:                                 ; preds = %vector.body3929
  %cmp.n3937 = icmp eq i64 %i.ctz, %n.vec3928
  br i1 %cmp.n3937, label %._crit_edge598.i.i792, label %.lr.ph597.i.i788.preheader4006

.lr.ph597.i.i788.preheader4006:                   ; preds = %.lr.ph597.i.i788.preheader, %middle.block3936
  %.sroa.047.2595.i.i789.ph = phi i32 [ 0, %.lr.ph597.i.i788.preheader ], [ %i.cua, %middle.block3936 ]
  %.sroa.0135.0594.i.i790.ph = phi ptr [ %i.ctt, %.lr.ph597.i.i788.preheader ], [ %i.cuc, %middle.block3936 ]
  br label %.lr.ph597.i.i788

.lr.ph597.i.i788:                                 ; preds = %.lr.ph597.i.i788.preheader4006, %.lr.ph597.i.i788
  %.sroa.047.2595.i.i789 = phi i32 [ %i.cug, %.lr.ph597.i.i788 ], [ %.sroa.047.2595.i.i789.ph, %.lr.ph597.i.i788.preheader4006 ] ; 2 uses
  %.sroa.0135.0594.i.i790 = phi ptr [ %.sroa.0135.1.i.i791, %.lr.ph597.i.i788 ], [ %.sroa.0135.0594.i.i790.ph, %.lr.ph597.i.i788.preheader4006 ] ; 2 uses
  %.sroa.0135.1.i.i791 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0594.i.i790, i64 4 ; 2 uses
  store i32 %.sroa.047.2595.i.i789, ptr %.sroa.0135.0594.i.i790, align 4, !noalias !35247
  %i.cug = add i32 %.sroa.047.2595.i.i789, 1
  %i.cuh = icmp eq ptr %.sroa.0135.1.i.i791, %i.ctv
  br i1 %i.cuh, label %._crit_edge598.i.i792, label %.lr.ph597.i.i788, !llvm.loop !35302

._crit_edge598.i.i792:                            ; preds = %.lr.ph597.i.i788, %middle.block3936, %bb.qh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i756) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i760) ]
  %i.cui = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i756, i64 noundef %.sroa.14.7.i.i755, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i760, i64 noundef %.sroa.12.5.i.i759, ptr noalias noundef nonnull align 4 %i.cqx, i64 noundef %.sroa.0.0.i.i634, ptr noalias noundef nonnull align 4 %i.ctt, i64 noundef %i.ded, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i784, i64 noundef %.sroa.11.2.i.i783, i64 noundef %i.ded, i64 noundef %.sroa.0.0.i.i634, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i782)
          to label %bb.qi unwind label %bb.pz, !noalias !35247 ; 3 uses

bb.qi:                                            ; preds = %._crit_edge598.i.i792
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.044.2.i.i784) #38, !noalias !35247
  %i.cuj = icmp eq i64 %.sroa.12.5.i.i759, 0
  br i1 %i.cuj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i809"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i809": ; preds = %bb.qi
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.5.i.i760) #38, !noalias !35247
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i809", %bb.qi
  br i1 %i.ctm, label %bb.qn, label %bb.qj

bb.qj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i810
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35303
  %i.cuk = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ctj, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35303 ; 2 uses
  %i.cul = icmp eq ptr %i.cuk, null
  br i1 %i.cul, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.cum = ptrtoint ptr %i.cuk to i64
  br label %bb.qn

bb.ql:                                            ; preds = %bb.qj
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.ctj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc472.i.i922 unwind label %bb.pz, !noalias !35247

.noexc472.i.i922:                                 ; preds = %bb.ql
  unreachable

end_hunk_6
begin_hunk_7_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a

._crit_edge615.loopexit.i.i867:                   ; preds = %bb.rq, %.noexc.i.us.i917
  %.sroa.043.2.lcssa938943.i892901.i868 = phi i64 [ %.sroa.043.2.lcssa938943.i.i912, %.noexc.i.us.i917 ], [ %i.dcj, %bb.rq ]
  %i.czl = phi ptr [ %i.cyz, %.noexc.i.us.i917 ], [ %i.cwy, %bb.rq ]
  %.us-phi445.i869 = phi i32 [ %.sroa.097.0939942.i.i913, %.noexc.i.us.i917 ], [ %.sroa.089.1.i.i865, %bb.rq ] ; 2 uses
  %.pre.i.i870 = zext i32 %.us-phi445.i869 to i64
  br label %._crit_edge615.i.i871

._crit_edge615.i.i871:                            ; preds = %._crit_edge615.loopexit.i.i867, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.thread.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.i
  %i.czm = phi ptr [ %i.czl, %._crit_edge615.loopexit.i.i867 ], [ %i.cyz, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.i ], [ %i.cwy, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.thread.i ]
  %.sroa.043.2.lcssa938943.i893.i872 = phi i64 [ %.sroa.043.2.lcssa938943.i892901.i868, %._crit_edge615.loopexit.i.i867 ], [ %.sroa.043.2.lcssa938943.i.i912, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.i ], [ %i.dcj, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.thread.i ]
  %.pre-phi.i.i873 = phi i64 [ %.pre.i.i870, %._crit_edge615.loopexit.i.i867 ], [ %i.cza, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.i ], [ %i.cxa, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.thread.i ] ; 3 uses
  %.sroa.089.0.lcssa.i.i874 = phi i32 [ %.us-phi445.i869, %._crit_edge615.loopexit.i.i867 ], [ %.sroa.097.0939942.i.i913, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.i ], [ %.sroa.097.0.i.i844, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h947b41782effd87bE.exit249.i.thread.i ]
  store i32 %.sroa.089.0.lcssa.i.i874, ptr %i.czm, align 4, !noalias !35247
  %i.czn = icmp samesign ugt i64 %i.ded, %.pre-phi.i.i873
  br i1 %i.czn, label %bb.rm, label %.invoke1172.i.i825

bb.rm:                                            ; preds = %._crit_edge615.i.i871
  %i.czo = getelementptr inbounds nuw [4 x i8], ptr %i.cuo, i64 %.pre-phi.i.i873 ; 2 uses
  %i.czp = load i32, ptr %i.czo, align 4, !noalias !35247, !noundef !27
  %i.czq = icmp eq i32 %i.czp, -1
  br i1 %i.czq, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  store i32 %.sroa.084.0618.i.i817, ptr %i.czo, align 4, !noalias !35247
  %i.czr = add i32 %.sroa.084.0618.i.i817, 1
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %.sroa.084.1.i.i875 = phi i32 [ %i.czr, %bb.rn ], [ %.sroa.084.0618.i.i817, %bb.rm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35247
  %i.czs = icmp ult i64 %.sroa.0137.1620.i.i815, %.sroa.0.0.i.i634 ; 2 uses
  %i.czt = zext i1 %i.czs to i64
  %.sroa.0137.1.i.i876 = add nuw i64 %.sroa.0137.1620.i.i815, %i.czt
  br i1 %i.czs, label %bb.rk, label %bb.qo

.lr.ph614.i.i852:                                 ; preds = %.lr.ph614.i.i852.preheader, %bb.rq
  %.sroa.0141.1613.i.i853 = phi i64 [ %.sroa.0141.1.i.i866, %bb.rq ], [ 1, %.lr.ph614.i.i852.preheader ] ; 3 uses
  %.sroa.089.0612.i.i854 = phi i32 [ %.sroa.089.1.i.i865, %bb.rq ], [ %.sroa.097.0.i.i844, %.lr.ph614.i.i852.preheader ]
  %.sroa.093.0611.i.i855 = phi float [ %.sroa.093.1.i.i864, %bb.rq ], [ %i.czd, %.lr.ph614.i.i852.preheader ] ; 2 uses
  %.sroa.0141.0610.i.i856 = phi i64 [ %.sroa.0141.1613.i.i853, %bb.rq ], [ 0, %.lr.ph614.i.i852.preheader ] ; 3 uses
  %i.czu = icmp samesign ult i64 %.sroa.0141.0610.i.i856, %i.ded
  br i1 %i.czu, label %bb.rp, label %.invoke1172.i.i825

bb.rp:                                            ; preds = %.lr.ph614.i.i852
  %i.czv = getelementptr inbounds nuw [4 x i8], ptr %i.ctt, i64 %.sroa.0141.0610.i.i856 ; 2 uses
  %i.czw = load i32, ptr %i.czv, align 4, !noalias !35247, !noundef !27
  %i.czx = zext i32 %i.czw to i64                 ; 3 uses
  %i.czy = icmp ugt i64 %.sroa.14.7.i.i755, %i.czx
  br i1 %i.czy, label %.noexc.i.i857, label %.invoke1172.i.i825

.noexc.i.i857:                                    ; preds = %bb.rp
  %i.czz = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.016.7.i.i756, i64 %i.czx ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.i, i64 2192, i1 false), !alias.scope !35369, !noalias !35247
  %i.daa = load i64, ptr %i.cus, align 8, !alias.scope !35373, !noalias !35247, !noundef !27
  %i.dab = getelementptr inbounds nuw i8, ptr %i.czz, i64 2176 ; 2 uses
  %i.dac = load i64, ptr %i.dab, align 8, !alias.scope !35376, !noalias !35247, !noundef !27
  %i.dad = add i64 %i.dac, %i.daa
  store i64 %i.dad, ptr %i.cus, align 8, !alias.scope !35379, !noalias !35247
  %bound03941 = icmp ult ptr %i.h, %i.dab
  %bound13942 = icmp ult ptr %i.czz, %i.cus
  %found.conflict3943 = and i1 %bound03941, %bound13942
  br i1 %found.conflict3943, label %scalar.ph3944, label %vector.body3946

vector.body3946:                                  ; preds = %.noexc.i.i857, %vector.body3946
  %index3947 = phi i64 [ %index.next3952.1, %vector.body3946 ], [ 0, %.noexc.i.i857 ] ; 4 uses
  %i.dae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index3947 ; 3 uses
  %i.daf = getelementptr inbounds nuw i8, ptr %i.dae, i64 16 ; 2 uses
  %wide.load3948 = load <4 x i32>, ptr %i.dae, align 8, !alias.scope !35382, !noalias !35385
  %wide.load3949 = load <4 x i32>, ptr %i.daf, align 8, !alias.scope !35382, !noalias !35385
  %i.dag = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %index3947 ; 2 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %i.dag, i64 16
  %wide.load3950 = load <4 x i32>, ptr %i.dag, align 4, !alias.scope !35387, !noalias !35247
  %wide.load3951 = load <4 x i32>, ptr %i.dah, align 4, !alias.scope !35387, !noalias !35247
  %i.dai = add <4 x i32> %wide.load3950, %wide.load3948
  %i.daj = add <4 x i32> %wide.load3951, %wide.load3949
  store <4 x i32> %i.dai, ptr %i.dae, align 8, !alias.scope !35382, !noalias !35385
  store <4 x i32> %i.daj, ptr %i.daf, align 8, !alias.scope !35382, !noalias !35385
  %index.next3952 = or disjoint i64 %index3947, 8 ; 2 uses
  %i.dak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index.next3952 ; 3 uses
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dak, i64 16 ; 2 uses
  %wide.load3948.1 = load <4 x i32>, ptr %i.dak, align 8, !alias.scope !35382, !noalias !35385
  %wide.load3949.1 = load <4 x i32>, ptr %i.dal, align 8, !alias.scope !35382, !noalias !35385
  %i.dam = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %index.next3952 ; 2 uses
  %i.dan = getelementptr inbounds nuw i8, ptr %i.dam, i64 16
  %wide.load3950.1 = load <4 x i32>, ptr %i.dam, align 4, !alias.scope !35387, !noalias !35247
  %wide.load3951.1 = load <4 x i32>, ptr %i.dan, align 4, !alias.scope !35387, !noalias !35247
  %i.dao = add <4 x i32> %wide.load3950.1, %wide.load3948.1
  %i.dap = add <4 x i32> %wide.load3951.1, %wide.load3949.1
  store <4 x i32> %i.dao, ptr %i.dak, align 8, !alias.scope !35382, !noalias !35385
  store <4 x i32> %i.dap, ptr %i.dal, align 8, !alias.scope !35382, !noalias !35385
  %index.next3952.1 = add nuw nsw i64 %index3947, 16 ; 2 uses
  %i.daq = icmp eq i64 %index.next3952.1, 544
  br i1 %i.daq, label %.noexc240.i.i860, label %vector.body3946, !llvm.loop !35388

scalar.ph3944:                                    ; preds = %.noexc.i.i857, %scalar.ph3944
  %.sroa.01.0.i263609.i.i858 = phi i64 [ %i.dbj, %scalar.ph3944 ], [ 0, %.noexc.i.i857 ] ; 6 uses
  %i.dar = or disjoint i64 %.sroa.01.0.i263609.i.i858, 1 ; 2 uses
  %i.das = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.01.0.i263609.i.i858 ; 2 uses
  %i.dat = load i32, ptr %i.das, align 8, !noalias !35247, !noundef !27
  %i.dau = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %.sroa.01.0.i263609.i.i858
  %i.dav = load i32, ptr %i.dau, align 4, !noalias !35247, !noundef !27
  %i.daw = add i32 %i.dav, %i.dat
  store i32 %i.daw, ptr %i.das, align 8, !noalias !35247
  %i.dax = or disjoint i64 %.sroa.01.0.i263609.i.i858, 2 ; 2 uses
  %i.day = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dar ; 2 uses
  %i.daz = load i32, ptr %i.day, align 4, !noalias !35247, !noundef !27
  %i.dba = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %i.dar
  %i.dbb = load i32, ptr %i.dba, align 4, !noalias !35247, !noundef !27
  %i.dbc = add i32 %i.dbb, %i.daz
  store i32 %i.dbc, ptr %i.day, align 4, !noalias !35247
  %i.dbd = or disjoint i64 %.sroa.01.0.i263609.i.i858, 3 ; 2 uses
  %i.dbe = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dax ; 2 uses
  %i.dbf = load i32, ptr %i.dbe, align 8, !noalias !35247, !noundef !27
  %i.dbg = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %i.dax
  %i.dbh = load i32, ptr %i.dbg, align 4, !noalias !35247, !noundef !27
  %i.dbi = add i32 %i.dbh, %i.dbf
  store i32 %i.dbi, ptr %i.dbe, align 8, !noalias !35247
  %i.dbj = add nuw nsw i64 %.sroa.01.0.i263609.i.i858, 4 ; 2 uses
  %i.dbk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dbd ; 2 uses
  %i.dbl = load i32, ptr %i.dbk, align 4, !noalias !35247, !noundef !27
  %i.dbm = getelementptr inbounds nuw [4 x i8], ptr %i.czz, i64 %i.dbd
  %i.dbn = load i32, ptr %i.dbm, align 4, !noalias !35247, !noundef !27
  %i.dbo = add i32 %i.dbn, %i.dbl
  store i32 %i.dbo, ptr %i.dbk, align 4, !noalias !35247
  %exitcond862.not.i.i859.3 = icmp eq i64 %i.dbj, 544
  br i1 %exitcond862.not.i.i859.3, label %.noexc240.i.i860, label %scalar.ph3944, !llvm.loop !35389

.noexc240.i.i860:                                 ; preds = %vector.body3946, %scalar.ph3944
  %i.dbp = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.h)
          to label %.noexc242.i.i863 unwind label %.loopexit.split-lp.thread.i.i861, !noalias !35247

.noexc242.i.i863:                                 ; preds = %.noexc240.i.i860
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.czz, i64 2184
  %i.dbr = load float, ptr %i.dbq, align 8, !alias.scope !35390, !noalias !35247, !noundef !27
  %i.dbs = fsub float %i.dbp, %i.dbr              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35364
  %i.dbt = fcmp olt float %i.dbs, %.sroa.093.0611.i.i855
  br i1 %i.dbt, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rr, %.noexc242.i.i863
  %.sroa.093.1.i.i864 = phi float [ %i.dbs, %bb.rr ], [ %.sroa.093.0611.i.i855, %.noexc242.i.i863 ]
  %.sroa.089.1.i.i865 = phi i32 [ %i.dbw, %bb.rr ], [ %.sroa.089.0612.i.i854, %.noexc242.i.i863 ] ; 2 uses
  %i.dbu = icmp samesign ult i64 %.sroa.0141.1613.i.i853, %i.cui ; 2 uses
  %i.dbv = zext i1 %i.dbu to i64
  %.sroa.0141.1.i.i866 = add nuw nsw i64 %.sroa.0141.1613.i.i853, %i.dbv
  br i1 %i.dbu, label %.lr.ph614.i.i852, label %._crit_edge615.loopexit.i.i867

bb.rr:                                            ; preds = %.noexc242.i.i863
  %i.dbw = load i32, ptr %i.czv, align 4, !noalias !35247, !noundef !27
  br label %bb.rq

bb.rs:                                            ; preds = %.lr.ph605.i.i822
  %i.dbx = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %.sroa.043.2603.i.i823
  %i.dby = load i16, ptr %i.dbx, align 2, !alias.scope !35393, !noalias !35396, !noundef !27 ; 2 uses
  %i.dbz = zext i16 %i.dby to i64                 ; 2 uses
  %i.dca = icmp ult i16 %i.dby, 544
  br i1 %i.dca, label %bb.rt, label %.invoke1172.i.i825

.invoke1172.i.i825:                               ; preds = %._crit_edge615.i.i871, %._crit_edge606.thread.i.i919, %._crit_edge606.i.i842, %bb.rs, %.lr.ph605.i.i822, %bb.rp, %.lr.ph614.i.i852, %bb.rl, %.lr.ph614.i.us.i914
  %i.dcb = phi i64 [ %i.czx, %bb.rp ], [ %i.czh, %bb.rl ], [ %.sroa.043.2603.i.i823, %.lr.ph605.i.i822 ], [ %i.ded, %.lr.ph614.i.us.i914 ], [ %.sroa.0141.0610.i.i856, %.lr.ph614.i.i852 ], [ %i.dbz, %bb.rs ], [ %i.cxf, %._crit_edge606.thread.i.i919 ], [ %i.cxa, %._crit_edge606.i.i842 ], [ %.pre-phi.i.i873, %._crit_edge615.i.i871 ]
  %i.dcc = phi i64 [ %.sroa.14.7.i.i755, %bb.rp ], [ %.sroa.14.7.i.i755, %bb.rl ], [ %2, %.lr.ph605.i.i822 ], [ %i.ded, %.lr.ph614.i.us.i914 ], [ %i.ded, %.lr.ph614.i.i852 ], [ 544, %bb.rs ], [ %.sroa.14.7.i.i755, %._crit_edge606.thread.i.i919 ], [ %.sroa.14.7.i.i755, %._crit_edge606.i.i842 ], [ %i.ded, %._crit_edge615.i.i871 ]
  %i.dcd = phi ptr [ @1555, %bb.rp ], [ @1555, %bb.rl ], [ @1556, %.lr.ph605.i.i822 ], [ @1554, %.lr.ph614.i.us.i914 ], [ @1554, %.lr.ph614.i.i852 ], [ @1931, %bb.rs ], [ @1552, %._crit_edge606.thread.i.i919 ], [ @1552, %._crit_edge606.i.i842 ], [ @1553, %._crit_edge615.i.i871 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dcb, i64 noundef %i.dcc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dcd) #43
          to label %.cont1173.i.i840 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i826, !noalias !35247

.cont1173.i.i840:                                 ; preds = %.invoke1172.i.i825
  unreachable

bb.rt:                                            ; preds = %bb.rs
  %i.dce = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.dbz ; 2 uses
  %i.dcf = load i32, ptr %i.dce, align 4, !alias.scope !35397, !noalias !35247, !noundef !27
  %i.dcg = add i32 %i.dcf, 1
  store i32 %i.dcg, ptr %i.dce, align 4, !alias.scope !35397, !noalias !35247
  %i.dch = load i64, ptr %i.cuq, align 8, !alias.scope !35400, !noalias !35247, !noundef !27
  %i.dci = add i64 %i.dch, 1                      ; 2 uses
  store i64 %i.dci, ptr %i.cuq, align 8, !alias.scope !35403, !noalias !35247
  %i.dcj = add nuw i64 %.sroa.043.2603.i.i823, 1  ; 4 uses
  %i.dck = add nuw nsw i64 %i.cww, 1
  %exitcond860.not.i.i841 = icmp eq i64 %i.cww, %i.cwu
  br i1 %exitcond860.not.i.i841, label %._crit_edge606.i.i842, label %.lr.ph605.i.i822

.loopexit.split-lp.i.i828:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i826, %.loopexit.split-lp.loopexit.i.i850, %bb.qm
  %.sroa.1152.2.i.i829 = phi i64 [ 0, %bb.qm ], [ %i.ded, %.loopexit.split-lp.loopexit.split-lp.i.i826 ], [ %i.ded, %.loopexit.split-lp.loopexit.i.i850 ] ; 2 uses
  %.sroa.051.2.i.i830 = phi ptr [ inttoptr (i64 4 to ptr), %bb.qm ], [ %i.ctt, %.loopexit.split-lp.loopexit.split-lp.i.i826 ], [ %i.ctt, %.loopexit.split-lp.loopexit.i.i850 ] ; 2 uses
  %.sroa.14.6.i.i831 = phi i64 [ 0, %bb.qm ], [ %.sroa.14.7.i.i755, %.loopexit.split-lp.loopexit.split-lp.i.i826 ], [ %.sroa.14.7.i.i755, %.loopexit.split-lp.loopexit.i.i850 ] ; 2 uses
  %.sroa.016.6.i.i832 = phi ptr [ inttoptr (i64 8 to ptr), %bb.qm ], [ %.sroa.016.7.i.i756, %.loopexit.split-lp.loopexit.split-lp.i.i826 ], [ %.sroa.016.7.i.i756, %.loopexit.split-lp.loopexit.i.i850 ] ; 2 uses
  %.pn.i.i833 = phi { ptr, i32 } [ %i.cun, %bb.qm ], [ %lpad.loopexit.split-lp251.i.i827, %.loopexit.split-lp.loopexit.split-lp.i.i826 ], [ %lpad.loopexit250.i.i851, %.loopexit.split-lp.loopexit.i.i850 ] ; 2 uses
  br i1 %i.ctw, label %.thread130.i.i798, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834": ; preds = %.loopexit.split-lp.i.i828, %.loopexit.split-lp.thread.i.i861
  %.pn953.i.i835 = phi { ptr, i32 } [ %lpad.loopexit.i.i862, %.loopexit.split-lp.thread.i.i861 ], [ %.pn.i.i833, %.loopexit.split-lp.i.i828 ]
  %.sroa.016.6952.i.i836 = phi ptr [ %.sroa.016.7.i.i756, %.loopexit.split-lp.thread.i.i861 ], [ %.sroa.016.6.i.i832, %.loopexit.split-lp.i.i828 ]
  %.sroa.14.6951.i.i837 = phi i64 [ %.sroa.14.7.i.i755, %.loopexit.split-lp.thread.i.i861 ], [ %.sroa.14.6.i.i831, %.loopexit.split-lp.i.i828 ]
  %.sroa.051.2950.i.i838 = phi ptr [ %i.ctt, %.loopexit.split-lp.thread.i.i861 ], [ %.sroa.051.2.i.i830, %.loopexit.split-lp.i.i828 ]
  %.sroa.1152.2949.i.i839 = phi i64 [ %i.ded, %.loopexit.split-lp.thread.i.i861 ], [ %.sroa.1152.2.i.i829, %.loopexit.split-lp.i.i828 ]
  tail call void @mi_free(ptr noundef nonnull %i.cuo) #38, !noalias !35247
  br label %.thread130.i.i798

._crit_edge572.i.i751:                            ; preds = %bb.sw
  %i.dcl = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427933.i.i669, i64 noundef %.sroa.0.0.i422.i.i660, ptr noalias noundef nonnull align 4 %i.m, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.k, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.l, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.cst, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i732, i64 noundef %.sroa.0.0.i447.i.i732, i64 noundef 64, i64 noundef 2048)
          to label %bb.ru unwind label %.thread163.loopexit.split-lp.loopexit.i.i753, !noalias !35247 ; 5 uses

bb.ru:                                            ; preds = %._crit_edge572.i.i751
  %i.dcm = add i64 %i.dcl, %.sroa.0.0593.i.i720   ; 3 uses
  %i.dcn = icmp ult i64 %.sroa.012.0592.i.i721, %i.dcm
  br i1 %i.dcn, label %bb.rv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"

bb.rv:                                            ; preds = %bb.ru
  %i.dco = icmp eq i64 %.sroa.012.0592.i.i721, 0  ; 2 uses
  %..sroa.012.0.i.i944 = select i1 %i.dco, i64 %i.dcm, i64 %.sroa.012.0592.i.i721
  br label %bb.rw

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i954", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i", %bb.ru
  %.sroa.14.7.i.i755 = phi i64 [ %.sroa.14.3585.i.i728, %bb.ru ], [ %.sroa.066.1.i.i945, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i954" ], [ %.sroa.066.1.i.i945, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i" ] ; 22 uses
  %.sroa.016.7.i.i756 = phi ptr [ %.sroa.016.3586.i.i727, %bb.ru ], [ %.sroa.10.0.i.i.i521.i.i948, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i954" ], [ %.sroa.10.0.i.i.i521.i.i948, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i757 = phi i64 [ %.sroa.012.0592.i.i721, %bb.ru ], [ %.sroa.066.1.i.i945, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i954" ], [ %.sroa.066.1.i.i945, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i" ]
  %i.dcp = add i64 %i.dcl, %.sroa.018.0591.i.i722 ; 3 uses
  %i.dcq = icmp ult i64 %.sroa.023.0590.i.i723, %i.dcp
  br i1 %i.dcq, label %bb.sc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758"

bb.rw:                                            ; preds = %bb.rw, %bb.rv
  %.sroa.066.1.i.i945 = phi i64 [ %..sroa.012.0.i.i944, %bb.rv ], [ %i.dcs, %bb.rw ] ; 13 uses
  %i.dcr = icmp ult i64 %.sroa.066.1.i.i945, %i.dcm
  %i.dcs = shl i64 %.sroa.066.1.i.i945, 1
  br i1 %i.dcr, label %bb.rw, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.dct = mul i64 %.sroa.066.1.i.i945, 2192      ; 3 uses
  %or.cond.i.i.i.i.i518.i.i946 = icmp ugt i64 %.sroa.066.1.i.i945, 4207742717543237
  br i1 %or.cond.i.i.i.i.i518.i.i946, label %bb.rz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i947, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i947: ; preds = %bb.rx
  %i.dcu = icmp eq i64 %i.dct, 0
  br i1 %i.dcu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i", label %bb.ry

bb.ry:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i947
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35406
  %i.dcv = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.dct, i64 noundef range(i64 1, 9) 8) #38, !noalias !35406 ; 2 uses
  %i.dcw = icmp eq ptr %i.dcv, null
  br i1 %i.dcw, label %bb.rz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i"

bb.rz:                                            ; preds = %bb.ry, %bb.rx
  %.sroa.4.0.ph.i.i.i533.i.i959 = phi i64 [ 8, %bb.ry ], [ 0, %bb.rx ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i959, i64 %i.dct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc534.i.i960 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.noexc534.i.i960:                                 ; preds = %bb.rz
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i": ; preds = %bb.ry, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i947
  %.sroa.10.0.i.i.i521.i.i948 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i947 ], [ %i.dcv, %bb.ry ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i949 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i947 ], [ %.sroa.066.1.i.i945, %bb.ry ]
  %i.dcx = icmp samesign ule i64 %.sroa.066.1.i.i945, %.sroa.4.0.i.i.i522.i.i949
  tail call void @llvm.assume(i1 %i.dcx)
  %i.dcy = icmp samesign ugt i64 %.sroa.066.1.i.i945, 1
  br i1 %i.dcy, label %.lr.ph.i.i.i528.i.i955.preheader, label %.loopexit254.i.i950

.lr.ph.i.i.i528.i.i955.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i"
  %i.dcz = add nsw i64 %.sroa.066.1.i.i945, -1    ; 2 uses
  %i.dda = add nsw i64 %.sroa.066.1.i.i945, -2
  %xtraiter4747 = and i64 %i.dcz, 7               ; 3 uses
  %i.ddb = icmp ult i64 %i.dda, 7
  br i1 %i.ddb, label %.lr.ph.i.i.i528.i.i955.epil.preheader, label %.lr.ph.i.i.i528.i.i955.preheader.new

.lr.ph.i.i.i528.i.i955.preheader.new:             ; preds = %.lr.ph.i.i.i528.i.i955.preheader
  %unroll_iter4752 = and i64 %i.dcz, -8
  br label %.lr.ph.i.i.i528.i.i955

.lr.ph.i.i.i528.i.i955:                           ; preds = %.lr.ph.i.i.i528.i.i955, %.lr.ph.i.i.i528.i.i955.preheader.new
  %.sroa.0.08.i.i.i529.i.i956 = phi ptr [ %.sroa.10.0.i.i.i521.i.i948, %.lr.ph.i.i.i528.i.i955.preheader.new ], [ %i.ddj, %.lr.ph.i.i.i528.i.i955 ] ; 17 uses
  %niter4753 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i955.preheader.new ], [ %niter4753.next.7, %.lr.ph.i.i.i528.i.i955 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i956, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !35414
  %i.ddc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddc, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !35414
  %i.ddd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddd, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !35414
  %i.dde = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dde, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !35414
  %i.ddf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddf, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !35414
  %i.ddg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddg, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !35414
  %i.ddh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddh, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !35414
  %i.ddi = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddi, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !35414
  %i.ddj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956, i64 17536 ; 3 uses
  %niter4753.next.7 = add i64 %niter4753, 8       ; 2 uses
  %niter4753.ncmp.7 = icmp eq i64 %niter4753.next.7, %unroll_iter4752
  br i1 %niter4753.ncmp.7, label %.loopexit254.i.i950.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i955

.loopexit254.i.i950.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i955
  %lcmp.mod4749.not = icmp eq i64 %xtraiter4747, 0
  br i1 %lcmp.mod4749.not, label %.loopexit254.i.i950, label %.lr.ph.i.i.i528.i.i955.epil.preheader

.lr.ph.i.i.i528.i.i955.epil.preheader:            ; preds = %.loopexit254.i.i950.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i955.preheader
  %.sroa.0.08.i.i.i529.i.i956.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i948, %.lr.ph.i.i.i528.i.i955.preheader ], [ %i.ddj, %.loopexit254.i.i950.loopexit.unr-lcssa ]
  %lcmp.mod4751 = icmp ne i64 %xtraiter4747, 0
  call void @llvm.assume(i1 %lcmp.mod4751)
  br label %.lr.ph.i.i.i528.i.i955.epil

.lr.ph.i.i.i528.i.i955.epil:                      ; preds = %.lr.ph.i.i.i528.i.i955.epil, %.lr.ph.i.i.i528.i.i955.epil.preheader
  %.sroa.0.08.i.i.i529.i.i956.epil = phi ptr [ %i.ddk, %.lr.ph.i.i.i528.i.i955.epil ], [ %.sroa.0.08.i.i.i529.i.i956.epil.init, %.lr.ph.i.i.i528.i.i955.epil.preheader ] ; 3 uses
  %epil.iter4748 = phi i64 [ %epil.iter4748.next, %.lr.ph.i.i.i528.i.i955.epil ], [ 0, %.lr.ph.i.i.i528.i.i955.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i956.epil, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !35414
  %i.ddk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i956.epil, i64 2192 ; 2 uses
  %epil.iter4748.next = add i64 %epil.iter4748, 1 ; 2 uses
  %epil.iter4748.cmp.not = icmp eq i64 %epil.iter4748.next, %xtraiter4747
  br i1 %epil.iter4748.cmp.not, label %.loopexit254.i.i950, label %.lr.ph.i.i.i528.i.i955.epil, !llvm.loop !35417

.loopexit254.i.i950:                              ; preds = %.loopexit254.i.i950.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i955.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i951 = phi ptr [ %.sroa.10.0.i.i.i521.i.i948, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i520.i.i" ], [ %i.ddj, %.loopexit254.i.i950.loopexit.unr-lcssa ], [ %i.ddk, %.lr.ph.i.i.i528.i.i955.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i526.i.i951, i8 0, i64 2184, i1 false), !noalias !35247
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i951, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !35414
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3586.i.i727) ]
  %.not227.i.i952 = icmp ugt i64 %.sroa.012.0592.i.i721, %.sroa.14.3585.i.i728
  br i1 %.not227.i.i952, label %bb.sb, label %bb.sa, !prof !2494

bb.sa:                                            ; preds = %.loopexit254.i.i950
  br i1 %i.dco, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i", label %.lr.ph.preheader.i.i.i953

.lr.ph.preheader.i.i.i953:                        ; preds = %bb.sa
  %i.ddl = mul nuw nsw i64 %.sroa.012.0592.i.i721, 2192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i948, ptr nonnull readonly align 8 %.sroa.016.3586.i.i727, i64 %i.ddl, i1 false), !alias.scope !35418, !noalias !35247
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i"

bb.sb:                                            ; preds = %.loopexit254.i.i950
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0592.i.i721, i64 noundef %.sroa.14.3585.i.i728, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1565) #43
          to label %bb.rc unwind label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i", !noalias !35247

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i953, %bb.sa
  %i.ddm = icmp eq i64 %.sroa.14.3585.i.i728, 0
  br i1 %i.ddm, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i954"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i954": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hc325a368fbda3a67E.exit.i.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.016.3586.i.i727) #38, !noalias !35247
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"

bb.sc:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"
  %i.ddn = icmp eq i64 %.sroa.023.0590.i.i723, 0
  %..sroa.023.0.i.i934 = select i1 %i.ddn, i64 %i.dcp, i64 %.sroa.023.0590.i.i723
  br label %bb.sd

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i940", %bb.sk, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i"
  %.sroa.12.5.i.i759 = phi i64 [ %.sroa.12.2583.i.i730, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i" ], [ %.sroa.070.1.i.i935, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i940" ], [ %.sroa.070.1.i.i935, %bb.sk ] ; 10 uses
  %.sroa.026.5.i.i760 = phi ptr [ %.sroa.026.2584.i.i729, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i" ], [ %i.ddz, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i940" ], [ %i.ddz, %bb.sk ] ; 11 uses
  %.sroa.023.1.i.i761 = phi i64 [ %.sroa.023.0590.i.i723, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h42872dbc42a50229E.exit538.i.i" ], [ %.sroa.070.1.i.i935, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i940" ], [ %.sroa.070.1.i.i935, %bb.sk ]
  %.not625.i.i762 = icmp eq i64 %i.dcl, 0
  br i1 %.not625.i.i762, label %.preheader253.i.i774, label %.lr.ph577.preheader.i.i763

.lr.ph577.preheader.i.i763:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758"
  %reass.sub446.i764 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i755, i64 %.sroa.0.0593.i.i720)
  %i.ddo = add nuw nsw i64 %reass.sub446.i764, 1
  %reass.sub447.i765 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i759, i64 %.sroa.018.0591.i.i722)
  %i.ddp = add nuw nsw i64 %reass.sub447.i765, 1
  br label %.lr.ph577.i.i766

bb.sd:                                            ; preds = %bb.sd, %bb.sc
  %.sroa.070.1.i.i935 = phi i64 [ %..sroa.023.0.i.i934, %bb.sc ], [ %i.ddr, %bb.sd ] ; 9 uses
  %i.ddq = icmp ult i64 %.sroa.070.1.i.i935, %i.dcp
  %i.ddr = shl i64 %.sroa.070.1.i.i935, 1
  br i1 %i.ddq, label %bb.sd, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.dds = shl i64 %.sroa.070.1.i.i935, 2         ; 4 uses
  %i.ddt = icmp ugt i64 %.sroa.070.1.i.i935, 4611686018427387903
  %i.ddu = icmp ugt i64 %i.dds, 9223372036854775804
  %or.cond.i.i.i.i539.i.i936 = or i1 %i.ddt, %i.ddu
  br i1 %or.cond.i.i.i.i539.i.i936, label %bb.sh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i937, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i937: ; preds = %bb.se
  %i.ddv = icmp eq i64 %i.dds, 0
  br i1 %i.ddv, label %bb.si, label %bb.sf

bb.sf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i937
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35425
  %i.ddw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dds, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35425 ; 2 uses
  %i.ddx = icmp eq ptr %i.ddw, null
  br i1 %i.ddx, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.ddy = ptrtoint ptr %i.ddw to i64
  br label %bb.si

bb.sh:                                            ; preds = %bb.sf, %bb.se
  %.sroa.4.0.ph.i.i542.i.i942 = phi i64 [ 4, %bb.sf ], [ 0, %bb.se ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i942, i64 %i.dds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc543.i.i943 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.noexc543.i.i943:                                 ; preds = %bb.sh
  unreachable

bb.si:                                            ; preds = %bb.sg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i937
  %.sroa.10.0.i.i541.i.i938 = phi i64 [ %i.ddy, %bb.sg ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i937 ]
  %i.ddz = inttoptr i64 %.sroa.10.0.i.i541.i.i938 to ptr ; 5 uses
  %i.dea = icmp samesign ult i64 %.sroa.070.1.i.i935, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dea)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ddz) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2584.i.i729) ]
  %.not229.i.i939 = icmp ugt i64 %.sroa.023.0590.i.i723, %.sroa.12.2583.i.i730
  br i1 %.not229.i.i939, label %bb.sj, label %bb.sk, !prof !2494

bb.sj:                                            ; preds = %bb.si
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0590.i.i723, i64 noundef %.sroa.12.2583.i.i730, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.rc unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941", !noalias !35247

bb.sk:                                            ; preds = %bb.si
  %i.deb = shl nuw nsw i64 %.sroa.023.0590.i.i723, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ddz, ptr nonnull readonly align 4 %.sroa.026.2584.i.i729, i64 %i.deb, i1 false), !alias.scope !35430, !noalias !35434
  %i.dec = icmp eq i64 %.sroa.12.2583.i.i730, 0
  br i1 %i.dec, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i940"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i940": ; preds = %bb.sk
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2584.i.i729) #38, !noalias !35247
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758"

.preheader253.i.i774:                             ; preds = %bb.su, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758"
  %.sroa.018.1.lcssa.i.i775 = phi i64 [ %.sroa.018.0591.i.i722, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758" ], [ %i.dfh, %bb.su ]
  %.sroa.0.1.lcssa.i.i776 = phi i64 [ %.sroa.0.0593.i.i720, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i758" ], [ %i.dfa, %bb.su ]
  %12 = trunc i64 %.sroa.029.0589.i.i724 to i32
  br label %bb.sl

._crit_edge582.i.i780:                            ; preds = %bb.sn
  %i.ded = add i64 %i.dcl, %.sroa.029.0589.i.i724 ; 23 uses
  %i.dee = add i64 %.sroa.047.1587.i.i726, 64     ; 2 uses
  %i.def = icmp ult i64 %i.dee, %.sroa.0.0.i.i634
  %indvars.iv.next.i.i781 = add i64 %indvars.iv.i.i719, -64
  br i1 %i.def, label %.split.i.i718, label %bb.qa

bb.sl:                                            ; preds = %bb.sn, %.preheader253.i.i774
  %i.deg = phi i64 [ 1, %.preheader253.i.i774 ], [ %i.der, %bb.sn ] ; 3 uses
  %.sroa.0133.0580.i.i778 = phi i64 [ 0, %.preheader253.i.i774 ], [ %i.deg, %bb.sn ] ; 2 uses
  %i.deh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0133.0580.i.i778
  %i.dei = load i32, ptr %i.deh, align 4, !noalias !35247, !noundef !27 ; 2 uses
  %i.dej = zext i32 %i.dei to i64                 ; 2 uses
  %i.dek = icmp ult i32 %i.dei, 64
  br i1 %i.dek, label %bb.sm, label %.invoke3978

bb.sm:                                            ; preds = %bb.sl
  %i.del = or disjoint i64 %.sroa.0133.0580.i.i778, %.sroa.047.1587.i.i726 ; 3 uses
  %i.dem = icmp ult i64 %i.del, %.sroa.0.0.i.i634
  br i1 %i.dem, label %bb.sn, label %.invoke3978

bb.sn:                                            ; preds = %bb.sm
  %i.den = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dej
  %i.deo = load i32, ptr %i.den, align 4, !noalias !35247, !noundef !27
  %i.dep = add i32 %i.deo, %12
  %i.deq = getelementptr inbounds nuw [4 x i8], ptr %i.cqx, i64 %i.del
  store i32 %i.dep, ptr %i.deq, align 4, !noalias !35247
  %i.der = add nuw nsw i64 %i.deg, 1
  %exitcond857.not.i.i779 = icmp eq i64 %i.deg, %umax856.i.i731
  br i1 %exitcond857.not.i.i779, label %._crit_edge582.i.i780, label %bb.sl

.lr.ph577.i.i766:                                 ; preds = %bb.su, %.lr.ph577.preheader.i.i763
  %i.des = phi i64 [ %i.dfk, %bb.su ], [ 1, %.lr.ph577.preheader.i.i763 ] ; 6 uses
  %.sroa.0.1576.i.i767 = phi i64 [ %i.dfa, %bb.su ], [ %.sroa.0.0593.i.i720, %.lr.ph577.preheader.i.i763 ] ; 3 uses
  %.sroa.018.1575.i.i768 = phi i64 [ %i.dfh, %bb.su ], [ %.sroa.018.0591.i.i722, %.lr.ph577.preheader.i.i763 ] ; 3 uses
  %.sroa.0131.0574.i.i769 = phi i64 [ %i.des, %bb.su ], [ 0, %.lr.ph577.preheader.i.i763 ] ; 2 uses
  %exitcond850.not.i.i770 = icmp eq i64 %i.des, 65
  br i1 %exitcond850.not.i.i770, label %.invoke3978, label %bb.so

bb.so:                                            ; preds = %.lr.ph577.i.i766
  %i.det = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0131.0574.i.i769 ; 2 uses
  %i.deu = load i32, ptr %i.det, align 4, !noalias !35247, !noundef !27
  %i.dev = zext i32 %i.deu to i64                 ; 4 uses
  %i.dew = icmp samesign ugt i64 %.sroa.0.0.i422.i.i660, %i.dev
  br i1 %i.dew, label %bb.sq, label %.invoke3978

bb.sp:                                            ; preds = %bb.sr
  %i.dex = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

bb.sq:                                            ; preds = %bb.so
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i756) ]
  %exitcond852.not.i.i771 = icmp eq i64 %i.des, %i.ddo
  br i1 %exitcond852.not.i.i771, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %bb.sq
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1576.i.i767, i64 noundef %.sroa.14.7.i.i755, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.rc unwind label %bb.sp, !noalias !35247

bb.ss:                                            ; preds = %bb.sq
  %i.dey = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427933.i.i669, i64 %i.dev
  %i.dez = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.016.7.i.i756, i64 %.sroa.0.1576.i.i767
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.dez, ptr noundef nonnull align 8 dereferenceable(2192) %i.dey, i64 2192, i1 false), !noalias !35247
  %i.dfa = add nuw i64 %.sroa.0.1576.i.i767, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i760) ]
  %exitcond854.not.i.i772 = icmp eq i64 %i.des, %i.ddp
  br i1 %exitcond854.not.i.i772, label %.invoke3978, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.dfb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dev
  %i.dfc = load i32, ptr %i.dfb, align 4, !noalias !35247, !noundef !27
  %i.dfd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i760, i64 %.sroa.018.1575.i.i768
  store i32 %i.dfc, ptr %i.dfd, align 4, !noalias !35247
  %i.dfe = load i32, ptr %i.det, align 4, !noalias !35247, !noundef !27 ; 2 uses
  %i.dff = zext i32 %i.dfe to i64                 ; 2 uses
  %i.dfg = icmp ult i32 %i.dfe, 64
  br i1 %i.dfg, label %bb.su, label %.invoke3978

bb.su:                                            ; preds = %bb.st
  %i.dfh = add nuw i64 %.sroa.018.1575.i.i768, 1  ; 2 uses
  %i.dfi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dff
  %i.dfj = trunc nuw nsw i64 %.sroa.0131.0574.i.i769 to i32
  store i32 %i.dfj, ptr %i.dfi, align 4, !noalias !35247
  %i.dfk = add nuw nsw i64 %i.des, 1
  %exitcond855.not.i.i773 = icmp eq i64 %i.des, %i.dcl
  br i1 %exitcond855.not.i.i773, label %.preheader253.i.i774, label %.lr.ph577.i.i766

.invoke3978:                                      ; preds = %bb.st, %bb.ss, %bb.so, %.lr.ph577.i.i766, %bb.sm, %bb.sl
  %i.dfl = phi i64 [ %i.del, %bb.sm ], [ %i.dej, %bb.sl ], [ %i.dff, %bb.st ], [ 64, %.lr.ph577.i.i766 ], [ %i.dev, %bb.so ], [ %.sroa.018.1575.i.i768, %bb.ss ]
  %i.dfm = phi i64 [ %.sroa.0.0.i.i634, %bb.sm ], [ 64, %bb.sl ], [ 64, %bb.st ], [ 64, %.lr.ph577.i.i766 ], [ %.sroa.0.0.i422.i.i660, %bb.so ], [ %.sroa.12.5.i.i759, %bb.ss ]
  %i.dfn = phi ptr [ @1558, %bb.sm ], [ @1557, %bb.sl ], [ @1563, %bb.st ], [ @1559, %.lr.ph577.i.i766 ], [ @1560, %bb.so ], [ @1562, %bb.ss ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dfl, i64 noundef %i.dfm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dfn) #43
          to label %.cont3979 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.cont3979:                                        ; preds = %.invoke3978
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i941": ; preds = %bb.sj
  %i.dfo = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.ddz) #38, !noalias !35247
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i": ; preds = %bb.sb
  %i.dfp = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i948) #38, !noalias !35247
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

.lr.ph571.i.i734:                                 ; preds = %bb.sw, %.split.i.i718
  %.sroa.0127.1570.i.i735 = phi i64 [ %.sroa.0127.1.i.i750, %bb.sw ], [ 1, %.split.i.i718 ] ; 3 uses
  %.sroa.043.3569.i.i736 = phi i64 [ %.sroa.043.4.lcssa.i.i747, %bb.sw ], [ %.sroa.043.0588.i.i725, %.split.i.i718 ] ; 3 uses
  %.sroa.0127.0568.i.i737 = phi i64 [ %.sroa.0127.1570.i.i735, %bb.sw ], [ 0, %.split.i.i718 ] ; 6 uses
  %i.dfq = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427933.i.i669, i64 %.sroa.0127.0568.i.i737 ; 5 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.dfq, i64 2176 ; 2 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfq, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dfq, i8 0, i64 2184, i1 false), !noalias !35247
  store float 3.402000e+38, ptr %i.dfs, align 8, !alias.scope !35436, !noalias !35247
  %i.dft = add nuw nsw i64 %.sroa.0127.0568.i.i737, %.sroa.047.1587.i.i726 ; 3 uses
  %i.dfu = icmp ult i64 %i.dft, %.sroa.0.0.i.i634
  br i1 %i.dfu, label %bb.sv, label %.invoke3976

bb.sv:                                            ; preds = %.lr.ph571.i.i734
  %i.dfv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i649, i64 %i.dft
  %i.dfw = load i32, ptr %i.dfv, align 4, !noalias !35247, !noundef !27 ; 2 uses
  %.not.i169.i738 = icmp eq i32 %i.dfw, 0
  br i1 %.not.i169.i738, label %._crit_edge.i.i746, label %.lr.ph.preheader.i.i739

.lr.ph.preheader.i.i739:                          ; preds = %bb.sv
  %i.dfx = zext i32 %i.dfw to i64
  %reass.sub.i740 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3569.i.i736)
  %i.dfy = add nuw nsw i64 %reass.sub.i740, 1
  br label %.lr.ph.i.i741

._crit_edge.i.i746:                               ; preds = %bb.sy, %bb.sv
  %.sroa.043.4.lcssa.i.i747 = phi i64 [ %.sroa.043.3569.i.i736, %bb.sv ], [ %i.dgt, %bb.sy ] ; 2 uses
  %i.dfz = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.dfq)
          to label %bb.sw unwind label %.thread163.loopexit.i.i748, !noalias !35247

bb.sw:                                            ; preds = %._crit_edge.i.i746
  store float %i.dfz, ptr %i.dfs, align 8, !alias.scope !35439, !noalias !35247
  %i.dga = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0127.0568.i.i737
  %i.dgb = trunc nuw nsw i64 %.sroa.0127.0568.i.i737 to i32 ; 2 uses
  store i32 %i.dgb, ptr %i.dga, align 4, !noalias !35247
  %i.dgc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0127.0568.i.i737
  store i32 %i.dgb, ptr %i.dgc, align 4, !noalias !35247
  %i.dgd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0127.0568.i.i737
  store i32 1, ptr %i.dgd, align 4, !noalias !35247
  %i.dge = icmp samesign ult i64 %.sroa.0127.1570.i.i735, %.sroa.0.0.i447.i.i732 ; 2 uses
  %i.dgf = zext i1 %i.dge to i64
  %.sroa.0127.1.i.i750 = add nuw i64 %.sroa.0127.1570.i.i735, %i.dgf
  br i1 %i.dge, label %.lr.ph571.i.i734, label %._crit_edge572.i.i751

.lr.ph.i.i741:                                    ; preds = %bb.sy, %.lr.ph.preheader.i.i739
  %i.dgg = phi i64 [ %i.dgu, %bb.sy ], [ 1, %.lr.ph.preheader.i.i739 ] ; 3 uses
  %.sroa.043.4567.i.i742 = phi i64 [ %i.dgt, %bb.sy ], [ %.sroa.043.3569.i.i736, %.lr.ph.preheader.i.i739 ] ; 3 uses
  %exitcond848.not.i.i743 = icmp eq i64 %i.dgg, %i.dfy
  br i1 %exitcond848.not.i.i743, label %.invoke3976, label %bb.sx

bb.sx:                                            ; preds = %.lr.ph.i.i741
  %i.dgh = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %.sroa.043.4567.i.i742
  %i.dgi = load i16, ptr %i.dgh, align 2, !alias.scope !35442, !noalias !35396, !noundef !27 ; 2 uses
  %i.dgj = zext i16 %i.dgi to i64                 ; 2 uses
  %i.dgk = icmp ult i16 %i.dgi, 544
  br i1 %i.dgk, label %bb.sy, label %.invoke3976

.invoke3976:                                      ; preds = %.lr.ph571.i.i734, %bb.sx, %.lr.ph.i.i741
  %i.dgl = phi i64 [ %.sroa.043.4567.i.i742, %.lr.ph.i.i741 ], [ %i.dgj, %bb.sx ], [ %i.dft, %.lr.ph571.i.i734 ]
  %i.dgm = phi i64 [ %2, %.lr.ph.i.i741 ], [ 544, %bb.sx ], [ %.sroa.0.0.i.i634, %.lr.ph571.i.i734 ]
  %i.dgn = phi ptr [ @1567, %.lr.ph.i.i741 ], [ @1931, %bb.sx ], [ @1566, %.lr.ph571.i.i734 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dgl, i64 noundef %i.dgm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dgn) #43
          to label %.cont3977 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.cont3977:                                        ; preds = %.invoke3976
  unreachable

bb.sy:                                            ; preds = %bb.sx
  %i.dgo = getelementptr inbounds nuw [4 x i8], ptr %i.dfq, i64 %i.dgj ; 2 uses
  %i.dgp = load i32, ptr %i.dgo, align 4, !alias.scope !35445, !noalias !35247, !noundef !27
  %i.dgq = add i32 %i.dgp, 1
  store i32 %i.dgq, ptr %i.dgo, align 4, !alias.scope !35445, !noalias !35247
  %i.dgr = load i64, ptr %i.dfr, align 8, !alias.scope !35448, !noalias !35247, !noundef !27
  %i.dgs = add i64 %i.dgr, 1
  store i64 %i.dgs, ptr %i.dfr, align 8, !alias.scope !35451, !noalias !35247
  %i.dgt = add nuw i64 %.sroa.043.4567.i.i742, 1  ; 2 uses
  %i.dgu = add nuw nsw i64 %i.dgg, 1
  %exitcond849.not.i.i745 = icmp eq i64 %i.dgg, %i.dfx
  br i1 %exitcond849.not.i.i745, label %._crit_edge.i.i746, label %.lr.ph.i.i741

bb.sz:                                            ; preds = %bb.tc, %bb.py
  %.sroa.047.0565.i.i670 = phi i64 [ 0, %bb.py ], [ %i.dgz, %bb.tc ] ; 2 uses
  %.sroa.059.0564.i.i671 = phi i64 [ 0, %bb.py ], [ %.sroa.059.1.i.i717, %bb.tc ] ; 5 uses
  %i.dgv = icmp ult i64 %.sroa.059.0564.i.i671, %.sroa.0.0.i.i634
  br i1 %i.dgv, label %bb.ta, label %.invoke.i.i672

bb.ta:                                            ; preds = %bb.sz
  %i.dgw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i649, i64 %.sroa.059.0564.i.i671 ; 2 uses
  %i.dgx = load i32, ptr %i.dgw, align 4, !noalias !35247, !noundef !27
  %i.dgy = add i32 %i.dgx, 1
  store i32 %i.dgy, ptr %i.dgw, align 4, !noalias !35247
  %i.dgz = add nuw i64 %.sroa.047.0565.i.i670, 1  ; 3 uses
  %i.dha = icmp eq i64 %i.dgz, %.sroa.01.1        ; 2 uses
  br i1 %i.dha, label %bb.td, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.sroa.047.0565.i.i670
  %i.dhc = load i8, ptr %i.dhb, align 1, !alias.scope !35233, !noalias !35454, !noundef !27
  %i.dhd = getelementptr inbounds nuw i8, ptr %i.coy, i64 %i.dgz
  %i.dhe = load i8, ptr %i.dhd, align 1, !alias.scope !35233, !noalias !35454, !noundef !27
  %.not238.i.i716 = icmp eq i8 %i.dhc, %i.dhe
  br i1 %.not238.i.i716, label %bb.tc, label %bb.td

.invoke.i.i672:                                   ; preds = %bb.sz
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i671, i64 noundef %.sroa.0.0.i.i634, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i715 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35247

.cont.i.i715:                                     ; preds = %.invoke.i.i672
  unreachable

bb.tc:                                            ; preds = %bb.td, %bb.tb
  %.sroa.059.1.i.i717 = phi i64 [ %i.dhf, %bb.td ], [ %.sroa.059.0564.i.i671, %bb.tb ]
  br i1 %i.dha, label %.split.i.i718, label %bb.sz

bb.td:                                            ; preds = %bb.tb, %bb.ta
  %i.dhf = add nuw nsw i64 %.sroa.059.0564.i.i671, 1
  br label %bb.tc

.thread130.i.i798:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834", %.loopexit.split-lp.i.i828, %bb.pz
  %.pn230155.i.i799 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i797, %bb.pz ], [ %.pn.i.i833, %.loopexit.split-lp.i.i828 ], [ %.pn953.i.i835, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.016.4154.i.i800 = phi ptr [ %.sroa.016.7.i.i756, %bb.pz ], [ %.sroa.016.6.i.i832, %.loopexit.split-lp.i.i828 ], [ %.sroa.016.6952.i.i836, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.14.4153.i.i801 = phi i64 [ %.sroa.14.7.i.i755, %bb.pz ], [ %.sroa.14.6.i.i831, %.loopexit.split-lp.i.i828 ], [ %.sroa.14.6951.i.i837, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.026.3152.i.i802 = phi ptr [ %.sroa.026.4.ph162.i.i796, %bb.pz ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i828 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.12.3151.i.i803 = phi i64 [ %.sroa.12.4.ph161.i.i795, %bb.pz ], [ 0, %.loopexit.split-lp.i.i828 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.044.0148.i.i804 = phi ptr [ %.sroa.044.1.ph160.i.i794, %bb.pz ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i828 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ]
  %.sroa.11.0147.i.i805 = phi i1 [ %.sroa.11.1.ph159.i.i793, %bb.pz ], [ true, %.loopexit.split-lp.i.i828 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ]
  %.sroa.051.0146.i.i806 = phi ptr [ %i.ctt, %bb.pz ], [ %.sroa.051.2.i.i830, %.loopexit.split-lp.i.i828 ], [ %.sroa.051.2950.i.i838, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.1152.0145.i.i807 = phi i64 [ %i.ded, %bb.pz ], [ %.sroa.1152.2.i.i829, %.loopexit.split-lp.i.i828 ], [ %.sroa.1152.2949.i.i839, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ]
  %i.dhg = icmp eq i64 %.sroa.1152.0145.i.i807, 0
  br i1 %i.dhg, label %bb.ra, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i808"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i808": ; preds = %.thread130.i.i798
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i806) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i806) #38, !noalias !35247
  br label %bb.ra

bb.te:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i706", %bb.ps, %.thread86.i.i970
  %.pn230.pn.pn.pn.pn.pn90.i.i709 = phi { ptr, i32 } [ %i.crs, %.thread86.i.i970 ], [ %.pn230.pn.pn.pn.pn100.i.i707, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i706" ], [ %.pn230.pn.pn.pn.i.i704, %bb.ps ] ; 2 uses
  %i.dhh = icmp eq i64 %.sroa.0.0.i.i634, 0
  br i1 %i.dhh, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i713", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710": ; preds = %bb.te
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i649) #38, !noalias !35247
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972": ; preds = %bb.pm
  %i.dhi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dhj = icmp eq i64 %.sroa.0.0.i.i634, 0
  br i1 %i.dhj, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i713", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710"
  %i.dhk = phi ptr [ %i.cqx, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710" ], [ %i.cqs, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85958.i.i712 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i709, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710" ], [ %i.dhi, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dhk) ]
  tail call void @mi_free(ptr noundef nonnull %i.dhk) #38, !noalias !35247
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i713"

bb.tf:                                            ; preds = %bb.rf
  %i.dhl = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.0109.1.i.i895, ptr %i.dhl, align 8, !alias.scope !35308, !noalias !35309
  %i.dhm = zext i8 %.sroa.0113.1.i.i894 to i64
  %i.dhn = add nuw nsw i64 %i.dhm, 1
  %i.dho = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.dhn, ptr %i.dho, align 8, !alias.scope !35308, !noalias !35309
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cuo) #38, !noalias !35247
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i649) #38, !noalias !35247
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cqx) #38, !noalias !35247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35247
  tail call void @mi_free(ptr noundef nonnull align 1 %i.coy) #38, !noalias !35124
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.tg:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, %.split.i495
  %.sroa.032.1442.i498 = phi i64 [ 1, %.split.i495 ], [ %.sroa.032.1.i645, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i499 = phi i64 [ %spec.store.select.i447, %.split.i495 ], [ %i.dxn, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35466)
  %i.dhp = icmp eq i64 %.sroa.0.0441.i499, 0
  br i1 %i.dhp, label %.loopexit.i633, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.dhq = add i64 %.sroa.0.0441.i499, 7
  %i.dhr = lshr i64 %i.dhq, 3                     ; 8 uses
  %i.dhs = icmp eq i64 %.sroa.0.0441.i499, 1
  br i1 %i.dhs, label %.preheader.i.i985.preheader, label %bb.ti

.preheader.i.i985.preheader:                      ; preds = %bb.th
  br i1 %min.iters.check3896, label %.preheader.i.i985.preheader4139, label %vector.body3899

.preheader.i.i985.preheader4139:                  ; preds = %vector.body3899, %.preheader.i.i985.preheader
  %.ph4140 = phi i64 [ 1, %.preheader.i.i985.preheader ], [ %i.cqk, %vector.body3899 ]
  %.sroa.066.0449.i.i986.ph = phi i64 [ 0, %.preheader.i.i985.preheader ], [ %n.vec3898, %vector.body3899 ]
  br label %.preheader.i.i985

end_hunk_7
begin_hunk_8_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %.sroa.6.0.copyload.i.i558 = load float, ptr %.sroa.6.0..sroa_idx.i.i557, align 4, !alias.scope !35487, !noalias !35470
  %.sroa.7.0..sroa_idx.i.i559 = getelementptr inbounds nuw i8, ptr %i.dus, i64 12
  %.sroa.7.0.copyload.i.i560 = load float, ptr %.sroa.7.0..sroa_idx.i.i559, align 4, !alias.scope !35487, !noalias !35470
  %.sroa.8.0..sroa_idx.i.i561 = getelementptr inbounds nuw i8, ptr %i.dus, i64 16
  %.sroa.8.0.copyload.i.i562 = load float, ptr %.sroa.8.0..sroa_idx.i.i561, align 4, !alias.scope !35487, !noalias !35470
  %.sroa.9.0..sroa_idx.i.i563 = getelementptr inbounds nuw i8, ptr %i.dus, i64 20
  %.sroa.9.0.copyload.i.i564 = load float, ptr %.sroa.9.0..sroa_idx.i.i563, align 4, !alias.scope !35487, !noalias !35470
  %.sroa.10.0..sroa_idx.i.i565 = getelementptr inbounds nuw i8, ptr %i.dus, i64 24
  %.sroa.10.0.copyload.i.i566 = load float, ptr %.sroa.10.0..sroa_idx.i.i565, align 4, !alias.scope !35487, !noalias !35470
  %.sroa.11.0..sroa_idx.i.i567 = getelementptr inbounds nuw i8, ptr %i.dus, i64 28
  %.sroa.11.0.copyload.i.i568 = load float, ptr %.sroa.11.0..sroa_idx.i.i567, align 4, !alias.scope !35487, !noalias !35470
  %i.dut = load float, ptr %.sroa.0164.0412.i.i548, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.duu = fadd float %.sroa.0.0.copyload.i.i554, %i.dut ; 3 uses
  store float %i.duu, ptr %.sroa.0164.0412.i.i548, align 4, !alias.scope !35462, !noalias !35471
  %i.duv = fcmp olt float %i.duu, %.sroa.029.0413.i.i547
  br i1 %i.duv, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %i.duw = trunc i64 %i.dlr to i8
  store i8 %i.duw, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.ux

bb.ux:                                            ; preds = %bb.uw, %bb.uv
  %.sroa.029.4.i.i569 = phi float [ %i.duu, %bb.uw ], [ %.sroa.029.0413.i.i547, %bb.uv ] ; 2 uses
  %i.dux = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 4 ; 2 uses
  %i.duy = load float, ptr %i.dux, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.duz = fadd float %.sroa.5.0.copyload.i.i556, %i.duy ; 3 uses
  store float %i.duz, ptr %i.dux, align 4, !alias.scope !35462, !noalias !35471
  %i.dva = fcmp olt float %i.duz, %.sroa.029.4.i.i569
  br i1 %i.dva, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.dvb = trunc i64 %i.dlr to i8
  %i.dvc = or disjoint i8 %i.dvb, 1
  store i8 %i.dvc, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux
  %.sroa.029.4.1.i.i570 = phi float [ %i.duz, %bb.uy ], [ %.sroa.029.4.i.i569, %bb.ux ] ; 2 uses
  %i.dvd = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 8 ; 2 uses
  %i.dve = load float, ptr %i.dvd, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.dvf = fadd float %.sroa.6.0.copyload.i.i558, %i.dve ; 3 uses
  store float %i.dvf, ptr %i.dvd, align 4, !alias.scope !35462, !noalias !35471
  %i.dvg = fcmp olt float %i.dvf, %.sroa.029.4.1.i.i570
  br i1 %i.dvg, label %bb.va, label %bb.vb

bb.va:                                            ; preds = %bb.uz
  %i.dvh = trunc i64 %i.dlr to i8
  %i.dvi = or disjoint i8 %i.dvh, 2
  store i8 %i.dvi, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.vb

bb.vb:                                            ; preds = %bb.va, %bb.uz
  %.sroa.029.4.2.i.i571 = phi float [ %i.dvf, %bb.va ], [ %.sroa.029.4.1.i.i570, %bb.uz ] ; 2 uses
  %i.dvj = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 12 ; 2 uses
  %i.dvk = load float, ptr %i.dvj, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.dvl = fadd float %.sroa.7.0.copyload.i.i560, %i.dvk ; 3 uses
  store float %i.dvl, ptr %i.dvj, align 4, !alias.scope !35462, !noalias !35471
  %i.dvm = fcmp olt float %i.dvl, %.sroa.029.4.2.i.i571
  br i1 %i.dvm, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.dvn = trunc i64 %i.dlr to i8
  %i.dvo = or disjoint i8 %i.dvn, 3
  store i8 %i.dvo, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %bb.vb
  %.sroa.029.4.3.i.i572 = phi float [ %i.dvl, %bb.vc ], [ %.sroa.029.4.2.i.i571, %bb.vb ] ; 2 uses
  %i.dvp = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 16 ; 2 uses
  %i.dvq = load float, ptr %i.dvp, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.dvr = fadd float %.sroa.8.0.copyload.i.i562, %i.dvq ; 3 uses
  store float %i.dvr, ptr %i.dvp, align 4, !alias.scope !35462, !noalias !35471
  %i.dvs = fcmp olt float %i.dvr, %.sroa.029.4.3.i.i572
  br i1 %i.dvs, label %bb.ve, label %bb.vf

bb.ve:                                            ; preds = %bb.vd
  %i.dvt = trunc i64 %i.dlr to i8
  %i.dvu = or disjoint i8 %i.dvt, 4
  store i8 %i.dvu, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.vf

bb.vf:                                            ; preds = %bb.ve, %bb.vd
  %.sroa.029.4.4.i.i573 = phi float [ %i.dvr, %bb.ve ], [ %.sroa.029.4.3.i.i572, %bb.vd ] ; 2 uses
  %i.dvv = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 20 ; 2 uses
  %i.dvw = load float, ptr %i.dvv, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.dvx = fadd float %.sroa.9.0.copyload.i.i564, %i.dvw ; 3 uses
  store float %i.dvx, ptr %i.dvv, align 4, !alias.scope !35462, !noalias !35471
  %i.dvy = fcmp olt float %i.dvx, %.sroa.029.4.4.i.i573
  br i1 %i.dvy, label %bb.vg, label %bb.vh

bb.vg:                                            ; preds = %bb.vf
  %i.dvz = trunc i64 %i.dlr to i8
  %i.dwa = or disjoint i8 %i.dvz, 5
  store i8 %i.dwa, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %.sroa.029.4.5.i.i574 = phi float [ %i.dvx, %bb.vg ], [ %.sroa.029.4.4.i.i573, %bb.vf ] ; 2 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 24 ; 2 uses
  %i.dwc = load float, ptr %i.dwb, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.dwd = fadd float %.sroa.10.0.copyload.i.i566, %i.dwc ; 3 uses
  store float %i.dwd, ptr %i.dwb, align 4, !alias.scope !35462, !noalias !35471
  %i.dwe = fcmp olt float %i.dwd, %.sroa.029.4.5.i.i574
  br i1 %i.dwe, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  %i.dwf = trunc i64 %i.dlr to i8
  %i.dwg = or disjoint i8 %i.dwf, 6
  store i8 %i.dwg, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  %.sroa.029.4.6.i.i575 = phi float [ %i.dwd, %bb.vi ], [ %.sroa.029.4.5.i.i574, %bb.vh ] ; 2 uses
  %i.dwh = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 28 ; 2 uses
  %i.dwi = load float, ptr %i.dwh, align 4, !alias.scope !35462, !noalias !35471, !noundef !27
  %i.dwj = fadd float %.sroa.11.0.copyload.i.i568, %i.dwi ; 3 uses
  store float %i.dwj, ptr %i.dwh, align 4, !alias.scope !35462, !noalias !35471
  %i.dwk = fcmp olt float %i.dwj, %.sroa.029.4.6.i.i575
  br i1 %i.dwk, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  %i.dwl = trunc i64 %i.dlr to i8
  %i.dwm = or disjoint i8 %i.dwl, 7
  store i8 %i.dwm, ptr %i.dli, align 1, !alias.scope !35466, !noalias !35468
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  %.sroa.029.4.7.i.i576 = phi float [ %i.dwj, %bb.vk ], [ %.sroa.029.4.6.i.i575, %bb.vj ] ; 2 uses
  %i.dwn = icmp eq ptr %i.dlp, %i.dig
  br i1 %i.dwn, label %._crit_edge416.i.i577, label %.lr.ph415.i.i546

bb.vm:                                            ; preds = %bb.vo, %.split.i178.i507
  %i.dwo = phi i64 [ 1, %.split.i178.i507 ], [ %i.dwy, %bb.vo ] ; 4 uses
  %.sroa.071.0400.i.i510 = phi i64 [ 0, %.split.i178.i507 ], [ %i.dwo, %bb.vo ] ; 4 uses
  %i.dwp = getelementptr inbounds nuw [4 x i8], ptr %i.cpe, i64 %.sroa.071.0400.i.i510
  %i.dwq = load float, ptr %i.dwp, align 4, !alias.scope !35460, !noalias !35470, !noundef !27
  %exitcond482.not.i.i511 = icmp eq i64 %i.dwo, %i.cqa
  br i1 %exitcond482.not.i.i511, label %.invoke.i523, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %gep.i.i512 = getelementptr [2192 x i8], ptr %invariant.gep.i.i509, i64 %.sroa.071.0400.i.i510
  %i.dwr = load i32, ptr %gep.i.i512, align 4, !alias.scope !35458, !noalias !35491, !noundef !27
  %i.dws = zext i32 %i.dwr to i64
  %i.dwt = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.dws)
          to label %.noexc198.i522 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i513", !noalias !35124

.noexc198.i522:                                   ; preds = %bb.vn
  %i.dwu = add nuw nsw i64 %.sroa.071.0400.i.i510, %i.die ; 3 uses
  %i.dwv = icmp ult i64 %i.dwu, %i.cpc
  br i1 %i.dwv, label %bb.vo, label %.invoke.i523

bb.vo:                                            ; preds = %.noexc198.i522
  %i.dww = getelementptr inbounds nuw [4 x i8], ptr %i.cpe, i64 %i.dwu
  %i.dwx = fsub float %i.dwq, %i.dwt
  store float %i.dwx, ptr %i.dww, align 4, !alias.scope !35460, !noalias !35470
  %i.dwy = add nuw nsw i64 %i.dwo, 1
  %exitcond483.not.i.i527 = icmp eq i64 %i.dwo, %.sroa.0.0441.i499
  br i1 %exitcond483.not.i.i527, label %.loopexit358.i.i528, label %bb.vm

bb.vp:                                            ; preds = %bb.tk
  %i.dwz = getelementptr inbounds nuw [2192 x i8], ptr %i.cjx, i64 %.sroa.069.0399.i.i503
  %i.dxa = getelementptr inbounds nuw i8, ptr %i.dwz, i64 2176
  %i.dxb = load i64, ptr %i.dxa, align 8, !alias.scope !35492, !noalias !35491, !noundef !27
  %i.dxc = and i64 %i.dxb, 4294967295             ; 3 uses
  %i.dxd = icmp samesign ult i64 %i.dxc, 256
  br i1 %i.dxd, label %bb.vs, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.dxe = uitofp nneg i64 %i.dxc to float
  %i.dxf = tail call float @llvm.log2.f32(float %i.dxe)
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vs, %bb.vq
  %.sroa.016.0.i.i505 = phi float [ %i.dxj, %bb.vs ], [ %i.dxf, %bb.vq ]
  %i.dxg = getelementptr inbounds nuw [4 x i8], ptr %i.cpe, i64 %.sroa.069.0399.i.i503
  store float %.sroa.016.0.i.i505, ptr %i.dxg, align 4, !alias.scope !35460, !noalias !35470
  %i.dxh = add nuw nsw i64 %i.dia, 1
  %exitcond480.not.i.i506 = icmp eq i64 %i.dia, %.sroa.0.0441.i499
  br i1 %exitcond480.not.i.i506, label %.split.i178.i507, label %bb.tk

bb.vs:                                            ; preds = %bb.vp
  %i.dxi = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.dxc
  %i.dxj = load float, ptr %i.dxi, align 4, !noalias !35477, !noundef !27
  br label %bb.vr

.preheader.i.i985:                                ; preds = %.preheader.i.i985.preheader4139, %bb.vt
  %i.dxk = phi i64 [ %i.dxm, %bb.vt ], [ %.ph4140, %.preheader.i.i985.preheader4139 ] ; 4 uses
  %.sroa.066.0449.i.i986 = phi i64 [ %i.dxk, %bb.vt ], [ %.sroa.066.0449.i.i986.ph, %.preheader.i.i985.preheader4139 ] ; 2 uses
  %exitcond488.not.i.i987 = icmp eq i64 %i.dxk, %i.cqe
  br i1 %exitcond488.not.i.i987, label %.invoke.i523, label %bb.vt

bb.vt:                                            ; preds = %.preheader.i.i985
  %i.dxl = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.sroa.066.0449.i.i986
  store i8 0, ptr %i.dxl, align 1, !alias.scope !35466, !noalias !35468
  %i.dxm = add i64 %i.dxk, 1
  %exitcond489.not.i.i988 = icmp eq i64 %i.dxk, %.sroa.01.1
  br i1 %exitcond489.not.i.i988, label %.loopexit.i633, label %.preheader.i.i985, !llvm.loop !35495

.loopexit.i633:                                   ; preds = %bb.to, %bb.vt, %bb.tg
  %.sroa.0.0.i.i634 = phi i64 [ 0, %bb.tg ], [ 1, %bb.vt ], [ %.sroa.03.1.i.i631, %bb.to ] ; 31 uses
  %i.dxn = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.coy, i64 noundef %.sroa.01.1, i64 noundef %.sroa.01.1, ptr noalias noundef nonnull align 2 %i.cpw, i64 noundef %spec.store.select.i447, i64 noundef %.sroa.0.0441.i499)
          to label %bb.vu unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i635", !noalias !35124 ; 5 uses

bb.vu:                                            ; preds = %.loopexit.i633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35501)
  %.not.i.i204.i637 = icmp ugt i64 %i.dxn, %spec.store.select.i447
  br i1 %.not.i.i204.i637, label %.invoke1203.i979, label %bb.vv, !prof !2494

bb.vv:                                            ; preds = %bb.vu
  %.idx.i.i205.i638 = mul i64 %i.dxn, 2192        ; 2 uses
  %i.dxo = getelementptr inbounds nuw i8, ptr %i.cjx, i64 %.idx.i.i205.i638
  %i.dxp = icmp eq i64 %i.dxn, 0
  br i1 %i.dxp, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i206.i639.preheader

.lr.ph.i.i206.i639.preheader:                     ; preds = %bb.vv
  %i.dxq = add i64 %.idx.i.i205.i638, -2192       ; 2 uses
  %i.dxr = udiv i64 %i.dxq, 2192
  %i.dxs = add nuw nsw i64 %i.dxr, 1
  %xtraiter4729 = and i64 %i.dxs, 7               ; 2 uses
  %lcmp.mod4730.not = icmp eq i64 %xtraiter4729, 0
  br i1 %lcmp.mod4730.not, label %.lr.ph.i.i206.i639.prol.loopexit, label %.lr.ph.i.i206.i639.prol

.lr.ph.i.i206.i639.prol:                          ; preds = %.lr.ph.i.i206.i639.preheader, %.lr.ph.i.i206.i639.prol
  %.sroa.02.05.i.i207.i640.prol = phi ptr [ %i.dxt, %.lr.ph.i.i206.i639.prol ], [ %i.cjx, %.lr.ph.i.i206.i639.preheader ] ; 3 uses
  %prol.iter4731 = phi i64 [ %prol.iter4731.next, %.lr.ph.i.i206.i639.prol ], [ 0, %.lr.ph.i.i206.i639.preheader ]
  %i.dxt = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640.prol, i64 2192 ; 2 uses
  %i.dxu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i207.i640.prol, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dxu, align 8, !alias.scope !35507, !noalias !35506
  %prol.iter4731.next = add i64 %prol.iter4731, 1 ; 2 uses
  %prol.iter4731.cmp.not = icmp eq i64 %prol.iter4731.next, %xtraiter4729
  br i1 %prol.iter4731.cmp.not, label %.lr.ph.i.i206.i639.prol.loopexit, label %.lr.ph.i.i206.i639.prol, !llvm.loop !35510

.lr.ph.i.i206.i639.prol.loopexit:                 ; preds = %.lr.ph.i.i206.i639.prol, %.lr.ph.i.i206.i639.preheader
  %.sroa.02.05.i.i207.i640.unr = phi ptr [ %i.cjx, %.lr.ph.i.i206.i639.preheader ], [ %i.dxt, %.lr.ph.i.i206.i639.prol ]
  %i.dxv = icmp ult i64 %i.dxq, 15344
  br i1 %i.dxv, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i206.i639

.lr.ph.i.i206.i639:                               ; preds = %.lr.ph.i.i206.i639.prol.loopexit, %.lr.ph.i.i206.i639
  %.sroa.02.05.i.i207.i640 = phi ptr [ %i.dyk, %.lr.ph.i.i206.i639 ], [ %.sroa.02.05.i.i207.i640.unr, %.lr.ph.i.i206.i639.prol.loopexit ] ; 17 uses
  %i.dxw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 2192
  %i.dxx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i207.i640, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dxx, align 8, !alias.scope !35507, !noalias !35506
  %i.dxy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 4384
  %i.dxz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dxw, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dxz, align 8, !alias.scope !35507, !noalias !35506
  %i.dya = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 6576
  %i.dyb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dxy, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dyb, align 8, !alias.scope !35507, !noalias !35506
  %i.dyc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 8768
  %i.dyd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dya, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dyd, align 8, !alias.scope !35507, !noalias !35506
  %i.dye = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 10960
  %i.dyf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dyc, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dyf, align 8, !alias.scope !35507, !noalias !35506
  %i.dyg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 13152
  %i.dyh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dye, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dyh, align 8, !alias.scope !35507, !noalias !35506
  %i.dyi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 15344
  %i.dyj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dyg, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dyj, align 8, !alias.scope !35507, !noalias !35506
  %i.dyk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 17536 ; 2 uses
  %i.dyl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i640, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dyi, i8 0, i64 2184, i1 false), !alias.scope !35503, !noalias !35506
  store float 3.402000e+38, ptr %i.dyl, align 8, !alias.scope !35507, !noalias !35506
  %i.dym = icmp eq ptr %i.dyk, %i.dxo
  br i1 %i.dym, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, label %.lr.ph.i.i206.i639

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader: ; preds = %.lr.ph.i.i206.i639.prol.loopexit, %.lr.ph.i.i206.i639, %bb.vv
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i
  %.sroa.01.013.i.i641 = phi i64 [ %i.dyn, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i.preheader ] ; 4 uses
  %i.dyn = add nuw nsw i64 %.sroa.01.013.i.i641, 1 ; 2 uses
  %i.dyo = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.sroa.01.013.i.i641
  %i.dyp = load i8, ptr %i.dyo, align 1, !alias.scope !35499, !noalias !35511, !noundef !27
  %i.dyq = zext i8 %i.dyp to i64                  ; 3 uses
  %.not93.i642 = icmp samesign ult i64 %i.cjr, %i.dyq
  br i1 %.not93.i642, label %.invoke.i523, label %bb.vw

bb.vw:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i
  %exitcond23.not.i.i643 = icmp eq i64 %.sroa.01.013.i.i641, %2
  br i1 %exitcond23.not.i.i643, label %.invoke.i523, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  %i.dyr = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %.sroa.01.013.i.i641
  %i.dys = load i16, ptr %i.dyr, align 2, !alias.scope !35512, !noalias !35515, !noundef !27 ; 2 uses
  %i.dyt = zext i16 %i.dys to i64                 ; 2 uses
  %i.dyu = icmp ult i16 %i.dys, 544
  br i1 %i.dyu, label %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i, label %.invoke.i523

_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i.i: ; preds = %bb.vx
  %i.dyv = getelementptr inbounds nuw [2192 x i8], ptr %i.cjx, i64 %i.dyq ; 2 uses
  %i.dyw = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.dyt ; 2 uses
  %i.dyx = load i32, ptr %i.dyw, align 4, !alias.scope !35516, !noalias !35506, !noundef !27
  %i.dyy = add i32 %i.dyx, 1
  store i32 %i.dyy, ptr %i.dyw, align 4, !alias.scope !35516, !noalias !35506
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyv, i64 2176 ; 2 uses
  %i.dza = load i64, ptr %i.dyz, align 8, !alias.scope !35519, !noalias !35506, !noundef !27
  %i.dzb = add i64 %i.dza, 1
  store i64 %i.dzb, ptr %i.dyz, align 8, !alias.scope !35522, !noalias !35506
  %exitcond24.not.i.i644 = icmp eq i64 %i.dyn, %.sroa.01.1
  br i1 %exitcond24.not.i.i644, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i

.invoke.i523:                                     ; preds = %bb.tk, %.lr.ph434.split.i.i541, %.lr.ph447.i.i623, %.preheader.i.i985, %bb.vx, %bb.vw, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i, %.noexc198.i522, %bb.vm, %.lr.ph424.preheader.i.i581, %.lr.ph424.i.i583.1, %.lr.ph424.i.i583.2, %.lr.ph424.i.i583.3, %.lr.ph424.i.i583.4, %.lr.ph424.i.i583.5, %.lr.ph424.i.i583.6, %.lr.ph430.i.i594
  %i.dzc = phi i64 [ %i.dyq, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ %i.dkw, %.lr.ph447.i.i623 ], [ %i.dsd, %.lr.ph430.i.i594 ], [ %.sroa.01.1, %.lr.ph434.split.i.i541 ], [ %.sroa.066.0449.i.i986, %.preheader.i.i985 ], [ %i.dka, %.lr.ph424.i.i583.6 ], [ %.sroa.071.0400.i.i510, %bb.vm ], [ %i.dim, %.lr.ph424.preheader.i.i581 ], [ %i.dir, %.lr.ph424.i.i583.1 ], [ %i.diz, %.lr.ph424.i.i583.2 ], [ %i.dji, %.lr.ph424.i.i583.3 ], [ %i.djo, %.lr.ph424.i.i583.4 ], [ %i.dju, %.lr.ph424.i.i583.5 ], [ %i.dwu, %.noexc198.i522 ], [ %2, %bb.vw ], [ %i.dyt, %bb.vx ], [ %.sroa.069.0399.i.i503, %bb.tk ]
  %i.dzd = phi i64 [ %spec.store.select.i447, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ %i.cpn, %.lr.ph447.i.i623 ], [ %i.cpn, %.lr.ph430.i.i594 ], [ %.sroa.01.1, %.lr.ph434.split.i.i541 ], [ %.sroa.01.1, %.preheader.i.i985 ], [ %i.cpb, %.lr.ph424.preheader.i.i581 ], [ %spec.store.select.i447, %bb.vm ], [ %i.cpb, %.lr.ph424.i.i583.6 ], [ %i.cpb, %.lr.ph424.i.i583.5 ], [ %i.cpb, %.lr.ph424.i.i583.4 ], [ %i.cpb, %.lr.ph424.i.i583.3 ], [ %i.cpb, %.lr.ph424.i.i583.2 ], [ %i.cpb, %.lr.ph424.i.i583.1 ], [ %i.cpc, %.noexc198.i522 ], [ %2, %bb.vw ], [ 544, %bb.vx ], [ %spec.store.select.i447, %bb.tk ]
  %i.dze = phi ptr [ @1574, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.i.i ], [ @1531, %.lr.ph447.i.i623 ], [ @1576, %.lr.ph430.i.i594 ], [ @1532, %.lr.ph434.split.i.i541 ], [ @1546, %.preheader.i.i985 ], [ @1537, %.lr.ph424.preheader.i.i581 ], [ @1542, %bb.vm ], [ @1537, %.lr.ph424.i.i583.6 ], [ @1537, %.lr.ph424.i.i583.5 ], [ @1537, %.lr.ph424.i.i583.4 ], [ @1537, %.lr.ph424.i.i583.3 ], [ @1537, %.lr.ph424.i.i583.2 ], [ @1537, %.lr.ph424.i.i583.1 ], [ @1543, %.noexc198.i522 ], [ @1575, %bb.vw ], [ @1931, %bb.vx ], [ @1544, %bb.tk ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dzc, i64 noundef %i.dzd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dze) #43
          to label %.cont.i526 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i524", !noalias !35124

.cont.i526:                                       ; preds = %.invoke.i523
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i513": ; preds = %bb.vn
  %lpad.loopexit.i514 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i515"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i635": ; preds = %.loopexit.i633
  %lpad.loopexit105.i636 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i515"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i524": ; preds = %.invoke.i523, %.split440.us.i.invoke.i551, %.invoke1203.i979
  %lpad.loopexit.split-lp106.i525 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i515"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i515": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i524", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i635", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i513"
  %lpad.phi.i516 = phi { ptr, i32 } [ %lpad.loopexit.i514, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i513" ], [ %lpad.loopexit105.i636, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i635" ], [ %lpad.loopexit.split-lp106.i525, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i524" ]
  call void @mi_free(ptr noundef nonnull %i.cpw) #38, !noalias !35124
  br label %bb.vy

bb.vy:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i515", %.thread55.i989
  %.pn62.i517 = phi { ptr, i32 } [ %i.cpy, %.thread55.i989 ], [ %lpad.phi.i516, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i515" ]
  br i1 %i.cpp, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i519", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i518"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i518": ; preds = %bb.vy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cpu) ]
  call void @mi_free(ptr noundef nonnull %i.cpu) #38, !noalias !35124
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i519"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i519": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i518", %bb.vy
  call void @mi_free(ptr noundef nonnull %i.cpi) #38, !noalias !35124
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i520"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i520": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i519", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i992", %.thread39.i996
  %.pn.pn.pn44.i521 = phi { ptr, i32 } [ %i.cpm, %.thread39.i996 ], [ %i.cpt, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i992" ], [ %.pn62.i517, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i519" ]
  call void @mi_free(ptr noundef nonnull %i.cpe) #38, !noalias !35124
  call void @mi_free(ptr noundef nonnull %i.coy) #38, !noalias !35124
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i713": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972", %bb.te, %.body.i975
  %.pn.pn.pn.pn.i714 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i976, %.body.i975 ], [ %i.dhi, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i709, %bb.te ], [ %.pn230.pn.pn.pn.pn.pn.pn85958.i.i712, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711" ]
  tail call void @mi_free(ptr noundef nonnull %i.coy) #38, !noalias !35124
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i520", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.thread.i998", %.thread.i466
  %.pn.pn.pn.pn.pn38.i467 = phi { ptr, i32 } [ %i.cko, %.thread.i466 ], [ %.pn.pn.pn44.i521, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i520" ], [ %i.cpg, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.thread.i998" ]
  call void @mi_free(ptr noundef nonnull %i.cjx) #38, !noalias !35124
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

bb.vz:                                            ; preds = %bb.or
  %i.dzf = icmp eq i64 %.val111.i1003, 0          ; 2 uses
  %spec.select.i1019 = select i1 %i.dzf, i64 %i.ckm, i64 %.val111.i1003
  br label %bb.wa

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit227.i1004": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i1022", %bb.wc, %bb.or
  %.val.i1005 = phi ptr [ %i.dzm, %bb.wc ], [ %i.dzm, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i1022" ], [ %.val110.i1002, %bb.or ]
  %.val63.i1006 = phi i64 [ %.sroa.014.1.i1020, %bb.wc ], [ %.sroa.014.1.i1020, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i1022" ], [ %.val111.i1003, %bb.or ] ; 2 uses
  %i.dzg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val90.i1007 = load ptr, ptr %i.dzg, align 8, !alias.scope !35114, !noalias !35111, !nonnull !27, !align !603, !noundef !27 ; 3 uses
  %i.dzh = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val91.i1008 = load i64, ptr %i.dzh, align 8, !alias.scope !35114, !noalias !35111, !noundef !27 ; 5 uses
  %i.dzi = icmp ult i64 %.val91.i1008, %i.ckm
  br i1 %i.dzi, label %bb.wd, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i1009"

bb.wa:                                            ; preds = %bb.wa, %bb.vz
  %.sroa.014.1.i1020 = phi i64 [ %spec.select.i1019, %bb.vz ], [ %i.dzk, %bb.wa ] ; 9 uses
  %i.dzj = icmp ult i64 %.sroa.014.1.i1020, %i.ckm
  %i.dzk = shl i64 %.sroa.014.1.i1020, 1
  br i1 %i.dzj, label %bb.wa, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.dzl = icmp slt i64 %.sroa.014.1.i1020, 0
  br i1 %i.dzl, label %.invoke2933, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i1021, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i1021: ; preds = %bb.wb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35525
  %i.dzm = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i1020, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35525 ; 5 uses
end_hunk_8
