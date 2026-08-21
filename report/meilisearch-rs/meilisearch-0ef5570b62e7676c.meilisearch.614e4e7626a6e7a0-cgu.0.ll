inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h0916bdb0a16a6b62E:bb.a
  %lcmp.mod580 = icmp ne i64 %xtraiter576, 0
  tail call void @llvm.assume(i1 %lcmp.mod580)
  br label %.lr.ph.i.i.i.i135.epil

.lr.ph.i.i.i.i135.epil:                           ; preds = %.lr.ph.i.i.i.i135.epil, %.lr.ph.i.i.i.i135.epil.preheader
  %.sroa.0.08.i.i.i.i136.epil = phi ptr [ %i.gz, %.lr.ph.i.i.i.i135.epil ], [ %.sroa.0.08.i.i.i.i136.epil.init, %.lr.ph.i.i.i.i135.epil.preheader ] ; 3 uses
  %epil.iter577 = phi i64 [ %epil.iter577.next, %.lr.ph.i.i.i.i135.epil ], [ 0, %.lr.ph.i.i.i.i135.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i136.epil, i8 0, i64 2184, i1 false), !noalias !39421
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !39438
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136.epil, i64 2192 ; 2 uses
  %epil.iter577.next = add i64 %epil.iter577, 1   ; 2 uses
  %epil.iter577.cmp.not = icmp eq i64 %epil.iter577.next, %xtraiter576
  br i1 %epil.iter577.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", label %.lr.ph.i.i.i.i135.epil, !llvm.loop !39441

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i135.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i139 = phi ptr [ %i.gm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i" ], [ %i.gy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa" ], [ %i.gz, %.lr.ph.i.i.i.i135.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i139, i8 0, i64 2184, i1 false), !noalias !39421
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i139, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !39438
  %i.ha = load ptr, ptr %i.fy, align 8, !alias.scope !39410, !noalias !39442, !nonnull !27, !align !148, !noundef !27
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 216 ; 4 uses
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !39410, !noalias !39442, !noundef !27
  store ptr %i.gm, ptr %i.fy, align 8, !alias.scope !39410, !noalias !39442
  store i64 %.sroa.0.0.i.i114, ptr %i.hb, align 8, !alias.scope !39410, !noalias !39442
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %i.ha) #38, !noalias !39421
  br label %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit

bb.ap:                                            ; preds = %bb.ap, %bb.an
  %.sroa.09.1.i128 = phi i64 [ %spec.select15.i127, %bb.an ], [ %i.he, %bb.ap ] ; 6 uses
  %.not29.i129 = icmp ugt i64 %.sroa.09.1.i128, %i.ga
  %i.he = shl nuw nsw i64 %.sroa.09.1.i128, 1
  br i1 %.not29.i129, label %bb.aq, label %bb.ap

bb.aq:                                            ; preds = %bb.ap
  %i.hf = shl i64 %.sroa.09.1.i128, 2             ; 3 uses
  %i.hg = icmp ugt i64 %.sroa.09.1.i128, 4611686018427387903
  %i.hh = icmp ugt i64 %i.hf, 9223372036854775804
  %or.cond.i.i.i.i.i130 = or i1 %i.hg, %i.hh
  br i1 %or.cond.i.i.i.i.i130, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131: ; preds = %bb.aq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39443
  %i.hi = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.hf, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39443 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131, %bb.aq
  %.sroa.4.0.ph.i.i68.i147 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131 ], [ 0, %bb.aq ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i68.i147, i64 %i.hf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39448
  unreachable

bb.as:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131
  %i.hk = icmp samesign ult i64 %.sroa.09.1.i128, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = shl nuw nsw i64 %.val45.i125, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr nonnull readonly align 4 %.val44.i124, i64 %i.hl, i1 false), !alias.scope !39449, !noalias !39453
  store ptr %i.hi, ptr %i.ge, align 8, !alias.scope !39407, !noalias !39414
  store i64 %.sroa.09.1.i128, ptr %i.gf, align 8, !alias.scope !39407, !noalias !39414
  br i1 %i.gj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i132"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i132": ; preds = %bb.as
  tail call void @mi_free(ptr noundef nonnull align 4 %.val44.i124) #38, !noalias !39421
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133"

