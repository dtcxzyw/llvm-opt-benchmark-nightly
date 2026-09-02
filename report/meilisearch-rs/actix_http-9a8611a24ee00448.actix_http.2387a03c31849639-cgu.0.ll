Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

bb.af:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i"
  %i.ip = icmp eq i64 %.sroa.14.1.i.i, 0
  br i1 %i.ip, label %bb.dp, label %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i"

"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i": ; preds = %bb.af
  %.pre855.i.i = mul nuw nsw i64 %.sroa.14.1.i.i, 1040
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i": ; preds = %.thread93.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i"
  %.pre-phi856.i.i = phi i64 [ %.pre855.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i" ], [ %i.hs, %.thread93.i.i ]
  %.pn230.pn.pn.pn.pn101.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i" ], [ %i.iq, %.thread93.i.i ]
  %.sroa.016.0100.i.i = phi ptr [ %.sroa.016.1.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %.thread93.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0100.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.016.0100.i.i, i64 noundef %.pre-phi856.i.i, i64 noundef 8) #45, !noalias !8395
  br label %bb.dp

.thread93.i.i:                                    ; preds = %bb.ae
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i": ; preds = %bb.bn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i", %bb.ag
  %.sroa.12.0.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.12.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.12.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.12.3152.i.i, %bb.bn ] ; 2 uses
  %.sroa.026.0.i.i = phi ptr [ %i.iu, %bb.ag ], [ %.sroa.026.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.026.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.026.3153.i.i, %bb.bn ] ; 2 uses
  %.sroa.14.1.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.14.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.14.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.14.4154.i.i, %bb.bn ] ; 2 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ag ], [ %.sroa.016.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.016.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.016.4155.i.i, %bb.bn ]
  %.pn230.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.it, %bb.ag ], [ %.pn230.pn.pn.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.pn230.pn.pn.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.pn230156.i.i, %bb.bn ] ; 2 uses
  %i.ir = icmp eq i64 %.sroa.12.0.i.i, 0
  br i1 %i.ir, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i"
  %i.is = shl nuw nsw i64 %.sroa.12.0.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0.i.i, i64 noundef %i.is, i64 noundef 4) #45, !noalias !8395
  br label %bb.af

bb.ag:                                            ; preds = %bb.ai
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i: ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.sroa.10.0.i.i418.i.i = phi i64 [ %i.io, %bb.ad ], [ 4, %._crit_edge.i.i.i.i.i ]
  %i.iu = inttoptr i64 %.sroa.10.0.i.i418.i.i to ptr ; 4 uses
  %.sroa.0.0.i422.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i, i64 64) ; 17 uses
  %i.iv = mul nuw nsw i64 %.sroa.0.0.i422.i.i, 1040 ; 3 uses
  %i.iw = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.iw, label %._crit_edge.i.i.i429.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8413
  %i.ix = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iv, i64 noundef range(i64 1, 9) 8) #45, !noalias !8413 ; 5 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.ai, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i"

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc440.i.i unwind label %bb.ag, !noalias !8395

.noexc440.i.i:                                    ; preds = %bb.ai
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i": ; preds = %bb.ah
  %.not1143.i.i = icmp eq i64 %.sroa.0.0.i.i, 1
  br i1 %.not1143.i.i, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.preheader

.lr.ph.i.i.i434.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i"
  %i.iz = add nsw i64 %.sroa.0.0.i422.i.i, -1     ; 2 uses
  %i.ja = add nsw i64 %.sroa.0.0.i422.i.i, -2
  %xtraiter4706 = and i64 %i.iz, 7                ; 3 uses
  %i.jb = icmp ult i64 %i.ja, 7
  br i1 %i.jb, label %.lr.ph.i.i.i434.i.i.epil.preheader, label %.lr.ph.i.i.i434.i.i.preheader.new

.lr.ph.i.i.i434.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i434.i.i.preheader
  %unroll_iter4711 = and i64 %i.iz, -8
  br label %.lr.ph.i.i.i434.i.i

._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i
  %lcmp.mod4708.not = icmp eq i64 %xtraiter4706, 0
  br i1 %lcmp.mod4708.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil.preheader

.lr.ph.i.i.i434.i.i.epil.preheader:               ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.preheader
  %.sroa.0.08.i.i.i435.i.i.epil.init = phi ptr [ %i.ix, %.lr.ph.i.i.i434.i.i.preheader ], [ %i.jk, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4710 = icmp ne i64 %xtraiter4706, 0
  tail call void @llvm.assume(i1 %lcmp.mod4710)
  br label %.lr.ph.i.i.i434.i.i.epil

.lr.ph.i.i.i434.i.i.epil:                         ; preds = %.lr.ph.i.i.i434.i.i.epil, %.lr.ph.i.i.i434.i.i.epil.preheader
  %.sroa.0.08.i.i.i435.i.i.epil = phi ptr [ %i.jc, %.lr.ph.i.i.i434.i.i.epil ], [ %.sroa.0.08.i.i.i435.i.i.epil.init, %.lr.ph.i.i.i434.i.i.epil.preheader ] ; 3 uses
  %epil.iter4707 = phi i64 [ %epil.iter4707.next, %.lr.ph.i.i.i434.i.i.epil ], [ 0, %.lr.ph.i.i.i434.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i.epil, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !8421
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4707.next = add i64 %epil.iter4707, 1 ; 2 uses
  %epil.iter4707.cmp.not = icmp eq i64 %epil.iter4707.next, %xtraiter4706
  br i1 %epil.iter4707.cmp.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil, !llvm.loop !8424

._crit_edge.thread.i.i.i431.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i = phi ptr [ %i.ix, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i" ], [ %i.jk, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ], [ %i.jc, %.lr.ph.i.i.i434.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i432.i.i, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !8421
  br label %._crit_edge.i.i.i429.thread.i.i

.lr.ph.i.i.i434.i.i:                              ; preds = %.lr.ph.i.i.i434.i.i, %.lr.ph.i.i.i434.i.i.preheader.new
  %.sroa.0.08.i.i.i435.i.i = phi ptr [ %i.ix, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %i.jk, %.lr.ph.i.i.i434.i.i ] ; 17 uses
  %niter4712 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %niter4712.next.7, %.lr.ph.i.i.i434.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !8421
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jd, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !8421
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.je, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !8421
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jf, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !8421
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jg, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !8421
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jh, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !8421
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ji, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !8421
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jj, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !8421
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8320 ; 3 uses
  %niter4712.next.7 = add i64 %niter4712, 8       ; 2 uses
  %niter4712.ncmp.7 = icmp eq i64 %niter4712.next.7, %unroll_iter4711
  br i1 %niter4712.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i

._crit_edge.i.i.i429.thread.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  %.sroa.10.0.i.i.i427920.i.i = phi ptr [ %i.ix, %._crit_edge.thread.i.i.i431.i.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8425
  %i.jl = tail call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !8425 ; 16 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc444.i.i unwind label %bb.ak, !noalias !8395

.noexc444.i.i:                                    ; preds = %bb.aj
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i", %bb.ak
  %.sroa.1335.0.i.i = phi i64 [ %.sroa.0.0.i422.i.i, %bb.ak ], [ %.sroa.1335.1124200.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.034.0.i.i = phi ptr [ %.sroa.10.0.i.i.i427920.i.i, %bb.ak ], [ %.sroa.034.1125198.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.12.1.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.12.3126196.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.026.1.i.i = phi ptr [ %i.iu, %bb.ak ], [ %.sroa.026.3127194.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.14.2.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.14.4128192.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.016.2.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ak ], [ %.sroa.016.4129190.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.pn230.pn.pn.i.i = phi { ptr, i32 } [ %i.jp, %bb.ak ], [ %.pn230.pn204.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %i.jn = icmp eq i64 %.sroa.1335.0.i.i, 0
  br i1 %i.jn, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i"
  %i.jo = mul nuw nsw i64 %.sroa.1335.0.i.i, 1040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.034.0.i.i, i64 noundef %i.jo, i64 noundef 8) #45, !noalias !8395
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i"

bb.ak:                                            ; preds = %bb.aj
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i"

bb.al:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.jl, i8 0, i64 32784, i1 false), !noalias !8395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !8395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ao, i8 0, i64 256, i1 false), !noalias !8395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !8395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.an, i8 0, i64 256, i1 false), !noalias !8395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !8395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.am, i8 0, i64 256, i1 false), !noalias !8395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !8395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.al, i8 0, i64 256, i1 false), !noalias !8395
  br label %bb.dk

.split.i.i:                                       ; preds = %bb.dn, %._crit_edge571.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge571.i.i ], [ %.sroa.0.0.i.i, %bb.dn ] ; 2 uses
  %.sroa.0.0582.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i, %._crit_edge571.i.i ], [ 0, %bb.dn ] ; 4 uses
  %.sroa.012.0581.i.i = phi i64 [ %.sroa.012.1.i.i, %._crit_edge571.i.i ], [ %i.hr, %bb.dn ] ; 7 uses
  %.sroa.018.0580.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i, %._crit_edge571.i.i ], [ 0, %bb.dn ] ; 4 uses
  %.sroa.023.0579.i.i = phi i64 [ %.sroa.023.1.i.i, %._crit_edge571.i.i ], [ %i.hr, %bb.dn ] ; 7 uses
  %.sroa.029.0578.i.i = phi i64 [ %i.uw, %._crit_edge571.i.i ], [ 0, %bb.dn ] ; 2 uses
  %.sroa.043.0577.i.i = phi i64 [ %.sroa.043.3.lcssa.i.i, %._crit_edge571.i.i ], [ 0, %bb.dn ] ; 2 uses
  %.sroa.047.1576.i.i = phi i64 [ %i.ux, %._crit_edge571.i.i ], [ 0, %bb.dn ] ; 5 uses
  %.sroa.016.3575.i.i = phi ptr [ %.sroa.016.7.i.i, %._crit_edge571.i.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.dn ] ; 9 uses
  %.sroa.14.3574.i.i = phi i64 [ %.sroa.14.7.i.i, %._crit_edge571.i.i ], [ %i.hr, %bb.dn ] ; 10 uses
  %.sroa.026.2573.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge571.i.i ], [ %i.iu, %bb.dn ] ; 11 uses
  %.sroa.12.2572.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge571.i.i ], [ %i.hr, %bb.dn ] ; 12 uses
  %i.jq = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax839.i.i = tail call i64 @llvm.umin.i64(i64 %i.jq, i64 64)
  %i.jr = sub nuw i64 %.sroa.0.0.i.i, %.sroa.047.1576.i.i
  %.sroa.0.0.i447.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.jr, i64 64) ; 3 uses
  %.not915.i.i = icmp eq i64 %.sroa.0.0.i.i, %.sroa.047.1576.i.i ; 2 uses
  br i1 %.not915.i.i, label %._crit_edge561.i.i, label %.lr.ph560.i.i

.thread164.loopexit.i.i:                          ; preds = %._crit_edge.i.i
  %lpad.loopexit258.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread164.loopexit.split-lp.loopexit.i.i:        ; preds = %._crit_edge561.i.i
  %lpad.loopexit261.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread164.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke4010, %.invoke4008, %.invoke.i.i, %bb.ct, %bb.cl, %bb.at, %bb.ap
  %.sroa.11.1.ph.ph.ph.i.i = phi i64 [ 2049, %bb.ap ], [ %.sroa.11.2.i.i, %bb.at ], [ 2049, %.invoke.i.i ], [ 2049, %.invoke4008 ], [ 2049, %bb.cl ], [ 2049, %.invoke4010 ], [ 2049, %bb.ct ]
  %.sroa.044.1.ph.ph.ph.i.i = phi ptr [ %i.jl, %bb.ap ], [ %.sroa.044.2.i.i, %bb.at ], [ %i.jl, %.invoke.i.i ], [ %i.jl, %.invoke4008 ], [ %i.jl, %bb.cl ], [ %i.jl, %.invoke4010 ], [ %i.jl, %bb.ct ]
  %.sroa.1335.2.ph.ph.ph.i.i = phi i64 [ 0, %bb.ap ], [ 0, %bb.at ], [ %.sroa.0.0.i422.i.i, %.invoke.i.i ], [ %.sroa.0.0.i422.i.i, %.invoke4008 ], [ %.sroa.0.0.i422.i.i, %bb.cl ], [ %.sroa.0.0.i422.i.i, %.invoke4010 ], [ %.sroa.0.0.i422.i.i, %bb.ct ]
  %.sroa.034.2.ph.ph.ph.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ inttoptr (i64 8 to ptr), %bb.at ], [ %.sroa.10.0.i.i.i427920.i.i, %.invoke.i.i ], [ %.sroa.10.0.i.i.i427920.i.i, %.invoke4008 ], [ %.sroa.10.0.i.i.i427920.i.i, %bb.cl ], [ %.sroa.10.0.i.i.i427920.i.i, %.invoke4010 ], [ %.sroa.10.0.i.i.i427920.i.i, %bb.ct ]
  %.sroa.12.4.ph.ph.ph.i.i = phi i64 [ %.sroa.12.5.i.i, %bb.ap ], [ %.sroa.12.5.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.12.2572.i.i, %.invoke4008 ], [ %.sroa.12.2572.i.i, %bb.cl ], [ %.sroa.12.5.i.i, %.invoke4010 ], [ %.sroa.12.2572.i.i, %bb.ct ]
  %.sroa.026.4.ph.ph.ph.i.i = phi ptr [ %.sroa.026.5.i.i, %bb.ap ], [ %.sroa.026.5.i.i, %bb.at ], [ %i.iu, %.invoke.i.i ], [ %.sroa.026.2573.i.i, %.invoke4008 ], [ %.sroa.026.2573.i.i, %bb.cl ], [ %.sroa.026.5.i.i, %.invoke4010 ], [ %.sroa.026.2573.i.i, %bb.ct ]
  %.sroa.14.5.ph.ph.ph.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.ap ], [ %.sroa.14.7.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.14.3574.i.i, %.invoke4008 ], [ %.sroa.14.3574.i.i, %bb.cl ], [ %.sroa.14.7.i.i, %.invoke4010 ], [ %.sroa.14.7.i.i, %bb.ct ]
  %.sroa.016.5.ph.ph.ph.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.ap ], [ %.sroa.016.7.i.i, %bb.at ], [ %.sroa.10.0.i.i.i.i.i, %.invoke.i.i ], [ %.sroa.016.3575.i.i, %.invoke4008 ], [ %.sroa.016.3575.i.i, %bb.cl ], [ %.sroa.016.7.i.i, %.invoke4010 ], [ %.sroa.016.7.i.i, %bb.ct ]
  %lpad.loopexit.split-lp262.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.am:                                            ; preds = %bb.ay, %._crit_edge587.i.i
  %.sroa.11.1.ph160.i.i = phi i64 [ %.sroa.11.2.i.i, %._crit_edge587.i.i ], [ 0, %bb.ay ]
  %.sroa.044.1.ph161.i.i = phi ptr [ %.sroa.044.2.i.i, %._crit_edge587.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %.sroa.12.4.ph162.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge587.i.i ], [ 0, %bb.ay ]
  %.sroa.026.4.ph163.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge587.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i.i

bb.an:                                            ; preds = %._crit_edge571.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427920.i.i, i64 noundef %i.iv, i64 noundef 8) #45, !noalias !8395
  %i.js = shl i64 %i.uw, 6
  %i.jt = lshr i64 %i.uw, 1
  %i.ju = mul i64 %i.jt, %i.uw
  %.sroa.0.0.i448.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ju, i64 %i.js) ; 5 uses
  %i.jv = add nuw i64 %.sroa.0.0.i448.i.i, 1      ; 2 uses
  %i.jw = icmp ugt i64 %.sroa.0.0.i448.i.i, 2048
  br i1 %i.jw, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jx = shl i64 %i.jv, 4                        ; 5 uses
  %i.jy = icmp ugt i64 %.sroa.0.0.i448.i.i, 1152921504606846974
  %i.jz = icmp ugt i64 %i.jx, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i = or i1 %i.jy, %i.jz
  br i1 %or.cond.i.i.i.i.i449.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i: ; preds = %bb.ao
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8433
  %i.ka = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jx, i64 noundef range(i64 1, 9) 4) #45, !noalias !8433 ; 5 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.ap, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, %bb.ao
  %.sroa.4.0.ph.i.i.i455.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i, i64 %i.jx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.noexc456.i.i:                                    ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i", %bb.an
  %.sroa.11.2.i.i = phi i64 [ %i.jv, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i" ], [ 2049, %bb.an ] ; 4 uses
  %.sroa.044.2.i.i = phi ptr [ %i.ka, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i" ], [ %i.jl, %bb.an ] ; 4 uses
  %i.kc = shl i64 %i.uw, 2                        ; 12 uses
  %i.kd = icmp ugt i64 %i.uw, 4611686018427387903
  %i.ke = icmp ugt i64 %i.kc, 9223372036854775804
  %or.cond.i.i.i.i458.i.i = or i1 %i.kd, %i.ke
  br i1 %or.cond.i.i.i.i458.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i: ; preds = %bb.aq
  %i.kf = icmp eq i64 %i.kc, 0                    ; 2 uses
  br i1 %i.kf, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8441
  %i.kg = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8441 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ki = ptrtoint ptr %i.kg to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i461.i.i = phi i64 [ 4, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i, i64 %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.noexc462.i.i:                                    ; preds = %bb.at
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i
  %i.kj = add nsw i64 %i.jx, -16                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ka, i8 0, i64 %i.kj, i1 false), !noalias !8446
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.jx  ; 2 uses
  %scevgep11.i451.i.i = getelementptr i8, ptr %i.ka, i64 %i.kj
  store i32 0, ptr %scevgep11.i451.i.i, align 4, !noalias !8446
  %.sroa.55.0..sroa_idx.i452.i.i = getelementptr i8, ptr %i.kk, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i, align 4, !noalias !8446
  %.sroa.67.0..sroa_idx.i453.i.i = getelementptr i8, ptr %i.kk, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i, align 4, !noalias !8446
  %i.kl = icmp samesign ult i64 %.sroa.0.0.i448.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.kl)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.jl, i64 noundef 32784, i64 noundef 4) #45, !noalias !8395
  br label %bb.aq

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  %.sroa.10.0.i.i460.i.i = phi i64 [ %i.ki, %bb.as ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i ]
  %i.km = inttoptr i64 %.sroa.10.0.i.i460.i.i to ptr ; 13 uses
  %i.kn = icmp samesign ult i64 %i.uw, 2305843009213693952
  tail call void @llvm.assume(i1 %i.kn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.km) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kc
  %i.kp = icmp eq i64 %i.uw, 0                    ; 3 uses
  br i1 %i.kp, label %._crit_edge587.i.i, label %.lr.ph586.i.i.preheader

.lr.ph586.i.i.preheader:                          ; preds = %bb.au
  %i.kq = add nsw i64 %i.kc, -4                   ; 2 uses
  %i.kr = lshr exact i64 %i.kq, 2
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %min.iters.check3793 = icmp ult i64 %i.kq, 28
  br i1 %min.iters.check3793, label %.lr.ph586.i.i.preheader4500, label %vector.ph3794

vector.ph3794:                                    ; preds = %.lr.ph586.i.i.preheader
  %n.vec3795 = and i64 %i.ks, 9223372036854775800 ; 4 uses
  %i.kt = trunc i64 %n.vec3795 to i32
  %i.ku = shl i64 %n.vec3795, 2
  %i.kv = getelementptr i8, ptr %i.km, i64 %i.ku
  br label %vector.body3796

vector.body3796:                                  ; preds = %vector.body3796, %vector.ph3794
  %index3797 = phi i64 [ 0, %vector.ph3794 ], [ %index.next3799, %vector.body3796 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3794 ], [ %vec.ind.next, %vector.body3796 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.kw = shl i64 %index3797, 2
  %next.gep3798 = getelementptr i8, ptr %i.km, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep3798, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep3798, align 4, !noalias !8395
  store <4 x i32> %step.add, ptr %i.kx, align 4, !noalias !8395
  %index.next3799 = add nuw i64 %index3797, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ky = icmp eq i64 %index.next3799, %n.vec3795
  br i1 %i.ky, label %middle.block3800, label %vector.body3796, !llvm.loop !8449

middle.block3800:                                 ; preds = %vector.body3796
  %cmp.n = icmp eq i64 %i.ks, %n.vec3795
  br i1 %cmp.n, label %._crit_edge587.i.i, label %.lr.ph586.i.i.preheader4500

.lr.ph586.i.i.preheader4500:                      ; preds = %.lr.ph586.i.i.preheader, %middle.block3800
  %.sroa.047.2584.i.i.ph = phi i32 [ 0, %.lr.ph586.i.i.preheader ], [ %i.kt, %middle.block3800 ]
  %.sroa.0135.0583.i.i.ph = phi ptr [ %i.km, %.lr.ph586.i.i.preheader ], [ %i.kv, %middle.block3800 ]
  br label %.lr.ph586.i.i

.lr.ph586.i.i:                                    ; preds = %.lr.ph586.i.i.preheader4500, %.lr.ph586.i.i
  %.sroa.047.2584.i.i = phi i32 [ %i.kz, %.lr.ph586.i.i ], [ %.sroa.047.2584.i.i.ph, %.lr.ph586.i.i.preheader4500 ] ; 2 uses
  %.sroa.0135.0583.i.i = phi ptr [ %.sroa.0135.1.i.i, %.lr.ph586.i.i ], [ %.sroa.0135.0583.i.i.ph, %.lr.ph586.i.i.preheader4500 ] ; 2 uses
  %.sroa.0135.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0583.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2584.i.i, ptr %.sroa.0135.0583.i.i, align 4, !noalias !8395
  %i.kz = add i32 %.sroa.047.2584.i.i, 1
  %i.la = icmp eq ptr %.sroa.0135.1.i.i, %i.ko
  br i1 %i.la, label %._crit_edge587.i.i, label %.lr.ph586.i.i, !llvm.loop !8450

._crit_edge587.i.i:                               ; preds = %.lr.ph586.i.i, %middle.block3800, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %i.lb = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17hcdc3ee27b6945a83E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %.sroa.12.5.i.i, ptr noalias noundef nonnull align 4 %i.ho, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 4 %i.km, i64 noundef %i.uw, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %.sroa.11.2.i.i, i64 noundef %i.uw, i64 noundef %.sroa.0.0.i.i, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i)
          to label %bb.av unwind label %bb.am, !noalias !8395 ; 3 uses

bb.av:                                            ; preds = %._crit_edge587.i.i
  %i.lc = shl nuw nsw i64 %.sroa.11.2.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %i.lc, i64 noundef 4) #45, !noalias !8395
  %i.ld = icmp eq i64 %.sroa.12.5.i.i, 0
  br i1 %i.ld, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i": ; preds = %bb.av
  %i.le = shl nuw nsw i64 %.sroa.12.5.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %i.le, i64 noundef 4) #45, !noalias !8395
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i", %bb.av
  br i1 %i.kf, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8451
  %i.lf = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8451 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lh = ptrtoint ptr %i.lf to i64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc472.i.i unwind label %bb.am, !noalias !8395

end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %i.qb = load i32, ptr %i.qa, align 4, !noalias !8395, !noundef !4
  %i.qc = zext i32 %i.qb to i64                   ; 2 uses
  %i.qd = icmp ugt i64 %.sroa.14.7.i.i, %i.qc
  br i1 %i.qd, label %.noexc.i.us.i, label %.invoke1141.i.i

.noexc.i.us.i:                                    ; preds = %bb.by
  %i.qe = icmp samesign ult i64 %.sroa.0141.1606.i.us.i, %i.lb ; 2 uses
  %i.qf = zext i1 %i.qe to i64
  %.sroa.0141.1.i.us.i = add nuw nsw i64 %.sroa.0141.1606.i.us.i, %i.qf
  br i1 %i.qe, label %.lr.ph607.i.us.i, label %._crit_edge608.i.i

._crit_edge608.loopexit.i.i.loopexit1043:         ; preds = %bb.cd
  %.pre = zext i32 %.sroa.089.1.i.i to i64
  br label %._crit_edge608.i.i

._crit_edge608.i.i:                               ; preds = %.noexc.i.us.i, %._crit_edge608.loopexit.i.i.loopexit1043, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.thread.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.i
  %i.qg = phi ptr [ %i.ob, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.thread.i ], [ %i.nw, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.i ], [ %i.nw, %._crit_edge608.loopexit.i.i.loopexit1043 ], [ %i.ob, %.noexc.i.us.i ]
  %.sroa.043.2.lcssa.i8590848.i = phi i64 [ %.sroa.043.1612.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.thread.i ], [ %i.tb, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.i ], [ %i.tb, %._crit_edge608.loopexit.i.i.loopexit1043 ], [ %.sroa.043.1612.i.i, %.noexc.i.us.i ]
  %.pre-phi.i.i = phi i64 [ %i.od, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.thread.i ], [ %i.ny, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.i ], [ %.pre, %._crit_edge608.loopexit.i.i.loopexit1043 ], [ %i.od, %.noexc.i.us.i ] ; 3 uses
  %.sroa.089.0.lcssa.i.i = phi i32 [ %.sroa.097.0.i84.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.thread.i ], [ %.sroa.097.0.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit249.i.i ], [ %.sroa.089.1.i.i, %._crit_edge608.loopexit.i.i.loopexit1043 ], [ %.sroa.097.0.i84.i, %.noexc.i.us.i ]
  store i32 %.sroa.089.0.lcssa.i.i, ptr %i.qg, align 4, !noalias !8395
  %i.qh = icmp samesign ugt i64 %i.uw, %.pre-phi.i.i
  br i1 %i.qh, label %bb.bz, label %.invoke1141.i.i

bb.bz:                                            ; preds = %._crit_edge608.i.i
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %.pre-phi.i.i ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !noalias !8395, !noundef !4
  %i.qk = icmp eq i32 %i.qj, -1
  br i1 %i.qk, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 %.sroa.084.0611.i.i, ptr %i.qi, align 4, !noalias !8395
  %i.ql = add i32 %.sroa.084.0611.i.i, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.084.1.i.i = phi i32 [ %i.ql, %bb.ca ], [ %.sroa.084.0611.i.i, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !8395
  %i.qm = icmp ult i64 %.sroa.0137.1613.i.i, %.sroa.0.0.i.i ; 2 uses
  %i.qn = zext i1 %i.qm to i64
  %.sroa.0137.1.i.i = add nuw i64 %.sroa.0137.1613.i.i, %i.qn
  br i1 %i.qm, label %bb.bx, label %bb.bb

.lr.ph607.i.i:                                    ; preds = %bb.cd, %.lr.ph607.i.preheader.i
  %.sroa.0141.1606.i.i = phi i64 [ %.sroa.0141.1.i.i, %bb.cd ], [ 1, %.lr.ph607.i.preheader.i ] ; 3 uses
  %.sroa.089.0605.i.i = phi i32 [ %.sroa.089.1.i.i, %bb.cd ], [ %.sroa.097.0.i.i, %.lr.ph607.i.preheader.i ]
  %.sroa.093.0604.i.i = phi float [ %.sroa.093.1.i.i, %bb.cd ], [ %i.py, %.lr.ph607.i.preheader.i ] ; 2 uses
  %.sroa.0141.0603.i.i = phi i64 [ %.sroa.0141.1606.i.i, %bb.cd ], [ 0, %.lr.ph607.i.preheader.i ] ; 3 uses
  %i.qo = icmp samesign ult i64 %.sroa.0141.0603.i.i, %i.uw
  br i1 %i.qo, label %bb.cc, label %.invoke1141.i.i

bb.cc:                                            ; preds = %.lr.ph607.i.i
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.sroa.0141.0603.i.i ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !noalias !8395, !noundef !4
  %i.qr = zext i32 %i.qq to i64                   ; 3 uses
  %i.qs = icmp ugt i64 %.sroa.14.7.i.i, %i.qr
  br i1 %i.qs, label %.noexc.i.i, label %.invoke1141.i.i

.noexc.i.i:                                       ; preds = %bb.cc
  %i.qt = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.016.7.i.i, i64 %i.qr ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !8513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.ak, i64 1040, i1 false), !alias.scope !8518, !noalias !8395
  %i.qu = load i64, ptr %i.ln, align 8, !alias.scope !8522, !noalias !8395, !noundef !4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 1024 ; 2 uses
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !8525, !noalias !8395, !noundef !4
  %i.qx = add i64 %i.qw, %i.qu
  store i64 %i.qx, ptr %i.ln, align 8, !alias.scope !8528, !noalias !8395
  %bound0 = icmp ult ptr %i.aj, %i.qv
  %bound1 = icmp ult ptr %i.qt, %i.ln
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph3803, label %vector.body3805

vector.body3805:                                  ; preds = %.noexc.i.i, %vector.body3805
  %index3806 = phi i64 [ %index.next3811.1, %vector.body3805 ], [ 0, %.noexc.i.i ] ; 4 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index3806 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 2 uses
  %wide.load3807 = load <4 x i32>, ptr %i.qy, align 8, !alias.scope !8531, !noalias !8534
  %wide.load3808 = load <4 x i32>, ptr %i.qz, align 8, !alias.scope !8531, !noalias !8534
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %index3806 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %wide.load3809 = load <4 x i32>, ptr %i.ra, align 4, !alias.scope !8536, !noalias !8395
  %wide.load3810 = load <4 x i32>, ptr %i.rb, align 4, !alias.scope !8536, !noalias !8395
  %i.rc = add <4 x i32> %wide.load3809, %wide.load3807
  %i.rd = add <4 x i32> %wide.load3810, %wide.load3808
  store <4 x i32> %i.rc, ptr %i.qy, align 8, !alias.scope !8531, !noalias !8534
  store <4 x i32> %i.rd, ptr %i.qz, align 8, !alias.scope !8531, !noalias !8534
  %index.next3811 = or disjoint i64 %index3806, 8 ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index.next3811 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16 ; 2 uses
  %wide.load3807.1 = load <4 x i32>, ptr %i.re, align 8, !alias.scope !8531, !noalias !8534
  %wide.load3808.1 = load <4 x i32>, ptr %i.rf, align 8, !alias.scope !8531, !noalias !8534
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %index.next3811 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %wide.load3809.1 = load <4 x i32>, ptr %i.rg, align 4, !alias.scope !8536, !noalias !8395
  %wide.load3810.1 = load <4 x i32>, ptr %i.rh, align 4, !alias.scope !8536, !noalias !8395
  %i.ri = add <4 x i32> %wide.load3809.1, %wide.load3807.1
  %i.rj = add <4 x i32> %wide.load3810.1, %wide.load3808.1
  store <4 x i32> %i.ri, ptr %i.re, align 8, !alias.scope !8531, !noalias !8534
  store <4 x i32> %i.rj, ptr %i.rf, align 8, !alias.scope !8531, !noalias !8534
  %index.next3811.1 = add nuw nsw i64 %index3806, 16 ; 2 uses
  %i.rk = icmp eq i64 %index.next3811.1, 256
  br i1 %i.rk, label %.noexc240.i.i, label %vector.body3805, !llvm.loop !8537

scalar.ph3803:                                    ; preds = %.noexc.i.i, %scalar.ph3803
  %.sroa.01.0.i263602.i.i = phi i64 [ %i.sd, %scalar.ph3803 ], [ 0, %.noexc.i.i ] ; 6 uses
  %i.rl = or disjoint i64 %.sroa.01.0.i263602.i.i, 1 ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.sroa.01.0.i263602.i.i ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 8, !noalias !8395, !noundef !4
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %.sroa.01.0.i263602.i.i
  %i.rp = load i32, ptr %i.ro, align 4, !noalias !8395, !noundef !4
  %i.rq = add i32 %i.rp, %i.rn
  store i32 %i.rq, ptr %i.rm, align 8, !noalias !8395
  %i.rr = or disjoint i64 %.sroa.01.0.i263602.i.i, 2 ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.rl ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 4, !noalias !8395, !noundef !4
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rl
  %i.rv = load i32, ptr %i.ru, align 4, !noalias !8395, !noundef !4
  %i.rw = add i32 %i.rv, %i.rt
  store i32 %i.rw, ptr %i.rs, align 4, !noalias !8395
  %i.rx = or disjoint i64 %.sroa.01.0.i263602.i.i, 3 ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.rr ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 8, !noalias !8395, !noundef !4
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rr
  %i.sb = load i32, ptr %i.sa, align 4, !noalias !8395, !noundef !4
  %i.sc = add i32 %i.sb, %i.rz
  store i32 %i.sc, ptr %i.ry, align 8, !noalias !8395
  %i.sd = add nuw nsw i64 %.sroa.01.0.i263602.i.i, 4 ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.rx ; 2 uses
  %i.sf = load i32, ptr %i.se, align 4, !noalias !8395, !noundef !4
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rx
  %i.sh = load i32, ptr %i.sg, align 4, !noalias !8395, !noundef !4
  %i.si = add i32 %i.sh, %i.sf
  store i32 %i.si, ptr %i.se, align 4, !noalias !8395
  %exitcond845.not.i.i.3 = icmp eq i64 %i.sd, 256
  br i1 %exitcond845.not.i.i.3, label %.noexc240.i.i, label %scalar.ph3803, !llvm.loop !8538

.noexc240.i.i:                                    ; preds = %vector.body3805, %scalar.ph3803
  %i.sj = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.aj)
          to label %.noexc242.i.i unwind label %.loopexit.split-lp.thread.i.i, !noalias !8395

.noexc242.i.i:                                    ; preds = %.noexc240.i.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qt, i64 1032
  %i.sl = load float, ptr %i.sk, align 8, !alias.scope !8539, !noalias !8395, !noundef !4
  %i.sm = fsub float %i.sj, %i.sl                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !8513
  %i.sn = fcmp olt float %i.sm, %.sroa.093.0604.i.i
  br i1 %i.sn, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.noexc242.i.i
  %.sroa.093.1.i.i = phi float [ %i.sm, %bb.ce ], [ %.sroa.093.0604.i.i, %.noexc242.i.i ]
  %.sroa.089.1.i.i = phi i32 [ %i.sq, %bb.ce ], [ %.sroa.089.0605.i.i, %.noexc242.i.i ] ; 3 uses
  %i.so = icmp samesign ult i64 %.sroa.0141.1606.i.i, %i.lb ; 2 uses
  %i.sp = zext i1 %i.so to i64
  %.sroa.0141.1.i.i = add nuw nsw i64 %.sroa.0141.1606.i.i, %i.sp
  br i1 %i.so, label %.lr.ph607.i.i, label %._crit_edge608.loopexit.i.i.loopexit1043

bb.ce:                                            ; preds = %.noexc242.i.i
  %i.sq = load i32, ptr %i.qp, align 4, !noalias !8395, !noundef !4
  br label %bb.cd

.invoke1141.i.i:                                  ; preds = %._crit_edge608.i.i, %._crit_edge598.i.thread.i, %._crit_edge598.i.i, %.lr.ph597.i.i, %bb.cc, %.lr.ph607.i.i, %bb.by, %.lr.ph607.i.us.i
  %i.sr = phi i64 [ %i.qr, %bb.cc ], [ %i.qc, %bb.by ], [ %.sroa.043.2595.i.i, %.lr.ph597.i.i ], [ %i.uw, %.lr.ph607.i.us.i ], [ %.sroa.0141.0603.i.i, %.lr.ph607.i.i ], [ %.pre-phi.i.i, %._crit_edge608.i.i ], [ %i.od, %._crit_edge598.i.thread.i ], [ %i.ny, %._crit_edge598.i.i ]
  %i.ss = phi i64 [ %.sroa.14.7.i.i, %bb.cc ], [ %.sroa.14.7.i.i, %bb.by ], [ %i.aq, %.lr.ph597.i.i ], [ %i.uw, %.lr.ph607.i.us.i ], [ %i.uw, %.lr.ph607.i.i ], [ %i.uw, %._crit_edge608.i.i ], [ %.sroa.14.7.i.i, %._crit_edge598.i.thread.i ], [ %.sroa.14.7.i.i, %._crit_edge598.i.i ]
  %i.st = phi ptr [ @902, %bb.cc ], [ @902, %bb.by ], [ @903, %.lr.ph597.i.i ], [ @901, %.lr.ph607.i.us.i ], [ @901, %.lr.ph607.i.i ], [ @900, %._crit_edge608.i.i ], [ @899, %._crit_edge598.i.thread.i ], [ @899, %._crit_edge598.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.sr, i64 noundef %i.ss, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.st) #46
          to label %.cont1142.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.cont1142.i.i:                                    ; preds = %.invoke1141.i.i
  unreachable

bb.cf:                                            ; preds = %.lr.ph597.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.2595.i.i
  %i.sv = load i8, ptr %i.su, align 1, !alias.scope !8542, !noalias !8545, !noundef !4
  %i.sw = zext i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.sw ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !alias.scope !8546, !noalias !8395, !noundef !4
  %i.sz = add i32 %i.sy, 1
  store i32 %i.sz, ptr %i.sx, align 4, !alias.scope !8546, !noalias !8395
  %i.ta = add nuw nsw i64 %i.nu, 1                ; 2 uses
  %i.tb = add nuw i64 %.sroa.043.2595.i.i, 1      ; 3 uses
  %exitcond843.not.i.i = icmp eq i64 %i.ta, %i.ns
  br i1 %exitcond843.not.i.i, label %._crit_edge598.i.i, label %.lr.ph597.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %bb.az
  %.sroa.1152.2.i.i = phi i64 [ 0, %bb.az ], [ %i.uw, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.uw, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.051.2.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.az ], [ %i.km, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %i.km, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.14.6.i.i = phi i64 [ 0, %bb.az ], [ %.sroa.14.7.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.14.7.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.sroa.016.6.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.az ], [ %.sroa.016.7.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %.sroa.016.7.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %i.li, %bb.az ], [ %lpad.loopexit.split-lp254.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit253.i.i, %.loopexit.split-lp.loopexit.i.i ] ; 2 uses
  br i1 %i.kp, label %.thread131.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i": ; preds = %.loopexit.split-lp.i.i, %.loopexit.split-lp.thread.i.i
  %.pn931.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.split-lp.thread.i.i ], [ %.pn.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.016.6930.i.i = phi ptr [ %.sroa.016.7.i.i, %.loopexit.split-lp.thread.i.i ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.14.6929.i.i = phi i64 [ %.sroa.14.7.i.i, %.loopexit.split-lp.thread.i.i ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.051.2928.i.i = phi ptr [ %i.km, %.loopexit.split-lp.thread.i.i ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.i.i ]
  %.sroa.1152.2927.i.i = phi i64 [ %i.uw, %.loopexit.split-lp.thread.i.i ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.i.i ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lj, i64 noundef %i.kc, i64 noundef 4) #45, !noalias !8395
  br label %.thread131.i.i

._crit_edge561.i.i:                               ; preds = %bb.di, %.split.i.i
  %.sroa.043.3.lcssa.i.i = phi i64 [ %.sroa.043.0577.i.i, %.split.i.i ], [ %.sroa.043.4.lcssa.i.i, %bb.di ]
  %i.tc = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17hcdc3ee27b6945a83E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427920.i.i, i64 noundef %.sroa.0.0.i422.i.i, ptr noalias noundef nonnull align 4 %i.ao, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.am, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.an, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.jl, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i, i64 noundef %.sroa.0.0.i447.i.i, i64 noundef 64, i64 noundef 2048)
          to label %bb.cg unwind label %.thread164.loopexit.split-lp.loopexit.i.i, !noalias !8395 ; 5 uses

bb.cg:                                            ; preds = %._crit_edge561.i.i
  %i.td = add i64 %i.tc, %.sroa.0.0582.i.i        ; 3 uses
  %i.te = icmp ult i64 %.sroa.012.0581.i.i, %i.td
  br i1 %i.te, label %bb.ch, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i"

bb.ch:                                            ; preds = %bb.cg
  %i.tf = icmp eq i64 %.sroa.012.0581.i.i, 0      ; 2 uses
  %..sroa.012.0.i.i = select i1 %i.tf, i64 %i.td, i64 %.sroa.012.0581.i.i
  br label %bb.ci

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i", %bb.cg
  %.sroa.14.7.i.i = phi i64 [ %.sroa.14.3574.i.i, %bb.cg ], [ %.sroa.066.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.066.1.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i" ] ; 23 uses
  %.sroa.016.7.i.i = phi ptr [ %.sroa.016.3575.i.i, %bb.cg ], [ %.sroa.10.0.i.i.i520.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.10.0.i.i.i520.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i = phi i64 [ %.sroa.012.0581.i.i, %bb.cg ], [ %.sroa.066.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i" ], [ %.sroa.066.1.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i" ]
  %i.tg = add i64 %i.tc, %.sroa.018.0580.i.i      ; 3 uses
  %i.th = icmp ult i64 %.sroa.023.0579.i.i, %i.tg
  br i1 %i.th, label %bb.co, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i"

bb.ci:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.066.1.i.i = phi i64 [ %..sroa.012.0.i.i, %bb.ch ], [ %i.tj, %bb.ci ] ; 13 uses
  %i.ti = icmp ult i64 %.sroa.066.1.i.i, %i.td
  %i.tj = shl i64 %.sroa.066.1.i.i, 1
  br i1 %i.ti, label %bb.ci, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tk = mul i64 %.sroa.066.1.i.i, 1040          ; 4 uses
  %or.cond.i.i.i.i.i517.i.i = icmp ugt i64 %.sroa.066.1.i.i, 8868626958514207
  br i1 %or.cond.i.i.i.i.i517.i.i, label %bb.cl, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i: ; preds = %bb.cj
  %i.tl = icmp eq i64 %i.tk, 0
  br i1 %i.tl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i", label %bb.ck

bb.ck:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8549
  %i.tm = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.tk, i64 noundef range(i64 1, 9) 8) #45, !noalias !8549 ; 2 uses
  %i.tn = icmp eq ptr %i.tm, null
  br i1 %i.tn, label %bb.cl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i"

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.4.0.ph.i.i.i532.i.i = phi i64 [ 8, %bb.ck ], [ 0, %bb.cj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i532.i.i, i64 %i.tk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc533.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.noexc533.i.i:                                    ; preds = %bb.cl
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i": ; preds = %bb.ck, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i
  %.sroa.10.0.i.i.i520.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %i.tm, %bb.ck ] ; 7 uses
  %.sroa.4.0.i.i.i521.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %.sroa.066.1.i.i, %bb.ck ]
  %i.to = icmp samesign ule i64 %.sroa.066.1.i.i, %.sroa.4.0.i.i.i521.i.i
  tail call void @llvm.assume(i1 %i.to)
  %i.tp = icmp samesign ugt i64 %.sroa.066.1.i.i, 1
  br i1 %i.tp, label %.lr.ph.i.i.i527.i.i.preheader, label %.loopexit257.i.i

.lr.ph.i.i.i527.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i"
  %i.tq = add nsw i64 %.sroa.066.1.i.i, -1        ; 2 uses
  %i.tr = add nsw i64 %.sroa.066.1.i.i, -2
  %xtraiter4714 = and i64 %i.tq, 7                ; 3 uses
  %i.ts = icmp ult i64 %i.tr, 7
  br i1 %i.ts, label %.lr.ph.i.i.i527.i.i.epil.preheader, label %.lr.ph.i.i.i527.i.i.preheader.new

.lr.ph.i.i.i527.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i527.i.i.preheader
  %unroll_iter4719 = and i64 %i.tq, -8
  br label %.lr.ph.i.i.i527.i.i

.lr.ph.i.i.i527.i.i:                              ; preds = %.lr.ph.i.i.i527.i.i, %.lr.ph.i.i.i527.i.i.preheader.new
  %.sroa.0.08.i.i.i528.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %i.ua, %.lr.ph.i.i.i527.i.i ] ; 17 uses
  %niter4720 = phi i64 [ 0, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %niter4720.next.7, %.lr.ph.i.i.i527.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i, align 8, !noalias !8557
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tt, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1, align 8, !noalias !8557
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tu, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2, align 8, !noalias !8557
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tv, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3, align 8, !noalias !8557
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tw, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4, align 8, !noalias !8557
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tx, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5, align 8, !noalias !8557
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ty, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6, align 8, !noalias !8557
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tz, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7, align 8, !noalias !8557
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8320 ; 3 uses
  %niter4720.next.7 = add i64 %niter4720, 8       ; 2 uses
  %niter4720.ncmp.7 = icmp eq i64 %niter4720.next.7, %unroll_iter4719
  br i1 %niter4720.ncmp.7, label %.loopexit257.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i527.i.i

.loopexit257.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i527.i.i
  %lcmp.mod4716.not = icmp eq i64 %xtraiter4714, 0
  br i1 %lcmp.mod4716.not, label %.loopexit257.i.i, label %.lr.ph.i.i.i527.i.i.epil.preheader

.lr.ph.i.i.i527.i.i.epil.preheader:               ; preds = %.loopexit257.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.preheader
  %.sroa.0.08.i.i.i528.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader ], [ %i.ua, %.loopexit257.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4718 = icmp ne i64 %xtraiter4714, 0
  tail call void @llvm.assume(i1 %lcmp.mod4718)
  br label %.lr.ph.i.i.i527.i.i.epil

.lr.ph.i.i.i527.i.i.epil:                         ; preds = %.lr.ph.i.i.i527.i.i.epil, %.lr.ph.i.i.i527.i.i.epil.preheader
  %.sroa.0.08.i.i.i528.i.i.epil = phi ptr [ %i.ub, %.lr.ph.i.i.i527.i.i.epil ], [ %.sroa.0.08.i.i.i528.i.i.epil.init, %.lr.ph.i.i.i527.i.i.epil.preheader ] ; 3 uses
  %epil.iter4715 = phi i64 [ %epil.iter4715.next, %.lr.ph.i.i.i527.i.i.epil ], [ 0, %.lr.ph.i.i.i527.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i.epil, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil, align 8, !noalias !8557
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4715.next = add i64 %epil.iter4715, 1 ; 2 uses
  %epil.iter4715.cmp.not = icmp eq i64 %epil.iter4715.next, %xtraiter4714
  br i1 %epil.iter4715.cmp.not, label %.loopexit257.i.i, label %.lr.ph.i.i.i527.i.i.epil, !llvm.loop !8560

.loopexit257.i.i:                                 ; preds = %.loopexit257.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i"
  %.sroa.0.0.lcssa15.i.i.i525.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i" ], [ %i.ua, %.loopexit257.i.i.loopexit.unr-lcssa ], [ %i.ub, %.lr.ph.i.i.i527.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i525.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i525.i.i, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i, align 8, !noalias !8557
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3575.i.i) ]
  %.not227.i.i = icmp ugt i64 %.sroa.012.0581.i.i, %.sroa.14.3574.i.i
  br i1 %.not227.i.i, label %bb.cn, label %bb.cm, !prof !2174

bb.cm:                                            ; preds = %.loopexit257.i.i
  br i1 %i.tf, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cm
  %i.uc = mul nuw nsw i64 %.sroa.012.0581.i.i, 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i520.i.i, ptr nonnull readonly align 8 %.sroa.016.3575.i.i, i64 %i.uc, i1 false), !alias.scope !8561, !noalias !8395
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i"

bb.cn:                                            ; preds = %.loopexit257.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0581.i.i, i64 noundef %.sroa.14.3574.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @912) #46
          to label %bb.bp unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i", !noalias !8395

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i, %bb.cm
  %i.ud = icmp eq i64 %.sroa.14.3574.i.i, 0
  br i1 %i.ud, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i"
  %i.ue = mul nuw nsw i64 %.sroa.14.3574.i.i, 1040
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.3575.i.i, i64 noundef %i.ue, i64 noundef 8) #45, !noalias !8395
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i"

bb.co:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i"
  %i.uf = icmp eq i64 %.sroa.023.0579.i.i, 0
  %..sroa.023.0.i.i = select i1 %i.uf, i64 %i.tg, i64 %.sroa.023.0579.i.i
  br label %bb.cp

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i", %bb.cw, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i"
  %.sroa.12.5.i.i = phi i64 [ %.sroa.12.2572.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ] ; 11 uses
  %.sroa.026.5.i.i = phi ptr [ %.sroa.026.2573.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i" ], [ %i.ur, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %i.ur, %bb.cw ] ; 11 uses
  %.sroa.023.1.i.i = phi i64 [ %.sroa.023.0579.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ]
  %.not618.i.i = icmp eq i64 %i.tc, 0
  br i1 %.not618.i.i, label %.preheader256.i.i, label %.lr.ph566.preheader.i.i

.lr.ph566.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i"
  %reass.sub428.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i, i64 %.sroa.0.0582.i.i)
  %i.ug = add nuw nsw i64 %reass.sub428.i, 1
  %reass.sub429.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i, i64 %.sroa.018.0580.i.i)
  %i.uh = add nuw nsw i64 %reass.sub429.i, 1
  br label %.lr.ph566.i.i

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.sroa.070.1.i.i = phi i64 [ %..sroa.023.0.i.i, %bb.co ], [ %i.uj, %bb.cp ] ; 9 uses
  %i.ui = icmp ult i64 %.sroa.070.1.i.i, %i.tg
  %i.uj = shl i64 %.sroa.070.1.i.i, 1
  br i1 %i.ui, label %bb.cp, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.uk = shl i64 %.sroa.070.1.i.i, 2             ; 5 uses
  %i.ul = icmp ugt i64 %.sroa.070.1.i.i, 4611686018427387903
  %i.um = icmp ugt i64 %i.uk, 9223372036854775804
  %or.cond.i.i.i.i538.i.i = or i1 %i.ul, %i.um
  br i1 %or.cond.i.i.i.i538.i.i, label %bb.ct, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i: ; preds = %bb.cq
  %i.un = icmp eq i64 %i.uk, 0
  br i1 %i.un, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8568
  %i.uo = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.uk, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8568 ; 2 uses
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uq = ptrtoint ptr %i.uo to i64
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i541.i.i = phi i64 [ 4, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i541.i.i, i64 %i.uk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc542.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.noexc542.i.i:                                    ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  %.sroa.10.0.i.i540.i.i = phi i64 [ %i.uq, %bb.cs ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i ]
  %i.ur = inttoptr i64 %.sroa.10.0.i.i540.i.i to ptr ; 5 uses
  %i.us = icmp samesign ult i64 %.sroa.070.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.us)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ur) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2573.i.i) ]
  %.not229.i.i = icmp ugt i64 %.sroa.023.0579.i.i, %.sroa.12.2572.i.i
  br i1 %.not229.i.i, label %bb.cv, label %bb.cw, !prof !2174

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0579.i.i, i64 noundef %.sroa.12.2572.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @911) #46
          to label %bb.bp unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i", !noalias !8395

bb.cw:                                            ; preds = %bb.cu
  %i.ut = shl nuw nsw i64 %.sroa.023.0579.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ur, ptr nonnull readonly align 4 %.sroa.026.2573.i.i, i64 %i.ut, i1 false), !alias.scope !8573, !noalias !8577
  %i.uu = icmp eq i64 %.sroa.12.2572.i.i, 0
  br i1 %i.uu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i": ; preds = %bb.cw
  %i.uv = shl nuw nsw i64 %.sroa.12.2572.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.2573.i.i, i64 noundef %i.uv, i64 noundef 4) #45, !noalias !8395
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i"

.preheader256.i.i:                                ; preds = %bb.dg, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i"
  %.sroa.018.1.lcssa.i.i = phi i64 [ %.sroa.018.0580.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i" ], [ %i.wa, %bb.dg ]
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.0582.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i" ], [ %i.vt, %bb.dg ]
  br i1 %.not915.i.i, label %._crit_edge571.i.i, label %.lr.ph570.i.i

.lr.ph570.i.i:                                    ; preds = %.preheader256.i.i
  %10 = trunc i64 %.sroa.029.0578.i.i to i32
  br label %bb.cx

._crit_edge571.i.i:                               ; preds = %bb.cz, %.preheader256.i.i
  %i.uw = add i64 %i.tc, %.sroa.029.0578.i.i      ; 23 uses
  %i.ux = add i64 %.sroa.047.1576.i.i, 64         ; 2 uses
  %i.uy = icmp ult i64 %i.ux, %.sroa.0.0.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.uy, label %.split.i.i, label %bb.an

bb.cx:                                            ; preds = %bb.cz, %.lr.ph570.i.i
  %i.uz = phi i64 [ 1, %.lr.ph570.i.i ], [ %i.vk, %bb.cz ] ; 3 uses
  %.sroa.0133.0569.i.i = phi i64 [ 0, %.lr.ph570.i.i ], [ %i.uz, %bb.cz ] ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0133.0569.i.i
  %i.vb = load i32, ptr %i.va, align 4, !noalias !8395, !noundef !4 ; 2 uses
  %i.vc = zext i32 %i.vb to i64                   ; 2 uses
  %i.vd = icmp ult i32 %i.vb, 64
  br i1 %i.vd, label %bb.cy, label %.invoke4010

bb.cy:                                            ; preds = %bb.cx
  %i.ve = or disjoint i64 %.sroa.0133.0569.i.i, %.sroa.047.1576.i.i ; 3 uses
  %i.vf = icmp ult i64 %i.ve, %.sroa.0.0.i.i
  br i1 %i.vf, label %bb.cz, label %.invoke4010

bb.cz:                                            ; preds = %bb.cy
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.vc
  %i.vh = load i32, ptr %i.vg, align 4, !noalias !8395, !noundef !4
  %i.vi = add i32 %i.vh, %10
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ve
  store i32 %i.vi, ptr %i.vj, align 4, !noalias !8395
  %i.vk = add nuw nsw i64 %i.uz, 1
  %exitcond840.not.i.i = icmp eq i64 %i.uz, %umax839.i.i
  br i1 %exitcond840.not.i.i, label %._crit_edge571.i.i, label %bb.cx

.lr.ph566.i.i:                                    ; preds = %bb.dg, %.lr.ph566.preheader.i.i
  %i.vl = phi i64 [ %i.wd, %bb.dg ], [ 1, %.lr.ph566.preheader.i.i ] ; 6 uses
  %.sroa.0.1565.i.i = phi i64 [ %i.vt, %bb.dg ], [ %.sroa.0.0582.i.i, %.lr.ph566.preheader.i.i ] ; 3 uses
  %.sroa.018.1564.i.i = phi i64 [ %i.wa, %bb.dg ], [ %.sroa.018.0580.i.i, %.lr.ph566.preheader.i.i ] ; 3 uses
  %.sroa.0131.0563.i.i = phi i64 [ %i.vl, %bb.dg ], [ 0, %.lr.ph566.preheader.i.i ] ; 2 uses
  %exitcond833.not.i.i = icmp eq i64 %i.vl, 65
  br i1 %exitcond833.not.i.i, label %.invoke4010, label %bb.da

bb.da:                                            ; preds = %.lr.ph566.i.i
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0131.0563.i.i ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !noalias !8395, !noundef !4
  %i.vo = zext i32 %i.vn to i64                   ; 4 uses
  %i.vp = icmp samesign ugt i64 %.sroa.0.0.i422.i.i, %i.vo
  br i1 %i.vp, label %bb.dc, label %.invoke4010

bb.db:                                            ; preds = %bb.dd
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.dc:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  %exitcond835.not.i.i = icmp eq i64 %i.vl, %i.ug
  br i1 %exitcond835.not.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1565.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #46
          to label %bb.bp unwind label %bb.db, !noalias !8395

bb.de:                                            ; preds = %bb.dc
  %i.vr = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427920.i.i, i64 %i.vo
  %i.vs = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.016.7.i.i, i64 %.sroa.0.1565.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vs, ptr noundef nonnull align 8 dereferenceable(1040) %i.vr, i64 1040, i1 false), !noalias !8395
  %i.vt = add nuw i64 %.sroa.0.1565.i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %exitcond837.not.i.i = icmp eq i64 %i.vl, %i.uh
  br i1 %exitcond837.not.i.i, label %.invoke4010, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.vo
  %i.vv = load i32, ptr %i.vu, align 4, !noalias !8395, !noundef !4
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i, i64 %.sroa.018.1564.i.i
  store i32 %i.vv, ptr %i.vw, align 4, !noalias !8395
  %i.vx = load i32, ptr %i.vm, align 4, !noalias !8395, !noundef !4 ; 2 uses
  %i.vy = zext i32 %i.vx to i64                   ; 2 uses
  %i.vz = icmp ult i32 %i.vx, 64
  br i1 %i.vz, label %bb.dg, label %.invoke4010

bb.dg:                                            ; preds = %bb.df
  %i.wa = add nuw i64 %.sroa.018.1564.i.i, 1      ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.vy
  %i.wc = trunc nuw nsw i64 %.sroa.0131.0563.i.i to i32
  store i32 %i.wc, ptr %i.wb, align 4, !noalias !8395
  %i.wd = add nuw nsw i64 %i.vl, 1
  %exitcond838.not.i.i = icmp eq i64 %i.vl, %i.tc
  br i1 %exitcond838.not.i.i, label %.preheader256.i.i, label %.lr.ph566.i.i

.invoke4010:                                      ; preds = %bb.df, %bb.de, %bb.da, %.lr.ph566.i.i, %bb.cy, %bb.cx
  %i.we = phi i64 [ %i.ve, %bb.cy ], [ %i.vc, %bb.cx ], [ %i.vy, %bb.df ], [ 64, %.lr.ph566.i.i ], [ %i.vo, %bb.da ], [ %.sroa.018.1564.i.i, %bb.de ]
  %i.wf = phi i64 [ %.sroa.0.0.i.i, %bb.cy ], [ 64, %bb.cx ], [ 64, %bb.df ], [ 64, %.lr.ph566.i.i ], [ %.sroa.0.0.i422.i.i, %bb.da ], [ %.sroa.12.5.i.i, %bb.de ]
  %i.wg = phi ptr [ @905, %bb.cy ], [ @904, %bb.cx ], [ @910, %bb.df ], [ @906, %.lr.ph566.i.i ], [ @907, %bb.da ], [ @909, %bb.de ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.we, i64 noundef %i.wf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wg) #46
          to label %.cont4011 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.cont4011:                                        ; preds = %.invoke4010
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i": ; preds = %bb.cv
  %i.wh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ur, i64 noundef %i.uk, i64 noundef 4) #45, !noalias !8395
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i": ; preds = %bb.cn
  %i.wi = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i520.i.i, i64 noundef %i.tk, i64 noundef 8) #45, !noalias !8395
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.lr.ph560.i.i:                                    ; preds = %.split.i.i, %bb.di
  %.sroa.0127.1559.i.i = phi i64 [ %.sroa.0127.1.i.i, %bb.di ], [ 1, %.split.i.i ] ; 3 uses
  %.sroa.043.3558.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i, %bb.di ], [ %.sroa.043.0577.i.i, %.split.i.i ] ; 3 uses
  %.sroa.0127.0557.i.i = phi i64 [ %.sroa.0127.1559.i.i, %bb.di ], [ 0, %.split.i.i ] ; 6 uses
  %i.wj = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427920.i.i, i64 %.sroa.0127.0557.i.i ; 5 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 1024
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.wj, i8 0, i64 1032, i1 false), !noalias !8395
  store float 3.402000e+38, ptr %i.wl, align 8, !alias.scope !8579, !noalias !8395
  %i.wm = add nuw nsw i64 %.sroa.0127.0557.i.i, %.sroa.047.1576.i.i ; 3 uses
  %i.wn = icmp ult i64 %i.wm, %.sroa.0.0.i.i
  br i1 %i.wn, label %bb.dh, label %.invoke4008

bb.dh:                                            ; preds = %.lr.ph560.i.i
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %i.wm
  %i.wp = load i32, ptr %i.wo, align 4, !noalias !8395, !noundef !4 ; 2 uses
  %.not.i167.i = icmp eq i32 %i.wp, 0
  br i1 %.not.i167.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dh
  %i.wq = zext i32 %i.wp to i64
  %reass.sub.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.3558.i.i)
  %i.wr = add nuw i64 %reass.sub.i, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.dj, %bb.dh
  %.sroa.043.4.lcssa.i.i = phi i64 [ %.sroa.043.3558.i.i, %bb.dh ], [ %i.xl, %bb.dj ] ; 2 uses
  %i.ws = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.wj)
          to label %bb.di unwind label %.thread164.loopexit.i.i, !noalias !8395

bb.di:                                            ; preds = %._crit_edge.i.i
  store float %i.ws, ptr %i.wl, align 8, !alias.scope !8582, !noalias !8395
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0127.0557.i.i
  %i.wu = trunc nuw nsw i64 %.sroa.0127.0557.i.i to i32 ; 2 uses
  store i32 %i.wu, ptr %i.wt, align 4, !noalias !8395
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0127.0557.i.i
  store i32 %i.wu, ptr %i.wv, align 4, !noalias !8395
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.0127.0557.i.i
  store i32 1, ptr %i.ww, align 4, !noalias !8395
  %i.wx = icmp samesign ult i64 %.sroa.0127.1559.i.i, %.sroa.0.0.i447.i.i ; 2 uses
  %i.wy = zext i1 %i.wx to i64
  %.sroa.0127.1.i.i = add nuw i64 %.sroa.0127.1559.i.i, %i.wy
  br i1 %i.wx, label %.lr.ph560.i.i, label %._crit_edge561.i.i

.lr.ph.i.i:                                       ; preds = %bb.dj, %.lr.ph.preheader.i.i
  %i.wz = phi i64 [ %i.xk, %bb.dj ], [ 0, %.lr.ph.preheader.i.i ]
  %i.xa = phi i64 [ %i.xm, %bb.dj ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.043.4556.i.i = phi i64 [ %i.xl, %bb.dj ], [ %.sroa.043.3558.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond831.not.i.i = icmp eq i64 %i.xa, %i.wr
  br i1 %exitcond831.not.i.i, label %.invoke4008, label %bb.dj

.invoke4008:                                      ; preds = %.lr.ph560.i.i, %.lr.ph.i.i
  %i.xb = phi i64 [ %.sroa.043.4556.i.i, %.lr.ph.i.i ], [ %i.wm, %.lr.ph560.i.i ]
  %i.xc = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %.lr.ph560.i.i ]
  %i.xd = phi ptr [ @914, %.lr.ph.i.i ], [ @913, %.lr.ph560.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.xb, i64 noundef %i.xc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xd) #46
          to label %.cont4009 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.cont4009:                                        ; preds = %.invoke4008
  unreachable

bb.dj:                                            ; preds = %.lr.ph.i.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.4556.i.i
  %i.xf = load i8, ptr %i.xe, align 1, !alias.scope !8585, !noalias !8545, !noundef !4
  %i.xg = zext i8 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.xg ; 2 uses
  %i.xi = load i32, ptr %i.xh, align 4, !alias.scope !8588, !noalias !8395, !noundef !4
  %i.xj = add i32 %i.xi, 1
  store i32 %i.xj, ptr %i.xh, align 4, !alias.scope !8588, !noalias !8395
  %i.xk = add nuw nsw i64 %i.wz, 1                ; 2 uses
  store i64 %i.xk, ptr %i.wk, align 8, !alias.scope !8591, !noalias !8395
  %i.xl = add nuw i64 %.sroa.043.4556.i.i, 1      ; 2 uses
  %i.xm = add nuw nsw i64 %i.xa, 1
  %exitcond832.not.i.i = icmp eq i64 %i.xa, %i.wq
  br i1 %exitcond832.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dk:                                            ; preds = %bb.dn, %bb.al
  %.sroa.047.0554.i.i = phi i64 [ 0, %bb.al ], [ %i.xr, %bb.dn ] ; 2 uses
  %.sroa.059.0553.i.i = phi i64 [ 0, %bb.al ], [ %.sroa.059.1.i.i, %bb.dn ] ; 5 uses
  %i.xn = icmp ult i64 %.sroa.059.0553.i.i, %.sroa.0.0.i.i
  br i1 %i.xn, label %bb.dl, label %.invoke.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.059.0553.i.i ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !noalias !8395, !noundef !4
  %i.xq = add i32 %i.xp, 1
  store i32 %i.xq, ptr %i.xo, align 4, !noalias !8395
  %i.xr = add nuw i64 %.sroa.047.0554.i.i, 1      ; 3 uses
  %i.xs = icmp eq i64 %i.xr, %i.aq                ; 2 uses
  br i1 %i.xs, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.xt = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.047.0554.i.i
  %i.xu = load i8, ptr %i.xt, align 1, !alias.scope !8381, !noalias !8594, !noundef !4
  %i.xv = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.xr
  %i.xw = load i8, ptr %i.xv, align 1, !alias.scope !8381, !noalias !8594, !noundef !4
  %.not238.i.i = icmp eq i8 %i.xu, %i.xw
  br i1 %.not238.i.i, label %bb.dn, label %bb.do

.invoke.i.i:                                      ; preds = %bb.dk
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0553.i.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @915) #46
          to label %.cont.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !8395

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.dn:                                            ; preds = %bb.do, %bb.dm
  %.sroa.059.1.i.i = phi i64 [ %i.xx, %bb.do ], [ %.sroa.059.0553.i.i, %bb.dm ]
  br i1 %i.xs, label %.split.i.i, label %bb.dk

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %i.xx = add nuw nsw i64 %.sroa.059.0553.i.i, 1
  br label %bb.dn

.thread131.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i", %.loopexit.split-lp.i.i, %bb.am
  %.pn230156.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.am ], [ %.pn.i.i, %.loopexit.split-lp.i.i ], [ %.pn931.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.016.4155.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.am ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.016.6930.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.14.4154.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.am ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.14.6929.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.026.3153.i.i = phi ptr [ %.sroa.026.4.ph163.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.12.3152.i.i = phi i64 [ %.sroa.12.4.ph162.i.i, %bb.am ], [ 0, %.loopexit.split-lp.i.i ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.044.0149.i.i = phi ptr [ %.sroa.044.1.ph161.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.11.0148.i.i = phi i64 [ %.sroa.11.1.ph160.i.i, %bb.am ], [ 0, %.loopexit.split-lp.i.i ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.051.0147.i.i = phi ptr [ %i.km, %bb.am ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.051.2928.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.1152.0146.i.i = phi i64 [ %i.uw, %bb.am ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.1152.2927.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %i.xy = icmp eq i64 %.sroa.1152.0146.i.i, 0
  br i1 %i.xy, label %bb.bn, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i": ; preds = %.thread131.i.i
  %i.xz = shl nuw nsw i64 %.sroa.1152.0146.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0147.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.051.0147.i.i, i64 noundef %i.xz, i64 noundef 4) #45, !noalias !8395
  br label %bb.bn

bb.dp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i", %bb.af, %.thread86.i.i
  %.pn230.pn.pn.pn.pn.pn90.i.i = phi { ptr, i32 } [ %i.ij, %.thread86.i.i ], [ %.pn230.pn.pn.pn.pn101.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i" ], [ %.pn230.pn.pn.pn.i.i, %bb.af ] ; 2 uses
  %i.ya = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.ya, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit215.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.thread934.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.thread934.i.i": ; preds = %bb.dp
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i411.i.i, i64 noundef %i.he, i64 noundef 4) #45, !noalias !8395
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i": ; preds = %bb.z
  %i.yb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yc = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.yc, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit215.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.thread934.i.i"
  %i.yd = phi ptr [ %i.ho, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.thread934.i.i" ], [ %i.hj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85936.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.thread934.i.i" ], [ %i.yb, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yd) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yd, i64 noundef %i.he, i64 noundef 4) #45, !noalias !8395
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit215.i"

bb.dq:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17hc3d8f202f86c0221E.exit.loopexit.i, %.split.i
  %.sroa.032.1424.i = phi i64 [ 1, %.split.i ], [ %.sroa.032.1.i, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17hc3d8f202f86c0221E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0423.i = phi i64 [ %spec.store.select.i, %.split.i ], [ %i.aoc, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17hc3d8f202f86c0221E.exit.loopexit.i ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8606)
  %i.ye = icmp eq i64 %.sroa.0.0423.i, 0
  br i1 %i.ye, label %.loopexit.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.yf = add i64 %.sroa.0.0423.i, 7
  %i.yg = lshr i64 %i.yf, 3                       ; 8 uses
  %i.yh = icmp eq i64 %.sroa.0.0423.i, 1
  br i1 %i.yh, label %.preheader.i.i.preheader, label %bb.ds

.preheader.i.i.preheader:                         ; preds = %bb.dr
  br i1 %min.iters.check, label %.preheader.i.i.preheader4628, label %vector.body3771

.preheader.i.i.preheader4628:                     ; preds = %vector.body3771, %.preheader.i.i.preheader
  %.ph4629 = phi i64 [ 1, %.preheader.i.i.preheader ], [ %i.hb, %vector.body3771 ]
  %.sroa.066.0449.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %vector.body3771 ]
  br label %.preheader.i.i

vector.body3771:                                  ; preds = %.preheader.i.i.preheader, %vector.body3771
  %index3772 = phi i64 [ %index.next3773, %vector.body3771 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index3772 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  store <16 x i8> zeroinitializer, ptr %i.yi, align 1, !alias.scope !8606, !noalias !8608
  store <16 x i8> zeroinitializer, ptr %i.yj, align 1, !alias.scope !8606, !noalias !8608
  %index.next3773 = add nuw i64 %index3772, 32    ; 2 uses
  %i.yk = icmp eq i64 %index.next3773, %n.vec
  br i1 %i.yk, label %.preheader.i.i.preheader4628, label %vector.body3771, !llvm.loop !8609

bb.ds:                                            ; preds = %bb.dr
  %i.yl = shl nuw nsw i64 %.sroa.0.0423.i, 8      ; 2 uses
  %.not121.i.i = icmp samesign ugt i64 %i.yl, %i.ft
  br i1 %.not121.i.i, label %.invoke1149.i, label %.preheader360.i.i, !prof !2174

.invoke1149.i:                                    ; preds = %bb.gd, %.lr.ph403.i.preheader.i, %bb.ds, %bb.ee
  %i.ym = phi i64 [ %i.yg, %bb.ee ], [ %i.yr, %.lr.ph403.i.preheader.i ], [ %i.yl, %bb.ds ], [ %i.aoc, %bb.gd ]
  %i.yn = phi i64 [ %i.fs, %bb.ee ], [ %i.ge, %.lr.ph403.i.preheader.i ], [ %i.ft, %bb.ds ], [ %spec.store.select.i, %bb.gd ]
  %i.yo = phi ptr [ @924, %bb.ee ], [ @888, %.lr.ph403.i.preheader.i ], [ @892, %bb.ds ], [ @1286, %bb.gd ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.ym, i64 noundef %i.yn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yo) #46
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !8627, !noalias !8610
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.alh, i64 12
  %.sroa.7.0.copyload.i.i = load float, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !alias.scope !8627, !noalias !8610
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.alh, i64 16
  %.sroa.8.0.copyload.i.i = load float, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !8627, !noalias !8610
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.alh, i64 20
  %.sroa.9.0.copyload.i.i = load float, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !8627, !noalias !8610
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.alh, i64 24
  %.sroa.10.0.copyload.i.i = load float, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !8627, !noalias !8610
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.alh, i64 28
  %.sroa.11.0.copyload.i.i = load float, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !alias.scope !8627, !noalias !8610
  %i.ali = load float, ptr %.sroa.0164.0412.i.i, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.alj = fadd float %.sroa.0.0.copyload.i.i, %i.ali ; 3 uses
  store float %i.alj, ptr %.sroa.0164.0412.i.i, align 4, !alias.scope !8602, !noalias !8611
  %i.alk = fcmp olt float %i.alj, %.sroa.029.0413.i.i
  br i1 %i.alk, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.all = trunc i64 %i.acg to i8
  store i8 %i.all, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.029.4.i.i = phi float [ %i.alj, %bb.ff ], [ %.sroa.029.0413.i.i, %bb.fe ] ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 4 ; 2 uses
  %i.aln = load float, ptr %i.alm, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.alo = fadd float %.sroa.5.0.copyload.i.i, %i.aln ; 3 uses
  store float %i.alo, ptr %i.alm, align 4, !alias.scope !8602, !noalias !8611
  %i.alp = fcmp olt float %i.alo, %.sroa.029.4.i.i
  br i1 %i.alp, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.alq = trunc i64 %i.acg to i8
  %i.alr = or disjoint i8 %i.alq, 1
  store i8 %i.alr, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.sroa.029.4.1.i.i = phi float [ %i.alo, %bb.fh ], [ %.sroa.029.4.i.i, %bb.fg ] ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 8 ; 2 uses
  %i.alt = load float, ptr %i.als, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.alu = fadd float %.sroa.6.0.copyload.i.i, %i.alt ; 3 uses
  store float %i.alu, ptr %i.als, align 4, !alias.scope !8602, !noalias !8611
  %i.alv = fcmp olt float %i.alu, %.sroa.029.4.1.i.i
  br i1 %i.alv, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.alw = trunc i64 %i.acg to i8
  %i.alx = or disjoint i8 %i.alw, 2
  store i8 %i.alx, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sroa.029.4.2.i.i = phi float [ %i.alu, %bb.fj ], [ %.sroa.029.4.1.i.i, %bb.fi ] ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 12 ; 2 uses
  %i.alz = load float, ptr %i.aly, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.ama = fadd float %.sroa.7.0.copyload.i.i, %i.alz ; 3 uses
  store float %i.ama, ptr %i.aly, align 4, !alias.scope !8602, !noalias !8611
  %i.amb = fcmp olt float %i.ama, %.sroa.029.4.2.i.i
  br i1 %i.amb, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.amc = trunc i64 %i.acg to i8
  %i.amd = or disjoint i8 %i.amc, 3
  store i8 %i.amd, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.029.4.3.i.i = phi float [ %i.ama, %bb.fl ], [ %.sroa.029.4.2.i.i, %bb.fk ] ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 16 ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.amg = fadd float %.sroa.8.0.copyload.i.i, %i.amf ; 3 uses
  store float %i.amg, ptr %i.ame, align 4, !alias.scope !8602, !noalias !8611
  %i.amh = fcmp olt float %i.amg, %.sroa.029.4.3.i.i
  br i1 %i.amh, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.ami = trunc i64 %i.acg to i8
  %i.amj = or disjoint i8 %i.ami, 4
  store i8 %i.amj, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.sroa.029.4.4.i.i = phi float [ %i.amg, %bb.fn ], [ %.sroa.029.4.3.i.i, %bb.fm ] ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 20 ; 2 uses
  %i.aml = load float, ptr %i.amk, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.amm = fadd float %.sroa.9.0.copyload.i.i, %i.aml ; 3 uses
  store float %i.amm, ptr %i.amk, align 4, !alias.scope !8602, !noalias !8611
  %i.amn = fcmp olt float %i.amm, %.sroa.029.4.4.i.i
  br i1 %i.amn, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.amo = trunc i64 %i.acg to i8
  %i.amp = or disjoint i8 %i.amo, 5
  store i8 %i.amp, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.sroa.029.4.5.i.i = phi float [ %i.amm, %bb.fp ], [ %.sroa.029.4.4.i.i, %bb.fo ] ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 24 ; 2 uses
  %i.amr = load float, ptr %i.amq, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.ams = fadd float %.sroa.10.0.copyload.i.i, %i.amr ; 3 uses
  store float %i.ams, ptr %i.amq, align 4, !alias.scope !8602, !noalias !8611
  %i.amt = fcmp olt float %i.ams, %.sroa.029.4.5.i.i
  br i1 %i.amt, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.amu = trunc i64 %i.acg to i8
  %i.amv = or disjoint i8 %i.amu, 6
  store i8 %i.amv, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.029.4.6.i.i = phi float [ %i.ams, %bb.fr ], [ %.sroa.029.4.5.i.i, %bb.fq ] ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 28 ; 2 uses
  %i.amx = load float, ptr %i.amw, align 4, !alias.scope !8602, !noalias !8611, !noundef !4
  %i.amy = fadd float %.sroa.11.0.copyload.i.i, %i.amx ; 3 uses
  store float %i.amy, ptr %i.amw, align 4, !alias.scope !8602, !noalias !8611
  %i.amz = fcmp olt float %i.amy, %.sroa.029.4.6.i.i
  br i1 %i.amz, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ana = trunc i64 %i.acg to i8
  %i.anb = or disjoint i8 %i.ana, 7
  store i8 %i.anb, ptr %i.abx, align 1, !alias.scope !8606, !noalias !8608
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %.sroa.029.4.7.i.i = phi float [ %i.amy, %bb.ft ], [ %.sroa.029.4.6.i.i, %bb.fs ] ; 2 uses
  %i.anc = icmp eq ptr %i.ace, %i.yv
  br i1 %i.anc, label %._crit_edge416.i.i, label %.lr.ph415.i.i

bb.fv:                                            ; preds = %bb.fx, %.split.i176.i
  %i.and = phi i64 [ 1, %.split.i176.i ], [ %i.ann, %bb.fx ] ; 4 uses
  %.sroa.071.0400.i.i = phi i64 [ 0, %.split.i176.i ], [ %i.and, %bb.fx ] ; 4 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.071.0400.i.i
  %i.anf = load float, ptr %i.ane, align 4, !alias.scope !8600, !noalias !8610, !noundef !4
  %exitcond481.not.i.i = icmp eq i64 %i.and, %i.gr
  br i1 %exitcond481.not.i.i, label %.invoke.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %gep.i.i = getelementptr [1040 x i8], ptr %invariant.gep.i.i, i64 %.sroa.071.0400.i.i
  %i.ang = load i32, ptr %gep.i.i, align 4, !alias.scope !8598, !noalias !8631, !noundef !4
  %i.anh = zext i32 %i.ang to i64
  %i.ani = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.anh)
          to label %.noexc196.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i", !noalias !8273

.noexc196.i:                                      ; preds = %bb.fw
  %i.anj = add nuw nsw i64 %.sroa.071.0400.i.i, %i.yt ; 3 uses
  %i.ank = icmp ult i64 %i.anj, %i.ft
  br i1 %i.ank, label %bb.fx, label %.invoke.i

bb.fx:                                            ; preds = %.noexc196.i
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.anj
  %i.anm = fsub float %i.anf, %i.ani
  store float %i.anm, ptr %i.anl, align 4, !alias.scope !8600, !noalias !8610
  %i.ann = add nuw nsw i64 %i.and, 1
  %exitcond482.not.i.i = icmp eq i64 %i.and, %.sroa.0.0423.i
  br i1 %exitcond482.not.i.i, label %.loopexit358.i.i, label %bb.fv

bb.fy:                                            ; preds = %bb.dt
  %i.ano = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.069.0399.i.i
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 1024
  %i.anq = load i64, ptr %i.anp, align 8, !alias.scope !8632, !noalias !8631, !noundef !4
  %i.anr = and i64 %i.anq, 4294967295             ; 3 uses
  %i.ans = icmp samesign ult i64 %i.anr, 256
  br i1 %i.ans, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ant = uitofp nneg i64 %i.anr to float
  %i.anu = tail call float @llvm.log2.f32(float %i.ant)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %.sroa.016.0.i.i = phi float [ %i.any, %bb.gb ], [ %i.anu, %bb.fz ]
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.069.0399.i.i
  store float %.sroa.016.0.i.i, ptr %i.anv, align 4, !alias.scope !8600, !noalias !8610
  %i.anw = add nuw nsw i64 %i.yp, 1
  %exitcond479.not.i.i = icmp eq i64 %i.yp, %.sroa.0.0423.i
  br i1 %exitcond479.not.i.i, label %.split.i176.i, label %bb.dt

bb.gb:                                            ; preds = %bb.fy
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.anr
  %i.any = load float, ptr %i.anx, align 4, !noalias !8617, !noundef !4
  br label %bb.ga

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader4628, %bb.gc
  %i.anz = phi i64 [ %i.aob, %bb.gc ], [ %.ph4629, %.preheader.i.i.preheader4628 ] ; 4 uses
  %.sroa.066.0449.i.i = phi i64 [ %i.anz, %bb.gc ], [ %.sroa.066.0449.i.i.ph, %.preheader.i.i.preheader4628 ] ; 2 uses
  %exitcond487.not.i.i = icmp eq i64 %i.anz, %i.gv
  br i1 %exitcond487.not.i.i, label %.invoke.i, label %bb.gc

bb.gc:                                            ; preds = %.preheader.i.i
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.066.0449.i.i
  store i8 0, ptr %i.aoa, align 1, !alias.scope !8606, !noalias !8608
  %i.aob = add i64 %i.anz, 1
  %exitcond488.not.i.i = icmp eq i64 %i.anz, %i.aq
  br i1 %exitcond488.not.i.i, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !8635

.loopexit.i:                                      ; preds = %bb.dx, %bb.gc, %bb.dq
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.dq ], [ 1, %bb.gc ], [ %.sroa.03.1.i.i, %bb.dx ] ; 32 uses
  %i.aoc = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.fp, i64 noundef %i.aq, i64 noundef %i.aq, ptr noalias noundef nonnull align 2 %i.gn, i64 noundef %spec.store.select.i, i64 noundef %.sroa.0.0423.i)
          to label %bb.gd unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i", !noalias !8273 ; 5 uses

bb.gd:                                            ; preds = %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8641)
  %.not.i.i202.i = icmp ugt i64 %i.aoc, %spec.store.select.i
  br i1 %.not.i.i202.i, label %.invoke1149.i, label %bb.ge, !prof !2174

bb.ge:                                            ; preds = %bb.gd
  %.idx.i.i203.i = mul i64 %i.aoc, 1040           ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i203.i
  %i.aoe = icmp eq i64 %i.aoc, 0
  br i1 %i.aoe, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, label %.lr.ph.i.i204.i.preheader

.lr.ph.i.i204.i.preheader:                        ; preds = %bb.ge
  %i.aof = add i64 %.idx.i.i203.i, -1040          ; 2 uses
  %i.aog = udiv i64 %i.aof, 1040
  %i.aoh = add nuw nsw i64 %i.aog, 1
  %xtraiter4696 = and i64 %i.aoh, 7               ; 2 uses
  %lcmp.mod4697.not = icmp eq i64 %xtraiter4696, 0
  br i1 %lcmp.mod4697.not, label %.lr.ph.i.i204.i.prol.loopexit, label %.lr.ph.i.i204.i.prol

.lr.ph.i.i204.i.prol:                             ; preds = %.lr.ph.i.i204.i.preheader, %.lr.ph.i.i204.i.prol
  %.sroa.02.05.i.i205.i.prol = phi ptr [ %i.aoi, %.lr.ph.i.i204.i.prol ], [ %i.bd, %.lr.ph.i.i204.i.preheader ] ; 3 uses
  %prol.iter4698 = phi i64 [ %prol.iter4698.next, %.lr.ph.i.i204.i.prol ], [ 0, %.lr.ph.i.i204.i.preheader ]
  %i.aoi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i.prol, i64 1040 ; 2 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i.prol, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i205.i.prol, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aoj, align 8, !alias.scope !8647, !noalias !8646
  %prol.iter4698.next = add i64 %prol.iter4698, 1 ; 2 uses
  %prol.iter4698.cmp.not = icmp eq i64 %prol.iter4698.next, %xtraiter4696
  br i1 %prol.iter4698.cmp.not, label %.lr.ph.i.i204.i.prol.loopexit, label %.lr.ph.i.i204.i.prol, !llvm.loop !8650

.lr.ph.i.i204.i.prol.loopexit:                    ; preds = %.lr.ph.i.i204.i.prol, %.lr.ph.i.i204.i.preheader
  %.sroa.02.05.i.i205.i.unr = phi ptr [ %i.bd, %.lr.ph.i.i204.i.preheader ], [ %i.aoi, %.lr.ph.i.i204.i.prol ]
  %i.aok = icmp ult i64 %i.aof, 7280
  br i1 %i.aok, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, label %.lr.ph.i.i204.i

.lr.ph.i.i204.i:                                  ; preds = %.lr.ph.i.i204.i.prol.loopexit, %.lr.ph.i.i204.i
  %.sroa.02.05.i.i205.i = phi ptr [ %i.aoz, %.lr.ph.i.i204.i ], [ %.sroa.02.05.i.i205.i.unr, %.lr.ph.i.i204.i.prol.loopexit ] ; 17 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 1040
  %i.aom = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %.sroa.02.05.i.i205.i, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aom, align 8, !alias.scope !8647, !noalias !8646
  %i.aon = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 2080
  %i.aoo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aol, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aoo, align 8, !alias.scope !8647, !noalias !8646
  %i.aop = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 3120
  %i.aoq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aon, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aoq, align 8, !alias.scope !8647, !noalias !8646
  %i.aor = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 4160
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aop, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aos, align 8, !alias.scope !8647, !noalias !8646
  %i.aot = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 5200
  %i.aou = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aor, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aou, align 8, !alias.scope !8647, !noalias !8646
  %i.aov = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 6240
  %i.aow = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aot, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aow, align 8, !alias.scope !8647, !noalias !8646
  %i.aox = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 7280
  %i.aoy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aov, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.aoy, align 8, !alias.scope !8647, !noalias !8646
  %i.aoz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 8320 ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i205.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.aox, i8 0, i64 1032, i1 false), !alias.scope !8643, !noalias !8646
  store float 3.402000e+38, ptr %i.apa, align 8, !alias.scope !8647, !noalias !8646
  %i.apb = icmp eq ptr %i.aoz, %i.aod
  br i1 %i.apb, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, label %.lr.ph.i.i204.i

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader: ; preds = %.lr.ph.i.i204.i.prol.loopexit, %.lr.ph.i.i204.i, %bb.ge
  br label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader, %bb.gf
  %.sroa.01.010.i.i = phi i64 [ %i.apf, %bb.gf ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i.preheader ] ; 3 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.01.010.i.i
  %i.apd = load i8, ptr %i.apc, align 1, !alias.scope !8639, !noalias !8651, !noundef !4
  %i.ape = zext i8 %i.apd to i64                  ; 3 uses
  %.not102.i = icmp samesign ult i64 %i.az, %i.ape
  br i1 %.not102.i, label %.invoke.i, label %bb.gf

bb.gf:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i
  %i.apf = add nuw i64 %.sroa.01.010.i.i, 1       ; 2 uses
  %i.apg = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %i.ape ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.010.i.i
  %i.api = load i8, ptr %i.aph, align 1, !alias.scope !8652, !noalias !8655, !noundef !4
  %i.apj = zext i8 %i.api to i64
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.apg, i64 %i.apj ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 4, !alias.scope !8656, !noalias !8646, !noundef !4
  %i.apm = add i32 %i.apl, 1
  store i32 %i.apm, ptr %i.apk, align 4, !alias.scope !8656, !noalias !8646
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apg, i64 1024 ; 2 uses
  %i.apo = load i64, ptr %i.apn, align 8, !alias.scope !8659, !noalias !8646, !noundef !4
  %i.app = add i64 %i.apo, 1
  store i64 %i.app, ptr %i.apn, align 8, !alias.scope !8662, !noalias !8646
  %exitcond17.not.i.i = icmp eq i64 %i.apf, %i.aq
  br i1 %exitcond17.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17hc3d8f202f86c0221E.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i

.invoke.i:                                        ; preds = %bb.dt, %.lr.ph434.split.i.i, %.lr.ph447.i.i, %.preheader.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i, %.noexc196.i, %bb.fv, %.lr.ph424.preheader.i.i, %.lr.ph424.i.i.1, %.lr.ph424.i.i.2, %.lr.ph424.i.i.3, %.lr.ph424.i.i.4, %.lr.ph424.i.i.5, %.lr.ph424.i.i.6, %.lr.ph430.i.i
  %i.apq = phi i64 [ %i.ape, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i ], [ %i.abl, %.lr.ph447.i.i ], [ %i.ais, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %.sroa.066.0449.i.i, %.preheader.i.i ], [ %i.aap, %.lr.ph424.i.i.6 ], [ %.sroa.071.0400.i.i, %bb.fv ], [ %i.zb, %.lr.ph424.preheader.i.i ], [ %i.zg, %.lr.ph424.i.i.1 ], [ %i.zo, %.lr.ph424.i.i.2 ], [ %i.zx, %.lr.ph424.i.i.3 ], [ %i.aad, %.lr.ph424.i.i.4 ], [ %i.aaj, %.lr.ph424.i.i.5 ], [ %i.anj, %.noexc196.i ], [ %.sroa.069.0399.i.i, %bb.dt ]
  %i.apr = phi i64 [ %spec.store.select.i, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i ], [ %i.ge, %.lr.ph447.i.i ], [ %i.ge, %.lr.ph430.i.i ], [ %i.aq, %.lr.ph434.split.i.i ], [ %i.aq, %.preheader.i.i ], [ %i.fs, %.lr.ph424.preheader.i.i ], [ %spec.store.select.i, %bb.fv ], [ %i.fs, %.lr.ph424.i.i.6 ], [ %i.fs, %.lr.ph424.i.i.5 ], [ %i.fs, %.lr.ph424.i.i.4 ], [ %i.fs, %.lr.ph424.i.i.3 ], [ %i.fs, %.lr.ph424.i.i.2 ], [ %i.fs, %.lr.ph424.i.i.1 ], [ %i.ft, %.noexc196.i ], [ %spec.store.select.i, %bb.dt ]
  %i.aps = phi ptr [ @921, %_ZN6brotli3enc9histogram15ClearHistograms17he6ac40c6e1754f5eE.exit.i.i ], [ @878, %.lr.ph447.i.i ], [ @923, %.lr.ph430.i.i ], [ @879, %.lr.ph434.split.i.i ], [ @893, %.preheader.i.i ], [ @884, %.lr.ph424.preheader.i.i ], [ @889, %bb.fv ], [ @884, %.lr.ph424.i.i.6 ], [ @884, %.lr.ph424.i.i.5 ], [ @884, %.lr.ph424.i.i.4 ], [ @884, %.lr.ph424.i.i.3 ], [ @884, %.lr.ph424.i.i.2 ], [ @884, %.lr.ph424.i.i.1 ], [ @890, %.noexc196.i ], [ @891, %bb.dt ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.apq, i64 noundef %i.apr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aps) #46
          to label %.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !8273

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i": ; preds = %bb.fw
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i": ; preds = %.loopexit.i
  %lpad.loopexit111.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i": ; preds = %.invoke.i, %.split440.us.i.invoke.i, %.invoke1149.i
  %lpad.loopexit.split-lp112.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i"
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i" ], [ %lpad.loopexit111.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i" ], [ %lpad.loopexit.split-lp112.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef %i.gm, i64 noundef 2) #45, !noalias !8273
  br label %bb.gg

bb.gg:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i", %.thread55.i
  %.pn62.i = phi { ptr, i32 } [ %i.gp, %.thread55.i ], [ %lpad.phi.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i" ]
  br i1 %i.gg, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i211.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i211.i": ; preds = %bb.gg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gl, i64 noundef %i.ge, i64 noundef 1) #45, !noalias !8273
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i211.i", %bb.gg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef %i.fy, i64 noundef 4) #45, !noalias !8273
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i", %.thread39.i
  %.pn.pn.pn44.i = phi { ptr, i32 } [ %i.gd, %.thread39.i ], [ %i.gk, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i" ], [ %.pn62.i, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fv, i64 noundef %i.fu, i64 noundef 4) #45, !noalias !8273
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %i.aq, i64 noundef 1) #45, !noalias !8273
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit215.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i", %bb.dp, %.body.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.yb, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit554.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i, %bb.dp ], [ %.pn230.pn.pn.pn.pn.pn.pn85936.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %i.aq, i64 noundef 1) #45, !noalias !8273
  br label %.body

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit215.thread.i", %.thread.i
  %.pn.pn.pn.pn.pn38.i = phi { ptr, i32 } [ %i.bu, %.thread.i ], [ %.pn.pn.pn44.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i" ], [ %i.fx, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit215.thread.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bd, i64 noundef %i.bc, i64 noundef 8) #45, !noalias !8273
  br label %.body

bb.gh:                                            ; preds = %bb.i
  %i.apt = icmp eq i64 %.val107.i, 0              ; 2 uses
  %spec.select.i = select i1 %i.apt, i64 %i.bs, i64 %.val107.i
  br label %bb.gi

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit224.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i", %bb.gk, %bb.i
  %.val.i = phi ptr [ %i.aqa, %bb.gk ], [ %i.aqa, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i" ], [ %.val106.i, %bb.i ]
  %.val63.i = phi i64 [ %.sroa.014.1.i, %bb.gk ], [ %.sroa.014.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i" ], [ %.val107.i, %bb.i ] ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val92.i = load ptr, ptr %i.apu, align 8, !alias.scope !8263, !noalias !8260, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val93.i = load i64, ptr %i.apv, align 8, !alias.scope !8263, !noalias !8260, !noundef !4 ; 5 uses
  %i.apw = icmp ult i64 %.val93.i, %i.bs
  br i1 %i.apw, label %bb.gl, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"

bb.gi:                                            ; preds = %bb.gi, %bb.gh
  %.sroa.014.1.i = phi i64 [ %spec.select.i, %bb.gh ], [ %i.apy, %bb.gi ] ; 9 uses
  %i.apx = icmp ult i64 %.sroa.014.1.i, %i.bs
  %i.apy = shl i64 %.sroa.014.1.i, 1
  br i1 %i.apx, label %bb.gi, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.apz = icmp slt i64 %.sroa.014.1.i, 0
  br i1 %i.apz, label %.invoke2965, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i217.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i217.i: ; preds = %bb.gj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8665
  %i.aqa = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !8665 ; 5 uses
  %i.aqb = icmp eq ptr %i.aqa, null
  br i1 %i.aqb, label %.invoke2965, label %bb.gk

bb.gk:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i217.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqa, ptr nonnull readonly align 1 %.val106.i, i64 %.val107.i, i1 false), !alias.scope !8671, !noalias !8675
  store ptr %i.aqa, ptr %7, align 8, !alias.scope !8263, !noalias !8260
  store i64 %.sroa.014.1.i, ptr %i.bp, align 8, !alias.scope !8263, !noalias !8260
  br i1 %i.apt, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit224.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i223.i"
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

bb.hv:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i264", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i"
  %i.bbj = icmp eq i64 %.sroa.14.1.i.i261, 0
  br i1 %i.bbj, label %bb.lh, label %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i265"

"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i265": ; preds = %bb.hv
  %.pre875.i.i = mul nuw nsw i64 %.sroa.14.1.i.i261, 2832
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i": ; preds = %.thread93.i.i398, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i265"
  %.pre-phi876.i.i = phi i64 [ %.pre875.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i265" ], [ %i.bam, %.thread93.i.i398 ]
  %.pn230.pn.pn.pn.pn101.i.i266 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.i.i263, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i265" ], [ %i.bbk, %.thread93.i.i398 ]
  %.sroa.016.0100.i.i267 = phi ptr [ %.sroa.016.1.i.i262, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i265" ], [ %.sroa.10.0.i.i.i.i.i210, %.thread93.i.i398 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0100.i.i267) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.016.0100.i.i267, i64 noundef %.pre-phi876.i.i, i64 noundef 8) #45, !noalias !8839
  br label %bb.lh

.thread93.i.i398:                                 ; preds = %bb.hu
  %i.bbk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i": ; preds = %bb.jd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250", %bb.hw
  %.sroa.12.0.i.i259 = phi i64 [ %i.bal, %bb.hw ], [ %.sroa.12.1.i.i253, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250" ], [ %.sroa.12.1.i.i253, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258" ], [ %.sroa.12.3152.i.i314, %bb.jd ] ; 2 uses
  %.sroa.026.0.i.i260 = phi ptr [ %i.bbo, %bb.hw ], [ %.sroa.026.1.i.i254, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250" ], [ %.sroa.026.1.i.i254, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258" ], [ %.sroa.026.3153.i.i313, %bb.jd ] ; 2 uses
  %.sroa.14.1.i.i261 = phi i64 [ %i.bal, %bb.hw ], [ %.sroa.14.2.i.i255, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250" ], [ %.sroa.14.2.i.i255, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258" ], [ %.sroa.14.4154.i.i312, %bb.jd ] ; 2 uses
  %.sroa.016.1.i.i262 = phi ptr [ %.sroa.10.0.i.i.i.i.i210, %bb.hw ], [ %.sroa.016.2.i.i256, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250" ], [ %.sroa.016.2.i.i256, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258" ], [ %.sroa.016.4155.i.i311, %bb.jd ]
  %.pn230.pn.pn.pn.i.i263 = phi { ptr, i32 } [ %i.bbn, %bb.hw ], [ %.pn230.pn.pn.i.i257, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250" ], [ %.pn230.pn.pn.i.i257, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258" ], [ %.pn230156.i.i310, %bb.jd ] ; 2 uses
  %i.bbl = icmp eq i64 %.sroa.12.0.i.i259, 0
  br i1 %i.bbl, label %bb.hv, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i264"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i264": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i"
  %i.bbm = shl nuw nsw i64 %.sroa.12.0.i.i259, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i260) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0.i.i260, i64 noundef %i.bbm, i64 noundef 4) #45, !noalias !8839
  br label %bb.hv

bb.hw:                                            ; preds = %bb.hy
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217: ; preds = %bb.ht, %._crit_edge.i.i.i.i.i212
  %.sroa.10.0.i.i418.i.i218 = phi i64 [ %i.bbi, %bb.ht ], [ 4, %._crit_edge.i.i.i.i.i212 ]
  %i.bbo = inttoptr i64 %.sroa.10.0.i.i418.i.i218 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i219 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i204, i64 64) ; 17 uses
  %i.bbp = mul nuw nsw i64 %.sroa.0.0.i422.i.i219, 2832 ; 3 uses
  %i.bbq = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.bbq, label %._crit_edge.i.i.i429.thread.i.i228, label %bb.hx

bb.hx:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8857
  %i.bbr = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bbp, i64 noundef range(i64 1, 9) 8) #45, !noalias !8857 ; 5 uses
  %i.bbs = icmp eq ptr %i.bbr, null
  br i1 %i.bbs, label %bb.hy, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i"

bb.hy:                                            ; preds = %bb.hx
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bbp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc440.i.i397 unwind label %bb.hw, !noalias !8839

.noexc440.i.i397:                                 ; preds = %bb.hy
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i": ; preds = %bb.hx
  %.not1179.i.i = icmp eq i64 %.sroa.0.0.i.i204, 1
  br i1 %.not1179.i.i, label %._crit_edge.thread.i.i.i431.i.i225, label %.lr.ph.i.i.i434.i.i220.preheader

.lr.ph.i.i.i434.i.i220.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i"
  %i.bbt = add nsw i64 %.sroa.0.0.i422.i.i219, -1 ; 2 uses
  %i.bbu = add nsw i64 %.sroa.0.0.i422.i.i219, -2
  %xtraiter4744 = and i64 %i.bbt, 7               ; 3 uses
  %i.bbv = icmp ult i64 %i.bbu, 7
  br i1 %i.bbv, label %.lr.ph.i.i.i434.i.i220.epil.preheader, label %.lr.ph.i.i.i434.i.i220.preheader.new

.lr.ph.i.i.i434.i.i220.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i220.preheader
  %unroll_iter4749 = and i64 %i.bbt, -8
  br label %.lr.ph.i.i.i434.i.i220

._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i220
  %lcmp.mod4746.not = icmp eq i64 %xtraiter4744, 0
  br i1 %lcmp.mod4746.not, label %._crit_edge.thread.i.i.i431.i.i225, label %.lr.ph.i.i.i434.i.i220.epil.preheader

.lr.ph.i.i.i434.i.i220.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i220.preheader
  %.sroa.0.08.i.i.i435.i.i221.epil.init = phi ptr [ %i.bbr, %.lr.ph.i.i.i434.i.i220.preheader ], [ %i.bce, %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa ]
  %lcmp.mod4748 = icmp ne i64 %xtraiter4744, 0
  call void @llvm.assume(i1 %lcmp.mod4748)
  br label %.lr.ph.i.i.i434.i.i220.epil

.lr.ph.i.i.i434.i.i220.epil:                      ; preds = %.lr.ph.i.i.i434.i.i220.epil, %.lr.ph.i.i.i434.i.i220.epil.preheader
  %.sroa.0.08.i.i.i435.i.i221.epil = phi ptr [ %i.bbw, %.lr.ph.i.i.i434.i.i220.epil ], [ %.sroa.0.08.i.i.i435.i.i221.epil.init, %.lr.ph.i.i.i434.i.i220.epil.preheader ] ; 3 uses
  %epil.iter4745 = phi i64 [ %epil.iter4745.next, %.lr.ph.i.i.i434.i.i220.epil ], [ 0, %.lr.ph.i.i.i434.i.i220.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i221.epil, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.epil, align 8, !noalias !8865
  %i.bbw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221.epil, i64 2832 ; 2 uses
  %epil.iter4745.next = add i64 %epil.iter4745, 1 ; 2 uses
  %epil.iter4745.cmp.not = icmp eq i64 %epil.iter4745.next, %xtraiter4744
  br i1 %epil.iter4745.cmp.not, label %._crit_edge.thread.i.i.i431.i.i225, label %.lr.ph.i.i.i434.i.i220.epil, !llvm.loop !8868

._crit_edge.thread.i.i.i431.i.i225:               ; preds = %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i220.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i226 = phi ptr [ %i.bbr, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i" ], [ %i.bce, %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa ], [ %i.bbw, %.lr.ph.i.i.i434.i.i220.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i227 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i226, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i432.i.i226, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i227, align 8, !noalias !8865
  br label %._crit_edge.i.i.i429.thread.i.i228

.lr.ph.i.i.i434.i.i220:                           ; preds = %.lr.ph.i.i.i434.i.i220, %.lr.ph.i.i.i434.i.i220.preheader.new
  %.sroa.0.08.i.i.i435.i.i221 = phi ptr [ %i.bbr, %.lr.ph.i.i.i434.i.i220.preheader.new ], [ %i.bce, %.lr.ph.i.i.i434.i.i220 ] ; 17 uses
  %niter4750 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i220.preheader.new ], [ %niter4750.next.7, %.lr.ph.i.i.i434.i.i220 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i221, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223, align 8, !noalias !8865
  %i.bbx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbx, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.1, align 8, !noalias !8865
  %i.bby = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bby, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.2, align 8, !noalias !8865
  %i.bbz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbz, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.3, align 8, !noalias !8865
  %i.bca = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bca, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.4, align 8, !noalias !8865
  %i.bcb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bcb, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.5, align 8, !noalias !8865
  %i.bcc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bcc, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.6, align 8, !noalias !8865
  %i.bcd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bcd, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i223.7, align 8, !noalias !8865
  %i.bce = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i221, i64 22656 ; 3 uses
  %niter4750.next.7 = add i64 %niter4750, 8       ; 2 uses
  %niter4750.ncmp.7 = icmp eq i64 %niter4750.next.7, %unroll_iter4749
  br i1 %niter4750.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i225.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i220

._crit_edge.i.i.i429.thread.i.i228:               ; preds = %._crit_edge.thread.i.i.i431.i.i225, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217
  %.sroa.10.0.i.i.i427938.i.i = phi ptr [ %i.bbr, %._crit_edge.thread.i.i.i431.i.i225 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i217 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8869
  %i.bcf = tail call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !8869 ; 16 uses
  %i.bcg = icmp eq ptr %i.bcf, null
  br i1 %i.bcg, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i228
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc444.i.i396 unwind label %bb.ia, !noalias !8839

.noexc444.i.i396:                                 ; preds = %bb.hz
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240", %bb.ia
  %.sroa.1335.0.i.i251 = phi i64 [ %.sroa.0.0.i422.i.i219, %bb.ia ], [ %.sroa.1335.1124200.i.i244, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.034.0.i.i252 = phi ptr [ %.sroa.10.0.i.i.i427938.i.i, %bb.ia ], [ %.sroa.034.1125198.i.i245, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.12.1.i.i253 = phi i64 [ %i.bal, %bb.ia ], [ %.sroa.12.3126196.i.i246, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.026.1.i.i254 = phi ptr [ %i.bbo, %bb.ia ], [ %.sroa.026.3127194.i.i247, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.14.2.i.i255 = phi i64 [ %i.bal, %bb.ia ], [ %.sroa.14.4128192.i.i248, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.sroa.016.2.i.i256 = phi ptr [ %.sroa.10.0.i.i.i.i.i210, %bb.ia ], [ %.sroa.016.4129190.i.i249, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %.pn230.pn.pn.i.i257 = phi { ptr, i32 } [ %i.bcj, %bb.ia ], [ %.pn230.pn204.i.i241, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240" ] ; 2 uses
  %i.bch = icmp eq i64 %.sroa.1335.0.i.i251, 0
  br i1 %i.bch, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i258": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250"
  %i.bci = mul nuw nsw i64 %.sroa.1335.0.i.i251, 2832
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i252) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.034.0.i.i252, i64 noundef %i.bci, i64 noundef 8) #45, !noalias !8839
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i"

bb.ia:                                            ; preds = %bb.hz
  %i.bcj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i250"

bb.ib:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.bcf, i8 0, i64 32784, i1 false), !noalias !8839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !8839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.aa, i8 0, i64 256, i1 false), !noalias !8839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !8839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.z, i8 0, i64 256, i1 false), !noalias !8839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !8839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.y, i8 0, i64 256, i1 false), !noalias !8839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !8839
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.x, i8 0, i64 256, i1 false), !noalias !8839
  br label %bb.lc

.split.i.i273:                                    ; preds = %bb.lf, %._crit_edge585.i.i
  %indvars.iv.i.i274 = phi i64 [ %indvars.iv.next.i.i296, %._crit_edge585.i.i ], [ %.sroa.0.0.i.i204, %bb.lf ] ; 2 uses
  %.sroa.0.0596.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i295, %._crit_edge585.i.i ], [ 0, %bb.lf ] ; 4 uses
  %.sroa.012.0595.i.i = phi i64 [ %.sroa.012.1.i.i289, %._crit_edge585.i.i ], [ %i.bal, %bb.lf ] ; 7 uses
  %.sroa.018.0594.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i294, %._crit_edge585.i.i ], [ 0, %bb.lf ] ; 4 uses
  %.sroa.023.0593.i.i = phi i64 [ %.sroa.023.1.i.i292, %._crit_edge585.i.i ], [ %i.bal, %bb.lf ] ; 7 uses
  %.sroa.029.0592.i.i = phi i64 [ %i.bnx, %._crit_edge585.i.i ], [ 0, %bb.lf ] ; 2 uses
  %.sroa.043.0591.i.i = phi i64 [ %.sroa.043.3.lcssa.i.i284, %._crit_edge585.i.i ], [ 0, %bb.lf ] ; 2 uses
  %.sroa.047.1590.i.i = phi i64 [ %i.bny, %._crit_edge585.i.i ], [ 0, %bb.lf ] ; 5 uses
  %.sroa.016.3589.i.i = phi ptr [ %.sroa.016.7.i.i288, %._crit_edge585.i.i ], [ %.sroa.10.0.i.i.i.i.i210, %bb.lf ] ; 9 uses
  %.sroa.14.3588.i.i = phi i64 [ %.sroa.14.7.i.i287, %._crit_edge585.i.i ], [ %i.bal, %bb.lf ] ; 10 uses
  %.sroa.026.2587.i.i = phi ptr [ %.sroa.026.5.i.i291, %._crit_edge585.i.i ], [ %i.bbo, %bb.lf ] ; 11 uses
  %.sroa.12.2586.i.i = phi i64 [ %.sroa.12.5.i.i290, %._crit_edge585.i.i ], [ %i.bal, %bb.lf ] ; 12 uses
  %i.bck = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i274, i64 1)
  %umax859.i.i = tail call i64 @llvm.umin.i64(i64 %i.bck, i64 64)
  %i.bcl = sub nuw i64 %.sroa.0.0.i.i204, %.sroa.047.1590.i.i
  %.sroa.0.0.i447.i.i275 = tail call noundef i64 @llvm.umin.i64(i64 %i.bcl, i64 64) ; 3 uses
  %.not933.i.i = icmp eq i64 %.sroa.0.0.i.i204, %.sroa.047.1590.i.i ; 2 uses
  br i1 %.not933.i.i, label %._crit_edge575.i.i, label %.lr.ph574.i.i

.thread164.loopexit.i.i281:                       ; preds = %._crit_edge.i.i279
  %lpad.loopexit258.i.i282 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

.thread164.loopexit.split-lp.loopexit.i.i285:     ; preds = %._crit_edge575.i.i
  %lpad.loopexit261.i.i286 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

.thread164.loopexit.split-lp.loopexit.split-lp.i.i230: ; preds = %.invoke4014, %.invoke4012, %.invoke.i.i229, %bb.kk, %bb.kc, %bb.ij, %bb.if
  %.sroa.11.1.ph.ph.ph.i.i231 = phi i64 [ 2049, %bb.if ], [ %.sroa.11.2.i.i298, %bb.ij ], [ 2049, %.invoke.i.i229 ], [ 2049, %.invoke4012 ], [ 2049, %bb.kc ], [ 2049, %.invoke4014 ], [ 2049, %bb.kk ]
  %.sroa.044.1.ph.ph.ph.i.i232 = phi ptr [ %i.bcf, %bb.if ], [ %.sroa.044.2.i.i299, %bb.ij ], [ %i.bcf, %.invoke.i.i229 ], [ %i.bcf, %.invoke4012 ], [ %i.bcf, %bb.kc ], [ %i.bcf, %.invoke4014 ], [ %i.bcf, %bb.kk ]
  %.sroa.1335.2.ph.ph.ph.i.i233 = phi i64 [ 0, %bb.if ], [ 0, %bb.ij ], [ %.sroa.0.0.i422.i.i219, %.invoke.i.i229 ], [ %.sroa.0.0.i422.i.i219, %.invoke4012 ], [ %.sroa.0.0.i422.i.i219, %bb.kc ], [ %.sroa.0.0.i422.i.i219, %.invoke4014 ], [ %.sroa.0.0.i422.i.i219, %bb.kk ]
  %.sroa.034.2.ph.ph.ph.i.i234 = phi ptr [ inttoptr (i64 8 to ptr), %bb.if ], [ inttoptr (i64 8 to ptr), %bb.ij ], [ %.sroa.10.0.i.i.i427938.i.i, %.invoke.i.i229 ], [ %.sroa.10.0.i.i.i427938.i.i, %.invoke4012 ], [ %.sroa.10.0.i.i.i427938.i.i, %bb.kc ], [ %.sroa.10.0.i.i.i427938.i.i, %.invoke4014 ], [ %.sroa.10.0.i.i.i427938.i.i, %bb.kk ]
  %.sroa.12.4.ph.ph.ph.i.i235 = phi i64 [ %.sroa.12.5.i.i290, %bb.if ], [ %.sroa.12.5.i.i290, %bb.ij ], [ %i.bal, %.invoke.i.i229 ], [ %.sroa.12.2586.i.i, %.invoke4012 ], [ %.sroa.12.2586.i.i, %bb.kc ], [ %.sroa.12.5.i.i290, %.invoke4014 ], [ %.sroa.12.2586.i.i, %bb.kk ]
  %.sroa.026.4.ph.ph.ph.i.i236 = phi ptr [ %.sroa.026.5.i.i291, %bb.if ], [ %.sroa.026.5.i.i291, %bb.ij ], [ %i.bbo, %.invoke.i.i229 ], [ %.sroa.026.2587.i.i, %.invoke4012 ], [ %.sroa.026.2587.i.i, %bb.kc ], [ %.sroa.026.5.i.i291, %.invoke4014 ], [ %.sroa.026.2587.i.i, %bb.kk ]
  %.sroa.14.5.ph.ph.ph.i.i237 = phi i64 [ %.sroa.14.7.i.i287, %bb.if ], [ %.sroa.14.7.i.i287, %bb.ij ], [ %i.bal, %.invoke.i.i229 ], [ %.sroa.14.3588.i.i, %.invoke4012 ], [ %.sroa.14.3588.i.i, %bb.kc ], [ %.sroa.14.7.i.i287, %.invoke4014 ], [ %.sroa.14.7.i.i287, %bb.kk ]
  %.sroa.016.5.ph.ph.ph.i.i238 = phi ptr [ %.sroa.016.7.i.i288, %bb.if ], [ %.sroa.016.7.i.i288, %bb.ij ], [ %.sroa.10.0.i.i.i.i.i210, %.invoke.i.i229 ], [ %.sroa.016.3589.i.i, %.invoke4012 ], [ %.sroa.016.3589.i.i, %bb.kc ], [ %.sroa.016.7.i.i288, %.invoke4014 ], [ %.sroa.016.7.i.i288, %bb.kk ]
  %lpad.loopexit.split-lp262.i.i239 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

bb.ic:                                            ; preds = %bb.io, %._crit_edge601.i.i
  %.sroa.11.1.ph160.i.i304 = phi i64 [ 0, %bb.io ], [ %.sroa.11.2.i.i298, %._crit_edge601.i.i ]
  %.sroa.044.1.ph161.i.i305 = phi ptr [ inttoptr (i64 4 to ptr), %bb.io ], [ %.sroa.044.2.i.i299, %._crit_edge601.i.i ]
  %.sroa.12.4.ph162.i.i306 = phi i64 [ 0, %bb.io ], [ %.sroa.12.5.i.i290, %._crit_edge601.i.i ]
  %.sroa.026.4.ph163.i.i307 = phi ptr [ inttoptr (i64 4 to ptr), %bb.io ], [ %.sroa.026.5.i.i291, %._crit_edge601.i.i ]
  %lpad.thr_comm.split-lp.i.i308 = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i.i309

bb.id:                                            ; preds = %._crit_edge585.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427938.i.i, i64 noundef %i.bbp, i64 noundef 8) #45, !noalias !8839
  %i.bcm = shl i64 %i.bnx, 6
  %i.bcn = lshr i64 %i.bnx, 1
  %i.bco = mul i64 %i.bcn, %i.bnx
  %.sroa.0.0.i448.i.i297 = tail call noundef i64 @llvm.umin.i64(i64 %i.bco, i64 %i.bcm) ; 5 uses
  %i.bcp = add nuw i64 %.sroa.0.0.i448.i.i297, 1  ; 2 uses
  %i.bcq = icmp ugt i64 %.sroa.0.0.i448.i.i297, 2048
  br i1 %i.bcq, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %bb.id
  %i.bcr = shl i64 %i.bcp, 4                      ; 5 uses
  %i.bcs = icmp ugt i64 %.sroa.0.0.i448.i.i297, 1152921504606846974
  %i.bct = icmp ugt i64 %i.bcr, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i379 = or i1 %i.bcs, %i.bct
  br i1 %or.cond.i.i.i.i.i449.i.i379, label %bb.if, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380: ; preds = %bb.ie
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8877
  %i.bcu = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bcr, i64 noundef range(i64 1, 9) 4) #45, !noalias !8877 ; 5 uses
  %i.bcv = icmp eq ptr %i.bcu, null
  br i1 %i.bcv, label %bb.if, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381"

bb.if:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380, %bb.ie
  %.sroa.4.0.ph.i.i.i455.i.i386 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380 ], [ 0, %bb.ie ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i386, i64 %i.bcr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i387 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.noexc456.i.i387:                                 ; preds = %bb.if
  unreachable

bb.ig:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381", %bb.id
  %.sroa.11.2.i.i298 = phi i64 [ %i.bcp, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381" ], [ 2049, %bb.id ] ; 4 uses
  %.sroa.044.2.i.i299 = phi ptr [ %i.bcu, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381" ], [ %i.bcf, %bb.id ] ; 4 uses
  %i.bcw = shl i64 %i.bnx, 2                      ; 12 uses
  %i.bcx = icmp ugt i64 %i.bnx, 4611686018427387903
  %i.bcy = icmp ugt i64 %i.bcw, 9223372036854775804
  %or.cond.i.i.i.i458.i.i300 = or i1 %i.bcx, %i.bcy
  br i1 %or.cond.i.i.i.i458.i.i300, label %bb.ij, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301: ; preds = %bb.ig
  %i.bcz = icmp eq i64 %i.bcw, 0                  ; 2 uses
  br i1 %i.bcz, label %bb.ik, label %bb.ih

bb.ih:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8885
  %i.bda = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bcw, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8885 ; 2 uses
  %i.bdb = icmp eq ptr %i.bda, null
  br i1 %i.bdb, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.bdc = ptrtoint ptr %i.bda to i64
  br label %bb.ik

bb.ij:                                            ; preds = %bb.ih, %bb.ig
  %.sroa.4.0.ph.i.i461.i.i377 = phi i64 [ 4, %bb.ih ], [ 0, %bb.ig ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i377, i64 %i.bcw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i378 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.noexc462.i.i378:                                 ; preds = %bb.ij
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i381": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i380
  %i.bdd = add nsw i64 %i.bcr, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bcu, i8 0, i64 %i.bdd, i1 false), !noalias !8890
  %i.bde = getelementptr i8, ptr %i.bcu, i64 %i.bcr ; 2 uses
  %scevgep11.i451.i.i382 = getelementptr i8, ptr %i.bcu, i64 %i.bdd
  store i32 0, ptr %scevgep11.i451.i.i382, align 4, !noalias !8890
  %.sroa.55.0..sroa_idx.i452.i.i383 = getelementptr i8, ptr %i.bde, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i383, align 4, !noalias !8890
  %.sroa.67.0..sroa_idx.i453.i.i384 = getelementptr i8, ptr %i.bde, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i384, align 4, !noalias !8890
  %i.bdf = icmp samesign ult i64 %.sroa.0.0.i448.i.i297, 576460752303423487
  tail call void @llvm.assume(i1 %i.bdf)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.bcf, i64 noundef 32784, i64 noundef 4) #45, !noalias !8839
  br label %bb.ig

bb.ik:                                            ; preds = %bb.ii, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301
  %.sroa.10.0.i.i460.i.i302 = phi i64 [ %i.bdc, %bb.ii ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i301 ]
  %i.bdg = inttoptr i64 %.sroa.10.0.i.i460.i.i302 to ptr ; 13 uses
  %i.bdh = icmp samesign ult i64 %i.bnx, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bdh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bdg) ]
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.bcw
  %i.bdj = icmp eq i64 %i.bnx, 0                  ; 3 uses
  br i1 %i.bdj, label %._crit_edge601.i.i, label %.lr.ph600.i.i.preheader

.lr.ph600.i.i.preheader:                          ; preds = %bb.ik
  %i.bdk = add nsw i64 %i.bcw, -4                 ; 2 uses
  %i.bdl = lshr exact i64 %i.bdk, 2
  %i.bdm = add nuw nsw i64 %i.bdl, 1              ; 2 uses
  %min.iters.check3883 = icmp ult i64 %i.bdk, 28
  br i1 %min.iters.check3883, label %.lr.ph600.i.i.preheader4281, label %vector.ph3884

vector.ph3884:                                    ; preds = %.lr.ph600.i.i.preheader
  %n.vec3885 = and i64 %i.bdm, 9223372036854775800 ; 4 uses
  %i.bdn = trunc i64 %n.vec3885 to i32
  %i.bdo = shl i64 %n.vec3885, 2
  %i.bdp = getelementptr i8, ptr %i.bdg, i64 %i.bdo
  br label %vector.body3886

vector.body3886:                                  ; preds = %vector.body3886, %vector.ph3884
  %index3887 = phi i64 [ 0, %vector.ph3884 ], [ %index.next3891, %vector.body3886 ] ; 2 uses
  %vec.ind3888 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3884 ], [ %vec.ind.next3892, %vector.body3886 ] ; 3 uses
  %step.add3889 = add <4 x i32> %vec.ind3888, splat (i32 4)
  %i.bdq = shl i64 %index3887, 2
  %next.gep3890 = getelementptr i8, ptr %i.bdg, i64 %i.bdq ; 2 uses
  %i.bdr = getelementptr i8, ptr %next.gep3890, i64 16
  store <4 x i32> %vec.ind3888, ptr %next.gep3890, align 4, !noalias !8839
  store <4 x i32> %step.add3889, ptr %i.bdr, align 4, !noalias !8839
  %index.next3891 = add nuw i64 %index3887, 8     ; 2 uses
  %vec.ind.next3892 = add <4 x i32> %vec.ind3888, splat (i32 8)
  %i.bds = icmp eq i64 %index.next3891, %n.vec3885
  br i1 %i.bds, label %middle.block3893, label %vector.body3886, !llvm.loop !8893

middle.block3893:                                 ; preds = %vector.body3886
  %cmp.n3894 = icmp eq i64 %i.bdm, %n.vec3885
  br i1 %cmp.n3894, label %._crit_edge601.i.i, label %.lr.ph600.i.i.preheader4281

.lr.ph600.i.i.preheader4281:                      ; preds = %.lr.ph600.i.i.preheader, %middle.block3893
  %.sroa.047.2598.i.i.ph = phi i32 [ 0, %.lr.ph600.i.i.preheader ], [ %i.bdn, %middle.block3893 ]
  %.sroa.0135.0597.i.i.ph = phi ptr [ %i.bdg, %.lr.ph600.i.i.preheader ], [ %i.bdp, %middle.block3893 ]
  br label %.lr.ph600.i.i

.lr.ph600.i.i:                                    ; preds = %.lr.ph600.i.i.preheader4281, %.lr.ph600.i.i
  %.sroa.047.2598.i.i = phi i32 [ %i.bdt, %.lr.ph600.i.i ], [ %.sroa.047.2598.i.i.ph, %.lr.ph600.i.i.preheader4281 ] ; 2 uses
  %.sroa.0135.0597.i.i = phi ptr [ %.sroa.0135.1.i.i303, %.lr.ph600.i.i ], [ %.sroa.0135.0597.i.i.ph, %.lr.ph600.i.i.preheader4281 ] ; 2 uses
  %.sroa.0135.1.i.i303 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0597.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2598.i.i, ptr %.sroa.0135.0597.i.i, align 4, !noalias !8839
  %i.bdt = add i32 %.sroa.047.2598.i.i, 1
  %i.bdu = icmp eq ptr %.sroa.0135.1.i.i303, %i.bdi
  br i1 %i.bdu, label %._crit_edge601.i.i, label %.lr.ph600.i.i, !llvm.loop !8894

._crit_edge601.i.i:                               ; preds = %.lr.ph600.i.i, %middle.block3893, %bb.ik
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i288) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i291) ]
  %i.bdv = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17he38f0c1a5f667e92E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i288, i64 noundef %.sroa.14.7.i.i287, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i291, i64 noundef %.sroa.12.5.i.i290, ptr noalias noundef nonnull align 4 %i.bai, i64 noundef %.sroa.0.0.i.i204, ptr noalias noundef nonnull align 4 %i.bdg, i64 noundef %i.bnx, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i299, i64 noundef %.sroa.11.2.i.i298, i64 noundef %i.bnx, i64 noundef %.sroa.0.0.i.i204, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i297)
          to label %bb.il unwind label %bb.ic, !noalias !8839 ; 3 uses

bb.il:                                            ; preds = %._crit_edge601.i.i
  %i.bdw = shl nuw nsw i64 %.sroa.11.2.i.i298, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i299, i64 noundef %i.bdw, i64 noundef 4) #45, !noalias !8839
  %i.bdx = icmp eq i64 %.sroa.12.5.i.i290, 0
  br i1 %i.bdx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i319"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i319": ; preds = %bb.il
  %i.bdy = shl nuw nsw i64 %.sroa.12.5.i.i290, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i291, i64 noundef %i.bdy, i64 noundef 4) #45, !noalias !8839
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i319", %bb.il
  br i1 %i.bcz, label %bb.iq, label %bb.im

bb.im:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i320
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8895
  %i.bdz = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bcw, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !8895 ; 2 uses
  %i.bea = icmp eq ptr %i.bdz, null
  br i1 %i.bea, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.beb = ptrtoint ptr %i.bdz to i64
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bcw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc472.i.i376 unwind label %bb.ic, !noalias !8839

end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

._crit_edge618.loopexit.i.i:                      ; preds = %bb.jt, %.noexc.i.us.i374
  %.sroa.043.2.lcssa943948.i892901.i = phi i64 [ %.sroa.043.2.lcssa943948.i.i, %.noexc.i.us.i374 ], [ %i.bmb, %bb.jt ]
  %i.bjd = phi ptr [ %i.bir, %.noexc.i.us.i374 ], [ %i.bgq, %bb.jt ]
  %.us-phi445.i = phi i32 [ %.sroa.097.0944947.i.i, %.noexc.i.us.i374 ], [ %.sroa.089.1.i.i343, %bb.jt ] ; 2 uses
  %.pre.i.i345 = zext i32 %.us-phi445.i to i64
  br label %._crit_edge618.i.i

._crit_edge618.i.i:                               ; preds = %._crit_edge618.loopexit.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.thread.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.i
  %i.bje = phi ptr [ %i.bjd, %._crit_edge618.loopexit.i.i ], [ %i.bir, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.i ], [ %i.bgq, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.thread.i ]
  %.sroa.043.2.lcssa943948.i893.i = phi i64 [ %.sroa.043.2.lcssa943948.i892901.i, %._crit_edge618.loopexit.i.i ], [ %.sroa.043.2.lcssa943948.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.i ], [ %i.bmb, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.thread.i ]
  %.pre-phi.i.i346 = phi i64 [ %.pre.i.i345, %._crit_edge618.loopexit.i.i ], [ %i.bis, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.i ], [ %i.bgs, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.thread.i ] ; 3 uses
  %.sroa.089.0.lcssa.i.i347 = phi i32 [ %.us-phi445.i, %._crit_edge618.loopexit.i.i ], [ %.sroa.097.0944947.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.i ], [ %.sroa.097.0.i.i332, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h58c774319db6d717E.exit249.i.thread.i ]
  store i32 %.sroa.089.0.lcssa.i.i347, ptr %i.bje, align 4, !noalias !8839
  %i.bjf = icmp samesign ugt i64 %i.bnx, %.pre-phi.i.i346
  br i1 %i.bjf, label %bb.jp, label %.invoke1177.i.i

bb.jp:                                            ; preds = %._crit_edge618.i.i
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bed, i64 %.pre-phi.i.i346 ; 2 uses
  %i.bjh = load i32, ptr %i.bjg, align 4, !noalias !8839, !noundef !4
  %i.bji = icmp eq i32 %i.bjh, -1
  br i1 %i.bji, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  store i32 %.sroa.084.0621.i.i, ptr %i.bjg, align 4, !noalias !8839
  %i.bjj = add i32 %.sroa.084.0621.i.i, 1
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.sroa.084.1.i.i348 = phi i32 [ %i.bjj, %bb.jq ], [ %.sroa.084.0621.i.i, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !8839
  %i.bjk = icmp ult i64 %.sroa.0137.1623.i.i, %.sroa.0.0.i.i204 ; 2 uses
  %i.bjl = zext i1 %i.bjk to i64
  %.sroa.0137.1.i.i349 = add nuw i64 %.sroa.0137.1623.i.i, %i.bjl
  br i1 %i.bjk, label %bb.jn, label %bb.ir

.lr.ph617.i.i:                                    ; preds = %.lr.ph617.i.i.preheader, %bb.jt
  %.sroa.0141.1616.i.i = phi i64 [ %.sroa.0141.1.i.i344, %bb.jt ], [ 1, %.lr.ph617.i.i.preheader ] ; 3 uses
  %.sroa.089.0615.i.i = phi i32 [ %.sroa.089.1.i.i343, %bb.jt ], [ %.sroa.097.0.i.i332, %.lr.ph617.i.i.preheader ]
  %.sroa.093.0614.i.i = phi float [ %.sroa.093.1.i.i342, %bb.jt ], [ %i.biv, %.lr.ph617.i.i.preheader ] ; 2 uses
  %.sroa.0141.0613.i.i = phi i64 [ %.sroa.0141.1616.i.i, %bb.jt ], [ 0, %.lr.ph617.i.i.preheader ] ; 3 uses
  %i.bjm = icmp samesign ult i64 %.sroa.0141.0613.i.i, %i.bnx
  br i1 %i.bjm, label %bb.js, label %.invoke1177.i.i

bb.js:                                            ; preds = %.lr.ph617.i.i
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bdg, i64 %.sroa.0141.0613.i.i ; 2 uses
  %i.bjo = load i32, ptr %i.bjn, align 4, !noalias !8839, !noundef !4
  %i.bjp = zext i32 %i.bjo to i64                 ; 3 uses
  %i.bjq = icmp ugt i64 %.sroa.14.7.i.i287, %i.bjp
  br i1 %i.bjq, label %.noexc.i.i337, label %.invoke1177.i.i

.noexc.i.i337:                                    ; preds = %bb.js
  %i.bjr = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.016.7.i.i288, i64 %i.bjp ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !8957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(2832) %i.w, i64 2832, i1 false), !alias.scope !8962, !noalias !8839
  %i.bjs = load i64, ptr %i.beh, align 8, !alias.scope !8966, !noalias !8839, !noundef !4
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjr, i64 2816 ; 2 uses
  %i.bju = load i64, ptr %i.bjt, align 8, !alias.scope !8969, !noalias !8839, !noundef !4
  %i.bjv = add i64 %i.bju, %i.bjs
  store i64 %i.bjv, ptr %i.beh, align 8, !alias.scope !8972, !noalias !8839
  %bound03898 = icmp ult ptr %i.v, %i.bjt
  %bound13899 = icmp ult ptr %i.bjr, %i.beh
  %found.conflict3900 = and i1 %bound03898, %bound13899
  br i1 %found.conflict3900, label %scalar.ph3901, label %vector.body3903

vector.body3903:                                  ; preds = %.noexc.i.i337, %vector.body3903
  %index3904 = phi i64 [ %index.next3909.1, %vector.body3903 ], [ 0, %.noexc.i.i337 ] ; 4 uses
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index3904 ; 3 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 16 ; 2 uses
  %wide.load3905 = load <4 x i32>, ptr %i.bjw, align 8, !alias.scope !8975, !noalias !8978
  %wide.load3906 = load <4 x i32>, ptr %i.bjx, align 8, !alias.scope !8975, !noalias !8978
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %index3904 ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 16
  %wide.load3907 = load <4 x i32>, ptr %i.bjy, align 4, !alias.scope !8980, !noalias !8839
  %wide.load3908 = load <4 x i32>, ptr %i.bjz, align 4, !alias.scope !8980, !noalias !8839
  %i.bka = add <4 x i32> %wide.load3907, %wide.load3905
  %i.bkb = add <4 x i32> %wide.load3908, %wide.load3906
  store <4 x i32> %i.bka, ptr %i.bjw, align 8, !alias.scope !8975, !noalias !8978
  store <4 x i32> %i.bkb, ptr %i.bjx, align 8, !alias.scope !8975, !noalias !8978
  %index.next3909 = or disjoint i64 %index3904, 8 ; 2 uses
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index.next3909 ; 3 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 16 ; 2 uses
  %wide.load3905.1 = load <4 x i32>, ptr %i.bkc, align 8, !alias.scope !8975, !noalias !8978
  %wide.load3906.1 = load <4 x i32>, ptr %i.bkd, align 8, !alias.scope !8975, !noalias !8978
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %index.next3909 ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 16
  %wide.load3907.1 = load <4 x i32>, ptr %i.bke, align 4, !alias.scope !8980, !noalias !8839
  %wide.load3908.1 = load <4 x i32>, ptr %i.bkf, align 4, !alias.scope !8980, !noalias !8839
  %i.bkg = add <4 x i32> %wide.load3907.1, %wide.load3905.1
  %i.bkh = add <4 x i32> %wide.load3908.1, %wide.load3906.1
  store <4 x i32> %i.bkg, ptr %i.bkc, align 8, !alias.scope !8975, !noalias !8978
  store <4 x i32> %i.bkh, ptr %i.bkd, align 8, !alias.scope !8975, !noalias !8978
  %index.next3909.1 = add nuw nsw i64 %index3904, 16 ; 2 uses
  %i.bki = icmp eq i64 %index.next3909.1, 704
  br i1 %i.bki, label %.noexc240.i.i338, label %vector.body3903, !llvm.loop !8981

scalar.ph3901:                                    ; preds = %.noexc.i.i337, %scalar.ph3901
  %.sroa.01.0.i263612.i.i = phi i64 [ %i.blb, %scalar.ph3901 ], [ 0, %.noexc.i.i337 ] ; 6 uses
  %i.bkj = or disjoint i64 %.sroa.01.0.i263612.i.i, 1 ; 2 uses
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.01.0.i263612.i.i ; 2 uses
  %i.bkl = load i32, ptr %i.bkk, align 8, !noalias !8839, !noundef !4
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %.sroa.01.0.i263612.i.i
  %i.bkn = load i32, ptr %i.bkm, align 4, !noalias !8839, !noundef !4
  %i.bko = add i32 %i.bkn, %i.bkl
  store i32 %i.bko, ptr %i.bkk, align 8, !noalias !8839
  %i.bkp = or disjoint i64 %.sroa.01.0.i263612.i.i, 2 ; 2 uses
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bkj ; 2 uses
  %i.bkr = load i32, ptr %i.bkq, align 4, !noalias !8839, !noundef !4
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.bkj
  %i.bkt = load i32, ptr %i.bks, align 4, !noalias !8839, !noundef !4
  %i.bku = add i32 %i.bkt, %i.bkr
  store i32 %i.bku, ptr %i.bkq, align 4, !noalias !8839
  %i.bkv = or disjoint i64 %.sroa.01.0.i263612.i.i, 3 ; 2 uses
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bkp ; 2 uses
  %i.bkx = load i32, ptr %i.bkw, align 8, !noalias !8839, !noundef !4
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.bkp
  %i.bkz = load i32, ptr %i.bky, align 4, !noalias !8839, !noundef !4
  %i.bla = add i32 %i.bkz, %i.bkx
  store i32 %i.bla, ptr %i.bkw, align 8, !noalias !8839
  %i.blb = add nuw nsw i64 %.sroa.01.0.i263612.i.i, 4 ; 2 uses
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bkv ; 2 uses
  %i.bld = load i32, ptr %i.blc, align 4, !noalias !8839, !noundef !4
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %i.bkv
  %i.blf = load i32, ptr %i.ble, align 4, !noalias !8839, !noundef !4
  %i.blg = add i32 %i.blf, %i.bld
  store i32 %i.blg, ptr %i.blc, align 4, !noalias !8839
  %exitcond865.not.i.i.3 = icmp eq i64 %i.blb, 704
  br i1 %exitcond865.not.i.i.3, label %.noexc240.i.i338, label %scalar.ph3901, !llvm.loop !8982

.noexc240.i.i338:                                 ; preds = %vector.body3903, %scalar.ph3901
  %i.blh = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h3fde20e01ca068a5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.v)
          to label %.noexc242.i.i341 unwind label %.loopexit.split-lp.thread.i.i339, !noalias !8839

.noexc242.i.i341:                                 ; preds = %.noexc240.i.i338
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bjr, i64 2824
  %i.blj = load float, ptr %i.bli, align 8, !alias.scope !8983, !noalias !8839, !noundef !4
  %i.blk = fsub float %i.blh, %i.blj              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !8957
  %i.bll = fcmp olt float %i.blk, %.sroa.093.0614.i.i
  br i1 %i.bll, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.ju, %.noexc242.i.i341
  %.sroa.093.1.i.i342 = phi float [ %i.blk, %bb.ju ], [ %.sroa.093.0614.i.i, %.noexc242.i.i341 ]
  %.sroa.089.1.i.i343 = phi i32 [ %i.blo, %bb.ju ], [ %.sroa.089.0615.i.i, %.noexc242.i.i341 ] ; 2 uses
  %i.blm = icmp samesign ult i64 %.sroa.0141.1616.i.i, %i.bdv ; 2 uses
  %i.bln = zext i1 %i.blm to i64
  %.sroa.0141.1.i.i344 = add nuw nsw i64 %.sroa.0141.1616.i.i, %i.bln
  br i1 %i.blm, label %.lr.ph617.i.i, label %._crit_edge618.loopexit.i.i

bb.ju:                                            ; preds = %.noexc242.i.i341
  %i.blo = load i32, ptr %i.bjn, align 4, !noalias !8839, !noundef !4
  br label %bb.jt

bb.jv:                                            ; preds = %.lr.ph608.i.i
  %i.blp = getelementptr inbounds nuw [2 x i8], ptr %i.ark, i64 %.sroa.043.2606.i.i
  %i.blq = load i16, ptr %i.blp, align 2, !alias.scope !8986, !noalias !8989, !noundef !4 ; 2 uses
  %i.blr = zext i16 %i.blq to i64                 ; 2 uses
  %i.bls = icmp ult i16 %i.blq, 704
  br i1 %i.bls, label %bb.jw, label %.invoke1177.i.i

.invoke1177.i.i:                                  ; preds = %._crit_edge618.i.i, %._crit_edge609.thread.i.i, %._crit_edge609.i.i, %bb.jv, %.lr.ph608.i.i, %bb.js, %.lr.ph617.i.i, %bb.jo, %.lr.ph617.i.us.i
  %i.blt = phi i64 [ %i.bjp, %bb.js ], [ %i.biz, %bb.jo ], [ %.sroa.043.2606.i.i, %.lr.ph608.i.i ], [ %i.bnx, %.lr.ph617.i.us.i ], [ %.sroa.0141.0613.i.i, %.lr.ph617.i.i ], [ %i.blr, %bb.jv ], [ %i.bgx, %._crit_edge609.thread.i.i ], [ %i.bgs, %._crit_edge609.i.i ], [ %.pre-phi.i.i346, %._crit_edge618.i.i ]
  %i.blu = phi i64 [ %.sroa.14.7.i.i287, %bb.js ], [ %.sroa.14.7.i.i287, %bb.jo ], [ %2, %.lr.ph608.i.i ], [ %i.bnx, %.lr.ph617.i.us.i ], [ %i.bnx, %.lr.ph617.i.i ], [ 704, %bb.jv ], [ %.sroa.14.7.i.i287, %._crit_edge609.thread.i.i ], [ %.sroa.14.7.i.i287, %._crit_edge609.i.i ], [ %i.bnx, %._crit_edge618.i.i ]
  %i.blv = phi ptr [ @902, %bb.js ], [ @902, %bb.jo ], [ @903, %.lr.ph608.i.i ], [ @901, %.lr.ph617.i.us.i ], [ @901, %.lr.ph617.i.i ], [ @1287, %bb.jv ], [ @899, %._crit_edge609.thread.i.i ], [ @899, %._crit_edge609.i.i ], [ @900, %._crit_edge618.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.blt, i64 noundef %i.blu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.blv) #46
          to label %.cont1178.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i323, !noalias !8839

.cont1178.i.i:                                    ; preds = %.invoke1177.i.i
  unreachable

bb.jw:                                            ; preds = %bb.jv
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.blr ; 2 uses
  %i.blx = load i32, ptr %i.blw, align 4, !alias.scope !8990, !noalias !8839, !noundef !4
  %i.bly = add i32 %i.blx, 1
  store i32 %i.bly, ptr %i.blw, align 4, !alias.scope !8990, !noalias !8839
  %i.blz = load i64, ptr %i.bee, align 8, !alias.scope !8993, !noalias !8839, !noundef !4
  %i.bma = add i64 %i.blz, 1                      ; 2 uses
  store i64 %i.bma, ptr %i.bee, align 8, !alias.scope !8996, !noalias !8839
  %i.bmb = add nuw i64 %.sroa.043.2606.i.i, 1     ; 4 uses
  %i.bmc = add nuw nsw i64 %i.bgo, 1
  %exitcond863.not.i.i = icmp eq i64 %i.bgo, %i.bgm
  br i1 %exitcond863.not.i.i, label %._crit_edge609.i.i, label %.lr.ph608.i.i

.loopexit.split-lp.i.i325:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i323, %.loopexit.split-lp.loopexit.i.i335, %bb.ip
  %.sroa.1152.2.i.i326 = phi i64 [ 0, %bb.ip ], [ %i.bnx, %.loopexit.split-lp.loopexit.split-lp.i.i323 ], [ %i.bnx, %.loopexit.split-lp.loopexit.i.i335 ] ; 2 uses
  %.sroa.051.2.i.i327 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ip ], [ %i.bdg, %.loopexit.split-lp.loopexit.split-lp.i.i323 ], [ %i.bdg, %.loopexit.split-lp.loopexit.i.i335 ] ; 2 uses
  %.sroa.14.6.i.i328 = phi i64 [ 0, %bb.ip ], [ %.sroa.14.7.i.i287, %.loopexit.split-lp.loopexit.split-lp.i.i323 ], [ %.sroa.14.7.i.i287, %.loopexit.split-lp.loopexit.i.i335 ] ; 2 uses
  %.sroa.016.6.i.i329 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ip ], [ %.sroa.016.7.i.i288, %.loopexit.split-lp.loopexit.split-lp.i.i323 ], [ %.sroa.016.7.i.i288, %.loopexit.split-lp.loopexit.i.i335 ] ; 2 uses
  %.pn.i.i330 = phi { ptr, i32 } [ %i.bec, %bb.ip ], [ %lpad.loopexit.split-lp254.i.i324, %.loopexit.split-lp.loopexit.split-lp.i.i323 ], [ %lpad.loopexit253.i.i336, %.loopexit.split-lp.loopexit.i.i335 ] ; 2 uses
  br i1 %i.bdj, label %.thread131.i.i309, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i": ; preds = %.loopexit.split-lp.i.i325, %.loopexit.split-lp.thread.i.i339
  %.pn958.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i340, %.loopexit.split-lp.thread.i.i339 ], [ %.pn.i.i330, %.loopexit.split-lp.i.i325 ]
  %.sroa.016.6957.i.i = phi ptr [ %.sroa.016.7.i.i288, %.loopexit.split-lp.thread.i.i339 ], [ %.sroa.016.6.i.i329, %.loopexit.split-lp.i.i325 ]
  %.sroa.14.6956.i.i = phi i64 [ %.sroa.14.7.i.i287, %.loopexit.split-lp.thread.i.i339 ], [ %.sroa.14.6.i.i328, %.loopexit.split-lp.i.i325 ]
  %.sroa.051.2955.i.i = phi ptr [ %i.bdg, %.loopexit.split-lp.thread.i.i339 ], [ %.sroa.051.2.i.i327, %.loopexit.split-lp.i.i325 ]
  %.sroa.1152.2954.i.i = phi i64 [ %i.bnx, %.loopexit.split-lp.thread.i.i339 ], [ %.sroa.1152.2.i.i326, %.loopexit.split-lp.i.i325 ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bed, i64 noundef %i.bcw, i64 noundef 4) #45, !noalias !8839
  br label %.thread131.i.i309

._crit_edge575.i.i:                               ; preds = %bb.kz, %.split.i.i273
  %.sroa.043.3.lcssa.i.i284 = phi i64 [ %.sroa.043.0591.i.i, %.split.i.i273 ], [ %.sroa.043.4.lcssa.i.i280, %bb.kz ]
  %i.bmd = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17he38f0c1a5f667e92E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427938.i.i, i64 noundef %.sroa.0.0.i422.i.i219, ptr noalias noundef nonnull align 4 %i.aa, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.y, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.z, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.bcf, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i275, i64 noundef %.sroa.0.0.i447.i.i275, i64 noundef 64, i64 noundef 2048)
          to label %bb.jx unwind label %.thread164.loopexit.split-lp.loopexit.i.i285, !noalias !8839 ; 5 uses

bb.jx:                                            ; preds = %._crit_edge575.i.i
  %i.bme = add i64 %i.bmd, %.sroa.0.0596.i.i      ; 3 uses
  %i.bmf = icmp ult i64 %.sroa.012.0595.i.i, %i.bme
  br i1 %i.bmf, label %bb.jy, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i"

bb.jy:                                            ; preds = %bb.jx
  %i.bmg = icmp eq i64 %.sroa.012.0595.i.i, 0     ; 2 uses
  %..sroa.012.0.i.i391 = select i1 %i.bmg, i64 %i.bme, i64 %.sroa.012.0595.i.i
  br label %bb.jz

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i", %bb.jx
  %.sroa.14.7.i.i287 = phi i64 [ %.sroa.14.3588.i.i, %bb.jx ], [ %.sroa.066.1.i.i392, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.066.1.i.i392, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i" ] ; 23 uses
  %.sroa.016.7.i.i288 = phi ptr [ %.sroa.016.3589.i.i, %bb.jx ], [ %.sroa.10.0.i.i.i521.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.10.0.i.i.i521.i.i, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i289 = phi i64 [ %.sroa.012.0595.i.i, %bb.jx ], [ %.sroa.066.1.i.i392, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i" ], [ %.sroa.066.1.i.i392, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i" ]
  %i.bmh = add i64 %i.bmd, %.sroa.018.0594.i.i    ; 3 uses
  %i.bmi = icmp ult i64 %.sroa.023.0593.i.i, %i.bmh
  br i1 %i.bmi, label %bb.kf, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i"

bb.jz:                                            ; preds = %bb.jz, %bb.jy
  %.sroa.066.1.i.i392 = phi i64 [ %..sroa.012.0.i.i391, %bb.jy ], [ %i.bmk, %bb.jz ] ; 13 uses
  %i.bmj = icmp ult i64 %.sroa.066.1.i.i392, %i.bme
  %i.bmk = shl i64 %.sroa.066.1.i.i392, 1
  br i1 %i.bmj, label %bb.jz, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.bml = mul i64 %.sroa.066.1.i.i392, 2832      ; 4 uses
  %or.cond.i.i.i.i.i518.i.i = icmp ugt i64 %.sroa.066.1.i.i392, 3256840408493918
  br i1 %or.cond.i.i.i.i.i518.i.i, label %bb.kc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i: ; preds = %bb.ka
  %i.bmm = icmp eq i64 %i.bml, 0
  br i1 %i.bmm, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i", label %bb.kb

bb.kb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !8999
  %i.bmn = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bml, i64 noundef range(i64 1, 9) 8) #45, !noalias !8999 ; 2 uses
  %i.bmo = icmp eq ptr %i.bmn, null
  br i1 %i.bmo, label %bb.kc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i"

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %.sroa.4.0.ph.i.i.i533.i.i = phi i64 [ 8, %bb.kb ], [ 0, %bb.ka ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i, i64 %i.bml, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc534.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.noexc534.i.i:                                    ; preds = %bb.kc
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i": ; preds = %bb.kb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i
  %.sroa.10.0.i.i.i521.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %i.bmn, %bb.kb ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %.sroa.066.1.i.i392, %bb.kb ]
  %i.bmp = icmp samesign ule i64 %.sroa.066.1.i.i392, %.sroa.4.0.i.i.i522.i.i
  tail call void @llvm.assume(i1 %i.bmp)
  %i.bmq = icmp samesign ugt i64 %.sroa.066.1.i.i392, 1
  br i1 %i.bmq, label %.lr.ph.i.i.i528.i.i.preheader, label %.loopexit257.i.i393

.lr.ph.i.i.i528.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i"
  %i.bmr = add nsw i64 %.sroa.066.1.i.i392, -1    ; 2 uses
  %i.bms = add nsw i64 %.sroa.066.1.i.i392, -2
  %xtraiter4752 = and i64 %i.bmr, 7               ; 3 uses
  %i.bmt = icmp ult i64 %i.bms, 7
  br i1 %i.bmt, label %.lr.ph.i.i.i528.i.i.epil.preheader, label %.lr.ph.i.i.i528.i.i.preheader.new

.lr.ph.i.i.i528.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i528.i.i.preheader
  %unroll_iter4757 = and i64 %i.bmr, -8
  br label %.lr.ph.i.i.i528.i.i

.lr.ph.i.i.i528.i.i:                              ; preds = %.lr.ph.i.i.i528.i.i, %.lr.ph.i.i.i528.i.i.preheader.new
  %.sroa.0.08.i.i.i529.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %i.bnb, %.lr.ph.i.i.i528.i.i ] ; 17 uses
  %niter4758 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %niter4758.next.7, %.lr.ph.i.i.i528.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !9007
  %i.bmu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmu, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !9007
  %i.bmv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmv, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !9007
  %i.bmw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmw, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !9007
  %i.bmx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmx, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !9007
  %i.bmy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmy, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !9007
  %i.bmz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmz, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !9007
  %i.bna = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bna, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !9007
  %i.bnb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22656 ; 3 uses
  %niter4758.next.7 = add i64 %niter4758, 8       ; 2 uses
  %niter4758.ncmp.7 = icmp eq i64 %niter4758.next.7, %unroll_iter4757
  br i1 %niter4758.ncmp.7, label %.loopexit257.i.i393.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i

.loopexit257.i.i393.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i
  %lcmp.mod4754.not = icmp eq i64 %xtraiter4752, 0
  br i1 %lcmp.mod4754.not, label %.loopexit257.i.i393, label %.lr.ph.i.i.i528.i.i.epil.preheader

.lr.ph.i.i.i528.i.i.epil.preheader:               ; preds = %.loopexit257.i.i393.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.preheader
  %.sroa.0.08.i.i.i529.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader ], [ %i.bnb, %.loopexit257.i.i393.loopexit.unr-lcssa ]
  %lcmp.mod4756 = icmp ne i64 %xtraiter4752, 0
  call void @llvm.assume(i1 %lcmp.mod4756)
  br label %.lr.ph.i.i.i528.i.i.epil

.lr.ph.i.i.i528.i.i.epil:                         ; preds = %.lr.ph.i.i.i528.i.i.epil, %.lr.ph.i.i.i528.i.i.epil.preheader
  %.sroa.0.08.i.i.i529.i.i.epil = phi ptr [ %i.bnc, %.lr.ph.i.i.i528.i.i.epil ], [ %.sroa.0.08.i.i.i529.i.i.epil.init, %.lr.ph.i.i.i528.i.i.epil.preheader ] ; 3 uses
  %epil.iter4753 = phi i64 [ %epil.iter4753.next, %.lr.ph.i.i.i528.i.i.epil ], [ 0, %.lr.ph.i.i.i528.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i.epil, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !9007
  %i.bnc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2832 ; 2 uses
  %epil.iter4753.next = add i64 %epil.iter4753, 1 ; 2 uses
  %epil.iter4753.cmp.not = icmp eq i64 %epil.iter4753.next, %xtraiter4752
  br i1 %epil.iter4753.cmp.not, label %.loopexit257.i.i393, label %.lr.ph.i.i.i528.i.i.epil, !llvm.loop !9010

.loopexit257.i.i393:                              ; preds = %.loopexit257.i.i393.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i" ], [ %i.bnb, %.loopexit257.i.i393.loopexit.unr-lcssa ], [ %i.bnc, %.lr.ph.i.i.i528.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i526.i.i, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !9007
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3589.i.i) ]
  %.not227.i.i394 = icmp ugt i64 %.sroa.012.0595.i.i, %.sroa.14.3588.i.i
  br i1 %.not227.i.i394, label %bb.ke, label %bb.kd, !prof !2174

bb.kd:                                            ; preds = %.loopexit257.i.i393
  br i1 %i.bmg, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i", label %.lr.ph.preheader.i.i.i395

.lr.ph.preheader.i.i.i395:                        ; preds = %bb.kd
  %i.bnd = mul nuw nsw i64 %.sroa.012.0595.i.i, 2832
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i, ptr nonnull readonly align 8 %.sroa.016.3589.i.i, i64 %i.bnd, i1 false), !alias.scope !9011, !noalias !8839
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i"

bb.ke:                                            ; preds = %.loopexit257.i.i393
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0595.i.i, i64 noundef %.sroa.14.3588.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @912) #46
          to label %bb.jf unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i", !noalias !8839

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i395, %bb.kd
  %i.bne = icmp eq i64 %.sroa.14.3588.i.i, 0
  br i1 %i.bne, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i"
  %i.bnf = mul nuw nsw i64 %.sroa.14.3588.i.i, 2832
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.3589.i.i, i64 noundef %i.bnf, i64 noundef 8) #45, !noalias !8839
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i"

bb.kf:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i"
  %i.bng = icmp eq i64 %.sroa.023.0593.i.i, 0
  %..sroa.023.0.i.i388 = select i1 %i.bng, i64 %i.bmh, i64 %.sroa.023.0593.i.i
  br label %bb.kg

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i", %bb.kn, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i"
  %.sroa.12.5.i.i290 = phi i64 [ %.sroa.12.2586.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i" ], [ %.sroa.070.1.i.i389, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i389, %bb.kn ] ; 11 uses
  %.sroa.026.5.i.i291 = phi ptr [ %.sroa.026.2587.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i" ], [ %i.bns, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %i.bns, %bb.kn ] ; 11 uses
  %.sroa.023.1.i.i292 = phi i64 [ %.sroa.023.0593.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i" ], [ %.sroa.070.1.i.i389, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i389, %bb.kn ]
  %.not628.i.i = icmp eq i64 %i.bmd, 0
  br i1 %.not628.i.i, label %.preheader256.i.i293, label %.lr.ph580.preheader.i.i

.lr.ph580.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i"
  %reass.sub446.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i287, i64 %.sroa.0.0596.i.i)
  %i.bnh = add nuw nsw i64 %reass.sub446.i, 1
  %reass.sub447.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i290, i64 %.sroa.018.0594.i.i)
  %i.bni = add nuw nsw i64 %reass.sub447.i, 1
  br label %.lr.ph580.i.i

bb.kg:                                            ; preds = %bb.kg, %bb.kf
  %.sroa.070.1.i.i389 = phi i64 [ %..sroa.023.0.i.i388, %bb.kf ], [ %i.bnk, %bb.kg ] ; 9 uses
  %i.bnj = icmp ult i64 %.sroa.070.1.i.i389, %i.bmh
  %i.bnk = shl i64 %.sroa.070.1.i.i389, 1
  br i1 %i.bnj, label %bb.kg, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.bnl = shl i64 %.sroa.070.1.i.i389, 2         ; 5 uses
  %i.bnm = icmp ugt i64 %.sroa.070.1.i.i389, 4611686018427387903
  %i.bnn = icmp ugt i64 %i.bnl, 9223372036854775804
  %or.cond.i.i.i.i539.i.i = or i1 %i.bnm, %i.bnn
  br i1 %or.cond.i.i.i.i539.i.i, label %bb.kk, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i: ; preds = %bb.kh
  %i.bno = icmp eq i64 %i.bnl, 0
  br i1 %i.bno, label %bb.kl, label %bb.ki

bb.ki:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9018
  %i.bnp = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bnl, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9018 ; 2 uses
  %i.bnq = icmp eq ptr %i.bnp, null
  br i1 %i.bnq, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bnr = ptrtoint ptr %i.bnp to i64
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki, %bb.kh
  %.sroa.4.0.ph.i.i542.i.i = phi i64 [ 4, %bb.ki ], [ 0, %bb.kh ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i, i64 %i.bnl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc543.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.noexc543.i.i:                                    ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  %.sroa.10.0.i.i541.i.i = phi i64 [ %i.bnr, %bb.kj ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i ]
  %i.bns = inttoptr i64 %.sroa.10.0.i.i541.i.i to ptr ; 5 uses
  %i.bnt = icmp samesign ult i64 %.sroa.070.1.i.i389, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bnt)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bns) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2587.i.i) ]
  %.not229.i.i390 = icmp ugt i64 %.sroa.023.0593.i.i, %.sroa.12.2586.i.i
  br i1 %.not229.i.i390, label %bb.km, label %bb.kn, !prof !2174

bb.km:                                            ; preds = %bb.kl
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0593.i.i, i64 noundef %.sroa.12.2586.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @911) #46
          to label %bb.jf unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i", !noalias !8839

bb.kn:                                            ; preds = %bb.kl
  %i.bnu = shl nuw nsw i64 %.sroa.023.0593.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bns, ptr nonnull readonly align 4 %.sroa.026.2587.i.i, i64 %i.bnu, i1 false), !alias.scope !9023, !noalias !9027
  %i.bnv = icmp eq i64 %.sroa.12.2586.i.i, 0
  br i1 %i.bnv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i": ; preds = %bb.kn
  %i.bnw = shl nuw nsw i64 %.sroa.12.2586.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.2587.i.i, i64 noundef %i.bnw, i64 noundef 4) #45, !noalias !8839
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i"

.preheader256.i.i293:                             ; preds = %bb.kx, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i"
  %.sroa.018.1.lcssa.i.i294 = phi i64 [ %.sroa.018.0594.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i" ], [ %i.bpb, %bb.kx ]
  %.sroa.0.1.lcssa.i.i295 = phi i64 [ %.sroa.0.0596.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i" ], [ %i.bou, %bb.kx ]
  br i1 %.not933.i.i, label %._crit_edge585.i.i, label %.lr.ph584.i.i

.lr.ph584.i.i:                                    ; preds = %.preheader256.i.i293
  %11 = trunc i64 %.sroa.029.0592.i.i to i32
  br label %bb.ko

._crit_edge585.i.i:                               ; preds = %bb.kq, %.preheader256.i.i293
  %i.bnx = add i64 %i.bmd, %.sroa.029.0592.i.i    ; 23 uses
  %i.bny = add i64 %.sroa.047.1590.i.i, 64        ; 2 uses
  %i.bnz = icmp ult i64 %i.bny, %.sroa.0.0.i.i204
  %indvars.iv.next.i.i296 = add i64 %indvars.iv.i.i274, -64
  br i1 %i.bnz, label %.split.i.i273, label %bb.id

bb.ko:                                            ; preds = %bb.kq, %.lr.ph584.i.i
  %i.boa = phi i64 [ 1, %.lr.ph584.i.i ], [ %i.bol, %bb.kq ] ; 3 uses
  %.sroa.0133.0583.i.i = phi i64 [ 0, %.lr.ph584.i.i ], [ %i.boa, %bb.kq ] ; 2 uses
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0133.0583.i.i
  %i.boc = load i32, ptr %i.bob, align 4, !noalias !8839, !noundef !4 ; 2 uses
  %i.bod = zext i32 %i.boc to i64                 ; 2 uses
  %i.boe = icmp ult i32 %i.boc, 64
  br i1 %i.boe, label %bb.kp, label %.invoke4014

bb.kp:                                            ; preds = %bb.ko
  %i.bof = or disjoint i64 %.sroa.0133.0583.i.i, %.sroa.047.1590.i.i ; 3 uses
  %i.bog = icmp ult i64 %i.bof, %.sroa.0.0.i.i204
  br i1 %i.bog, label %bb.kq, label %.invoke4014

bb.kq:                                            ; preds = %bb.kp
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bod
  %i.boi = load i32, ptr %i.boh, align 4, !noalias !8839, !noundef !4
  %i.boj = add i32 %i.boi, %11
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %i.bai, i64 %i.bof
  store i32 %i.boj, ptr %i.bok, align 4, !noalias !8839
  %i.bol = add nuw nsw i64 %i.boa, 1
  %exitcond860.not.i.i = icmp eq i64 %i.boa, %umax859.i.i
  br i1 %exitcond860.not.i.i, label %._crit_edge585.i.i, label %bb.ko

.lr.ph580.i.i:                                    ; preds = %bb.kx, %.lr.ph580.preheader.i.i
  %i.bom = phi i64 [ %i.bpe, %bb.kx ], [ 1, %.lr.ph580.preheader.i.i ] ; 6 uses
  %.sroa.0.1579.i.i = phi i64 [ %i.bou, %bb.kx ], [ %.sroa.0.0596.i.i, %.lr.ph580.preheader.i.i ] ; 3 uses
  %.sroa.018.1578.i.i = phi i64 [ %i.bpb, %bb.kx ], [ %.sroa.018.0594.i.i, %.lr.ph580.preheader.i.i ] ; 3 uses
  %.sroa.0131.0577.i.i = phi i64 [ %i.bom, %bb.kx ], [ 0, %.lr.ph580.preheader.i.i ] ; 2 uses
  %exitcond853.not.i.i = icmp eq i64 %i.bom, 65
  br i1 %exitcond853.not.i.i, label %.invoke4014, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph580.i.i
  %i.bon = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0131.0577.i.i ; 2 uses
  %i.boo = load i32, ptr %i.bon, align 4, !noalias !8839, !noundef !4
  %i.bop = zext i32 %i.boo to i64                 ; 4 uses
  %i.boq = icmp samesign ugt i64 %.sroa.0.0.i422.i.i219, %i.bop
  br i1 %i.boq, label %bb.kt, label %.invoke4014

bb.ks:                                            ; preds = %bb.ku
  %i.bor = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

bb.kt:                                            ; preds = %bb.kr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i288) ]
  %exitcond855.not.i.i = icmp eq i64 %i.bom, %i.bnh
  br i1 %exitcond855.not.i.i, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1579.i.i, i64 noundef %.sroa.14.7.i.i287, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #46
          to label %bb.jf unwind label %bb.ks, !noalias !8839

bb.kv:                                            ; preds = %bb.kt
  %i.bos = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427938.i.i, i64 %i.bop
  %i.bot = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.016.7.i.i288, i64 %.sroa.0.1579.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.bot, ptr noundef nonnull align 8 dereferenceable(2832) %i.bos, i64 2832, i1 false), !noalias !8839
  %i.bou = add nuw i64 %.sroa.0.1579.i.i, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i291) ]
  %exitcond857.not.i.i = icmp eq i64 %i.bom, %i.bni
  br i1 %exitcond857.not.i.i, label %.invoke4014, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bop
  %i.bow = load i32, ptr %i.bov, align 4, !noalias !8839, !noundef !4
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i291, i64 %.sroa.018.1578.i.i
  store i32 %i.bow, ptr %i.box, align 4, !noalias !8839
  %i.boy = load i32, ptr %i.bon, align 4, !noalias !8839, !noundef !4 ; 2 uses
  %i.boz = zext i32 %i.boy to i64                 ; 2 uses
  %i.bpa = icmp ult i32 %i.boy, 64
  br i1 %i.bpa, label %bb.kx, label %.invoke4014

bb.kx:                                            ; preds = %bb.kw
  %i.bpb = add nuw i64 %.sroa.018.1578.i.i, 1     ; 2 uses
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.boz
  %i.bpd = trunc nuw nsw i64 %.sroa.0131.0577.i.i to i32
  store i32 %i.bpd, ptr %i.bpc, align 4, !noalias !8839
  %i.bpe = add nuw nsw i64 %i.bom, 1
  %exitcond858.not.i.i = icmp eq i64 %i.bom, %i.bmd
  br i1 %exitcond858.not.i.i, label %.preheader256.i.i293, label %.lr.ph580.i.i

.invoke4014:                                      ; preds = %bb.kw, %bb.kv, %bb.kr, %.lr.ph580.i.i, %bb.kp, %bb.ko
  %i.bpf = phi i64 [ %i.bof, %bb.kp ], [ %i.bod, %bb.ko ], [ %i.boz, %bb.kw ], [ 64, %.lr.ph580.i.i ], [ %i.bop, %bb.kr ], [ %.sroa.018.1578.i.i, %bb.kv ]
  %i.bpg = phi i64 [ %.sroa.0.0.i.i204, %bb.kp ], [ 64, %bb.ko ], [ 64, %bb.kw ], [ 64, %.lr.ph580.i.i ], [ %.sroa.0.0.i422.i.i219, %bb.kr ], [ %.sroa.12.5.i.i290, %bb.kv ]
  %i.bph = phi ptr [ @905, %bb.kp ], [ @904, %bb.ko ], [ @910, %bb.kw ], [ @906, %.lr.ph580.i.i ], [ @907, %bb.kr ], [ @909, %bb.kv ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bpf, i64 noundef %i.bpg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bph) #46
          to label %.cont4015 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.cont4015:                                        ; preds = %.invoke4014
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i": ; preds = %bb.km
  %i.bpi = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bns, i64 noundef %i.bnl, i64 noundef 4) #45, !noalias !8839
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i": ; preds = %bb.ke
  %i.bpj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i, i64 noundef %i.bml, i64 noundef 8) #45, !noalias !8839
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

.lr.ph574.i.i:                                    ; preds = %.split.i.i273, %bb.kz
  %.sroa.0127.1573.i.i = phi i64 [ %.sroa.0127.1.i.i283, %bb.kz ], [ 1, %.split.i.i273 ] ; 3 uses
  %.sroa.043.3572.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i280, %bb.kz ], [ %.sroa.043.0591.i.i, %.split.i.i273 ] ; 3 uses
  %.sroa.0127.0571.i.i = phi i64 [ %.sroa.0127.1573.i.i, %bb.kz ], [ 0, %.split.i.i273 ] ; 6 uses
  %i.bpk = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427938.i.i, i64 %.sroa.0127.0571.i.i ; 5 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 2816 ; 2 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpk, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bpk, i8 0, i64 2824, i1 false), !noalias !8839
  store float 3.402000e+38, ptr %i.bpm, align 8, !alias.scope !9029, !noalias !8839
  %i.bpn = add nuw nsw i64 %.sroa.0127.0571.i.i, %.sroa.047.1590.i.i ; 3 uses
  %i.bpo = icmp ult i64 %i.bpn, %.sroa.0.0.i.i204
  br i1 %i.bpo, label %bb.ky, label %.invoke4012

bb.ky:                                            ; preds = %.lr.ph574.i.i
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %i.bpn
  %i.bpq = load i32, ptr %i.bpp, align 4, !noalias !8839, !noundef !4 ; 2 uses
  %.not.i169.i = icmp eq i32 %i.bpq, 0
  br i1 %.not.i169.i, label %._crit_edge.i.i279, label %.lr.ph.preheader.i.i276

.lr.ph.preheader.i.i276:                          ; preds = %bb.ky
  %i.bpr = zext i32 %i.bpq to i64
  %reass.sub.i277 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3572.i.i)
  %i.bps = add nuw nsw i64 %reass.sub.i277, 1
  br label %.lr.ph.i.i278

._crit_edge.i.i279:                               ; preds = %bb.lb, %bb.ky
  %.sroa.043.4.lcssa.i.i280 = phi i64 [ %.sroa.043.3572.i.i, %bb.ky ], [ %i.bqn, %bb.lb ] ; 2 uses
  %i.bpt = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h3fde20e01ca068a5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.bpk)
          to label %bb.kz unwind label %.thread164.loopexit.i.i281, !noalias !8839

bb.kz:                                            ; preds = %._crit_edge.i.i279
  store float %i.bpt, ptr %i.bpm, align 8, !alias.scope !9032, !noalias !8839
  %i.bpu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0127.0571.i.i
  %i.bpv = trunc nuw nsw i64 %.sroa.0127.0571.i.i to i32 ; 2 uses
  store i32 %i.bpv, ptr %i.bpu, align 4, !noalias !8839
  %i.bpw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0127.0571.i.i
  store i32 %i.bpv, ptr %i.bpw, align 4, !noalias !8839
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.0127.0571.i.i
  store i32 1, ptr %i.bpx, align 4, !noalias !8839
  %i.bpy = icmp samesign ult i64 %.sroa.0127.1573.i.i, %.sroa.0.0.i447.i.i275 ; 2 uses
  %i.bpz = zext i1 %i.bpy to i64
  %.sroa.0127.1.i.i283 = add nuw i64 %.sroa.0127.1573.i.i, %i.bpz
  br i1 %i.bpy, label %.lr.ph574.i.i, label %._crit_edge575.i.i

.lr.ph.i.i278:                                    ; preds = %bb.lb, %.lr.ph.preheader.i.i276
  %i.bqa = phi i64 [ %i.bqo, %bb.lb ], [ 1, %.lr.ph.preheader.i.i276 ] ; 3 uses
  %.sroa.043.4570.i.i = phi i64 [ %i.bqn, %bb.lb ], [ %.sroa.043.3572.i.i, %.lr.ph.preheader.i.i276 ] ; 3 uses
  %exitcond851.not.i.i = icmp eq i64 %i.bqa, %i.bps
  br i1 %exitcond851.not.i.i, label %.invoke4012, label %bb.la

bb.la:                                            ; preds = %.lr.ph.i.i278
  %i.bqb = getelementptr inbounds nuw [2 x i8], ptr %i.ark, i64 %.sroa.043.4570.i.i
  %i.bqc = load i16, ptr %i.bqb, align 2, !alias.scope !9035, !noalias !8989, !noundef !4 ; 2 uses
  %i.bqd = zext i16 %i.bqc to i64                 ; 2 uses
  %i.bqe = icmp ult i16 %i.bqc, 704
  br i1 %i.bqe, label %bb.lb, label %.invoke4012

.invoke4012:                                      ; preds = %.lr.ph574.i.i, %bb.la, %.lr.ph.i.i278
  %i.bqf = phi i64 [ %.sroa.043.4570.i.i, %.lr.ph.i.i278 ], [ %i.bqd, %bb.la ], [ %i.bpn, %.lr.ph574.i.i ]
  %i.bqg = phi i64 [ %2, %.lr.ph.i.i278 ], [ 704, %bb.la ], [ %.sroa.0.0.i.i204, %.lr.ph574.i.i ]
  %i.bqh = phi ptr [ @914, %.lr.ph.i.i278 ], [ @1287, %bb.la ], [ @913, %.lr.ph574.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bqf, i64 noundef %i.bqg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqh) #46
          to label %.cont4013 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.cont4013:                                        ; preds = %.invoke4012
  unreachable

bb.lb:                                            ; preds = %bb.la
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.bpk, i64 %i.bqd ; 2 uses
  %i.bqj = load i32, ptr %i.bqi, align 4, !alias.scope !9038, !noalias !8839, !noundef !4
  %i.bqk = add i32 %i.bqj, 1
  store i32 %i.bqk, ptr %i.bqi, align 4, !alias.scope !9038, !noalias !8839
  %i.bql = load i64, ptr %i.bpl, align 8, !alias.scope !9041, !noalias !8839, !noundef !4
  %i.bqm = add i64 %i.bql, 1
  store i64 %i.bqm, ptr %i.bpl, align 8, !alias.scope !9044, !noalias !8839
  %i.bqn = add nuw i64 %.sroa.043.4570.i.i, 1     ; 2 uses
  %i.bqo = add nuw nsw i64 %i.bqa, 1
  %exitcond852.not.i.i = icmp eq i64 %i.bqa, %i.bpr
  br i1 %exitcond852.not.i.i, label %._crit_edge.i.i279, label %.lr.ph.i.i278

bb.lc:                                            ; preds = %bb.lf, %bb.ib
  %.sroa.047.0568.i.i = phi i64 [ 0, %bb.ib ], [ %i.bqt, %bb.lf ] ; 2 uses
  %.sroa.059.0567.i.i = phi i64 [ 0, %bb.ib ], [ %.sroa.059.1.i.i272, %bb.lf ] ; 5 uses
  %i.bqp = icmp ult i64 %.sroa.059.0567.i.i, %.sroa.0.0.i.i204
  br i1 %i.bqp, label %bb.ld, label %.invoke.i.i229

bb.ld:                                            ; preds = %bb.lc
  %i.bqq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %.sroa.059.0567.i.i ; 2 uses
  %i.bqr = load i32, ptr %i.bqq, align 4, !noalias !8839, !noundef !4
  %i.bqs = add i32 %i.bqr, 1
  store i32 %i.bqs, ptr %i.bqq, align 4, !noalias !8839
  %i.bqt = add nuw i64 %.sroa.047.0568.i.i, 1     ; 3 uses
  %i.bqu = icmp eq i64 %i.bqt, %2                 ; 2 uses
  br i1 %i.bqu, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.sroa.047.0568.i.i
  %i.bqw = load i8, ptr %i.bqv, align 1, !alias.scope !8825, !noalias !9047, !noundef !4
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %i.bqt
  %i.bqy = load i8, ptr %i.bqx, align 1, !alias.scope !8825, !noalias !9047, !noundef !4
  %.not238.i.i271 = icmp eq i8 %i.bqw, %i.bqy
  br i1 %.not238.i.i271, label %bb.lf, label %bb.lg

.invoke.i.i229:                                   ; preds = %bb.lc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0567.i.i, i64 noundef %.sroa.0.0.i.i204, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @915) #46
          to label %.cont.i.i270 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !8839

.cont.i.i270:                                     ; preds = %.invoke.i.i229
  unreachable

bb.lf:                                            ; preds = %bb.lg, %bb.le
  %.sroa.059.1.i.i272 = phi i64 [ %i.bqz, %bb.lg ], [ %.sroa.059.0567.i.i, %bb.le ]
  br i1 %i.bqu, label %.split.i.i273, label %bb.lc

bb.lg:                                            ; preds = %bb.le, %bb.ld
  %i.bqz = add nuw nsw i64 %.sroa.059.0567.i.i, 1
  br label %bb.lf

.thread131.i.i309:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i", %.loopexit.split-lp.i.i325, %bb.ic
  %.pn230156.i.i310 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i308, %bb.ic ], [ %.pn.i.i330, %.loopexit.split-lp.i.i325 ], [ %.pn958.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.016.4155.i.i311 = phi ptr [ %.sroa.016.7.i.i288, %bb.ic ], [ %.sroa.016.6.i.i329, %.loopexit.split-lp.i.i325 ], [ %.sroa.016.6957.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.14.4154.i.i312 = phi i64 [ %.sroa.14.7.i.i287, %bb.ic ], [ %.sroa.14.6.i.i328, %.loopexit.split-lp.i.i325 ], [ %.sroa.14.6956.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.026.3153.i.i313 = phi ptr [ %.sroa.026.4.ph163.i.i307, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i325 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.12.3152.i.i314 = phi i64 [ %.sroa.12.4.ph162.i.i306, %bb.ic ], [ 0, %.loopexit.split-lp.i.i325 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.044.0149.i.i315 = phi ptr [ %.sroa.044.1.ph161.i.i305, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i325 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.11.0148.i.i316 = phi i64 [ %.sroa.11.1.ph160.i.i304, %bb.ic ], [ 0, %.loopexit.split-lp.i.i325 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.051.0147.i.i317 = phi ptr [ %i.bdg, %bb.ic ], [ %.sroa.051.2.i.i327, %.loopexit.split-lp.i.i325 ], [ %.sroa.051.2955.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.1152.0146.i.i318 = phi i64 [ %i.bnx, %bb.ic ], [ %.sroa.1152.2.i.i326, %.loopexit.split-lp.i.i325 ], [ %.sroa.1152.2954.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %i.bra = icmp eq i64 %.sroa.1152.0146.i.i318, 0
  br i1 %i.bra, label %bb.jd, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i": ; preds = %.thread131.i.i309
  %i.brb = shl nuw nsw i64 %.sroa.1152.0146.i.i318, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0147.i.i317) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.051.0147.i.i317, i64 noundef %i.brb, i64 noundef 4) #45, !noalias !8839
  br label %bb.jd

bb.lh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i", %bb.hv, %.thread86.i.i406
  %.pn230.pn.pn.pn.pn.pn90.i.i268 = phi { ptr, i32 } [ %i.bbd, %.thread86.i.i406 ], [ %.pn230.pn.pn.pn.pn101.i.i266, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i" ], [ %.pn230.pn.pn.pn.i.i263, %bb.hv ] ; 2 uses
  %i.brc = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.brc, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i": ; preds = %bb.lh
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i411.i.i207, i64 noundef %i.azy, i64 noundef 4) #45, !noalias !8839
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i": ; preds = %bb.hp
  %i.brd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bre = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.bre, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i"
  %i.brf = phi ptr [ %i.bai, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i" ], [ %i.bad, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85963.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i268, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i" ], [ %i.brd, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.brf) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.brf, i64 noundef %i.azy, i64 noundef 4) #45, !noalias !8839
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i"

bb.li:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i, %.split.i76
  %.sroa.032.1442.i = phi i64 [ 1, %.split.i76 ], [ %.sroa.032.1.i206, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i = phi i64 [ %spec.store.select.i44, %.split.i76 ], [ %i.che, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9048)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9059)
  %i.brg = icmp eq i64 %.sroa.0.0441.i, 0
  br i1 %i.brg, label %.loopexit.i203, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.brh = add i64 %.sroa.0.0441.i, 7
  %i.bri = lshr i64 %i.brh, 3                     ; 8 uses
  %i.brj = icmp eq i64 %.sroa.0.0441.i, 1
  br i1 %i.brj, label %.preheader.i.i416.preheader, label %bb.lk

.preheader.i.i416.preheader:                      ; preds = %bb.lj
  br i1 %min.iters.check3853, label %.preheader.i.i416.preheader4414, label %vector.body3856

.preheader.i.i416.preheader4414:                  ; preds = %vector.body3856, %.preheader.i.i416.preheader
  %.ph4415 = phi i64 [ 1, %.preheader.i.i416.preheader ], [ %i.azv, %vector.body3856 ]
  %.sroa.066.0449.i.i417.ph = phi i64 [ 0, %.preheader.i.i416.preheader ], [ %n.vec3855, %vector.body3856 ]
  br label %.preheader.i.i416

vector.body3856:                                  ; preds = %.preheader.i.i416.preheader, %vector.body3856
  %index3857 = phi i64 [ %index.next3858, %vector.body3856 ], [ 0, %.preheader.i.i416.preheader ] ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %index3857 ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brk, i64 16
  store <16 x i8> zeroinitializer, ptr %i.brk, align 1, !alias.scope !9059, !noalias !9061
  store <16 x i8> zeroinitializer, ptr %i.brl, align 1, !alias.scope !9059, !noalias !9061
  %index.next3858 = add nuw i64 %index3857, 32    ; 2 uses
  %i.brm = icmp eq i64 %index.next3858, %n.vec3855
  br i1 %i.brm, label %.preheader.i.i416.preheader4414, label %vector.body3856, !llvm.loop !9062

bb.lk:                                            ; preds = %bb.lj
  %.not121.i.i79 = icmp ugt i64 %.sroa.0.0441.i, %spec.store.select.i44
  br i1 %.not121.i.i79, label %bb.ll, label %.preheader360.i.i80, !prof !2174

bb.ll:                                            ; preds = %bb.lk
  %i.brn = mul nuw nsw i64 %.sroa.0.0441.i, 704
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %.sroa.6.0.copyload.i.i128 = load float, ptr %.sroa.6.0..sroa_idx.i.i127, align 4, !alias.scope !9080, !noalias !9063
  %.sroa.7.0..sroa_idx.i.i129 = getelementptr inbounds nuw i8, ptr %i.cej, i64 12
  %.sroa.7.0.copyload.i.i130 = load float, ptr %.sroa.7.0..sroa_idx.i.i129, align 4, !alias.scope !9080, !noalias !9063
  %.sroa.8.0..sroa_idx.i.i131 = getelementptr inbounds nuw i8, ptr %i.cej, i64 16
  %.sroa.8.0.copyload.i.i132 = load float, ptr %.sroa.8.0..sroa_idx.i.i131, align 4, !alias.scope !9080, !noalias !9063
  %.sroa.9.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %i.cej, i64 20
  %.sroa.9.0.copyload.i.i134 = load float, ptr %.sroa.9.0..sroa_idx.i.i133, align 4, !alias.scope !9080, !noalias !9063
  %.sroa.10.0..sroa_idx.i.i135 = getelementptr inbounds nuw i8, ptr %i.cej, i64 24
  %.sroa.10.0.copyload.i.i136 = load float, ptr %.sroa.10.0..sroa_idx.i.i135, align 4, !alias.scope !9080, !noalias !9063
  %.sroa.11.0..sroa_idx.i.i137 = getelementptr inbounds nuw i8, ptr %i.cej, i64 28
  %.sroa.11.0.copyload.i.i138 = load float, ptr %.sroa.11.0..sroa_idx.i.i137, align 4, !alias.scope !9080, !noalias !9063
  %i.cek = load float, ptr %.sroa.0164.0412.i.i118, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.cel = fadd float %.sroa.0.0.copyload.i.i124, %i.cek ; 3 uses
  store float %i.cel, ptr %.sroa.0164.0412.i.i118, align 4, !alias.scope !9055, !noalias !9064
  %i.cem = fcmp olt float %i.cel, %.sroa.029.0413.i.i117
  br i1 %i.cem, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.cen = trunc i64 %i.bvi to i8
  store i8 %i.cen, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx
  %.sroa.029.4.i.i139 = phi float [ %i.cel, %bb.my ], [ %.sroa.029.0413.i.i117, %bb.mx ] ; 2 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 4 ; 2 uses
  %i.cep = load float, ptr %i.ceo, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.ceq = fadd float %.sroa.5.0.copyload.i.i126, %i.cep ; 3 uses
  store float %i.ceq, ptr %i.ceo, align 4, !alias.scope !9055, !noalias !9064
  %i.cer = fcmp olt float %i.ceq, %.sroa.029.4.i.i139
  br i1 %i.cer, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.ces = trunc i64 %i.bvi to i8
  %i.cet = or disjoint i8 %i.ces, 1
  store i8 %i.cet, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.mz
  %.sroa.029.4.1.i.i140 = phi float [ %i.ceq, %bb.na ], [ %.sroa.029.4.i.i139, %bb.mz ] ; 2 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 8 ; 2 uses
  %i.cev = load float, ptr %i.ceu, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.cew = fadd float %.sroa.6.0.copyload.i.i128, %i.cev ; 3 uses
  store float %i.cew, ptr %i.ceu, align 4, !alias.scope !9055, !noalias !9064
  %i.cex = fcmp olt float %i.cew, %.sroa.029.4.1.i.i140
  br i1 %i.cex, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.cey = trunc i64 %i.bvi to i8
  %i.cez = or disjoint i8 %i.cey, 2
  store i8 %i.cez, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %.sroa.029.4.2.i.i141 = phi float [ %i.cew, %bb.nc ], [ %.sroa.029.4.1.i.i140, %bb.nb ] ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 12 ; 2 uses
  %i.cfb = load float, ptr %i.cfa, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.cfc = fadd float %.sroa.7.0.copyload.i.i130, %i.cfb ; 3 uses
  store float %i.cfc, ptr %i.cfa, align 4, !alias.scope !9055, !noalias !9064
  %i.cfd = fcmp olt float %i.cfc, %.sroa.029.4.2.i.i141
  br i1 %i.cfd, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.cfe = trunc i64 %i.bvi to i8
  %i.cff = or disjoint i8 %i.cfe, 3
  store i8 %i.cff, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.sroa.029.4.3.i.i142 = phi float [ %i.cfc, %bb.ne ], [ %.sroa.029.4.2.i.i141, %bb.nd ] ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 16 ; 2 uses
  %i.cfh = load float, ptr %i.cfg, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.cfi = fadd float %.sroa.8.0.copyload.i.i132, %i.cfh ; 3 uses
  store float %i.cfi, ptr %i.cfg, align 4, !alias.scope !9055, !noalias !9064
  %i.cfj = fcmp olt float %i.cfi, %.sroa.029.4.3.i.i142
  br i1 %i.cfj, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.cfk = trunc i64 %i.bvi to i8
  %i.cfl = or disjoint i8 %i.cfk, 4
  store i8 %i.cfl, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.sroa.029.4.4.i.i143 = phi float [ %i.cfi, %bb.ng ], [ %.sroa.029.4.3.i.i142, %bb.nf ] ; 2 uses
  %i.cfm = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 20 ; 2 uses
  %i.cfn = load float, ptr %i.cfm, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.cfo = fadd float %.sroa.9.0.copyload.i.i134, %i.cfn ; 3 uses
  store float %i.cfo, ptr %i.cfm, align 4, !alias.scope !9055, !noalias !9064
  %i.cfp = fcmp olt float %i.cfo, %.sroa.029.4.4.i.i143
  br i1 %i.cfp, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.cfq = trunc i64 %i.bvi to i8
  %i.cfr = or disjoint i8 %i.cfq, 5
  store i8 %i.cfr, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.nh
  %.sroa.029.4.5.i.i144 = phi float [ %i.cfo, %bb.ni ], [ %.sroa.029.4.4.i.i143, %bb.nh ] ; 2 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 24 ; 2 uses
  %i.cft = load float, ptr %i.cfs, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.cfu = fadd float %.sroa.10.0.copyload.i.i136, %i.cft ; 3 uses
  store float %i.cfu, ptr %i.cfs, align 4, !alias.scope !9055, !noalias !9064
  %i.cfv = fcmp olt float %i.cfu, %.sroa.029.4.5.i.i144
  br i1 %i.cfv, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cfw = trunc i64 %i.bvi to i8
  %i.cfx = or disjoint i8 %i.cfw, 6
  store i8 %i.cfx, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.029.4.6.i.i145 = phi float [ %i.cfu, %bb.nk ], [ %.sroa.029.4.5.i.i144, %bb.nj ] ; 2 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 28 ; 2 uses
  %i.cfz = load float, ptr %i.cfy, align 4, !alias.scope !9055, !noalias !9064, !noundef !4
  %i.cga = fadd float %.sroa.11.0.copyload.i.i138, %i.cfz ; 3 uses
  store float %i.cga, ptr %i.cfy, align 4, !alias.scope !9055, !noalias !9064
  %i.cgb = fcmp olt float %i.cga, %.sroa.029.4.6.i.i145
  br i1 %i.cgb, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %bb.nl
  %i.cgc = trunc i64 %i.bvi to i8
  %i.cgd = or disjoint i8 %i.cgc, 7
  store i8 %i.cgd, ptr %i.buz, align 1, !alias.scope !9059, !noalias !9061
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %bb.nl
  %.sroa.029.4.7.i.i146 = phi float [ %i.cga, %bb.nm ], [ %.sroa.029.4.6.i.i145, %bb.nl ] ; 2 uses
  %i.cge = icmp eq ptr %i.bvg, %i.brx
  br i1 %i.cge, label %._crit_edge416.i.i147, label %.lr.ph415.i.i116

bb.no:                                            ; preds = %bb.nq, %.split.i178.i
  %i.cgf = phi i64 [ 1, %.split.i178.i ], [ %i.cgp, %bb.nq ] ; 4 uses
  %.sroa.071.0400.i.i86 = phi i64 [ 0, %.split.i178.i ], [ %i.cgf, %bb.nq ] ; 4 uses
  %i.cgg = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %.sroa.071.0400.i.i86
  %i.cgh = load float, ptr %i.cgg, align 4, !alias.scope !9053, !noalias !9063, !noundef !4
  %exitcond482.not.i.i87 = icmp eq i64 %i.cgf, %i.azl
  br i1 %exitcond482.not.i.i87, label %.invoke.i97, label %bb.np

bb.np:                                            ; preds = %bb.no
  %gep.i.i88 = getelementptr [2832 x i8], ptr %invariant.gep.i.i85, i64 %.sroa.071.0400.i.i86
  %i.cgi = load i32, ptr %gep.i.i88, align 4, !alias.scope !9051, !noalias !9084, !noundef !4
  %i.cgj = zext i32 %i.cgi to i64
  %i.cgk = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.cgj)
          to label %.noexc198.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i89", !noalias !8714

.noexc198.i:                                      ; preds = %bb.np
  %i.cgl = add nuw nsw i64 %.sroa.071.0400.i.i86, %i.brv ; 3 uses
  %i.cgm = icmp ult i64 %i.cgl, %i.ayn
  br i1 %i.cgm, label %bb.nq, label %.invoke.i97

bb.nq:                                            ; preds = %.noexc198.i
  %i.cgn = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %i.cgl
  %i.cgo = fsub float %i.cgh, %i.cgk
  store float %i.cgo, ptr %i.cgn, align 4, !alias.scope !9053, !noalias !9063
  %i.cgp = add nuw nsw i64 %i.cgf, 1
  %exitcond483.not.i.i = icmp eq i64 %i.cgf, %.sroa.0.0441.i
  br i1 %exitcond483.not.i.i, label %.loopexit358.i.i100, label %bb.no

bb.nr:                                            ; preds = %bb.lm
  %i.cgq = getelementptr inbounds nuw [2832 x i8], ptr %i.atp, i64 %.sroa.069.0399.i.i82
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgq, i64 2816
  %i.cgs = load i64, ptr %i.cgr, align 8, !alias.scope !9085, !noalias !9084, !noundef !4
  %i.cgt = and i64 %i.cgs, 4294967295             ; 3 uses
  %i.cgu = icmp samesign ult i64 %i.cgt, 256
  br i1 %i.cgu, label %bb.nu, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.cgv = uitofp nneg i64 %i.cgt to float
  %i.cgw = tail call float @llvm.log2.f32(float %i.cgv)
  br label %bb.nt

bb.nt:                                            ; preds = %bb.nu, %bb.ns
  %.sroa.016.0.i.i83 = phi float [ %i.cha, %bb.nu ], [ %i.cgw, %bb.ns ]
  %i.cgx = getelementptr inbounds nuw [4 x i8], ptr %i.ayp, i64 %.sroa.069.0399.i.i82
  store float %.sroa.016.0.i.i83, ptr %i.cgx, align 4, !alias.scope !9053, !noalias !9063
  %i.cgy = add nuw nsw i64 %i.brr, 1
  %exitcond480.not.i.i = icmp eq i64 %i.brr, %.sroa.0.0441.i
  br i1 %exitcond480.not.i.i, label %.split.i178.i, label %bb.lm

bb.nu:                                            ; preds = %bb.nr
  %i.cgz = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.cgt
  %i.cha = load float, ptr %i.cgz, align 4, !noalias !9070, !noundef !4
  br label %bb.nt

.preheader.i.i416:                                ; preds = %.preheader.i.i416.preheader4414, %bb.nv
  %i.chb = phi i64 [ %i.chd, %bb.nv ], [ %.ph4415, %.preheader.i.i416.preheader4414 ] ; 4 uses
  %.sroa.066.0449.i.i417 = phi i64 [ %i.chb, %bb.nv ], [ %.sroa.066.0449.i.i417.ph, %.preheader.i.i416.preheader4414 ] ; 2 uses
  %exitcond488.not.i.i418 = icmp eq i64 %i.chb, %i.azp
  br i1 %exitcond488.not.i.i418, label %.invoke.i97, label %bb.nv

bb.nv:                                            ; preds = %.preheader.i.i416
  %i.chc = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.sroa.066.0449.i.i417
  store i8 0, ptr %i.chc, align 1, !alias.scope !9059, !noalias !9061
  %i.chd = add nuw nsw i64 %i.chb, 1
  %exitcond489.not.i.i = icmp eq i64 %i.chb, %2
  br i1 %exitcond489.not.i.i, label %.loopexit.i203, label %.preheader.i.i416, !llvm.loop !9088

.loopexit.i203:                                   ; preds = %bb.lq, %bb.nv, %bb.li
  %.sroa.0.0.i.i204 = phi i64 [ 0, %bb.li ], [ 1, %bb.nv ], [ %.sroa.03.1.i.i201, %bb.lq ] ; 32 uses
  %i.che = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.ayj, i64 noundef %2, i64 noundef %2, ptr noalias noundef nonnull align 2 %i.azh, i64 noundef %spec.store.select.i44, i64 noundef %.sroa.0.0441.i)
          to label %bb.nw unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i205", !noalias !8714 ; 5 uses

bb.nw:                                            ; preds = %.loopexit.i203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9094)
  %.not.i.i204.i = icmp ugt i64 %i.che, %spec.store.select.i44
  br i1 %.not.i.i204.i, label %.invoke1203.i, label %bb.nx, !prof !2174

bb.nx:                                            ; preds = %bb.nw
  %.idx.i.i205.i = mul i64 %i.che, 2832           ; 2 uses
  %i.chf = getelementptr inbounds nuw i8, ptr %i.atp, i64 %.idx.i.i205.i
  %i.chg = icmp eq i64 %i.che, 0
  br i1 %i.chg, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i206.i.preheader

.lr.ph.i.i206.i.preheader:                        ; preds = %bb.nx
  %i.chh = add i64 %.idx.i.i205.i, -2832          ; 2 uses
  %i.chi = udiv i64 %i.chh, 2832
  %i.chj = add nuw nsw i64 %i.chi, 1
  %xtraiter4734 = and i64 %i.chj, 7               ; 2 uses
  %lcmp.mod4735.not = icmp eq i64 %xtraiter4734, 0
  br i1 %lcmp.mod4735.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol

.lr.ph.i.i206.i.prol:                             ; preds = %.lr.ph.i.i206.i.preheader, %.lr.ph.i.i206.i.prol
  %.sroa.02.05.i.i207.i.prol = phi ptr [ %i.chk, %.lr.ph.i.i206.i.prol ], [ %i.atp, %.lr.ph.i.i206.i.preheader ] ; 3 uses
  %prol.iter4736 = phi i64 [ %prol.iter4736.next, %.lr.ph.i.i206.i.prol ], [ 0, %.lr.ph.i.i206.i.preheader ]
  %i.chk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 2832 ; 2 uses
  %i.chl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i207.i.prol, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.chl, align 8, !alias.scope !9100, !noalias !9099
  %prol.iter4736.next = add i64 %prol.iter4736, 1 ; 2 uses
  %prol.iter4736.cmp.not = icmp eq i64 %prol.iter4736.next, %xtraiter4734
  br i1 %prol.iter4736.cmp.not, label %.lr.ph.i.i206.i.prol.loopexit, label %.lr.ph.i.i206.i.prol, !llvm.loop !9103

.lr.ph.i.i206.i.prol.loopexit:                    ; preds = %.lr.ph.i.i206.i.prol, %.lr.ph.i.i206.i.preheader
  %.sroa.02.05.i.i207.i.unr = phi ptr [ %i.atp, %.lr.ph.i.i206.i.preheader ], [ %i.chk, %.lr.ph.i.i206.i.prol ]
  %i.chm = icmp ult i64 %i.chh, 19824
  br i1 %i.chm, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i206.i

.lr.ph.i.i206.i:                                  ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i
  %.sroa.02.05.i.i207.i = phi ptr [ %i.cib, %.lr.ph.i.i206.i ], [ %.sroa.02.05.i.i207.i.unr, %.lr.ph.i.i206.i.prol.loopexit ] ; 17 uses
  %i.chn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2832
  %i.cho = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i207.i, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.cho, align 8, !alias.scope !9100, !noalias !9099
  %i.chp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5664
  %i.chq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chn, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.chq, align 8, !alias.scope !9100, !noalias !9099
  %i.chr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8496
  %i.chs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chp, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.chs, align 8, !alias.scope !9100, !noalias !9099
  %i.cht = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 11328
  %i.chu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chr, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.chu, align 8, !alias.scope !9100, !noalias !9099
  %i.chv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 14160
  %i.chw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cht, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.chw, align 8, !alias.scope !9100, !noalias !9099
  %i.chx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 16992
  %i.chy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chv, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.chy, align 8, !alias.scope !9100, !noalias !9099
  %i.chz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 19824
  %i.cia = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chx, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.cia, align 8, !alias.scope !9100, !noalias !9099
  %i.cib = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 22656 ; 2 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chz, i8 0, i64 2824, i1 false), !alias.scope !9096, !noalias !9099
  store float 3.402000e+38, ptr %i.cic, align 8, !alias.scope !9100, !noalias !9099
  %i.cid = icmp eq ptr %i.cib, %i.chf
  br i1 %i.cid, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i206.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader: ; preds = %.lr.ph.i.i206.i.prol.loopexit, %.lr.ph.i.i206.i, %bb.nx
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.cie, %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader ] ; 3 uses
  %i.cie = add nuw i64 %.sroa.01.013.i.i, 1       ; 2 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %i.ayj, i64 %.sroa.01.013.i.i
  %i.cig = load i8, ptr %i.cif, align 1, !alias.scope !9092, !noalias !9104, !noundef !4
  %i.cih = zext i8 %i.cig to i64                  ; 3 uses
  %.not93.i = icmp samesign ult i64 %i.atk, %i.cih
  br i1 %.not93.i, label %.invoke.i97, label %bb.ny

bb.ny:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i
  %i.cii = getelementptr inbounds nuw [2 x i8], ptr %i.ark, i64 %.sroa.01.013.i.i
  %i.cij = load i16, ptr %i.cii, align 2, !alias.scope !9105, !noalias !9108, !noundef !4 ; 2 uses
  %i.cik = zext i16 %i.cij to i64                 ; 2 uses
  %i.cil = icmp ult i16 %i.cij, 704
  br i1 %i.cil, label %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i, label %.invoke.i97

_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i: ; preds = %bb.ny
  %i.cim = getelementptr inbounds nuw [2832 x i8], ptr %i.atp, i64 %i.cih ; 2 uses
  %i.cin = getelementptr inbounds nuw [4 x i8], ptr %i.cim, i64 %i.cik ; 2 uses
  %i.cio = load i32, ptr %i.cin, align 4, !alias.scope !9109, !noalias !9099, !noundef !4
  %i.cip = add i32 %i.cio, 1
  store i32 %i.cip, ptr %i.cin, align 4, !alias.scope !9109, !noalias !9099
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cim, i64 2816 ; 2 uses
  %i.cir = load i64, ptr %i.ciq, align 8, !alias.scope !9112, !noalias !9099, !noundef !4
  %i.cis = add i64 %i.cir, 1
  store i64 %i.cis, ptr %i.ciq, align 8, !alias.scope !9115, !noalias !9099
  %exitcond24.not.i.i = icmp eq i64 %i.cie, %2
  br i1 %exitcond24.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i

.invoke.i97:                                      ; preds = %bb.lm, %.lr.ph434.split.i.i111, %.lr.ph447.i.i193, %.preheader.i.i416, %bb.ny, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i, %.noexc198.i, %bb.no, %.lr.ph424.preheader.i.i151, %.lr.ph424.i.i153.1, %.lr.ph424.i.i153.2, %.lr.ph424.i.i153.3, %.lr.ph424.i.i153.4, %.lr.ph424.i.i153.5, %.lr.ph424.i.i153.6, %.lr.ph430.i.i164
  %i.cit = phi i64 [ %i.cik, %bb.ny ], [ %i.bun, %.lr.ph447.i.i193 ], [ %i.cbu, %.lr.ph430.i.i164 ], [ %2, %.lr.ph434.split.i.i111 ], [ %.sroa.066.0449.i.i417, %.preheader.i.i416 ], [ %i.btr, %.lr.ph424.i.i153.6 ], [ %.sroa.071.0400.i.i86, %bb.no ], [ %i.bsd, %.lr.ph424.preheader.i.i151 ], [ %i.bsi, %.lr.ph424.i.i153.1 ], [ %i.bsq, %.lr.ph424.i.i153.2 ], [ %i.bsz, %.lr.ph424.i.i153.3 ], [ %i.btf, %.lr.ph424.i.i153.4 ], [ %i.btl, %.lr.ph424.i.i153.5 ], [ %i.cgl, %.noexc198.i ], [ %i.cih, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ %.sroa.069.0399.i.i82, %bb.lm ]
  %i.ciu = phi i64 [ 704, %bb.ny ], [ %i.ayy, %.lr.ph447.i.i193 ], [ %i.ayy, %.lr.ph430.i.i164 ], [ %2, %.lr.ph434.split.i.i111 ], [ %2, %.preheader.i.i416 ], [ %i.aym, %.lr.ph424.preheader.i.i151 ], [ %spec.store.select.i44, %bb.no ], [ %i.aym, %.lr.ph424.i.i153.6 ], [ %i.aym, %.lr.ph424.i.i153.5 ], [ %i.aym, %.lr.ph424.i.i153.4 ], [ %i.aym, %.lr.ph424.i.i153.3 ], [ %i.aym, %.lr.ph424.i.i153.2 ], [ %i.aym, %.lr.ph424.i.i153.1 ], [ %i.ayn, %.noexc198.i ], [ %spec.store.select.i44, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ %spec.store.select.i44, %bb.lm ]
  %i.civ = phi ptr [ @1287, %bb.ny ], [ @878, %.lr.ph447.i.i193 ], [ @923, %.lr.ph430.i.i164 ], [ @879, %.lr.ph434.split.i.i111 ], [ @893, %.preheader.i.i416 ], [ @884, %.lr.ph424.preheader.i.i151 ], [ @889, %bb.no ], [ @884, %.lr.ph424.i.i153.6 ], [ @884, %.lr.ph424.i.i153.5 ], [ @884, %.lr.ph424.i.i153.4 ], [ @884, %.lr.ph424.i.i153.3 ], [ @884, %.lr.ph424.i.i153.2 ], [ @884, %.lr.ph424.i.i153.1 ], [ @890, %.noexc198.i ], [ @921, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ @891, %bb.lm ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cit, i64 noundef %i.ciu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.civ) #46
          to label %.cont.i99 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i98", !noalias !8714

.cont.i99:                                        ; preds = %.invoke.i97
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i89": ; preds = %bb.np
  %lpad.loopexit.i90 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i91"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i205": ; preds = %.loopexit.i203
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i91"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i98": ; preds = %.invoke.i97, %.split440.us.i.invoke.i121, %.invoke1203.i
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i91"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i91": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i98", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i205", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i89"
  %lpad.phi.i92 = phi { ptr, i32 } [ %lpad.loopexit.i90, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i89" ], [ %lpad.loopexit105.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i205" ], [ %lpad.loopexit.split-lp106.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i98" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azh, i64 noundef %i.azg, i64 noundef 2) #45, !noalias !8714
  br label %bb.nz

bb.nz:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i91", %.thread55.i419
  %.pn62.i93 = phi { ptr, i32 } [ %i.azj, %.thread55.i419 ], [ %lpad.phi.i92, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i91" ]
  br i1 %i.aza, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i94", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i": ; preds = %bb.nz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azf) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azf, i64 noundef %i.ayy, i64 noundef 1) #45, !noalias !8714
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i94"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i94": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i", %bb.nz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayt, i64 noundef %i.ays, i64 noundef 4) #45, !noalias !8714
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i95"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i95": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i94", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i420", %.thread39.i422
  %.pn.pn.pn44.i96 = phi { ptr, i32 } [ %i.ayx, %.thread39.i422 ], [ %i.aze, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i420" ], [ %.pn62.i93, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i94" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayp, i64 noundef %i.ayo, i64 noundef 4) #45, !noalias !8714
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayj, i64 noundef %2, i64 noundef 1) #45, !noalias !8714
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i", %bb.lh, %.body.i409
  %.pn.pn.pn.pn.i269 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i410, %.body.i409 ], [ %i.brd, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i268, %bb.lh ], [ %.pn230.pn.pn.pn.pn.pn.pn85963.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayj, i64 noundef %2, i64 noundef 1) #45, !noalias !8714
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1042"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i95", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.thread.i", %.thread.i60
  %.pn.pn.pn.pn.pn38.i61 = phi { ptr, i32 } [ %i.aui, %.thread.i60 ], [ %.pn.pn.pn44.i96, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i95" ], [ %i.ayr, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.thread.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.atp, i64 noundef %i.ato, i64 noundef 8) #45, !noalias !8714
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1042"

bb.oa:                                            ; preds = %bb.gw
  %i.ciw = icmp eq i64 %.val107.i425, 0           ; 2 uses
  %spec.select.i434 = select i1 %i.ciw, i64 %i.aug, i64 %.val107.i425
  br label %bb.ob

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit227.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i", %bb.od, %bb.gw
  %.val.i426 = phi ptr [ %i.cjd, %bb.od ], [ %i.cjd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i" ], [ %.val106.i424, %bb.gw ]
  %.val63.i427 = phi i64 [ %.sroa.014.1.i435, %bb.od ], [ %.sroa.014.1.i435, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i" ], [ %.val107.i425, %bb.gw ] ; 2 uses
  %i.cix = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val92.i428 = load ptr, ptr %i.cix, align 8, !alias.scope !8704, !noalias !8701, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val93.i429 = load i64, ptr %i.ciy, align 8, !alias.scope !8704, !noalias !8701, !noundef !4 ; 5 uses
  %i.ciz = icmp ult i64 %.val93.i429, %i.aug
  br i1 %i.ciz, label %bb.oe, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i430"

bb.ob:                                            ; preds = %bb.ob, %bb.oa
  %.sroa.014.1.i435 = phi i64 [ %spec.select.i434, %bb.oa ], [ %i.cjb, %bb.ob ] ; 9 uses
  %i.cja = icmp ult i64 %.sroa.014.1.i435, %i.aug
  %i.cjb = shl i64 %.sroa.014.1.i435, 1
  br i1 %i.cja, label %bb.ob, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.cjc = icmp slt i64 %.sroa.014.1.i435, 0
  br i1 %i.cjc, label %.invoke2967, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i: ; preds = %bb.oc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9118
  %i.cjd = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i435, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9118 ; 5 uses
  %i.cje = icmp eq ptr %i.cjd, null
  br i1 %i.cje, label %.invoke2967, label %bb.od

bb.od:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

bb.ps:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i710", %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i"
  %i.css = icmp eq i64 %.sroa.14.1.i.i707, 0
  br i1 %i.css, label %bb.te, label %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i711"

"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i711": ; preds = %bb.ps
  %.pre875.i.i712 = mul nuw nsw i64 %.sroa.14.1.i.i707, 2192
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i713"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i713": ; preds = %.thread93.i.i971, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i711"
  %.pre-phi876.i.i714 = phi i64 [ %.pre875.i.i712, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i711" ], [ %i.crv, %.thread93.i.i971 ]
  %.pn230.pn.pn.pn.pn101.i.i715 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.i.i709, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i711" ], [ %i.cst, %.thread93.i.i971 ]
  %.sroa.016.0100.i.i716 = phi ptr [ %.sroa.016.1.i.i708, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i711" ], [ %.sroa.10.0.i.i.i.i.i655, %.thread93.i.i971 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0100.i.i716) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.016.0100.i.i716, i64 noundef %.pre-phi876.i.i714, i64 noundef 8) #45, !noalias !9285
  br label %bb.te

.thread93.i.i971:                                 ; preds = %bb.pr
  %i.cst = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i713"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i": ; preds = %bb.ra, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696", %bb.pt
  %.sroa.12.0.i.i705 = phi i64 [ %i.cru, %bb.pt ], [ %.sroa.12.1.i.i699, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696" ], [ %.sroa.12.1.i.i699, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704" ], [ %.sroa.12.3152.i.i811, %bb.ra ] ; 2 uses
  %.sroa.026.0.i.i706 = phi ptr [ %i.csx, %bb.pt ], [ %.sroa.026.1.i.i700, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696" ], [ %.sroa.026.1.i.i700, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704" ], [ %.sroa.026.3153.i.i810, %bb.ra ] ; 2 uses
  %.sroa.14.1.i.i707 = phi i64 [ %i.cru, %bb.pt ], [ %.sroa.14.2.i.i701, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696" ], [ %.sroa.14.2.i.i701, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704" ], [ %.sroa.14.4154.i.i809, %bb.ra ] ; 2 uses
  %.sroa.016.1.i.i708 = phi ptr [ %.sroa.10.0.i.i.i.i.i655, %bb.pt ], [ %.sroa.016.2.i.i702, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696" ], [ %.sroa.016.2.i.i702, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704" ], [ %.sroa.016.4155.i.i808, %bb.ra ]
  %.pn230.pn.pn.pn.i.i709 = phi { ptr, i32 } [ %i.csw, %bb.pt ], [ %.pn230.pn.pn.i.i703, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696" ], [ %.pn230.pn.pn.i.i703, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704" ], [ %.pn230156.i.i807, %bb.ra ] ; 2 uses
  %i.csu = icmp eq i64 %.sroa.12.0.i.i705, 0
  br i1 %i.csu, label %bb.ps, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i710"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i710": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i"
  %i.csv = shl nuw nsw i64 %.sroa.12.0.i.i705, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i706) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0.i.i706, i64 noundef %i.csv, i64 noundef 4) #45, !noalias !9285
  br label %bb.ps

bb.pt:                                            ; preds = %bb.pv
  %i.csw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i661: ; preds = %bb.pq, %._crit_edge.i.i.i.i.i657
  %.sroa.10.0.i.i418.i.i662 = phi i64 [ %i.csr, %bb.pq ], [ 4, %._crit_edge.i.i.i.i.i657 ]
  %i.csx = inttoptr i64 %.sroa.10.0.i.i418.i.i662 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i663 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i637, i64 64) ; 17 uses
  %i.csy = mul nuw nsw i64 %.sroa.0.0.i422.i.i663, 2192 ; 3 uses
  %i.csz = icmp eq i64 %.sroa.0.0.i.i637, 0
  br i1 %i.csz, label %._crit_edge.i.i.i429.thread.i.i671, label %bb.pu

bb.pu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i661
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9303
  %i.cta = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.csy, i64 noundef range(i64 1, 9) 8) #45, !noalias !9303 ; 5 uses
  %i.ctb = icmp eq ptr %i.cta, null
  br i1 %i.ctb, label %bb.pv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i"

bb.pv:                                            ; preds = %bb.pu
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.csy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc440.i.i970 unwind label %bb.pt, !noalias !9285

.noexc440.i.i970:                                 ; preds = %bb.pv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i": ; preds = %bb.pu
  %.not1179.i.i664 = icmp eq i64 %.sroa.0.0.i.i637, 1
  br i1 %.not1179.i.i664, label %._crit_edge.thread.i.i.i431.i.i669, label %.lr.ph.i.i.i434.i.i665.preheader

.lr.ph.i.i.i434.i.i665.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i"
  %i.ctc = add nsw i64 %.sroa.0.0.i422.i.i663, -1 ; 2 uses
  %i.ctd = add nsw i64 %.sroa.0.0.i422.i.i663, -2
  %xtraiter4779 = and i64 %i.ctc, 7               ; 3 uses
  %i.cte = icmp ult i64 %i.ctd, 7
  br i1 %i.cte, label %.lr.ph.i.i.i434.i.i665.epil.preheader, label %.lr.ph.i.i.i434.i.i665.preheader.new

.lr.ph.i.i.i434.i.i665.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i665.preheader
  %unroll_iter4784 = and i64 %i.ctc, -8
  br label %.lr.ph.i.i.i434.i.i665

._crit_edge.thread.i.i.i431.i.i669.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i665
  %lcmp.mod4781.not = icmp eq i64 %xtraiter4779, 0
  br i1 %lcmp.mod4781.not, label %._crit_edge.thread.i.i.i431.i.i669, label %.lr.ph.i.i.i434.i.i665.epil.preheader

.lr.ph.i.i.i434.i.i665.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i669.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i665.preheader
  %.sroa.0.08.i.i.i435.i.i666.epil.init = phi ptr [ %i.cta, %.lr.ph.i.i.i434.i.i665.preheader ], [ %i.ctn, %._crit_edge.thread.i.i.i431.i.i669.loopexit.unr-lcssa ]
  %lcmp.mod4783 = icmp ne i64 %xtraiter4779, 0
  call void @llvm.assume(i1 %lcmp.mod4783)
  br label %.lr.ph.i.i.i434.i.i665.epil

.lr.ph.i.i.i434.i.i665.epil:                      ; preds = %.lr.ph.i.i.i434.i.i665.epil, %.lr.ph.i.i.i434.i.i665.epil.preheader
  %.sroa.0.08.i.i.i435.i.i666.epil = phi ptr [ %i.ctf, %.lr.ph.i.i.i434.i.i665.epil ], [ %.sroa.0.08.i.i.i435.i.i666.epil.init, %.lr.ph.i.i.i434.i.i665.epil.preheader ] ; 3 uses
  %epil.iter4780 = phi i64 [ %epil.iter4780.next, %.lr.ph.i.i.i434.i.i665.epil ], [ 0, %.lr.ph.i.i.i434.i.i665.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i666.epil, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !9311
  %i.ctf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666.epil, i64 2192 ; 2 uses
  %epil.iter4780.next = add i64 %epil.iter4780, 1 ; 2 uses
  %epil.iter4780.cmp.not = icmp eq i64 %epil.iter4780.next, %xtraiter4779
  br i1 %epil.iter4780.cmp.not, label %._crit_edge.thread.i.i.i431.i.i669, label %.lr.ph.i.i.i434.i.i665.epil, !llvm.loop !9314

._crit_edge.thread.i.i.i431.i.i669:               ; preds = %._crit_edge.thread.i.i.i431.i.i669.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i665.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i670 = phi ptr [ %i.cta, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i" ], [ %i.ctn, %._crit_edge.thread.i.i.i431.i.i669.loopexit.unr-lcssa ], [ %i.ctf, %.lr.ph.i.i.i434.i.i665.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i432.i.i670, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i670, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !9311
  br label %._crit_edge.i.i.i429.thread.i.i671

.lr.ph.i.i.i434.i.i665:                           ; preds = %.lr.ph.i.i.i434.i.i665, %.lr.ph.i.i.i434.i.i665.preheader.new
  %.sroa.0.08.i.i.i435.i.i666 = phi ptr [ %i.cta, %.lr.ph.i.i.i434.i.i665.preheader.new ], [ %i.ctn, %.lr.ph.i.i.i434.i.i665 ] ; 17 uses
  %niter4785 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i665.preheader.new ], [ %niter4785.next.7, %.lr.ph.i.i.i434.i.i665 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i666, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !9311
  %i.ctg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctg, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !9311
  %i.cth = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cth, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !9311
  %i.cti = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cti, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !9311
  %i.ctj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctj, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !9311
  %i.ctk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctk, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !9311
  %i.ctl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctl, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !9311
  %i.ctm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctm, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !9311
  %i.ctn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i666, i64 17536 ; 3 uses
  %niter4785.next.7 = add i64 %niter4785, 8       ; 2 uses
  %niter4785.ncmp.7 = icmp eq i64 %niter4785.next.7, %unroll_iter4784
  br i1 %niter4785.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i669.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i665

._crit_edge.i.i.i429.thread.i.i671:               ; preds = %._crit_edge.thread.i.i.i431.i.i669, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i661
  %.sroa.10.0.i.i.i427938.i.i672 = phi ptr [ %i.cta, %._crit_edge.thread.i.i.i431.i.i669 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i661 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9315
  %i.cto = tail call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !9315 ; 16 uses
  %i.ctp = icmp eq ptr %i.cto, null
  br i1 %i.ctp, label %bb.pw, label %bb.py

bb.pw:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i671
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc444.i.i969 unwind label %bb.px, !noalias !9285

.noexc444.i.i969:                                 ; preds = %bb.pw
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686", %bb.px
  %.sroa.1335.0.i.i697 = phi i64 [ %.sroa.0.0.i422.i.i663, %bb.px ], [ %.sroa.1335.1124200.i.i690, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686" ] ; 2 uses
  %.sroa.034.0.i.i698 = phi ptr [ %.sroa.10.0.i.i.i427938.i.i672, %bb.px ], [ %.sroa.034.1125198.i.i691, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686" ] ; 2 uses
  %.sroa.12.1.i.i699 = phi i64 [ %i.cru, %bb.px ], [ %.sroa.12.3126196.i.i692, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686" ] ; 2 uses
  %.sroa.026.1.i.i700 = phi ptr [ %i.csx, %bb.px ], [ %.sroa.026.3127194.i.i693, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686" ] ; 2 uses
  %.sroa.14.2.i.i701 = phi i64 [ %i.cru, %bb.px ], [ %.sroa.14.4128192.i.i694, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686" ] ; 2 uses
  %.sroa.016.2.i.i702 = phi ptr [ %.sroa.10.0.i.i.i.i.i655, %bb.px ], [ %.sroa.016.4129190.i.i695, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686" ] ; 2 uses
  %.pn230.pn.pn.i.i703 = phi { ptr, i32 } [ %i.cts, %bb.px ], [ %.pn230.pn204.i.i687, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686" ] ; 2 uses
  %i.ctq = icmp eq i64 %.sroa.1335.0.i.i697, 0
  br i1 %i.ctq, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i704": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696"
  %i.ctr = mul nuw nsw i64 %.sroa.1335.0.i.i697, 2192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i698) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.034.0.i.i698, i64 noundef %i.ctr, i64 noundef 8) #45, !noalias !9285
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i"

bb.px:                                            ; preds = %bb.pw
  %i.cts = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i696"

bb.py:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i671
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.cto, i8 0, i64 32784, i1 false), !noalias !9285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.m, i8 0, i64 256, i1 false), !noalias !9285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.l, i8 0, i64 256, i1 false), !noalias !9285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.k, i8 0, i64 256, i1 false), !noalias !9285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.j, i8 0, i64 256, i1 false), !noalias !9285
  br label %bb.sz

.split.i.i726:                                    ; preds = %bb.tc, %._crit_edge585.i.i788
  %indvars.iv.i.i727 = phi i64 [ %indvars.iv.next.i.i789, %._crit_edge585.i.i788 ], [ %.sroa.0.0.i.i637, %bb.tc ] ; 2 uses
  %.sroa.0.0596.i.i728 = phi i64 [ %.sroa.0.1.lcssa.i.i784, %._crit_edge585.i.i788 ], [ 0, %bb.tc ] ; 4 uses
  %.sroa.012.0595.i.i729 = phi i64 [ %.sroa.012.1.i.i765, %._crit_edge585.i.i788 ], [ %i.cru, %bb.tc ] ; 7 uses
  %.sroa.018.0594.i.i730 = phi i64 [ %.sroa.018.1.lcssa.i.i783, %._crit_edge585.i.i788 ], [ 0, %bb.tc ] ; 4 uses
  %.sroa.023.0593.i.i731 = phi i64 [ %.sroa.023.1.i.i769, %._crit_edge585.i.i788 ], [ %i.cru, %bb.tc ] ; 7 uses
  %.sroa.029.0592.i.i732 = phi i64 [ %i.dfg, %._crit_edge585.i.i788 ], [ 0, %bb.tc ] ; 2 uses
  %.sroa.043.0591.i.i733 = phi i64 [ %.sroa.043.3.lcssa.i.i760, %._crit_edge585.i.i788 ], [ 0, %bb.tc ] ; 2 uses
  %.sroa.047.1590.i.i734 = phi i64 [ %i.dfh, %._crit_edge585.i.i788 ], [ 0, %bb.tc ] ; 5 uses
  %.sroa.016.3589.i.i735 = phi ptr [ %.sroa.016.7.i.i764, %._crit_edge585.i.i788 ], [ %.sroa.10.0.i.i.i.i.i655, %bb.tc ] ; 9 uses
  %.sroa.14.3588.i.i736 = phi i64 [ %.sroa.14.7.i.i763, %._crit_edge585.i.i788 ], [ %i.cru, %bb.tc ] ; 10 uses
  %.sroa.026.2587.i.i737 = phi ptr [ %.sroa.026.5.i.i768, %._crit_edge585.i.i788 ], [ %i.csx, %bb.tc ] ; 11 uses
  %.sroa.12.2586.i.i738 = phi i64 [ %.sroa.12.5.i.i767, %._crit_edge585.i.i788 ], [ %i.cru, %bb.tc ] ; 12 uses
  %i.ctt = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i727, i64 1)
  %umax859.i.i739 = tail call i64 @llvm.umin.i64(i64 %i.ctt, i64 64)
  %i.ctu = sub nuw i64 %.sroa.0.0.i.i637, %.sroa.047.1590.i.i734
  %.sroa.0.0.i447.i.i740 = tail call noundef i64 @llvm.umin.i64(i64 %i.ctu, i64 64) ; 3 uses
  %.not933.i.i741 = icmp eq i64 %.sroa.0.0.i.i637, %.sroa.047.1590.i.i734 ; 2 uses
  br i1 %.not933.i.i741, label %._crit_edge575.i.i759, label %.lr.ph574.i.i742

.thread164.loopexit.i.i756:                       ; preds = %._crit_edge.i.i754
  %lpad.loopexit258.i.i757 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686"

.thread164.loopexit.split-lp.loopexit.i.i761:     ; preds = %._crit_edge575.i.i759
  %lpad.loopexit261.i.i762 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686"

.thread164.loopexit.split-lp.loopexit.split-lp.i.i676: ; preds = %.invoke4018, %.invoke4016, %.invoke.i.i675, %bb.sh, %bb.rz, %bb.qg, %bb.qc
  %.sroa.11.1.ph.ph.ph.i.i677 = phi i64 [ 2049, %bb.qc ], [ %.sroa.11.2.i.i791, %bb.qg ], [ 2049, %.invoke.i.i675 ], [ 2049, %.invoke4016 ], [ 2049, %bb.rz ], [ 2049, %.invoke4018 ], [ 2049, %bb.sh ]
  %.sroa.044.1.ph.ph.ph.i.i678 = phi ptr [ %i.cto, %bb.qc ], [ %.sroa.044.2.i.i792, %bb.qg ], [ %i.cto, %.invoke.i.i675 ], [ %i.cto, %.invoke4016 ], [ %i.cto, %bb.rz ], [ %i.cto, %.invoke4018 ], [ %i.cto, %bb.sh ]
  %.sroa.1335.2.ph.ph.ph.i.i679 = phi i64 [ 0, %bb.qc ], [ 0, %bb.qg ], [ %.sroa.0.0.i422.i.i663, %.invoke.i.i675 ], [ %.sroa.0.0.i422.i.i663, %.invoke4016 ], [ %.sroa.0.0.i422.i.i663, %bb.rz ], [ %.sroa.0.0.i422.i.i663, %.invoke4018 ], [ %.sroa.0.0.i422.i.i663, %bb.sh ]
  %.sroa.034.2.ph.ph.ph.i.i680 = phi ptr [ inttoptr (i64 8 to ptr), %bb.qc ], [ inttoptr (i64 8 to ptr), %bb.qg ], [ %.sroa.10.0.i.i.i427938.i.i672, %.invoke.i.i675 ], [ %.sroa.10.0.i.i.i427938.i.i672, %.invoke4016 ], [ %.sroa.10.0.i.i.i427938.i.i672, %bb.rz ], [ %.sroa.10.0.i.i.i427938.i.i672, %.invoke4018 ], [ %.sroa.10.0.i.i.i427938.i.i672, %bb.sh ]
  %.sroa.12.4.ph.ph.ph.i.i681 = phi i64 [ %.sroa.12.5.i.i767, %bb.qc ], [ %.sroa.12.5.i.i767, %bb.qg ], [ %i.cru, %.invoke.i.i675 ], [ %.sroa.12.2586.i.i738, %.invoke4016 ], [ %.sroa.12.2586.i.i738, %bb.rz ], [ %.sroa.12.5.i.i767, %.invoke4018 ], [ %.sroa.12.2586.i.i738, %bb.sh ]
  %.sroa.026.4.ph.ph.ph.i.i682 = phi ptr [ %.sroa.026.5.i.i768, %bb.qc ], [ %.sroa.026.5.i.i768, %bb.qg ], [ %i.csx, %.invoke.i.i675 ], [ %.sroa.026.2587.i.i737, %.invoke4016 ], [ %.sroa.026.2587.i.i737, %bb.rz ], [ %.sroa.026.5.i.i768, %.invoke4018 ], [ %.sroa.026.2587.i.i737, %bb.sh ]
  %.sroa.14.5.ph.ph.ph.i.i683 = phi i64 [ %.sroa.14.7.i.i763, %bb.qc ], [ %.sroa.14.7.i.i763, %bb.qg ], [ %i.cru, %.invoke.i.i675 ], [ %.sroa.14.3588.i.i736, %.invoke4016 ], [ %.sroa.14.3588.i.i736, %bb.rz ], [ %.sroa.14.7.i.i763, %.invoke4018 ], [ %.sroa.14.7.i.i763, %bb.sh ]
  %.sroa.016.5.ph.ph.ph.i.i684 = phi ptr [ %.sroa.016.7.i.i764, %bb.qc ], [ %.sroa.016.7.i.i764, %bb.qg ], [ %.sroa.10.0.i.i.i.i.i655, %.invoke.i.i675 ], [ %.sroa.016.3589.i.i735, %.invoke4016 ], [ %.sroa.016.3589.i.i735, %bb.rz ], [ %.sroa.016.7.i.i764, %.invoke4018 ], [ %.sroa.016.7.i.i764, %bb.sh ]
  %lpad.loopexit.split-lp262.i.i685 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686"

bb.pz:                                            ; preds = %bb.ql, %._crit_edge601.i.i800
  %.sroa.11.1.ph160.i.i801 = phi i64 [ 0, %bb.ql ], [ %.sroa.11.2.i.i791, %._crit_edge601.i.i800 ]
  %.sroa.044.1.ph161.i.i802 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ql ], [ %.sroa.044.2.i.i792, %._crit_edge601.i.i800 ]
  %.sroa.12.4.ph162.i.i803 = phi i64 [ 0, %bb.ql ], [ %.sroa.12.5.i.i767, %._crit_edge601.i.i800 ]
  %.sroa.026.4.ph163.i.i804 = phi ptr [ inttoptr (i64 4 to ptr), %bb.ql ], [ %.sroa.026.5.i.i768, %._crit_edge601.i.i800 ]
  %lpad.thr_comm.split-lp.i.i805 = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i.i806

bb.qa:                                            ; preds = %._crit_edge585.i.i788
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427938.i.i672, i64 noundef %i.csy, i64 noundef 8) #45, !noalias !9285
  %i.ctv = shl i64 %i.dfg, 6
  %i.ctw = lshr i64 %i.dfg, 1
  %i.ctx = mul i64 %i.ctw, %i.dfg
  %.sroa.0.0.i448.i.i790 = tail call noundef i64 @llvm.umin.i64(i64 %i.ctx, i64 %i.ctv) ; 5 uses
  %i.cty = add nuw i64 %.sroa.0.0.i448.i.i790, 1  ; 2 uses
  %i.ctz = icmp ugt i64 %.sroa.0.0.i448.i.i790, 2048
  br i1 %i.ctz, label %bb.qb, label %bb.qd

bb.qb:                                            ; preds = %bb.qa
  %i.cua = shl i64 %i.cty, 4                      ; 5 uses
  %i.cub = icmp ugt i64 %.sroa.0.0.i448.i.i790, 1152921504606846974
  %i.cuc = icmp ugt i64 %i.cua, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i933 = or i1 %i.cub, %i.cuc
  br i1 %or.cond.i.i.i.i.i449.i.i933, label %bb.qc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934: ; preds = %bb.qb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9323
  %i.cud = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cua, i64 noundef range(i64 1, 9) 4) #45, !noalias !9323 ; 5 uses
  %i.cue = icmp eq ptr %i.cud, null
  br i1 %i.cue, label %bb.qc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935"

bb.qc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934, %bb.qb
  %.sroa.4.0.ph.i.i.i455.i.i940 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934 ], [ 0, %bb.qb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i940, i64 %i.cua, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i941 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.noexc456.i.i941:                                 ; preds = %bb.qc
  unreachable

bb.qd:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935", %bb.qa
  %.sroa.11.2.i.i791 = phi i64 [ %i.cty, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935" ], [ 2049, %bb.qa ] ; 4 uses
  %.sroa.044.2.i.i792 = phi ptr [ %i.cud, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935" ], [ %i.cto, %bb.qa ] ; 4 uses
  %i.cuf = shl i64 %i.dfg, 2                      ; 12 uses
  %i.cug = icmp ugt i64 %i.dfg, 4611686018427387903
  %i.cuh = icmp ugt i64 %i.cuf, 9223372036854775804
  %or.cond.i.i.i.i458.i.i793 = or i1 %i.cug, %i.cuh
  br i1 %or.cond.i.i.i.i458.i.i793, label %bb.qg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794: ; preds = %bb.qd
  %i.cui = icmp eq i64 %i.cuf, 0                  ; 2 uses
  br i1 %i.cui, label %bb.qh, label %bb.qe

bb.qe:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9331
  %i.cuj = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cuf, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9331 ; 2 uses
  %i.cuk = icmp eq ptr %i.cuj, null
  br i1 %i.cuk, label %bb.qg, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.cul = ptrtoint ptr %i.cuj to i64
  br label %bb.qh

bb.qg:                                            ; preds = %bb.qe, %bb.qd
  %.sroa.4.0.ph.i.i461.i.i931 = phi i64 [ 4, %bb.qe ], [ 0, %bb.qd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i931, i64 %i.cuf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i932 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.noexc462.i.i932:                                 ; preds = %bb.qg
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i935": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i934
  %i.cum = add nsw i64 %i.cua, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cud, i8 0, i64 %i.cum, i1 false), !noalias !9336
  %i.cun = getelementptr i8, ptr %i.cud, i64 %i.cua ; 2 uses
  %scevgep11.i451.i.i936 = getelementptr i8, ptr %i.cud, i64 %i.cum
  store i32 0, ptr %scevgep11.i451.i.i936, align 4, !noalias !9336
  %.sroa.55.0..sroa_idx.i452.i.i937 = getelementptr i8, ptr %i.cun, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i937, align 4, !noalias !9336
  %.sroa.67.0..sroa_idx.i453.i.i938 = getelementptr i8, ptr %i.cun, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i938, align 4, !noalias !9336
  %i.cuo = icmp samesign ult i64 %.sroa.0.0.i448.i.i790, 576460752303423487
  tail call void @llvm.assume(i1 %i.cuo)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.cto, i64 noundef 32784, i64 noundef 4) #45, !noalias !9285
  br label %bb.qd

bb.qh:                                            ; preds = %bb.qf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794
  %.sroa.10.0.i.i460.i.i795 = phi i64 [ %i.cul, %bb.qf ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i794 ]
  %i.cup = inttoptr i64 %.sroa.10.0.i.i460.i.i795 to ptr ; 13 uses
  %i.cuq = icmp samesign ult i64 %i.dfg, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cuq)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cup) ]
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cup, i64 %i.cuf
  %i.cus = icmp eq i64 %i.dfg, 0                  ; 3 uses
  br i1 %i.cus, label %._crit_edge601.i.i800, label %.lr.ph600.i.i796.preheader

.lr.ph600.i.i796.preheader:                       ; preds = %bb.qh
  %i.cut = add nsw i64 %i.cuf, -4                 ; 2 uses
  %i.cuu = lshr exact i64 %i.cut, 2
  %i.cuv = add nuw nsw i64 %i.cuu, 1              ; 2 uses
  %min.iters.check3966 = icmp ult i64 %i.cut, 28
  br i1 %min.iters.check3966, label %.lr.ph600.i.i796.preheader4046, label %vector.ph3967

vector.ph3967:                                    ; preds = %.lr.ph600.i.i796.preheader
  %n.vec3968 = and i64 %i.cuv, 9223372036854775800 ; 4 uses
  %i.cuw = trunc i64 %n.vec3968 to i32
  %i.cux = shl i64 %n.vec3968, 2
  %i.cuy = getelementptr i8, ptr %i.cup, i64 %i.cux
  br label %vector.body3969

vector.body3969:                                  ; preds = %vector.body3969, %vector.ph3967
  %index3970 = phi i64 [ 0, %vector.ph3967 ], [ %index.next3974, %vector.body3969 ] ; 2 uses
  %vec.ind3971 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3967 ], [ %vec.ind.next3975, %vector.body3969 ] ; 3 uses
  %step.add3972 = add <4 x i32> %vec.ind3971, splat (i32 4)
  %i.cuz = shl i64 %index3970, 2
  %next.gep3973 = getelementptr i8, ptr %i.cup, i64 %i.cuz ; 2 uses
  %i.cva = getelementptr i8, ptr %next.gep3973, i64 16
  store <4 x i32> %vec.ind3971, ptr %next.gep3973, align 4, !noalias !9285
  store <4 x i32> %step.add3972, ptr %i.cva, align 4, !noalias !9285
  %index.next3974 = add nuw i64 %index3970, 8     ; 2 uses
  %vec.ind.next3975 = add <4 x i32> %vec.ind3971, splat (i32 8)
  %i.cvb = icmp eq i64 %index.next3974, %n.vec3968
  br i1 %i.cvb, label %middle.block3976, label %vector.body3969, !llvm.loop !9339

middle.block3976:                                 ; preds = %vector.body3969
  %cmp.n3977 = icmp eq i64 %i.cuv, %n.vec3968
  br i1 %cmp.n3977, label %._crit_edge601.i.i800, label %.lr.ph600.i.i796.preheader4046

.lr.ph600.i.i796.preheader4046:                   ; preds = %.lr.ph600.i.i796.preheader, %middle.block3976
  %.sroa.047.2598.i.i797.ph = phi i32 [ 0, %.lr.ph600.i.i796.preheader ], [ %i.cuw, %middle.block3976 ]
  %.sroa.0135.0597.i.i798.ph = phi ptr [ %i.cup, %.lr.ph600.i.i796.preheader ], [ %i.cuy, %middle.block3976 ]
  br label %.lr.ph600.i.i796

.lr.ph600.i.i796:                                 ; preds = %.lr.ph600.i.i796.preheader4046, %.lr.ph600.i.i796
  %.sroa.047.2598.i.i797 = phi i32 [ %i.cvc, %.lr.ph600.i.i796 ], [ %.sroa.047.2598.i.i797.ph, %.lr.ph600.i.i796.preheader4046 ] ; 2 uses
  %.sroa.0135.0597.i.i798 = phi ptr [ %.sroa.0135.1.i.i799, %.lr.ph600.i.i796 ], [ %.sroa.0135.0597.i.i798.ph, %.lr.ph600.i.i796.preheader4046 ] ; 2 uses
  %.sroa.0135.1.i.i799 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0597.i.i798, i64 4 ; 2 uses
  store i32 %.sroa.047.2598.i.i797, ptr %.sroa.0135.0597.i.i798, align 4, !noalias !9285
  %i.cvc = add i32 %.sroa.047.2598.i.i797, 1
  %i.cvd = icmp eq ptr %.sroa.0135.1.i.i799, %i.cur
  br i1 %i.cvd, label %._crit_edge601.i.i800, label %.lr.ph600.i.i796, !llvm.loop !9340

._crit_edge601.i.i800:                            ; preds = %.lr.ph600.i.i796, %middle.block3976, %bb.qh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i764) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i768) ]
  %i.cve = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i764, i64 noundef %.sroa.14.7.i.i763, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i768, i64 noundef %.sroa.12.5.i.i767, ptr noalias noundef nonnull align 4 %i.crr, i64 noundef %.sroa.0.0.i.i637, ptr noalias noundef nonnull align 4 %i.cup, i64 noundef %i.dfg, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i792, i64 noundef %.sroa.11.2.i.i791, i64 noundef %i.dfg, i64 noundef %.sroa.0.0.i.i637, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i790)
          to label %bb.qi unwind label %bb.pz, !noalias !9285 ; 3 uses

bb.qi:                                            ; preds = %._crit_edge601.i.i800
  %i.cvf = shl nuw nsw i64 %.sroa.11.2.i.i791, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i792, i64 noundef %i.cvf, i64 noundef 4) #45, !noalias !9285
  %i.cvg = icmp eq i64 %.sroa.12.5.i.i767, 0
  br i1 %i.cvg, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i817"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i817": ; preds = %bb.qi
  %i.cvh = shl nuw nsw i64 %.sroa.12.5.i.i767, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i768, i64 noundef %i.cvh, i64 noundef 4) #45, !noalias !9285
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i817", %bb.qi
  br i1 %i.cui, label %bb.qn, label %bb.qj

bb.qj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i818
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9341
  %i.cvi = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cuf, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9341 ; 2 uses
  %i.cvj = icmp eq ptr %i.cvi, null
  br i1 %i.cvj, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.cvk = ptrtoint ptr %i.cvi to i64
  br label %bb.qn

bb.ql:                                            ; preds = %bb.qj
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cuf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc472.i.i930 unwind label %bb.pz, !noalias !9285

end_hunk_6
begin_hunk_7_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

._crit_edge618.loopexit.i.i875:                   ; preds = %bb.rq, %.noexc.i.us.i925
  %.sroa.043.2.lcssa943948.i892901.i876 = phi i64 [ %.sroa.043.2.lcssa943948.i.i920, %.noexc.i.us.i925 ], [ %i.ddk, %bb.rq ]
  %i.dam = phi ptr [ %i.daa, %.noexc.i.us.i925 ], [ %i.cxz, %bb.rq ]
  %.us-phi445.i877 = phi i32 [ %.sroa.097.0944947.i.i921, %.noexc.i.us.i925 ], [ %.sroa.089.1.i.i873, %bb.rq ] ; 2 uses
  %.pre.i.i878 = zext i32 %.us-phi445.i877 to i64
  br label %._crit_edge618.i.i879

._crit_edge618.i.i879:                            ; preds = %._crit_edge618.loopexit.i.i875, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.thread.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.i
  %i.dan = phi ptr [ %i.dam, %._crit_edge618.loopexit.i.i875 ], [ %i.daa, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.i ], [ %i.cxz, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.thread.i ]
  %.sroa.043.2.lcssa943948.i893.i880 = phi i64 [ %.sroa.043.2.lcssa943948.i892901.i876, %._crit_edge618.loopexit.i.i875 ], [ %.sroa.043.2.lcssa943948.i.i920, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.i ], [ %i.ddk, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.thread.i ]
  %.pre-phi.i.i881 = phi i64 [ %.pre.i.i878, %._crit_edge618.loopexit.i.i875 ], [ %i.dab, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.i ], [ %i.cyb, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.thread.i ] ; 3 uses
  %.sroa.089.0.lcssa.i.i882 = phi i32 [ %.us-phi445.i877, %._crit_edge618.loopexit.i.i875 ], [ %.sroa.097.0944947.i.i921, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.i ], [ %.sroa.097.0.i.i852, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17h5f4b8e0e54900c22E.exit249.i.thread.i ]
  store i32 %.sroa.089.0.lcssa.i.i882, ptr %i.dan, align 4, !noalias !9285
  %i.dao = icmp samesign ugt i64 %i.dfg, %.pre-phi.i.i881
  br i1 %i.dao, label %bb.rm, label %.invoke1177.i.i833

bb.rm:                                            ; preds = %._crit_edge618.i.i879
  %i.dap = getelementptr inbounds nuw [4 x i8], ptr %i.cvm, i64 %.pre-phi.i.i881 ; 2 uses
  %i.daq = load i32, ptr %i.dap, align 4, !noalias !9285, !noundef !4
  %i.dar = icmp eq i32 %i.daq, -1
  br i1 %i.dar, label %bb.rn, label %bb.ro

bb.rn:                                            ; preds = %bb.rm
  store i32 %.sroa.084.0621.i.i825, ptr %i.dap, align 4, !noalias !9285
  %i.das = add i32 %.sroa.084.0621.i.i825, 1
  br label %bb.ro

bb.ro:                                            ; preds = %bb.rn, %bb.rm
  %.sroa.084.1.i.i883 = phi i32 [ %i.das, %bb.rn ], [ %.sroa.084.0621.i.i825, %bb.rm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9285
  %i.dat = icmp ult i64 %.sroa.0137.1623.i.i823, %.sroa.0.0.i.i637 ; 2 uses
  %i.dau = zext i1 %i.dat to i64
  %.sroa.0137.1.i.i884 = add nuw i64 %.sroa.0137.1623.i.i823, %i.dau
  br i1 %i.dat, label %bb.rk, label %bb.qo

.lr.ph617.i.i860:                                 ; preds = %.lr.ph617.i.i860.preheader, %bb.rq
  %.sroa.0141.1616.i.i861 = phi i64 [ %.sroa.0141.1.i.i874, %bb.rq ], [ 1, %.lr.ph617.i.i860.preheader ] ; 3 uses
  %.sroa.089.0615.i.i862 = phi i32 [ %.sroa.089.1.i.i873, %bb.rq ], [ %.sroa.097.0.i.i852, %.lr.ph617.i.i860.preheader ]
  %.sroa.093.0614.i.i863 = phi float [ %.sroa.093.1.i.i872, %bb.rq ], [ %i.dae, %.lr.ph617.i.i860.preheader ] ; 2 uses
  %.sroa.0141.0613.i.i864 = phi i64 [ %.sroa.0141.1616.i.i861, %bb.rq ], [ 0, %.lr.ph617.i.i860.preheader ] ; 3 uses
  %i.dav = icmp samesign ult i64 %.sroa.0141.0613.i.i864, %i.dfg
  br i1 %i.dav, label %bb.rp, label %.invoke1177.i.i833

bb.rp:                                            ; preds = %.lr.ph617.i.i860
  %i.daw = getelementptr inbounds nuw [4 x i8], ptr %i.cup, i64 %.sroa.0141.0613.i.i864 ; 2 uses
  %i.dax = load i32, ptr %i.daw, align 4, !noalias !9285, !noundef !4
  %i.day = zext i32 %i.dax to i64                 ; 3 uses
  %i.daz = icmp ugt i64 %.sroa.14.7.i.i763, %i.day
  br i1 %i.daz, label %.noexc.i.i865, label %.invoke1177.i.i833

.noexc.i.i865:                                    ; preds = %bb.rp
  %i.dba = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.016.7.i.i764, i64 %i.day ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.i, i64 2192, i1 false), !alias.scope !9408, !noalias !9285
  %i.dbb = load i64, ptr %i.cvq, align 8, !alias.scope !9412, !noalias !9285, !noundef !4
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.dba, i64 2176 ; 2 uses
  %i.dbd = load i64, ptr %i.dbc, align 8, !alias.scope !9415, !noalias !9285, !noundef !4
  %i.dbe = add i64 %i.dbd, %i.dbb
  store i64 %i.dbe, ptr %i.cvq, align 8, !alias.scope !9418, !noalias !9285
  %bound03981 = icmp ult ptr %i.h, %i.dbc
  %bound13982 = icmp ult ptr %i.dba, %i.cvq
  %found.conflict3983 = and i1 %bound03981, %bound13982
  br i1 %found.conflict3983, label %scalar.ph3984, label %vector.body3986

vector.body3986:                                  ; preds = %.noexc.i.i865, %vector.body3986
  %index3987 = phi i64 [ %index.next3992.1, %vector.body3986 ], [ 0, %.noexc.i.i865 ] ; 4 uses
  %i.dbf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index3987 ; 3 uses
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbf, i64 16 ; 2 uses
  %wide.load3988 = load <4 x i32>, ptr %i.dbf, align 8, !alias.scope !9421, !noalias !9424
  %wide.load3989 = load <4 x i32>, ptr %i.dbg, align 8, !alias.scope !9421, !noalias !9424
  %i.dbh = getelementptr inbounds nuw [4 x i8], ptr %i.dba, i64 %index3987 ; 2 uses
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbh, i64 16
  %wide.load3990 = load <4 x i32>, ptr %i.dbh, align 4, !alias.scope !9426, !noalias !9285
  %wide.load3991 = load <4 x i32>, ptr %i.dbi, align 4, !alias.scope !9426, !noalias !9285
  %i.dbj = add <4 x i32> %wide.load3990, %wide.load3988
  %i.dbk = add <4 x i32> %wide.load3991, %wide.load3989
  store <4 x i32> %i.dbj, ptr %i.dbf, align 8, !alias.scope !9421, !noalias !9424
  store <4 x i32> %i.dbk, ptr %i.dbg, align 8, !alias.scope !9421, !noalias !9424
  %index.next3992 = or disjoint i64 %index3987, 8 ; 2 uses
  %i.dbl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index.next3992 ; 3 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %i.dbl, i64 16 ; 2 uses
  %wide.load3988.1 = load <4 x i32>, ptr %i.dbl, align 8, !alias.scope !9421, !noalias !9424
  %wide.load3989.1 = load <4 x i32>, ptr %i.dbm, align 8, !alias.scope !9421, !noalias !9424
  %i.dbn = getelementptr inbounds nuw [4 x i8], ptr %i.dba, i64 %index.next3992 ; 2 uses
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.dbn, i64 16
  %wide.load3990.1 = load <4 x i32>, ptr %i.dbn, align 4, !alias.scope !9426, !noalias !9285
  %wide.load3991.1 = load <4 x i32>, ptr %i.dbo, align 4, !alias.scope !9426, !noalias !9285
  %i.dbp = add <4 x i32> %wide.load3990.1, %wide.load3988.1
  %i.dbq = add <4 x i32> %wide.load3991.1, %wide.load3989.1
  store <4 x i32> %i.dbp, ptr %i.dbl, align 8, !alias.scope !9421, !noalias !9424
  store <4 x i32> %i.dbq, ptr %i.dbm, align 8, !alias.scope !9421, !noalias !9424
  %index.next3992.1 = add nuw nsw i64 %index3987, 16 ; 2 uses
  %i.dbr = icmp eq i64 %index.next3992.1, 544
  br i1 %i.dbr, label %.noexc240.i.i868, label %vector.body3986, !llvm.loop !9427

scalar.ph3984:                                    ; preds = %.noexc.i.i865, %scalar.ph3984
  %.sroa.01.0.i263612.i.i866 = phi i64 [ %i.dck, %scalar.ph3984 ], [ 0, %.noexc.i.i865 ] ; 6 uses
  %i.dbs = or disjoint i64 %.sroa.01.0.i263612.i.i866, 1 ; 2 uses
  %i.dbt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.01.0.i263612.i.i866 ; 2 uses
  %i.dbu = load i32, ptr %i.dbt, align 8, !noalias !9285, !noundef !4
  %i.dbv = getelementptr inbounds nuw [4 x i8], ptr %i.dba, i64 %.sroa.01.0.i263612.i.i866
  %i.dbw = load i32, ptr %i.dbv, align 4, !noalias !9285, !noundef !4
  %i.dbx = add i32 %i.dbw, %i.dbu
  store i32 %i.dbx, ptr %i.dbt, align 8, !noalias !9285
  %i.dby = or disjoint i64 %.sroa.01.0.i263612.i.i866, 2 ; 2 uses
  %i.dbz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dbs ; 2 uses
  %i.dca = load i32, ptr %i.dbz, align 4, !noalias !9285, !noundef !4
  %i.dcb = getelementptr inbounds nuw [4 x i8], ptr %i.dba, i64 %i.dbs
  %i.dcc = load i32, ptr %i.dcb, align 4, !noalias !9285, !noundef !4
  %i.dcd = add i32 %i.dcc, %i.dca
  store i32 %i.dcd, ptr %i.dbz, align 4, !noalias !9285
  %i.dce = or disjoint i64 %.sroa.01.0.i263612.i.i866, 3 ; 2 uses
  %i.dcf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dby ; 2 uses
  %i.dcg = load i32, ptr %i.dcf, align 8, !noalias !9285, !noundef !4
  %i.dch = getelementptr inbounds nuw [4 x i8], ptr %i.dba, i64 %i.dby
  %i.dci = load i32, ptr %i.dch, align 4, !noalias !9285, !noundef !4
  %i.dcj = add i32 %i.dci, %i.dcg
  store i32 %i.dcj, ptr %i.dcf, align 8, !noalias !9285
  %i.dck = add nuw nsw i64 %.sroa.01.0.i263612.i.i866, 4 ; 2 uses
  %i.dcl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dce ; 2 uses
  %i.dcm = load i32, ptr %i.dcl, align 4, !noalias !9285, !noundef !4
  %i.dcn = getelementptr inbounds nuw [4 x i8], ptr %i.dba, i64 %i.dce
  %i.dco = load i32, ptr %i.dcn, align 4, !noalias !9285, !noundef !4
  %i.dcp = add i32 %i.dco, %i.dcm
  store i32 %i.dcp, ptr %i.dcl, align 4, !noalias !9285
  %exitcond865.not.i.i867.3 = icmp eq i64 %i.dck, 544
  br i1 %exitcond865.not.i.i867.3, label %.noexc240.i.i868, label %scalar.ph3984, !llvm.loop !9428

.noexc240.i.i868:                                 ; preds = %vector.body3986, %scalar.ph3984
  %i.dcq = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hcf0c1c8411fee5dfE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.h)
          to label %.noexc242.i.i871 unwind label %.loopexit.split-lp.thread.i.i869, !noalias !9285

.noexc242.i.i871:                                 ; preds = %.noexc240.i.i868
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dba, i64 2184
  %i.dcs = load float, ptr %i.dcr, align 8, !alias.scope !9429, !noalias !9285, !noundef !4
  %i.dct = fsub float %i.dcq, %i.dcs              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9403
  %i.dcu = fcmp olt float %i.dct, %.sroa.093.0614.i.i863
  br i1 %i.dcu, label %bb.rr, label %bb.rq

bb.rq:                                            ; preds = %bb.rr, %.noexc242.i.i871
  %.sroa.093.1.i.i872 = phi float [ %i.dct, %bb.rr ], [ %.sroa.093.0614.i.i863, %.noexc242.i.i871 ]
  %.sroa.089.1.i.i873 = phi i32 [ %i.dcx, %bb.rr ], [ %.sroa.089.0615.i.i862, %.noexc242.i.i871 ] ; 2 uses
  %i.dcv = icmp samesign ult i64 %.sroa.0141.1616.i.i861, %i.cve ; 2 uses
  %i.dcw = zext i1 %i.dcv to i64
  %.sroa.0141.1.i.i874 = add nuw nsw i64 %.sroa.0141.1616.i.i861, %i.dcw
  br i1 %i.dcv, label %.lr.ph617.i.i860, label %._crit_edge618.loopexit.i.i875

bb.rr:                                            ; preds = %.noexc242.i.i871
  %i.dcx = load i32, ptr %i.daw, align 4, !noalias !9285, !noundef !4
  br label %bb.rq

bb.rs:                                            ; preds = %.lr.ph608.i.i830
  %i.dcy = getelementptr inbounds nuw [2 x i8], ptr %i.ckh, i64 %.sroa.043.2606.i.i831
  %i.dcz = load i16, ptr %i.dcy, align 2, !alias.scope !9432, !noalias !9435, !noundef !4 ; 2 uses
  %i.dda = zext i16 %i.dcz to i64                 ; 2 uses
  %i.ddb = icmp ult i16 %i.dcz, 544
  br i1 %i.ddb, label %bb.rt, label %.invoke1177.i.i833

.invoke1177.i.i833:                               ; preds = %._crit_edge618.i.i879, %._crit_edge609.thread.i.i927, %._crit_edge609.i.i850, %bb.rs, %.lr.ph608.i.i830, %bb.rp, %.lr.ph617.i.i860, %bb.rl, %.lr.ph617.i.us.i922
  %i.ddc = phi i64 [ %i.day, %bb.rp ], [ %i.dai, %bb.rl ], [ %.sroa.043.2606.i.i831, %.lr.ph608.i.i830 ], [ %i.dfg, %.lr.ph617.i.us.i922 ], [ %.sroa.0141.0613.i.i864, %.lr.ph617.i.i860 ], [ %i.dda, %bb.rs ], [ %i.cyg, %._crit_edge609.thread.i.i927 ], [ %i.cyb, %._crit_edge609.i.i850 ], [ %.pre-phi.i.i881, %._crit_edge618.i.i879 ]
  %i.ddd = phi i64 [ %.sroa.14.7.i.i763, %bb.rp ], [ %.sroa.14.7.i.i763, %bb.rl ], [ %2, %.lr.ph608.i.i830 ], [ %i.dfg, %.lr.ph617.i.us.i922 ], [ %i.dfg, %.lr.ph617.i.i860 ], [ 544, %bb.rs ], [ %.sroa.14.7.i.i763, %._crit_edge609.thread.i.i927 ], [ %.sroa.14.7.i.i763, %._crit_edge609.i.i850 ], [ %i.dfg, %._crit_edge618.i.i879 ]
  %i.dde = phi ptr [ @902, %bb.rp ], [ @902, %bb.rl ], [ @903, %.lr.ph608.i.i830 ], [ @901, %.lr.ph617.i.us.i922 ], [ @901, %.lr.ph617.i.i860 ], [ @1287, %bb.rs ], [ @899, %._crit_edge609.thread.i.i927 ], [ @899, %._crit_edge609.i.i850 ], [ @900, %._crit_edge618.i.i879 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ddc, i64 noundef %i.ddd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dde) #46
          to label %.cont1178.i.i848 unwind label %.loopexit.split-lp.loopexit.split-lp.i.i834, !noalias !9285

.cont1178.i.i848:                                 ; preds = %.invoke1177.i.i833
  unreachable

bb.rt:                                            ; preds = %bb.rs
  %i.ddf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.dda ; 2 uses
  %i.ddg = load i32, ptr %i.ddf, align 4, !alias.scope !9436, !noalias !9285, !noundef !4
  %i.ddh = add i32 %i.ddg, 1
  store i32 %i.ddh, ptr %i.ddf, align 4, !alias.scope !9436, !noalias !9285
  %i.ddi = load i64, ptr %i.cvo, align 8, !alias.scope !9439, !noalias !9285, !noundef !4
  %i.ddj = add i64 %i.ddi, 1                      ; 2 uses
  store i64 %i.ddj, ptr %i.cvo, align 8, !alias.scope !9442, !noalias !9285
  %i.ddk = add nuw i64 %.sroa.043.2606.i.i831, 1  ; 4 uses
  %i.ddl = add nuw nsw i64 %i.cxx, 1
  %exitcond863.not.i.i849 = icmp eq i64 %i.cxx, %i.cxv
  br i1 %exitcond863.not.i.i849, label %._crit_edge609.i.i850, label %.lr.ph608.i.i830

.loopexit.split-lp.i.i836:                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i834, %.loopexit.split-lp.loopexit.i.i858, %bb.qm
  %.sroa.1152.2.i.i837 = phi i64 [ 0, %bb.qm ], [ %i.dfg, %.loopexit.split-lp.loopexit.split-lp.i.i834 ], [ %i.dfg, %.loopexit.split-lp.loopexit.i.i858 ] ; 2 uses
  %.sroa.051.2.i.i838 = phi ptr [ inttoptr (i64 4 to ptr), %bb.qm ], [ %i.cup, %.loopexit.split-lp.loopexit.split-lp.i.i834 ], [ %i.cup, %.loopexit.split-lp.loopexit.i.i858 ] ; 2 uses
  %.sroa.14.6.i.i839 = phi i64 [ 0, %bb.qm ], [ %.sroa.14.7.i.i763, %.loopexit.split-lp.loopexit.split-lp.i.i834 ], [ %.sroa.14.7.i.i763, %.loopexit.split-lp.loopexit.i.i858 ] ; 2 uses
  %.sroa.016.6.i.i840 = phi ptr [ inttoptr (i64 8 to ptr), %bb.qm ], [ %.sroa.016.7.i.i764, %.loopexit.split-lp.loopexit.split-lp.i.i834 ], [ %.sroa.016.7.i.i764, %.loopexit.split-lp.loopexit.i.i858 ] ; 2 uses
  %.pn.i.i841 = phi { ptr, i32 } [ %i.cvl, %bb.qm ], [ %lpad.loopexit.split-lp254.i.i835, %.loopexit.split-lp.loopexit.split-lp.i.i834 ], [ %lpad.loopexit253.i.i859, %.loopexit.split-lp.loopexit.i.i858 ] ; 2 uses
  br i1 %i.cus, label %.thread131.i.i806, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842": ; preds = %.loopexit.split-lp.i.i836, %.loopexit.split-lp.thread.i.i869
  %.pn958.i.i843 = phi { ptr, i32 } [ %lpad.loopexit.i.i870, %.loopexit.split-lp.thread.i.i869 ], [ %.pn.i.i841, %.loopexit.split-lp.i.i836 ]
  %.sroa.016.6957.i.i844 = phi ptr [ %.sroa.016.7.i.i764, %.loopexit.split-lp.thread.i.i869 ], [ %.sroa.016.6.i.i840, %.loopexit.split-lp.i.i836 ]
  %.sroa.14.6956.i.i845 = phi i64 [ %.sroa.14.7.i.i763, %.loopexit.split-lp.thread.i.i869 ], [ %.sroa.14.6.i.i839, %.loopexit.split-lp.i.i836 ]
  %.sroa.051.2955.i.i846 = phi ptr [ %i.cup, %.loopexit.split-lp.thread.i.i869 ], [ %.sroa.051.2.i.i838, %.loopexit.split-lp.i.i836 ]
  %.sroa.1152.2954.i.i847 = phi i64 [ %i.dfg, %.loopexit.split-lp.thread.i.i869 ], [ %.sroa.1152.2.i.i837, %.loopexit.split-lp.i.i836 ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cvm, i64 noundef %i.cuf, i64 noundef 4) #45, !noalias !9285
  br label %.thread131.i.i806

._crit_edge575.i.i759:                            ; preds = %bb.sw, %.split.i.i726
  %.sroa.043.3.lcssa.i.i760 = phi i64 [ %.sroa.043.0591.i.i733, %.split.i.i726 ], [ %.sroa.043.4.lcssa.i.i755, %bb.sw ]
  %i.ddm = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i427938.i.i672, i64 noundef %.sroa.0.0.i422.i.i663, ptr noalias noundef nonnull align 4 %i.m, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.k, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.l, i64 noundef 64, ptr noalias noundef nonnull align 4 %i.cto, i64 noundef 2049, i64 noundef %.sroa.0.0.i447.i.i740, i64 noundef %.sroa.0.0.i447.i.i740, i64 noundef 64, i64 noundef 2048)
          to label %bb.ru unwind label %.thread164.loopexit.split-lp.loopexit.i.i761, !noalias !9285 ; 5 uses

bb.ru:                                            ; preds = %._crit_edge575.i.i759
  %i.ddn = add i64 %i.ddm, %.sroa.0.0596.i.i728   ; 3 uses
  %i.ddo = icmp ult i64 %.sroa.012.0595.i.i729, %i.ddn
  br i1 %i.ddo, label %bb.rv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i"

bb.rv:                                            ; preds = %bb.ru
  %i.ddp = icmp eq i64 %.sroa.012.0595.i.i729, 0  ; 2 uses
  %..sroa.012.0.i.i952 = select i1 %i.ddp, i64 %i.ddn, i64 %.sroa.012.0595.i.i729
  br label %bb.rw

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i962", %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i", %bb.ru
  %.sroa.14.7.i.i763 = phi i64 [ %.sroa.14.3588.i.i736, %bb.ru ], [ %.sroa.066.1.i.i953, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i962" ], [ %.sroa.066.1.i.i953, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i" ] ; 23 uses
  %.sroa.016.7.i.i764 = phi ptr [ %.sroa.016.3589.i.i735, %bb.ru ], [ %.sroa.10.0.i.i.i521.i.i956, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i962" ], [ %.sroa.10.0.i.i.i521.i.i956, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i" ] ; 18 uses
  %.sroa.012.1.i.i765 = phi i64 [ %.sroa.012.0595.i.i729, %bb.ru ], [ %.sroa.066.1.i.i953, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i962" ], [ %.sroa.066.1.i.i953, %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i" ]
  %i.ddq = add i64 %i.ddm, %.sroa.018.0594.i.i730 ; 3 uses
  %i.ddr = icmp ult i64 %.sroa.023.0593.i.i731, %i.ddq
  br i1 %i.ddr, label %bb.sc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766"

bb.rw:                                            ; preds = %bb.rw, %bb.rv
  %.sroa.066.1.i.i953 = phi i64 [ %..sroa.012.0.i.i952, %bb.rv ], [ %i.ddt, %bb.rw ] ; 13 uses
  %i.dds = icmp ult i64 %.sroa.066.1.i.i953, %i.ddn
  %i.ddt = shl i64 %.sroa.066.1.i.i953, 1
  br i1 %i.dds, label %bb.rw, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.ddu = mul i64 %.sroa.066.1.i.i953, 2192      ; 4 uses
  %or.cond.i.i.i.i.i518.i.i954 = icmp ugt i64 %.sroa.066.1.i.i953, 4207742717543237
  br i1 %or.cond.i.i.i.i.i518.i.i954, label %bb.rz, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i955, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i955: ; preds = %bb.rx
  %i.ddv = icmp eq i64 %i.ddu, 0
  br i1 %i.ddv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i", label %bb.ry

bb.ry:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i955
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9445
  %i.ddw = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ddu, i64 noundef range(i64 1, 9) 8) #45, !noalias !9445 ; 2 uses
  %i.ddx = icmp eq ptr %i.ddw, null
  br i1 %i.ddx, label %bb.rz, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i"

bb.rz:                                            ; preds = %bb.ry, %bb.rx
  %.sroa.4.0.ph.i.i.i533.i.i967 = phi i64 [ 8, %bb.ry ], [ 0, %bb.rx ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i967, i64 %i.ddu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc534.i.i968 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.noexc534.i.i968:                                 ; preds = %bb.rz
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i": ; preds = %bb.ry, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i955
  %.sroa.10.0.i.i.i521.i.i956 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i955 ], [ %i.ddw, %bb.ry ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i957 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i955 ], [ %.sroa.066.1.i.i953, %bb.ry ]
  %i.ddy = icmp samesign ule i64 %.sroa.066.1.i.i953, %.sroa.4.0.i.i.i522.i.i957
  tail call void @llvm.assume(i1 %i.ddy)
  %i.ddz = icmp samesign ugt i64 %.sroa.066.1.i.i953, 1
  br i1 %i.ddz, label %.lr.ph.i.i.i528.i.i963.preheader, label %.loopexit257.i.i958

.lr.ph.i.i.i528.i.i963.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i"
  %i.dea = add nsw i64 %.sroa.066.1.i.i953, -1    ; 2 uses
  %i.deb = add nsw i64 %.sroa.066.1.i.i953, -2
  %xtraiter4787 = and i64 %i.dea, 7               ; 3 uses
  %i.dec = icmp ult i64 %i.deb, 7
  br i1 %i.dec, label %.lr.ph.i.i.i528.i.i963.epil.preheader, label %.lr.ph.i.i.i528.i.i963.preheader.new

.lr.ph.i.i.i528.i.i963.preheader.new:             ; preds = %.lr.ph.i.i.i528.i.i963.preheader
  %unroll_iter4792 = and i64 %i.dea, -8
  br label %.lr.ph.i.i.i528.i.i963

.lr.ph.i.i.i528.i.i963:                           ; preds = %.lr.ph.i.i.i528.i.i963, %.lr.ph.i.i.i528.i.i963.preheader.new
  %.sroa.0.08.i.i.i529.i.i964 = phi ptr [ %.sroa.10.0.i.i.i521.i.i956, %.lr.ph.i.i.i528.i.i963.preheader.new ], [ %i.dek, %.lr.ph.i.i.i528.i.i963 ] ; 17 uses
  %niter4793 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i963.preheader.new ], [ %niter4793.next.7, %.lr.ph.i.i.i528.i.i963 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i964, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !9453
  %i.ded = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ded, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !9453
  %i.dee = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dee, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !9453
  %i.def = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.def, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !9453
  %i.deg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.deg, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !9453
  %i.deh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.deh, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !9453
  %i.dei = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dei, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !9453
  %i.dej = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dej, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !9453
  %i.dek = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964, i64 17536 ; 3 uses
  %niter4793.next.7 = add i64 %niter4793, 8       ; 2 uses
  %niter4793.ncmp.7 = icmp eq i64 %niter4793.next.7, %unroll_iter4792
  br i1 %niter4793.ncmp.7, label %.loopexit257.i.i958.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i963

.loopexit257.i.i958.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i963
  %lcmp.mod4789.not = icmp eq i64 %xtraiter4787, 0
  br i1 %lcmp.mod4789.not, label %.loopexit257.i.i958, label %.lr.ph.i.i.i528.i.i963.epil.preheader

.lr.ph.i.i.i528.i.i963.epil.preheader:            ; preds = %.loopexit257.i.i958.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i963.preheader
  %.sroa.0.08.i.i.i529.i.i964.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i956, %.lr.ph.i.i.i528.i.i963.preheader ], [ %i.dek, %.loopexit257.i.i958.loopexit.unr-lcssa ]
  %lcmp.mod4791 = icmp ne i64 %xtraiter4787, 0
  call void @llvm.assume(i1 %lcmp.mod4791)
  br label %.lr.ph.i.i.i528.i.i963.epil

.lr.ph.i.i.i528.i.i963.epil:                      ; preds = %.lr.ph.i.i.i528.i.i963.epil, %.lr.ph.i.i.i528.i.i963.epil.preheader
  %.sroa.0.08.i.i.i529.i.i964.epil = phi ptr [ %i.del, %.lr.ph.i.i.i528.i.i963.epil ], [ %.sroa.0.08.i.i.i529.i.i964.epil.init, %.lr.ph.i.i.i528.i.i963.epil.preheader ] ; 3 uses
  %epil.iter4788 = phi i64 [ %epil.iter4788.next, %.lr.ph.i.i.i528.i.i963.epil ], [ 0, %.lr.ph.i.i.i528.i.i963.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i964.epil, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !9453
  %i.del = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i964.epil, i64 2192 ; 2 uses
  %epil.iter4788.next = add i64 %epil.iter4788, 1 ; 2 uses
  %epil.iter4788.cmp.not = icmp eq i64 %epil.iter4788.next, %xtraiter4787
  br i1 %epil.iter4788.cmp.not, label %.loopexit257.i.i958, label %.lr.ph.i.i.i528.i.i963.epil, !llvm.loop !9456

.loopexit257.i.i958:                              ; preds = %.loopexit257.i.i958.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i963.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i959 = phi ptr [ %.sroa.10.0.i.i.i521.i.i956, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i" ], [ %i.dek, %.loopexit257.i.i958.loopexit.unr-lcssa ], [ %i.del, %.lr.ph.i.i.i528.i.i963.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i526.i.i959, i8 0, i64 2184, i1 false), !noalias !9285
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i959, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !9453
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3589.i.i735) ]
  %.not227.i.i960 = icmp ugt i64 %.sroa.012.0595.i.i729, %.sroa.14.3588.i.i736
  br i1 %.not227.i.i960, label %bb.sb, label %bb.sa, !prof !2174

bb.sa:                                            ; preds = %.loopexit257.i.i958
  br i1 %i.ddp, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i", label %.lr.ph.preheader.i.i.i961

.lr.ph.preheader.i.i.i961:                        ; preds = %bb.sa
  %i.dem = mul nuw nsw i64 %.sroa.012.0595.i.i729, 2192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i956, ptr nonnull readonly align 8 %.sroa.016.3589.i.i735, i64 %i.dem, i1 false), !alias.scope !9457, !noalias !9285
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i"

bb.sb:                                            ; preds = %.loopexit257.i.i958
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0595.i.i729, i64 noundef %.sroa.14.3588.i.i736, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @912) #46
          to label %bb.rc unwind label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i", !noalias !9285

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i961, %bb.sa
  %i.den = icmp eq i64 %.sroa.14.3588.i.i736, 0
  br i1 %i.den, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i962"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i962": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i"
  %i.deo = mul nuw nsw i64 %.sroa.14.3588.i.i736, 2192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.3589.i.i735, i64 noundef %i.deo, i64 noundef 8) #45, !noalias !9285
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i"

bb.sc:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i"
  %i.dep = icmp eq i64 %.sroa.023.0593.i.i731, 0
  %..sroa.023.0.i.i942 = select i1 %i.dep, i64 %i.ddq, i64 %.sroa.023.0593.i.i731
  br label %bb.sd

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i948", %bb.sk, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i"
  %.sroa.12.5.i.i767 = phi i64 [ %.sroa.12.2586.i.i738, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i" ], [ %.sroa.070.1.i.i943, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i948" ], [ %.sroa.070.1.i.i943, %bb.sk ] ; 11 uses
  %.sroa.026.5.i.i768 = phi ptr [ %.sroa.026.2587.i.i737, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i" ], [ %i.dfb, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i948" ], [ %i.dfb, %bb.sk ] ; 11 uses
  %.sroa.023.1.i.i769 = phi i64 [ %.sroa.023.0593.i.i731, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i" ], [ %.sroa.070.1.i.i943, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i948" ], [ %.sroa.070.1.i.i943, %bb.sk ]
  %.not628.i.i770 = icmp eq i64 %i.ddm, 0
  br i1 %.not628.i.i770, label %.preheader256.i.i782, label %.lr.ph580.preheader.i.i771

.lr.ph580.preheader.i.i771:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766"
  %reass.sub446.i772 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i763, i64 %.sroa.0.0596.i.i728)
  %i.deq = add nuw nsw i64 %reass.sub446.i772, 1
  %reass.sub447.i773 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i767, i64 %.sroa.018.0594.i.i730)
  %i.der = add nuw nsw i64 %reass.sub447.i773, 1
  br label %.lr.ph580.i.i774

bb.sd:                                            ; preds = %bb.sd, %bb.sc
  %.sroa.070.1.i.i943 = phi i64 [ %..sroa.023.0.i.i942, %bb.sc ], [ %i.det, %bb.sd ] ; 9 uses
  %i.des = icmp ult i64 %.sroa.070.1.i.i943, %i.ddq
  %i.det = shl i64 %.sroa.070.1.i.i943, 1
  br i1 %i.des, label %bb.sd, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.deu = shl i64 %.sroa.070.1.i.i943, 2         ; 5 uses
  %i.dev = icmp ugt i64 %.sroa.070.1.i.i943, 4611686018427387903
  %i.dew = icmp ugt i64 %i.deu, 9223372036854775804
  %or.cond.i.i.i.i539.i.i944 = or i1 %i.dev, %i.dew
  br i1 %or.cond.i.i.i.i539.i.i944, label %bb.sh, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i945, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i945: ; preds = %bb.se
  %i.dex = icmp eq i64 %i.deu, 0
  br i1 %i.dex, label %bb.si, label %bb.sf

bb.sf:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i945
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9464
  %i.dey = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.deu, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9464 ; 2 uses
  %i.dez = icmp eq ptr %i.dey, null
  br i1 %i.dez, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.dfa = ptrtoint ptr %i.dey to i64
  br label %bb.si

bb.sh:                                            ; preds = %bb.sf, %bb.se
  %.sroa.4.0.ph.i.i542.i.i950 = phi i64 [ 4, %bb.sf ], [ 0, %bb.se ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i950, i64 %i.deu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc543.i.i951 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.noexc543.i.i951:                                 ; preds = %bb.sh
  unreachable

bb.si:                                            ; preds = %bb.sg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i945
  %.sroa.10.0.i.i541.i.i946 = phi i64 [ %i.dfa, %bb.sg ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i945 ]
  %i.dfb = inttoptr i64 %.sroa.10.0.i.i541.i.i946 to ptr ; 5 uses
  %i.dfc = icmp samesign ult i64 %.sroa.070.1.i.i943, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dfc)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dfb) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2587.i.i737) ]
  %.not229.i.i947 = icmp ugt i64 %.sroa.023.0593.i.i731, %.sroa.12.2586.i.i738
  br i1 %.not229.i.i947, label %bb.sj, label %bb.sk, !prof !2174

bb.sj:                                            ; preds = %bb.si
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0593.i.i731, i64 noundef %.sroa.12.2586.i.i738, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @911) #46
          to label %bb.rc unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949", !noalias !9285

bb.sk:                                            ; preds = %bb.si
  %i.dfd = shl nuw nsw i64 %.sroa.023.0593.i.i731, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dfb, ptr nonnull readonly align 4 %.sroa.026.2587.i.i737, i64 %i.dfd, i1 false), !alias.scope !9469, !noalias !9473
  %i.dfe = icmp eq i64 %.sroa.12.2586.i.i738, 0
  br i1 %i.dfe, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i948"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i948": ; preds = %bb.sk
  %i.dff = shl nuw nsw i64 %.sroa.12.2586.i.i738, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.2587.i.i737, i64 noundef %i.dff, i64 noundef 4) #45, !noalias !9285
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766"

.preheader256.i.i782:                             ; preds = %bb.su, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766"
  %.sroa.018.1.lcssa.i.i783 = phi i64 [ %.sroa.018.0594.i.i730, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766" ], [ %i.dgk, %bb.su ]
  %.sroa.0.1.lcssa.i.i784 = phi i64 [ %.sroa.0.0596.i.i728, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i766" ], [ %i.dgd, %bb.su ]
  br i1 %.not933.i.i741, label %._crit_edge585.i.i788, label %.lr.ph584.i.i785

.lr.ph584.i.i785:                                 ; preds = %.preheader256.i.i782
  %12 = trunc i64 %.sroa.029.0592.i.i732 to i32
  br label %bb.sl

._crit_edge585.i.i788:                            ; preds = %bb.sn, %.preheader256.i.i782
  %i.dfg = add i64 %i.ddm, %.sroa.029.0592.i.i732 ; 23 uses
  %i.dfh = add i64 %.sroa.047.1590.i.i734, 64     ; 2 uses
  %i.dfi = icmp ult i64 %i.dfh, %.sroa.0.0.i.i637
  %indvars.iv.next.i.i789 = add i64 %indvars.iv.i.i727, -64
  br i1 %i.dfi, label %.split.i.i726, label %bb.qa

bb.sl:                                            ; preds = %bb.sn, %.lr.ph584.i.i785
  %i.dfj = phi i64 [ 1, %.lr.ph584.i.i785 ], [ %i.dfu, %bb.sn ] ; 3 uses
  %.sroa.0133.0583.i.i786 = phi i64 [ 0, %.lr.ph584.i.i785 ], [ %i.dfj, %bb.sn ] ; 2 uses
  %i.dfk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0133.0583.i.i786
  %i.dfl = load i32, ptr %i.dfk, align 4, !noalias !9285, !noundef !4 ; 2 uses
  %i.dfm = zext i32 %i.dfl to i64                 ; 2 uses
  %i.dfn = icmp ult i32 %i.dfl, 64
  br i1 %i.dfn, label %bb.sm, label %.invoke4018

bb.sm:                                            ; preds = %bb.sl
  %i.dfo = or disjoint i64 %.sroa.0133.0583.i.i786, %.sroa.047.1590.i.i734 ; 3 uses
  %i.dfp = icmp ult i64 %i.dfo, %.sroa.0.0.i.i637
  br i1 %i.dfp, label %bb.sn, label %.invoke4018

bb.sn:                                            ; preds = %bb.sm
  %i.dfq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dfm
  %i.dfr = load i32, ptr %i.dfq, align 4, !noalias !9285, !noundef !4
  %i.dfs = add i32 %i.dfr, %12
  %i.dft = getelementptr inbounds nuw [4 x i8], ptr %i.crr, i64 %i.dfo
  store i32 %i.dfs, ptr %i.dft, align 4, !noalias !9285
  %i.dfu = add nuw nsw i64 %i.dfj, 1
  %exitcond860.not.i.i787 = icmp eq i64 %i.dfj, %umax859.i.i739
  br i1 %exitcond860.not.i.i787, label %._crit_edge585.i.i788, label %bb.sl

.lr.ph580.i.i774:                                 ; preds = %bb.su, %.lr.ph580.preheader.i.i771
  %i.dfv = phi i64 [ %i.dgn, %bb.su ], [ 1, %.lr.ph580.preheader.i.i771 ] ; 6 uses
  %.sroa.0.1579.i.i775 = phi i64 [ %i.dgd, %bb.su ], [ %.sroa.0.0596.i.i728, %.lr.ph580.preheader.i.i771 ] ; 3 uses
  %.sroa.018.1578.i.i776 = phi i64 [ %i.dgk, %bb.su ], [ %.sroa.018.0594.i.i730, %.lr.ph580.preheader.i.i771 ] ; 3 uses
  %.sroa.0131.0577.i.i777 = phi i64 [ %i.dfv, %bb.su ], [ 0, %.lr.ph580.preheader.i.i771 ] ; 2 uses
  %exitcond853.not.i.i778 = icmp eq i64 %i.dfv, 65
  br i1 %exitcond853.not.i.i778, label %.invoke4018, label %bb.so

bb.so:                                            ; preds = %.lr.ph580.i.i774
  %i.dfw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0131.0577.i.i777 ; 2 uses
  %i.dfx = load i32, ptr %i.dfw, align 4, !noalias !9285, !noundef !4
  %i.dfy = zext i32 %i.dfx to i64                 ; 4 uses
  %i.dfz = icmp samesign ugt i64 %.sroa.0.0.i422.i.i663, %i.dfy
  br i1 %i.dfz, label %bb.sq, label %.invoke4018

bb.sp:                                            ; preds = %bb.sr
  %i.dga = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686"

bb.sq:                                            ; preds = %bb.so
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i764) ]
  %exitcond855.not.i.i779 = icmp eq i64 %i.dfv, %i.deq
  br i1 %exitcond855.not.i.i779, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %bb.sq
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1579.i.i775, i64 noundef %.sroa.14.7.i.i763, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #46
          to label %bb.rc unwind label %bb.sp, !noalias !9285

bb.ss:                                            ; preds = %bb.sq
  %i.dgb = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427938.i.i672, i64 %i.dfy
  %i.dgc = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.016.7.i.i764, i64 %.sroa.0.1579.i.i775
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.dgc, ptr noundef nonnull align 8 dereferenceable(2192) %i.dgb, i64 2192, i1 false), !noalias !9285
  %i.dgd = add nuw i64 %.sroa.0.1579.i.i775, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i768) ]
  %exitcond857.not.i.i780 = icmp eq i64 %i.dfv, %i.der
  br i1 %exitcond857.not.i.i780, label %.invoke4018, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.dge = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dfy
  %i.dgf = load i32, ptr %i.dge, align 4, !noalias !9285, !noundef !4
  %i.dgg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i768, i64 %.sroa.018.1578.i.i776
  store i32 %i.dgf, ptr %i.dgg, align 4, !noalias !9285
  %i.dgh = load i32, ptr %i.dfw, align 4, !noalias !9285, !noundef !4 ; 2 uses
  %i.dgi = zext i32 %i.dgh to i64                 ; 2 uses
  %i.dgj = icmp ult i32 %i.dgh, 64
  br i1 %i.dgj, label %bb.su, label %.invoke4018

bb.su:                                            ; preds = %bb.st
  %i.dgk = add nuw i64 %.sroa.018.1578.i.i776, 1  ; 2 uses
  %i.dgl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dgi
  %i.dgm = trunc nuw nsw i64 %.sroa.0131.0577.i.i777 to i32
  store i32 %i.dgm, ptr %i.dgl, align 4, !noalias !9285
  %i.dgn = add nuw nsw i64 %i.dfv, 1
  %exitcond858.not.i.i781 = icmp eq i64 %i.dfv, %i.ddm
  br i1 %exitcond858.not.i.i781, label %.preheader256.i.i782, label %.lr.ph580.i.i774

.invoke4018:                                      ; preds = %bb.st, %bb.ss, %bb.so, %.lr.ph580.i.i774, %bb.sm, %bb.sl
  %i.dgo = phi i64 [ %i.dfo, %bb.sm ], [ %i.dfm, %bb.sl ], [ %i.dgi, %bb.st ], [ 64, %.lr.ph580.i.i774 ], [ %i.dfy, %bb.so ], [ %.sroa.018.1578.i.i776, %bb.ss ]
  %i.dgp = phi i64 [ %.sroa.0.0.i.i637, %bb.sm ], [ 64, %bb.sl ], [ 64, %bb.st ], [ 64, %.lr.ph580.i.i774 ], [ %.sroa.0.0.i422.i.i663, %bb.so ], [ %.sroa.12.5.i.i767, %bb.ss ]
  %i.dgq = phi ptr [ @905, %bb.sm ], [ @904, %bb.sl ], [ @910, %bb.st ], [ @906, %.lr.ph580.i.i774 ], [ @907, %bb.so ], [ @909, %bb.ss ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dgo, i64 noundef %i.dgp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dgq) #46
          to label %.cont4019 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.cont4019:                                        ; preds = %.invoke4018
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i949": ; preds = %bb.sj
  %i.dgr = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dfb, i64 noundef %i.deu, i64 noundef 4) #45, !noalias !9285
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i": ; preds = %bb.sb
  %i.dgs = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i956, i64 noundef %i.ddu, i64 noundef 8) #45, !noalias !9285
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i686"

.lr.ph574.i.i742:                                 ; preds = %.split.i.i726, %bb.sw
  %.sroa.0127.1573.i.i743 = phi i64 [ %.sroa.0127.1.i.i758, %bb.sw ], [ 1, %.split.i.i726 ] ; 3 uses
  %.sroa.043.3572.i.i744 = phi i64 [ %.sroa.043.4.lcssa.i.i755, %bb.sw ], [ %.sroa.043.0591.i.i733, %.split.i.i726 ] ; 3 uses
  %.sroa.0127.0571.i.i745 = phi i64 [ %.sroa.0127.1573.i.i743, %bb.sw ], [ 0, %.split.i.i726 ] ; 6 uses
  %i.dgt = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427938.i.i672, i64 %.sroa.0127.0571.i.i745 ; 5 uses
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgt, i64 2176 ; 2 uses
  %i.dgv = getelementptr inbounds nuw i8, ptr %i.dgt, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dgt, i8 0, i64 2184, i1 false), !noalias !9285
  store float 3.402000e+38, ptr %i.dgv, align 8, !alias.scope !9475, !noalias !9285
  %i.dgw = add nuw nsw i64 %.sroa.0127.0571.i.i745, %.sroa.047.1590.i.i734 ; 3 uses
  %i.dgx = icmp ult i64 %i.dgw, %.sroa.0.0.i.i637
  br i1 %i.dgx, label %bb.sv, label %.invoke4016

bb.sv:                                            ; preds = %.lr.ph574.i.i742
  %i.dgy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i652, i64 %i.dgw
  %i.dgz = load i32, ptr %i.dgy, align 4, !noalias !9285, !noundef !4 ; 2 uses
  %.not.i169.i746 = icmp eq i32 %i.dgz, 0
  br i1 %.not.i169.i746, label %._crit_edge.i.i754, label %.lr.ph.preheader.i.i747

.lr.ph.preheader.i.i747:                          ; preds = %bb.sv
  %i.dha = zext i32 %i.dgz to i64
  %reass.sub.i748 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3572.i.i744)
  %i.dhb = add nuw nsw i64 %reass.sub.i748, 1
  br label %.lr.ph.i.i749

._crit_edge.i.i754:                               ; preds = %bb.sy, %bb.sv
  %.sroa.043.4.lcssa.i.i755 = phi i64 [ %.sroa.043.3572.i.i744, %bb.sv ], [ %i.dhw, %bb.sy ] ; 2 uses
  %i.dhc = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hcf0c1c8411fee5dfE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.dgt)
          to label %bb.sw unwind label %.thread164.loopexit.i.i756, !noalias !9285

bb.sw:                                            ; preds = %._crit_edge.i.i754
  store float %i.dhc, ptr %i.dgv, align 8, !alias.scope !9478, !noalias !9285
  %i.dhd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0127.0571.i.i745
  %i.dhe = trunc nuw nsw i64 %.sroa.0127.0571.i.i745 to i32 ; 2 uses
  store i32 %i.dhe, ptr %i.dhd, align 4, !noalias !9285
  %i.dhf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0127.0571.i.i745
  store i32 %i.dhe, ptr %i.dhf, align 4, !noalias !9285
  %i.dhg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0127.0571.i.i745
  store i32 1, ptr %i.dhg, align 4, !noalias !9285
  %i.dhh = icmp samesign ult i64 %.sroa.0127.1573.i.i743, %.sroa.0.0.i447.i.i740 ; 2 uses
  %i.dhi = zext i1 %i.dhh to i64
  %.sroa.0127.1.i.i758 = add nuw i64 %.sroa.0127.1573.i.i743, %i.dhi
  br i1 %i.dhh, label %.lr.ph574.i.i742, label %._crit_edge575.i.i759

.lr.ph.i.i749:                                    ; preds = %bb.sy, %.lr.ph.preheader.i.i747
  %i.dhj = phi i64 [ %i.dhx, %bb.sy ], [ 1, %.lr.ph.preheader.i.i747 ] ; 3 uses
  %.sroa.043.4570.i.i750 = phi i64 [ %i.dhw, %bb.sy ], [ %.sroa.043.3572.i.i744, %.lr.ph.preheader.i.i747 ] ; 3 uses
  %exitcond851.not.i.i751 = icmp eq i64 %i.dhj, %i.dhb
  br i1 %exitcond851.not.i.i751, label %.invoke4016, label %bb.sx

bb.sx:                                            ; preds = %.lr.ph.i.i749
  %i.dhk = getelementptr inbounds nuw [2 x i8], ptr %i.ckh, i64 %.sroa.043.4570.i.i750
  %i.dhl = load i16, ptr %i.dhk, align 2, !alias.scope !9481, !noalias !9435, !noundef !4 ; 2 uses
  %i.dhm = zext i16 %i.dhl to i64                 ; 2 uses
  %i.dhn = icmp ult i16 %i.dhl, 544
  br i1 %i.dhn, label %bb.sy, label %.invoke4016

.invoke4016:                                      ; preds = %.lr.ph574.i.i742, %bb.sx, %.lr.ph.i.i749
  %i.dho = phi i64 [ %.sroa.043.4570.i.i750, %.lr.ph.i.i749 ], [ %i.dhm, %bb.sx ], [ %i.dgw, %.lr.ph574.i.i742 ]
  %i.dhp = phi i64 [ %2, %.lr.ph.i.i749 ], [ 544, %bb.sx ], [ %.sroa.0.0.i.i637, %.lr.ph574.i.i742 ]
  %i.dhq = phi ptr [ @914, %.lr.ph.i.i749 ], [ @1287, %bb.sx ], [ @913, %.lr.ph574.i.i742 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dho, i64 noundef %i.dhp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dhq) #46
          to label %.cont4017 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.cont4017:                                        ; preds = %.invoke4016
  unreachable

bb.sy:                                            ; preds = %bb.sx
  %i.dhr = getelementptr inbounds nuw [4 x i8], ptr %i.dgt, i64 %i.dhm ; 2 uses
  %i.dhs = load i32, ptr %i.dhr, align 4, !alias.scope !9484, !noalias !9285, !noundef !4
  %i.dht = add i32 %i.dhs, 1
  store i32 %i.dht, ptr %i.dhr, align 4, !alias.scope !9484, !noalias !9285
  %i.dhu = load i64, ptr %i.dgu, align 8, !alias.scope !9487, !noalias !9285, !noundef !4
  %i.dhv = add i64 %i.dhu, 1
  store i64 %i.dhv, ptr %i.dgu, align 8, !alias.scope !9490, !noalias !9285
  %i.dhw = add nuw i64 %.sroa.043.4570.i.i750, 1  ; 2 uses
  %i.dhx = add nuw nsw i64 %i.dhj, 1
  %exitcond852.not.i.i753 = icmp eq i64 %i.dhj, %i.dha
  br i1 %exitcond852.not.i.i753, label %._crit_edge.i.i754, label %.lr.ph.i.i749

bb.sz:                                            ; preds = %bb.tc, %bb.py
  %.sroa.047.0568.i.i673 = phi i64 [ 0, %bb.py ], [ %i.dic, %bb.tc ] ; 2 uses
  %.sroa.059.0567.i.i674 = phi i64 [ 0, %bb.py ], [ %.sroa.059.1.i.i725, %bb.tc ] ; 5 uses
  %i.dhy = icmp ult i64 %.sroa.059.0567.i.i674, %.sroa.0.0.i.i637
  br i1 %i.dhy, label %bb.ta, label %.invoke.i.i675

bb.ta:                                            ; preds = %bb.sz
  %i.dhz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i652, i64 %.sroa.059.0567.i.i674 ; 2 uses
  %i.dia = load i32, ptr %i.dhz, align 4, !noalias !9285, !noundef !4
  %i.dib = add i32 %i.dia, 1
  store i32 %i.dib, ptr %i.dhz, align 4, !noalias !9285
  %i.dic = add nuw i64 %.sroa.047.0568.i.i673, 1  ; 3 uses
  %i.did = icmp eq i64 %i.dic, %.sroa.01.1        ; 2 uses
  br i1 %i.did, label %bb.td, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.die = getelementptr inbounds nuw i8, ptr %i.cps, i64 %.sroa.047.0568.i.i673
  %i.dif = load i8, ptr %i.die, align 1, !alias.scope !9271, !noalias !9493, !noundef !4
  %i.dig = getelementptr inbounds nuw i8, ptr %i.cps, i64 %i.dic
  %i.dih = load i8, ptr %i.dig, align 1, !alias.scope !9271, !noalias !9493, !noundef !4
  %.not238.i.i724 = icmp eq i8 %i.dif, %i.dih
  br i1 %.not238.i.i724, label %bb.tc, label %bb.td

.invoke.i.i675:                                   ; preds = %bb.sz
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0567.i.i674, i64 noundef %.sroa.0.0.i.i637, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @915) #46
          to label %.cont.i.i723 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i676, !noalias !9285

.cont.i.i723:                                     ; preds = %.invoke.i.i675
  unreachable

bb.tc:                                            ; preds = %bb.td, %bb.tb
  %.sroa.059.1.i.i725 = phi i64 [ %i.dii, %bb.td ], [ %.sroa.059.0567.i.i674, %bb.tb ]
  br i1 %i.did, label %.split.i.i726, label %bb.sz

bb.td:                                            ; preds = %bb.tb, %bb.ta
  %i.dii = add nuw nsw i64 %.sroa.059.0567.i.i674, 1
  br label %bb.tc

.thread131.i.i806:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842", %.loopexit.split-lp.i.i836, %bb.pz
  %.pn230156.i.i807 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i805, %bb.pz ], [ %.pn.i.i841, %.loopexit.split-lp.i.i836 ], [ %.pn958.i.i843, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %.sroa.016.4155.i.i808 = phi ptr [ %.sroa.016.7.i.i764, %bb.pz ], [ %.sroa.016.6.i.i840, %.loopexit.split-lp.i.i836 ], [ %.sroa.016.6957.i.i844, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %.sroa.14.4154.i.i809 = phi i64 [ %.sroa.14.7.i.i763, %bb.pz ], [ %.sroa.14.6.i.i839, %.loopexit.split-lp.i.i836 ], [ %.sroa.14.6956.i.i845, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %.sroa.026.3153.i.i810 = phi ptr [ %.sroa.026.4.ph163.i.i804, %bb.pz ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i836 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %.sroa.12.3152.i.i811 = phi i64 [ %.sroa.12.4.ph162.i.i803, %bb.pz ], [ 0, %.loopexit.split-lp.i.i836 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %.sroa.044.0149.i.i812 = phi ptr [ %.sroa.044.1.ph161.i.i802, %bb.pz ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i836 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ]
  %.sroa.11.0148.i.i813 = phi i64 [ %.sroa.11.1.ph160.i.i801, %bb.pz ], [ 0, %.loopexit.split-lp.i.i836 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %.sroa.051.0147.i.i814 = phi ptr [ %i.cup, %bb.pz ], [ %.sroa.051.2.i.i838, %.loopexit.split-lp.i.i836 ], [ %.sroa.051.2955.i.i846, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %.sroa.1152.0146.i.i815 = phi i64 [ %i.dfg, %bb.pz ], [ %.sroa.1152.2.i.i837, %.loopexit.split-lp.i.i836 ], [ %.sroa.1152.2954.i.i847, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i842" ] ; 2 uses
  %i.dij = icmp eq i64 %.sroa.1152.0146.i.i815, 0
  br i1 %i.dij, label %bb.ra, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i816"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i816": ; preds = %.thread131.i.i806
  %i.dik = shl nuw nsw i64 %.sroa.1152.0146.i.i815, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0147.i.i814) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.051.0147.i.i814, i64 noundef %i.dik, i64 noundef 4) #45, !noalias !9285
  br label %bb.ra

bb.te:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i713", %bb.ps, %.thread86.i.i978
  %.pn230.pn.pn.pn.pn.pn90.i.i717 = phi { ptr, i32 } [ %i.csm, %.thread86.i.i978 ], [ %.pn230.pn.pn.pn.pn101.i.i715, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i713" ], [ %.pn230.pn.pn.pn.i.i709, %bb.ps ] ; 2 uses
  %i.dil = icmp eq i64 %.sroa.0.0.i.i637, 0
  br i1 %i.dil, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i721", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i718"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i718": ; preds = %bb.te
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i411.i.i652, i64 noundef %i.crh, i64 noundef 4) #45, !noalias !9285
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i719"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i980": ; preds = %bb.pm
  %i.dim = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.din = icmp eq i64 %.sroa.0.0.i.i637, 0
  br i1 %i.din, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i721", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i719"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i719": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i980", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i718"
  %i.dio = phi ptr [ %i.crr, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i718" ], [ %i.crm, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i980" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85963.i.i720 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i717, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread961.i.i718" ], [ %i.dim, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i980" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dio) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dio, i64 noundef %i.crh, i64 noundef 4) #45, !noalias !9285
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i721"

bb.tf:                                            ; preds = %bb.rf
  %i.dip = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.0109.1.i.i903, ptr %i.dip, align 8, !alias.scope !9346, !noalias !9347
  %i.diq = zext i8 %.sroa.0113.1.i.i902 to i64
  %i.dir = add nuw nsw i64 %i.diq, 1
  %i.dis = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.dir, ptr %i.dis, align 8, !alias.scope !9346, !noalias !9347
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.cvm, i64 noundef %i.cuf, i64 noundef 4) #45, !noalias !9285
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i652, i64 noundef %i.crh, i64 noundef 4) #45, !noalias !9285
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.crr, i64 noundef %i.crh, i64 noundef 4) #45, !noalias !9285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9285
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.cps, i64 noundef %.sroa.01.1, i64 noundef 1) #45, !noalias !9160
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit

bb.tg:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h5bcd1054eb4fbc47E.exit.loopexit.i, %.split.i498
  %.sroa.032.1442.i501 = phi i64 [ 1, %.split.i498 ], [ %.sroa.032.1.i648, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h5bcd1054eb4fbc47E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i502 = phi i64 [ %spec.store.select.i450, %.split.i498 ], [ %i.dyr, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h5bcd1054eb4fbc47E.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9505)
  %i.dit = icmp eq i64 %.sroa.0.0441.i502, 0
  br i1 %i.dit, label %.loopexit.i636, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.diu = add i64 %.sroa.0.0441.i502, 7
  %i.div = lshr i64 %i.diu, 3                     ; 8 uses
  %i.diw = icmp eq i64 %.sroa.0.0441.i502, 1
  br i1 %i.diw, label %.preheader.i.i993.preheader, label %bb.ti

.preheader.i.i993.preheader:                      ; preds = %bb.th
  br i1 %min.iters.check3936, label %.preheader.i.i993.preheader4179, label %vector.body3939

.preheader.i.i993.preheader4179:                  ; preds = %vector.body3939, %.preheader.i.i993.preheader
  %.ph4180 = phi i64 [ 1, %.preheader.i.i993.preheader ], [ %i.cre, %vector.body3939 ]
  %.sroa.066.0449.i.i994.ph = phi i64 [ 0, %.preheader.i.i993.preheader ], [ %n.vec3938, %vector.body3939 ]
  br label %.preheader.i.i993
end_hunk_7
begin_hunk_8_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %.sroa.6.0.copyload.i.i561 = load float, ptr %.sroa.6.0..sroa_idx.i.i560, align 4, !alias.scope !9526, !noalias !9509
  %.sroa.7.0..sroa_idx.i.i562 = getelementptr inbounds nuw i8, ptr %i.dvw, i64 12
  %.sroa.7.0.copyload.i.i563 = load float, ptr %.sroa.7.0..sroa_idx.i.i562, align 4, !alias.scope !9526, !noalias !9509
  %.sroa.8.0..sroa_idx.i.i564 = getelementptr inbounds nuw i8, ptr %i.dvw, i64 16
  %.sroa.8.0.copyload.i.i565 = load float, ptr %.sroa.8.0..sroa_idx.i.i564, align 4, !alias.scope !9526, !noalias !9509
  %.sroa.9.0..sroa_idx.i.i566 = getelementptr inbounds nuw i8, ptr %i.dvw, i64 20
  %.sroa.9.0.copyload.i.i567 = load float, ptr %.sroa.9.0..sroa_idx.i.i566, align 4, !alias.scope !9526, !noalias !9509
  %.sroa.10.0..sroa_idx.i.i568 = getelementptr inbounds nuw i8, ptr %i.dvw, i64 24
  %.sroa.10.0.copyload.i.i569 = load float, ptr %.sroa.10.0..sroa_idx.i.i568, align 4, !alias.scope !9526, !noalias !9509
  %.sroa.11.0..sroa_idx.i.i570 = getelementptr inbounds nuw i8, ptr %i.dvw, i64 28
  %.sroa.11.0.copyload.i.i571 = load float, ptr %.sroa.11.0..sroa_idx.i.i570, align 4, !alias.scope !9526, !noalias !9509
  %i.dvx = load float, ptr %.sroa.0164.0412.i.i551, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dvy = fadd float %.sroa.0.0.copyload.i.i557, %i.dvx ; 3 uses
  store float %i.dvy, ptr %.sroa.0164.0412.i.i551, align 4, !alias.scope !9501, !noalias !9510
  %i.dvz = fcmp olt float %i.dvy, %.sroa.029.0413.i.i550
  br i1 %i.dvz, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %i.dwa = trunc i64 %i.dmv to i8
  store i8 %i.dwa, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.ux

bb.ux:                                            ; preds = %bb.uw, %bb.uv
  %.sroa.029.4.i.i572 = phi float [ %i.dvy, %bb.uw ], [ %.sroa.029.0413.i.i550, %bb.uv ] ; 2 uses
  %i.dwb = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i551, i64 4 ; 2 uses
  %i.dwc = load float, ptr %i.dwb, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dwd = fadd float %.sroa.5.0.copyload.i.i559, %i.dwc ; 3 uses
  store float %i.dwd, ptr %i.dwb, align 4, !alias.scope !9501, !noalias !9510
  %i.dwe = fcmp olt float %i.dwd, %.sroa.029.4.i.i572
  br i1 %i.dwe, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.dwf = trunc i64 %i.dmv to i8
  %i.dwg = or disjoint i8 %i.dwf, 1
  store i8 %i.dwg, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux
  %.sroa.029.4.1.i.i573 = phi float [ %i.dwd, %bb.uy ], [ %.sroa.029.4.i.i572, %bb.ux ] ; 2 uses
  %i.dwh = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i551, i64 8 ; 2 uses
  %i.dwi = load float, ptr %i.dwh, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dwj = fadd float %.sroa.6.0.copyload.i.i561, %i.dwi ; 3 uses
  store float %i.dwj, ptr %i.dwh, align 4, !alias.scope !9501, !noalias !9510
  %i.dwk = fcmp olt float %i.dwj, %.sroa.029.4.1.i.i573
  br i1 %i.dwk, label %bb.va, label %bb.vb

bb.va:                                            ; preds = %bb.uz
  %i.dwl = trunc i64 %i.dmv to i8
  %i.dwm = or disjoint i8 %i.dwl, 2
  store i8 %i.dwm, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.vb

bb.vb:                                            ; preds = %bb.va, %bb.uz
  %.sroa.029.4.2.i.i574 = phi float [ %i.dwj, %bb.va ], [ %.sroa.029.4.1.i.i573, %bb.uz ] ; 2 uses
  %i.dwn = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i551, i64 12 ; 2 uses
  %i.dwo = load float, ptr %i.dwn, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dwp = fadd float %.sroa.7.0.copyload.i.i563, %i.dwo ; 3 uses
  store float %i.dwp, ptr %i.dwn, align 4, !alias.scope !9501, !noalias !9510
  %i.dwq = fcmp olt float %i.dwp, %.sroa.029.4.2.i.i574
  br i1 %i.dwq, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.dwr = trunc i64 %i.dmv to i8
  %i.dws = or disjoint i8 %i.dwr, 3
  store i8 %i.dws, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.vd

bb.vd:                                            ; preds = %bb.vc, %bb.vb
  %.sroa.029.4.3.i.i575 = phi float [ %i.dwp, %bb.vc ], [ %.sroa.029.4.2.i.i574, %bb.vb ] ; 2 uses
  %i.dwt = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i551, i64 16 ; 2 uses
  %i.dwu = load float, ptr %i.dwt, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dwv = fadd float %.sroa.8.0.copyload.i.i565, %i.dwu ; 3 uses
  store float %i.dwv, ptr %i.dwt, align 4, !alias.scope !9501, !noalias !9510
  %i.dww = fcmp olt float %i.dwv, %.sroa.029.4.3.i.i575
  br i1 %i.dww, label %bb.ve, label %bb.vf

bb.ve:                                            ; preds = %bb.vd
  %i.dwx = trunc i64 %i.dmv to i8
  %i.dwy = or disjoint i8 %i.dwx, 4
  store i8 %i.dwy, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.vf

bb.vf:                                            ; preds = %bb.ve, %bb.vd
  %.sroa.029.4.4.i.i576 = phi float [ %i.dwv, %bb.ve ], [ %.sroa.029.4.3.i.i575, %bb.vd ] ; 2 uses
  %i.dwz = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i551, i64 20 ; 2 uses
  %i.dxa = load float, ptr %i.dwz, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dxb = fadd float %.sroa.9.0.copyload.i.i567, %i.dxa ; 3 uses
  store float %i.dxb, ptr %i.dwz, align 4, !alias.scope !9501, !noalias !9510
  %i.dxc = fcmp olt float %i.dxb, %.sroa.029.4.4.i.i576
  br i1 %i.dxc, label %bb.vg, label %bb.vh

bb.vg:                                            ; preds = %bb.vf
  %i.dxd = trunc i64 %i.dmv to i8
  %i.dxe = or disjoint i8 %i.dxd, 5
  store i8 %i.dxe, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.vh

bb.vh:                                            ; preds = %bb.vg, %bb.vf
  %.sroa.029.4.5.i.i577 = phi float [ %i.dxb, %bb.vg ], [ %.sroa.029.4.4.i.i576, %bb.vf ] ; 2 uses
  %i.dxf = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i551, i64 24 ; 2 uses
  %i.dxg = load float, ptr %i.dxf, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dxh = fadd float %.sroa.10.0.copyload.i.i569, %i.dxg ; 3 uses
  store float %i.dxh, ptr %i.dxf, align 4, !alias.scope !9501, !noalias !9510
  %i.dxi = fcmp olt float %i.dxh, %.sroa.029.4.5.i.i577
  br i1 %i.dxi, label %bb.vi, label %bb.vj

bb.vi:                                            ; preds = %bb.vh
  %i.dxj = trunc i64 %i.dmv to i8
  %i.dxk = or disjoint i8 %i.dxj, 6
  store i8 %i.dxk, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  %.sroa.029.4.6.i.i578 = phi float [ %i.dxh, %bb.vi ], [ %.sroa.029.4.5.i.i577, %bb.vh ] ; 2 uses
  %i.dxl = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i551, i64 28 ; 2 uses
  %i.dxm = load float, ptr %i.dxl, align 4, !alias.scope !9501, !noalias !9510, !noundef !4
  %i.dxn = fadd float %.sroa.11.0.copyload.i.i571, %i.dxm ; 3 uses
  store float %i.dxn, ptr %i.dxl, align 4, !alias.scope !9501, !noalias !9510
  %i.dxo = fcmp olt float %i.dxn, %.sroa.029.4.6.i.i578
  br i1 %i.dxo, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  %i.dxp = trunc i64 %i.dmv to i8
  %i.dxq = or disjoint i8 %i.dxp, 7
  store i8 %i.dxq, ptr %i.dmm, align 1, !alias.scope !9505, !noalias !9507
  br label %bb.vl

bb.vl:                                            ; preds = %bb.vk, %bb.vj
  %.sroa.029.4.7.i.i579 = phi float [ %i.dxn, %bb.vk ], [ %.sroa.029.4.6.i.i578, %bb.vj ] ; 2 uses
  %i.dxr = icmp eq ptr %i.dmt, %i.djk
  br i1 %i.dxr, label %._crit_edge416.i.i580, label %.lr.ph415.i.i549

bb.vm:                                            ; preds = %bb.vo, %.split.i178.i510
  %i.dxs = phi i64 [ 1, %.split.i178.i510 ], [ %i.dyc, %bb.vo ] ; 4 uses
  %.sroa.071.0400.i.i513 = phi i64 [ 0, %.split.i178.i510 ], [ %i.dxs, %bb.vo ] ; 4 uses
  %i.dxt = getelementptr inbounds nuw [4 x i8], ptr %i.cpy, i64 %.sroa.071.0400.i.i513
  %i.dxu = load float, ptr %i.dxt, align 4, !alias.scope !9499, !noalias !9509, !noundef !4
  %exitcond482.not.i.i514 = icmp eq i64 %i.dxs, %i.cqu
  br i1 %exitcond482.not.i.i514, label %.invoke.i526, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %gep.i.i515 = getelementptr [2192 x i8], ptr %invariant.gep.i.i512, i64 %.sroa.071.0400.i.i513
  %i.dxv = load i32, ptr %gep.i.i515, align 4, !alias.scope !9497, !noalias !9530, !noundef !4
  %i.dxw = zext i32 %i.dxv to i64
  %i.dxx = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.dxw)
          to label %.noexc198.i525 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i516", !noalias !9160

.noexc198.i525:                                   ; preds = %bb.vn
  %i.dxy = add nuw nsw i64 %.sroa.071.0400.i.i513, %i.dji ; 3 uses
  %i.dxz = icmp ult i64 %i.dxy, %i.cpw
  br i1 %i.dxz, label %bb.vo, label %.invoke.i526

bb.vo:                                            ; preds = %.noexc198.i525
  %i.dya = getelementptr inbounds nuw [4 x i8], ptr %i.cpy, i64 %i.dxy
  %i.dyb = fsub float %i.dxu, %i.dxx
  store float %i.dyb, ptr %i.dya, align 4, !alias.scope !9499, !noalias !9509
  %i.dyc = add nuw nsw i64 %i.dxs, 1
  %exitcond483.not.i.i530 = icmp eq i64 %i.dxs, %.sroa.0.0441.i502
  br i1 %exitcond483.not.i.i530, label %.loopexit358.i.i531, label %bb.vm

bb.vp:                                            ; preds = %bb.tk
  %i.dyd = getelementptr inbounds nuw [2192 x i8], ptr %i.ckr, i64 %.sroa.069.0399.i.i506
  %i.dye = getelementptr inbounds nuw i8, ptr %i.dyd, i64 2176
  %i.dyf = load i64, ptr %i.dye, align 8, !alias.scope !9531, !noalias !9530, !noundef !4
  %i.dyg = and i64 %i.dyf, 4294967295             ; 3 uses
  %i.dyh = icmp samesign ult i64 %i.dyg, 256
  br i1 %i.dyh, label %bb.vs, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.dyi = uitofp nneg i64 %i.dyg to float
  %i.dyj = tail call float @llvm.log2.f32(float %i.dyi)
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vs, %bb.vq
  %.sroa.016.0.i.i508 = phi float [ %i.dyn, %bb.vs ], [ %i.dyj, %bb.vq ]
  %i.dyk = getelementptr inbounds nuw [4 x i8], ptr %i.cpy, i64 %.sroa.069.0399.i.i506
  store float %.sroa.016.0.i.i508, ptr %i.dyk, align 4, !alias.scope !9499, !noalias !9509
  %i.dyl = add nuw nsw i64 %i.dje, 1
  %exitcond480.not.i.i509 = icmp eq i64 %i.dje, %.sroa.0.0441.i502
  br i1 %exitcond480.not.i.i509, label %.split.i178.i510, label %bb.tk

bb.vs:                                            ; preds = %bb.vp
  %i.dym = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.dyg
  %i.dyn = load float, ptr %i.dym, align 4, !noalias !9516, !noundef !4
  br label %bb.vr

.preheader.i.i993:                                ; preds = %.preheader.i.i993.preheader4179, %bb.vt
  %i.dyo = phi i64 [ %i.dyq, %bb.vt ], [ %.ph4180, %.preheader.i.i993.preheader4179 ] ; 4 uses
  %.sroa.066.0449.i.i994 = phi i64 [ %i.dyo, %bb.vt ], [ %.sroa.066.0449.i.i994.ph, %.preheader.i.i993.preheader4179 ] ; 2 uses
  %exitcond488.not.i.i995 = icmp eq i64 %i.dyo, %i.cqy
  br i1 %exitcond488.not.i.i995, label %.invoke.i526, label %bb.vt

bb.vt:                                            ; preds = %.preheader.i.i993
  %i.dyp = getelementptr inbounds nuw i8, ptr %i.cps, i64 %.sroa.066.0449.i.i994
  store i8 0, ptr %i.dyp, align 1, !alias.scope !9505, !noalias !9507
  %i.dyq = add i64 %i.dyo, 1
  %exitcond489.not.i.i996 = icmp eq i64 %i.dyo, %.sroa.01.1
  br i1 %exitcond489.not.i.i996, label %.loopexit.i636, label %.preheader.i.i993, !llvm.loop !9534

.loopexit.i636:                                   ; preds = %bb.to, %bb.vt, %bb.tg
  %.sroa.0.0.i.i637 = phi i64 [ 0, %bb.tg ], [ 1, %bb.vt ], [ %.sroa.03.1.i.i634, %bb.to ] ; 32 uses
  %i.dyr = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.cps, i64 noundef %.sroa.01.1, i64 noundef %.sroa.01.1, ptr noalias noundef nonnull align 2 %i.cqq, i64 noundef %spec.store.select.i450, i64 noundef %.sroa.0.0441.i502)
          to label %bb.vu unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i638", !noalias !9160 ; 5 uses

bb.vu:                                            ; preds = %.loopexit.i636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9540)
  %.not.i.i204.i640 = icmp ugt i64 %i.dyr, %spec.store.select.i450
  br i1 %.not.i.i204.i640, label %.invoke1203.i987, label %bb.vv, !prof !2174

bb.vv:                                            ; preds = %bb.vu
  %.idx.i.i205.i641 = mul i64 %i.dyr, 2192        ; 2 uses
  %i.dys = getelementptr inbounds nuw i8, ptr %i.ckr, i64 %.idx.i.i205.i641
  %i.dyt = icmp eq i64 %i.dyr, 0
  br i1 %i.dyt, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, label %.lr.ph.i.i206.i642.preheader

.lr.ph.i.i206.i642.preheader:                     ; preds = %bb.vv
  %i.dyu = add i64 %.idx.i.i205.i641, -2192       ; 2 uses
  %i.dyv = udiv i64 %i.dyu, 2192
  %i.dyw = add nuw nsw i64 %i.dyv, 1
  %xtraiter4769 = and i64 %i.dyw, 7               ; 2 uses
  %lcmp.mod4770.not = icmp eq i64 %xtraiter4769, 0
  br i1 %lcmp.mod4770.not, label %.lr.ph.i.i206.i642.prol.loopexit, label %.lr.ph.i.i206.i642.prol

.lr.ph.i.i206.i642.prol:                          ; preds = %.lr.ph.i.i206.i642.preheader, %.lr.ph.i.i206.i642.prol
  %.sroa.02.05.i.i207.i643.prol = phi ptr [ %i.dyx, %.lr.ph.i.i206.i642.prol ], [ %i.ckr, %.lr.ph.i.i206.i642.preheader ] ; 3 uses
  %prol.iter4771 = phi i64 [ %prol.iter4771.next, %.lr.ph.i.i206.i642.prol ], [ 0, %.lr.ph.i.i206.i642.preheader ]
  %i.dyx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643.prol, i64 2192 ; 2 uses
  %i.dyy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i207.i643.prol, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dyy, align 8, !alias.scope !9546, !noalias !9545
  %prol.iter4771.next = add i64 %prol.iter4771, 1 ; 2 uses
  %prol.iter4771.cmp.not = icmp eq i64 %prol.iter4771.next, %xtraiter4769
  br i1 %prol.iter4771.cmp.not, label %.lr.ph.i.i206.i642.prol.loopexit, label %.lr.ph.i.i206.i642.prol, !llvm.loop !9549

.lr.ph.i.i206.i642.prol.loopexit:                 ; preds = %.lr.ph.i.i206.i642.prol, %.lr.ph.i.i206.i642.preheader
  %.sroa.02.05.i.i207.i643.unr = phi ptr [ %i.ckr, %.lr.ph.i.i206.i642.preheader ], [ %i.dyx, %.lr.ph.i.i206.i642.prol ]
  %i.dyz = icmp ult i64 %i.dyu, 15344
  br i1 %i.dyz, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, label %.lr.ph.i.i206.i642

.lr.ph.i.i206.i642:                               ; preds = %.lr.ph.i.i206.i642.prol.loopexit, %.lr.ph.i.i206.i642
  %.sroa.02.05.i.i207.i643 = phi ptr [ %i.dzo, %.lr.ph.i.i206.i642 ], [ %.sroa.02.05.i.i207.i643.unr, %.lr.ph.i.i206.i642.prol.loopexit ] ; 17 uses
  %i.dza = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 2192
  %i.dzb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i207.i643, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzb, align 8, !alias.scope !9546, !noalias !9545
  %i.dzc = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 4384
  %i.dzd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dza, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzd, align 8, !alias.scope !9546, !noalias !9545
  %i.dze = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 6576
  %i.dzf = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzc, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzf, align 8, !alias.scope !9546, !noalias !9545
  %i.dzg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 8768
  %i.dzh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dze, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzh, align 8, !alias.scope !9546, !noalias !9545
  %i.dzi = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 10960
  %i.dzj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzg, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzj, align 8, !alias.scope !9546, !noalias !9545
  %i.dzk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 13152
  %i.dzl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzi, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzl, align 8, !alias.scope !9546, !noalias !9545
  %i.dzm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 15344
  %i.dzn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzk, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzn, align 8, !alias.scope !9546, !noalias !9545
  %i.dzo = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 17536 ; 2 uses
  %i.dzp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i207.i643, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dzm, i8 0, i64 2184, i1 false), !alias.scope !9542, !noalias !9545
  store float 3.402000e+38, ptr %i.dzp, align 8, !alias.scope !9546, !noalias !9545
  %i.dzq = icmp eq ptr %i.dzo, %i.dys
  br i1 %i.dzq, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, label %.lr.ph.i.i206.i642

_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader: ; preds = %.lr.ph.i.i206.i642.prol.loopexit, %.lr.ph.i.i206.i642, %bb.vv
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i
  %.sroa.01.013.i.i644 = phi i64 [ %i.dzr, %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i.preheader ] ; 4 uses
  %i.dzr = add nuw nsw i64 %.sroa.01.013.i.i644, 1 ; 2 uses
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.cps, i64 %.sroa.01.013.i.i644
  %i.dzt = load i8, ptr %i.dzs, align 1, !alias.scope !9538, !noalias !9550, !noundef !4
  %i.dzu = zext i8 %i.dzt to i64                  ; 3 uses
  %.not93.i645 = icmp samesign ult i64 %i.ckl, %i.dzu
  br i1 %.not93.i645, label %.invoke.i526, label %bb.vw

bb.vw:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i
  %exitcond23.not.i.i646 = icmp eq i64 %.sroa.01.013.i.i644, %2
  br i1 %exitcond23.not.i.i646, label %.invoke.i526, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  %i.dzv = getelementptr inbounds nuw [2 x i8], ptr %i.ckh, i64 %.sroa.01.013.i.i644
  %i.dzw = load i16, ptr %i.dzv, align 2, !alias.scope !9551, !noalias !9554, !noundef !4 ; 2 uses
  %i.dzx = zext i16 %i.dzw to i64                 ; 2 uses
  %i.dzy = icmp ult i16 %i.dzw, 544
  br i1 %i.dzy, label %_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i, label %.invoke.i526

_ZN6brotli3enc9histogram16HistogramAddItem17hbb8b064ba7e3cd90E.exit.i.i: ; preds = %bb.vx
  %i.dzz = getelementptr inbounds nuw [2192 x i8], ptr %i.ckr, i64 %i.dzu ; 2 uses
  %i.eaa = getelementptr inbounds nuw [4 x i8], ptr %i.dzz, i64 %i.dzx ; 2 uses
  %i.eab = load i32, ptr %i.eaa, align 4, !alias.scope !9555, !noalias !9545, !noundef !4
  %i.eac = add i32 %i.eab, 1
  store i32 %i.eac, ptr %i.eaa, align 4, !alias.scope !9555, !noalias !9545
  %i.ead = getelementptr inbounds nuw i8, ptr %i.dzz, i64 2176 ; 2 uses
  %i.eae = load i64, ptr %i.ead, align 8, !alias.scope !9558, !noalias !9545, !noundef !4
  %i.eaf = add i64 %i.eae, 1
  store i64 %i.eaf, ptr %i.ead, align 8, !alias.scope !9561, !noalias !9545
  %exitcond24.not.i.i647 = icmp eq i64 %i.dzr, %.sroa.01.1
  br i1 %exitcond24.not.i.i647, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h5bcd1054eb4fbc47E.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i

.invoke.i526:                                     ; preds = %bb.tk, %.lr.ph434.split.i.i544, %.lr.ph447.i.i626, %.preheader.i.i993, %bb.vx, %bb.vw, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i, %.noexc198.i525, %bb.vm, %.lr.ph424.preheader.i.i584, %.lr.ph424.i.i586.1, %.lr.ph424.i.i586.2, %.lr.ph424.i.i586.3, %.lr.ph424.i.i586.4, %.lr.ph424.i.i586.5, %.lr.ph424.i.i586.6, %.lr.ph430.i.i597
  %i.eag = phi i64 [ %i.dzu, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i ], [ %i.dma, %.lr.ph447.i.i626 ], [ %i.dth, %.lr.ph430.i.i597 ], [ %.sroa.01.1, %.lr.ph434.split.i.i544 ], [ %.sroa.066.0449.i.i994, %.preheader.i.i993 ], [ %i.dle, %.lr.ph424.i.i586.6 ], [ %.sroa.071.0400.i.i513, %bb.vm ], [ %i.djq, %.lr.ph424.preheader.i.i584 ], [ %i.djv, %.lr.ph424.i.i586.1 ], [ %i.dkd, %.lr.ph424.i.i586.2 ], [ %i.dkm, %.lr.ph424.i.i586.3 ], [ %i.dks, %.lr.ph424.i.i586.4 ], [ %i.dky, %.lr.ph424.i.i586.5 ], [ %i.dxy, %.noexc198.i525 ], [ %2, %bb.vw ], [ %i.dzx, %bb.vx ], [ %.sroa.069.0399.i.i506, %bb.tk ]
  %i.eah = phi i64 [ %spec.store.select.i450, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i ], [ %i.cqh, %.lr.ph447.i.i626 ], [ %i.cqh, %.lr.ph430.i.i597 ], [ %.sroa.01.1, %.lr.ph434.split.i.i544 ], [ %.sroa.01.1, %.preheader.i.i993 ], [ %i.cpv, %.lr.ph424.preheader.i.i584 ], [ %spec.store.select.i450, %bb.vm ], [ %i.cpv, %.lr.ph424.i.i586.6 ], [ %i.cpv, %.lr.ph424.i.i586.5 ], [ %i.cpv, %.lr.ph424.i.i586.4 ], [ %i.cpv, %.lr.ph424.i.i586.3 ], [ %i.cpv, %.lr.ph424.i.i586.2 ], [ %i.cpv, %.lr.ph424.i.i586.1 ], [ %i.cpw, %.noexc198.i525 ], [ %2, %bb.vw ], [ 544, %bb.vx ], [ %spec.store.select.i450, %bb.tk ]
  %i.eai = phi ptr [ @921, %_ZN6brotli3enc9histogram15ClearHistograms17h1d067a6c8fdd55f6E.exit.i.i ], [ @878, %.lr.ph447.i.i626 ], [ @923, %.lr.ph430.i.i597 ], [ @879, %.lr.ph434.split.i.i544 ], [ @893, %.preheader.i.i993 ], [ @884, %.lr.ph424.preheader.i.i584 ], [ @889, %bb.vm ], [ @884, %.lr.ph424.i.i586.6 ], [ @884, %.lr.ph424.i.i586.5 ], [ @884, %.lr.ph424.i.i586.4 ], [ @884, %.lr.ph424.i.i586.3 ], [ @884, %.lr.ph424.i.i586.2 ], [ @884, %.lr.ph424.i.i586.1 ], [ @890, %.noexc198.i525 ], [ @922, %bb.vw ], [ @1287, %bb.vx ], [ @891, %bb.tk ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eag, i64 noundef %i.eah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eai) #46
          to label %.cont.i529 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i527", !noalias !9160

.cont.i529:                                       ; preds = %.invoke.i526
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i516": ; preds = %bb.vn
  %lpad.loopexit.i517 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i518"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i638": ; preds = %.loopexit.i636
  %lpad.loopexit105.i639 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i518"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i527": ; preds = %.invoke.i526, %.split440.us.i.invoke.i554, %.invoke1203.i987
  %lpad.loopexit.split-lp106.i528 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i518"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i518": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i527", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i638", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i516"
  %lpad.phi.i519 = phi { ptr, i32 } [ %lpad.loopexit.i517, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i516" ], [ %lpad.loopexit105.i639, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i638" ], [ %lpad.loopexit.split-lp106.i528, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i527" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cqq, i64 noundef %i.cqp, i64 noundef 2) #45, !noalias !9160
  br label %bb.vy

bb.vy:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i518", %.thread55.i997
  %.pn62.i520 = phi { ptr, i32 } [ %i.cqs, %.thread55.i997 ], [ %lpad.phi.i519, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i518" ]
  br i1 %i.cqj, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i522", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i521"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i521": ; preds = %bb.vy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cqo) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cqo, i64 noundef %i.cqh, i64 noundef 1) #45, !noalias !9160
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i522"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i522": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i214.i521", %bb.vy
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cqc, i64 noundef %i.cqb, i64 noundef 4) #45, !noalias !9160
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i523"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i523": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i522", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i1000", %.thread39.i1004
  %.pn.pn.pn44.i524 = phi { ptr, i32 } [ %i.cqg, %.thread39.i1004 ], [ %i.cqn, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i1000" ], [ %.pn62.i520, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i522" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cpy, i64 noundef %i.cpx, i64 noundef 4) #45, !noalias !9160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cps, i64 noundef %.sroa.01.1, i64 noundef 1) #45, !noalias !9160
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.i721": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i719", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i980", %bb.te, %.body.i983
  %.pn.pn.pn.pn.i722 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i984, %.body.i983 ], [ %i.dim, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i980" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i717, %bb.te ], [ %.pn230.pn.pn.pn.pn.pn.pn85963.i.i720, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i719" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cps, i64 noundef %.sroa.01.1, i64 noundef 1) #45, !noalias !9160
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i523", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.thread.i1006", %.thread.i469
  %.pn.pn.pn.pn.pn38.i470 = phi { ptr, i32 } [ %i.cli, %.thread.i469 ], [ %.pn.pn.pn44.i524, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i523" ], [ %i.cqa, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit218.thread.i1006" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckr, i64 noundef %i.ckq, i64 noundef 8) #45, !noalias !9160
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

bb.vz:                                            ; preds = %bb.or
  %i.eaj = icmp eq i64 %.val107.i1011, 0          ; 2 uses
  %spec.select.i1027 = select i1 %i.eaj, i64 %i.clg, i64 %.val107.i1011
  br label %bb.wa

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit227.i1012": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i1030", %bb.wc, %bb.or
  %.val.i1013 = phi ptr [ %i.eaq, %bb.wc ], [ %i.eaq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i1030" ], [ %.val106.i1010, %bb.or ]
  %.val63.i1014 = phi i64 [ %.sroa.014.1.i1028, %bb.wc ], [ %.sroa.014.1.i1028, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i226.i1030" ], [ %.val107.i1011, %bb.or ] ; 2 uses
  %i.eak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val92.i1015 = load ptr, ptr %i.eak, align 8, !alias.scope !9150, !noalias !9147, !nonnull !4, !align !131, !noundef !4 ; 3 uses
  %i.eal = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val93.i1016 = load i64, ptr %i.eal, align 8, !alias.scope !9150, !noalias !9147, !noundef !4 ; 5 uses
  %i.eam = icmp ult i64 %.val93.i1016, %i.clg
  br i1 %i.eam, label %bb.wd, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1017"

bb.wa:                                            ; preds = %bb.wa, %bb.vz
  %.sroa.014.1.i1028 = phi i64 [ %spec.select.i1027, %bb.vz ], [ %i.eao, %bb.wa ] ; 9 uses
  %i.ean = icmp ult i64 %.sroa.014.1.i1028, %i.clg
  %i.eao = shl i64 %.sroa.014.1.i1028, 1
  br i1 %i.ean, label %bb.wa, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.eap = icmp slt i64 %.sroa.014.1.i1028, 0
  br i1 %i.eap, label %.invoke2973, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i1029, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i220.i1029: ; preds = %bb.wb
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9564
  %i.eaq = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i1028, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9564 ; 5 uses
end_hunk_8