_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140"
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.gm, i8 0, i64 2184, i1 false), !noalias !39421
  store float 3.402000e+38, ptr %i.hm, align 8, !alias.scope !39455, !noalias !39421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.827.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 64, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 512, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 512, ptr %.sroa.726.0..sroa_idx, align 8
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store float 1.000000e+02, ptr %.sroa.928.0..sroa_idx, align 8
  br i1 %.not, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 176 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph134, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit
  %.sroa.021.1133 = phi i64 [ 1, %.lr.ph134 ], [ %.sroa.021.1, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 3 uses
  %.sroa.0.0132 = phi i64 [ %2, %.lr.ph134 ], [ %i.kk, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.05.0131 = phi i8 [ %4, %.lr.ph134 ], [ %.sroa.05.2, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.07.0130 = phi i8 [ %5, %.lr.ph134 ], [ %.sroa.07.2, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.021.0129 = phi i64 [ 0, %.lr.ph134 ], [ %.sroa.021.1133, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 3 uses
  %i.ht = icmp ult i64 %.sroa.021.0129, %11
  br i1 %i.ht, label %bb.bf, label %bb.bk

._crit_edge135.loopexit:                          ; preds = %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit
  %.pre = load i64, ptr %i.c, align 8, !range !223
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit
  %i.hu = phi i64 [ %.pre, %._crit_edge135.loopexit ], [ %.sroa.013.0, %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit ]
  %i.hv = trunc nuw i64 %i.hu to i1
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 176
  %.val40 = load ptr, ptr %i.hw, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 184
  %.val41 = load i64, ptr %i.hx, align 8, !noundef !27 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  br i1 %i.hv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge135
  call fastcc void @_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E(ptr noalias noundef align 8 dereferenceable(200) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %13, ptr noalias noundef nonnull align 8 %.val40, i64 noundef %.val41, ptr noalias noundef align 8 dereferenceable(8) %i.hy, i1 noundef zeroext true)
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge135
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h877de8a4e472dec8E(ptr noalias noundef align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %13, ptr noalias noundef nonnull align 8 %.val40, i64 noundef %.val41, ptr noalias noundef align 8 dereferenceable(8) %i.hy, i1 noundef zeroext true)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.val44 = load ptr, ptr %i.ei, align 8, !nonnull !27, !align !148, !noundef !27
  %.val45 = load i64, ptr %i.fl, align 8, !noundef !27
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17hfda3d414699dce3dE(ptr noalias noundef align 8 dereferenceable(88) %i.b, ptr noalias noundef align 8 dereferenceable(48) %i.eh, ptr noalias noundef nonnull align 8 %.val44, i64 noundef %.val45, ptr noalias noundef align 8 dereferenceable(8) %i.ej, i1 noundef zeroext true)
  %.val48 = load ptr, ptr %i.fy, align 8, !nonnull !27, !align !148, !noundef !27
  %.val49 = load i64, ptr %i.hb, align 8, !noundef !27
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h04cabe4174c5f56fE(ptr noalias noundef align 8 dereferenceable(88) %i.a, ptr noalias noundef align 8 dereferenceable(48) %i.fx, ptr noalias noundef nonnull align 8 %.val48, i64 noundef %.val49, ptr noalias noundef align 8 dereferenceable(8) %i.fz, i1 noundef zeroext true)
  %i.hz = icmp ugt i64 %7, 1
  br i1 %i.hz, label %bb.ax, label %_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit

_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit: ; preds = %.loopexit.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !39458)
  call void @llvm.experimental.noalias.scope.decl(metadata !39461)
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !39461, !noalias !39458, !noundef !27 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.id = shl i64 %i.ib, 6                        ; 7 uses
  store i64 %i.id, ptr %i.ic, align 8, !alias.scope !39461, !noalias !39458
  %i.ie = shl i64 %i.ib, 8                        ; 4 uses
  %i.if = icmp ugt i64 %i.id, 4611686018427387903
  %i.ig = icmp ugt i64 %i.ie, 9223372036854775804
  %or.cond.i.i.i.i.i150 = or i1 %i.if, %i.ig
  br i1 %or.cond.i.i.i.i.i150, label %bb.ba, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151: ; preds = %bb.ax
  %i.ih = icmp eq i64 %i.ie, 0
  br i1 %i.ih, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i", label %bb.ay

bb.ay:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39463
  %i.ii = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ie, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39463 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ik = ptrtoint ptr %i.ii to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.ay ], [ 0, %bb.ax ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ie, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39468
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i": ; preds = %bb.az, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151
  %.sroa.10.0.i.i.i = phi i64 [ %i.ik, %bb.az ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151 ]
  %i.il = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 5 uses
  %i.im = icmp samesign ult i64 %i.id, 2305843009213693952
  call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 144 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !39461, !noalias !39458, !nonnull !27, !align !603, !noundef !27
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 152 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !39461, !noalias !39458, !noundef !27
  store ptr %i.il, ptr %i.in, align 8, !alias.scope !39461, !noalias !39458
  store i64 %i.id, ptr %i.ip, align 8, !alias.scope !39461, !noalias !39458
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  call void @mi_free(ptr noundef nonnull align 4 %i.io) #38, !noalias !39469
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  %.not.i154 = icmp eq i64 %i.ib, 0
  br i1 %.not.i154, label %_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.bd
  %exitcond9.not.i = icmp eq i64 %14, %i.ib
  br i1 %exitcond9.not.i, label %_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", %.loopexit.i
  %.sroa.03.04.i = phi i64 [ %14, %.loopexit.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153" ] ; 4 uses
  %14 = add nuw i64 %.sroa.03.04.i, 1             ; 2 uses
  %15 = mul i64 %.sroa.03.04.i, %7
  %16 = trunc i64 %15 to i32                      ; 2 uses
  %17 = shl i64 %.sroa.03.04.i, 6                 ; 3 uses
  %umin = call i64 @llvm.umax.i64(i64 %17, i64 %i.id)
  %18 = shl i64 %.sroa.03.04.i, 6
  %19 = sub i64 %umin, %18
  %20 = call i64 @llvm.umin.i64(i64 %9, i64 %19)  ; 2 uses
  %min.iters.check = icmp ult i64 %20, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %umin460 = call i64 @llvm.umin.i64(i64 %20, i64 63)
  %i.is = add nuw nsw i64 %umin460, 1             ; 2 uses
  %i.it = and i64 %i.is, 7                        ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = select i1 %i.iu, i64 8, i64 %i.it
  %n.vec = sub nsw i64 %i.is, %i.iv               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %16, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.il, i64 %17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <4 x i32>, ptr %i.iw, align 4, !alias.scope !39458, !noalias !39461
  %wide.load461 = load <4 x i32>, ptr %i.ix, align 4, !alias.scope !39458, !noalias !39461
  %i.iy = add <4 x i32> %wide.load, %broadcast.splat
  %i.iz = add <4 x i32> %wide.load461, %broadcast.splat
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.iy, ptr %gep, align 4, !noalias !39469
  store <4 x i32> %i.iz, ptr %i.ja, align 4, !noalias !39469
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !39470

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.05.03.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bd
  %.sroa.05.03.i = phi i64 [ %i.jc, %bb.bd ], [ %.sroa.05.03.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jc = add nuw nsw i64 %.sroa.05.03.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.05.03.i, %9
  br i1 %exitcond.not.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %scalar.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  %i.jd = add nuw nsw i64 %.sroa.05.03.i, %17     ; 3 uses
  %i.je = icmp ult i64 %i.jd, %i.id
  br i1 %i.je, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %scalar.ph
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #43, !noalias !39469
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.sroa.05.03.i
  %i.jg = load i32, ptr %i.jf, align 4, !alias.scope !39458, !noalias !39461, !noundef !27
  %i.jh = add i32 %i.jg, %16
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.jd
  store i32 %i.jh, ptr %i.ji, align 4, !noalias !39469
  %exitcond8.not.i = icmp eq i64 %i.jc, 64
  br i1 %exitcond8.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !39471

bb.be:                                            ; preds = %bb.bb
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.jd, i64 noundef %i.id, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1965) #43, !noalias !39469
  unreachable

bb.bf:                                            ; preds = %bb.at
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.sroa.021.0129 ; 4 uses
  %i.jk = load i32, ptr %i.jj, align 4, !noundef !27 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !noundef !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jo = load i16, ptr %i.jn, align 4, !noundef !27 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 14
  %i.jq = load i16, ptr %i.jp, align 2, !noundef !27
  %.val42 = load ptr, ptr %i.ei, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.val43 = load i64, ptr %i.fl, align 8, !noundef !27 ; 3 uses
  %i.jr = zext i16 %i.jo to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39472)
  call void @llvm.experimental.noalias.scope.decl(metadata !39475)
  %i.js = load i64, ptr %i.hn, align 8, !alias.scope !39472, !noalias !39477, !noundef !27 ; 3 uses
  %i.jt = icmp ult i64 %i.js, %.val43
  br i1 %i.jt, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !39480)
  %i.ju = icmp ult i16 %i.jo, 704
  br i1 %i.ju, label %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef range(i64 0, 65536) %i.jr, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1932) #43, !noalias !39483
  unreachable

_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i: ; preds = %bb.bg
  %i.jv = getelementptr inbounds nuw [2832 x i8], ptr %.val42, i64 %i.js ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jr ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !alias.scope !39484, !noalias !39485, !noundef !27
  %i.jy = add i32 %i.jx, 1
  store i32 %i.jy, ptr %i.jw, align 4, !alias.scope !39484, !noalias !39485
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 2816 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !39486, !noalias !39485, !noundef !27
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8, !alias.scope !39489, !noalias !39485
  %i.kc = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !39472, !noalias !39477, !noundef !27
  %i.kd = add i64 %i.kc, 1                        ; 2 uses
  store i64 %i.kd, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !39472, !noalias !39477
  %i.ke = load i64, ptr %.sroa.719.0..sroa_idx, align 8, !alias.scope !39472, !noalias !39477, !noundef !27
  %i.kf = icmp eq i64 %i.kd, %i.ke
  br i1 %i.kf, label %bb.bj, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit

bb.bi:                                            ; preds = %bb.bf
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.js, i64 noundef %.val43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1968) #43, !noalias !39492
  unreachable

bb.bj:                                            ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17hfda3d414699dce3dE(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noalias noundef nonnull align 8 %.val42, i64 noundef %.val43, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ej, i1 noundef zeroext false)
  br label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit

_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i, %bb.bj
  %i.kg = icmp eq i32 %i.jk, 0
  br i1 %i.kg, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit
  %i.kh = zext i32 %i.jk to i64
  br label %.lr.ph124

bb.bk:                                            ; preds = %bb.at
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.021.0129, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2019) #43
  unreachable

._crit_edge125:                                   ; preds = %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit
  %.sroa.07.1.lcssa = phi i8 [ %.sroa.07.0130, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit ], [ %.sroa.05.1122, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ]
  %.sroa.05.1.lcssa = phi i8 [ %.sroa.05.0131, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit ], [ %i.ls, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ]
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0132, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit ], [ %i.nd, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ]
  %i.ki = and i32 %i.jm, 33554431                 ; 2 uses
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = add i64 %.sroa.0.1.lcssa, %i.kj         ; 3 uses
  %i.kl = icmp eq i32 %i.ki, 0
  br i1 %i.kl, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit, label %bb.bl

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit
  %.sroa.0.1123 = phi i64 [ %i.nd, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %.sroa.0.0132, %.lr.ph124.preheader ] ; 2 uses
  %.sroa.05.1122 = phi i8 [ %i.ls, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %.sroa.05.0131, %.lr.ph124.preheader ] ; 6 uses
  %.sroa.07.1121 = phi i8 [ %.sroa.05.1122, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %.sroa.07.0130, %.lr.ph124.preheader ] ; 2 uses
  %.sroa.017.0120 = phi i64 [ %i.ne, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %i.kh, %.lr.ph124.preheader ]
  %i.km = and i64 %.sroa.0.1123, %3               ; 3 uses
  %i.kn = icmp ult i64 %i.km, %1
  br i1 %i.kn, label %bb.bv, label %bb.bw

_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit: ; preds = %bb.bu, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i, %bb.bo, %._crit_edge125
  %.sroa.07.2 = phi i8 [ %.sroa.07.1.lcssa, %._crit_edge125 ], [ %i.ku, %bb.bo ], [ %i.ku, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i ], [ %i.ku, %bb.bu ]
  %.sroa.05.2 = phi i8 [ %.sroa.05.1.lcssa, %._crit_edge125 ], [ %i.kz, %bb.bo ], [ %i.kz, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i ], [ %i.kz, %bb.bu ]
  %i.ko = icmp ult i64 %.sroa.021.1133, %12       ; 2 uses
  %i.kp = zext i1 %i.ko to i64
  %.sroa.021.1 = add nuw i64 %.sroa.021.1133, %i.kp
  br i1 %i.ko, label %bb.at, label %._crit_edge135.loopexit

bb.bl:                                            ; preds = %._crit_edge125
  %i.kq = add i64 %i.kk, 4294967294
  %i.kr = and i64 %i.kq, %3                       ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %1
  br i1 %i.ks, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 %i.kr
  %i.ku = load i8, ptr %i.kt, align 1, !noundef !27 ; 3 uses
  %i.kv = add i64 %i.kk, 4294967295
  %i.kw = and i64 %i.kv, %3                       ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %1
  br i1 %i.kx, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kr, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2020) #43
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 %i.kw
  %i.kz = load i8, ptr %i.ky, align 1, !noundef !27 ; 3 uses
  %i.la = icmp ugt i16 %i.jo, 127
  br i1 %i.la, label %bb.bq, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit

bb.bp:                                            ; preds = %bb.bm
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kw, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2021) #43
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %.val46 = load ptr, ptr %i.fy, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.val47 = load i64, ptr %i.hb, align 8, !noundef !27 ; 3 uses
  %i.lb = and i16 %i.jq, 1023                     ; 2 uses
  %i.lc = zext nneg i16 %i.lb to i64              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39493)
  call void @llvm.experimental.noalias.scope.decl(metadata !39496)
  %i.ld = load i64, ptr %i.hs, align 8, !alias.scope !39493, !noalias !39498, !noundef !27 ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.val47
  br i1 %i.le, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !39501)
  %i.lf = icmp samesign ult i16 %i.lb, 544
  br i1 %i.lf, label %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef range(i64 0, 1024) %i.lc, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1932) #43, !noalias !39504
  unreachable

_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i: ; preds = %bb.br
  %i.lg = getelementptr inbounds nuw [2192 x i8], ptr %.val46, i64 %i.ld ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lc ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !alias.scope !39505, !noalias !39506, !noundef !27
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.lh, align 4, !alias.scope !39505, !noalias !39506
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 2176 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !alias.scope !39507, !noalias !39506, !noundef !27
  %i.lm = add i64 %i.ll, 1
  store i64 %i.lm, ptr %i.lk, align 8, !alias.scope !39510, !noalias !39506
  %i.ln = load i64, ptr %.sroa.827.0..sroa_idx, align 8, !alias.scope !39493, !noalias !39498, !noundef !27
  %i.lo = add i64 %i.ln, 1                        ; 2 uses
  store i64 %i.lo, ptr %.sroa.827.0..sroa_idx, align 8, !alias.scope !39493, !noalias !39498
  %i.lp = load i64, ptr %.sroa.726.0..sroa_idx, align 8, !alias.scope !39493, !noalias !39498, !noundef !27
  %i.lq = icmp eq i64 %i.lo, %i.lp
  br i1 %i.lq, label %bb.bu, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit

bb.bt:                                            ; preds = %bb.bq
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ld, i64 noundef %.val47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1968) #43, !noalias !39513
  unreachable

bb.bu:                                            ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h04cabe4174c5f56fE(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noalias noundef nonnull align 8 %.val46, i64 noundef %.val47, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fz, i1 noundef zeroext false)
  br label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit

bb.bv:                                            ; preds = %.lr.ph124
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.km
  %i.ls = load i8, ptr %i.lr, align 1, !noundef !27 ; 4 uses
  %i.lt = load i64, ptr %i.c, align 8, !range !223, !noundef !27
  %i.lu = trunc nuw i64 %i.lt to i1
  br i1 %i.lu, label %bb.bx, label %bb.cc

bb.bw:                                            ; preds = %.lr.ph124
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.km, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2022) #43
  unreachable

bb.bx:                                            ; preds = %bb.bv
  switch i8 %6, label %default.unreachable [
    i8 0, label %bb.by
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cb
  ]

default.unreachable:                              ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.lv = and i8 %.sroa.05.1122, 63
  br label %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit

bb.bz:                                            ; preds = %bb.bx
end_hunk_0
