Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  br i1 %exitcond24.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i

.invoke.i95:                                      ; preds = %bb.ku, %.lr.ph434.split.i.i109, %.lr.ph447.i.i191, %.preheader.i.i411, %bb.ng, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i, %.noexc200.i, %bb.mw, %.lr.ph424.preheader.i.i149, %.lr.ph424.i.i151.1, %.lr.ph424.i.i151.2, %.lr.ph424.i.i151.3, %.lr.ph424.i.i151.4, %.lr.ph424.i.i151.5, %.lr.ph424.i.i151.6, %.lr.ph430.i.i162
  %i.cfe = phi i64 [ %i.cev, %bb.ng ], [ %i.brs, %.lr.ph447.i.i191 ], [ %i.byz, %.lr.ph430.i.i162 ], [ %2, %.lr.ph434.split.i.i109 ], [ %.sroa.066.0449.i.i412, %.preheader.i.i411 ], [ %i.bqw, %.lr.ph424.i.i151.6 ], [ %.sroa.071.0400.i.i85, %bb.mw ], [ %i.bpi, %.lr.ph424.preheader.i.i149 ], [ %i.bpn, %.lr.ph424.i.i151.1 ], [ %i.bpv, %.lr.ph424.i.i151.2 ], [ %i.bqe, %.lr.ph424.i.i151.3 ], [ %i.bqk, %.lr.ph424.i.i151.4 ], [ %i.bqq, %.lr.ph424.i.i151.5 ], [ %i.cdq, %.noexc200.i ], [ %i.ces, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %.sroa.069.0399.i.i82, %bb.ku ]
  %i.cff = phi i64 [ 704, %bb.ng ], [ %i.axc, %.lr.ph447.i.i191 ], [ %i.axc, %.lr.ph430.i.i162 ], [ %2, %.lr.ph434.split.i.i109 ], [ %2, %.preheader.i.i411 ], [ %i.awq, %.lr.ph424.preheader.i.i149 ], [ %spec.store.select.i44, %bb.mw ], [ %i.awq, %.lr.ph424.i.i151.6 ], [ %i.awq, %.lr.ph424.i.i151.5 ], [ %i.awq, %.lr.ph424.i.i151.4 ], [ %i.awq, %.lr.ph424.i.i151.3 ], [ %i.awq, %.lr.ph424.i.i151.2 ], [ %i.awq, %.lr.ph424.i.i151.1 ], [ %i.awr, %.noexc200.i ], [ %spec.store.select.i44, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ %spec.store.select.i44, %bb.ku ]
  %i.cfg = phi ptr [ @1929, %bb.ng ], [ @1531, %.lr.ph447.i.i191 ], [ @1574, %.lr.ph430.i.i162 ], [ @1532, %.lr.ph434.split.i.i109 ], [ @1546, %.preheader.i.i411 ], [ @1537, %.lr.ph424.preheader.i.i149 ], [ @1542, %bb.mw ], [ @1537, %.lr.ph424.i.i151.6 ], [ @1537, %.lr.ph424.i.i151.5 ], [ @1537, %.lr.ph424.i.i151.4 ], [ @1537, %.lr.ph424.i.i151.3 ], [ @1537, %.lr.ph424.i.i151.2 ], [ @1537, %.lr.ph424.i.i151.1 ], [ @1543, %.noexc200.i ], [ @1572, %_ZN6brotli3enc9histogram15ClearHistograms17hc7930377f6afe753E.exit.i.i ], [ @1544, %bb.ku ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cfe, i64 noundef %i.cff, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cfg) #43
          to label %.cont.i97 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i96", !noalias !35268

.cont.i97:                                        ; preds = %.invoke.i95
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i87": ; preds = %bb.mx
  %lpad.loopexit.i88 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i89"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i203": ; preds = %.loopexit.i201
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i89"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i96": ; preds = %.invoke.i95, %.split440.us.i.invoke.i119, %.invoke1162.i
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i89"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i89": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i96", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i203", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i87"
  %lpad.phi.i90 = phi { ptr, i32 } [ %lpad.loopexit.i88, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.i87" ], [ %lpad.loopexit105.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.i203" ], [ %lpad.loopexit.split-lp106.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i96" ]
  call void @mi_free(ptr noundef nonnull %i.axl) #38, !noalias !35268
  br label %bb.nh

bb.nh:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i89", %.thread55.i414
  %.pn62.i91 = phi { ptr, i32 } [ %i.axn, %.thread55.i414 ], [ %lpad.phi.i90, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.i89" ]
  br i1 %i.axe, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i92", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i": ; preds = %bb.nh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axj) ]
  call void @mi_free(ptr noundef nonnull %i.axj) #38, !noalias !35268
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i92"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i92": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i", %bb.nh
  call void @mi_free(ptr noundef nonnull %i.awx) #38, !noalias !35268
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i93"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i93": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i92", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i415", %.thread39.i417
  %.pn.pn.pn44.i94 = phi { ptr, i32 } [ %i.axb, %.thread39.i417 ], [ %i.axi, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.thread.i415" ], [ %.pn62.i91, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h189d7514386a497fE.exit.i92" ]
  call void @mi_free(ptr noundef nonnull %i.awt) #38, !noalias !35268
  call void @mi_free(ptr noundef nonnull %i.awn) #38, !noalias !35268
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i", %bb.kp, %.body.i404
  %.pn.pn.pn.pn.i264 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i405, %.body.i404 ], [ %.pn230.pn.pn.pn.pn.pn.pn85936.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i263, %bb.kp ]
  tail call void @mi_free(ptr noundef nonnull %i.awn) #38, !noalias !35268
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i93", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.thread.i", %.thread.i60
  %.pn.pn.pn.pn.pn38.i61 = phi { ptr, i32 } [ %i.asm, %.thread.i60 ], [ %.pn.pn.pn44.i94, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i93" ], [ %i.awv, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.thread.i" ]
  call void @mi_free(ptr noundef nonnull %i.art) #38, !noalias !35268
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

bb.ni:                                            ; preds = %bb.gm
  %i.cfh = icmp eq i64 %.val111.i420, 0           ; 2 uses
  %spec.select.i429 = select i1 %i.cfh, i64 %i.ask, i64 %.val111.i420
  br label %bb.nj

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i", %bb.nl, %bb.gm
  %.val.i421 = phi ptr [ %i.cfo, %bb.nl ], [ %i.cfo, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val110.i419, %bb.gm ]
  %.val63.i422 = phi i64 [ %.sroa.014.1.i430, %bb.nl ], [ %.sroa.014.1.i430, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val111.i420, %bb.gm ] ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val90.i423 = load ptr, ptr %i.cfi, align 8, !alias.scope !35266, !noalias !35265, !nonnull !45, !align !70, !noundef !45 ; 3 uses
  %i.cfj = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val91.i424 = load i64, ptr %i.cfj, align 8, !alias.scope !35266, !noalias !35265, !noundef !45 ; 5 uses
  %i.cfk = icmp ult i64 %.val91.i424, %i.ask
  br i1 %i.cfk, label %bb.nm, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425"

bb.nj:                                            ; preds = %bb.nj, %bb.ni
  %.sroa.014.1.i430 = phi i64 [ %spec.select.i429, %bb.ni ], [ %i.cfm, %bb.nj ] ; 9 uses
  %i.cfl = icmp ult i64 %.sroa.014.1.i430, %i.ask
  %i.cfm = shl i64 %.sroa.014.1.i430, 1
  br i1 %i.cfl, label %bb.nj, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.cfn = icmp slt i64 %.sroa.014.1.i430, 0
  br i1 %i.cfn, label %.invoke2833, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i: ; preds = %bb.nk
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35399
  %i.cfo = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %.sroa.014.1.i430, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !35399 ; 5 uses
  %i.cfp = icmp eq ptr %i.cfo, null
  br i1 %i.cfp, label %.invoke2833, label %bb.nl

bb.nl:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cfo, ptr nonnull readonly align 1 %.val110.i419, i64 %.val111.i420, i1 false), !alias.scope !35400, !noalias !35401
  store ptr %i.cfo, ptr %8, align 8, !alias.scope !35266, !noalias !35265
  store i64 %.sroa.014.1.i430, ptr %i.ash, align 8, !alias.scope !35266, !noalias !35265
  br i1 %i.cfh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i": ; preds = %bb.nl
  tail call void @mi_free(ptr noundef nonnull align 1 %.val110.i419) #38, !noalias !35268
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"

bb.nm:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"
  %i.cfq = icmp eq i64 %.val91.i424, 0            ; 2 uses
  %spec.select91.i = select i1 %i.cfq, i64 %i.ask, i64 %.val91.i424
  br label %bb.nn

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i", %bb.np, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i"
  %.val94.i426 = phi ptr [ %i.cfy, %bb.np ], [ %i.cfy, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val90.i423, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i" ]
  %.val95.i427 = phi i64 [ %.sroa.017.1.i428, %bb.np ], [ %.sroa.017.1.i428, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val91.i424, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i" ] ; 2 uses
  %i.cfr = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.cfr, align 8, !alias.scope !35266, !noalias !35265
  %i.cfs = icmp ult i64 %i.asj, %.val63.i422
  br i1 %i.cfs, label %bb.nq, label %.invoke2835

bb.nn:                                            ; preds = %bb.nn, %bb.nm
  %.sroa.017.1.i428 = phi i64 [ %spec.select91.i, %bb.nm ], [ %i.cfu, %bb.nn ] ; 8 uses
  %i.cft = icmp ult i64 %.sroa.017.1.i428, %i.ask
  %i.cfu = shl i64 %.sroa.017.1.i428, 1
  br i1 %i.cft, label %bb.nn, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.cfv = shl i64 %.sroa.017.1.i428, 2           ; 4 uses
  %i.cfw = icmp ugt i64 %.sroa.017.1.i428, 4611686018427387903
  %i.cfx = icmp ugt i64 %i.cfv, 9223372036854775804
  %or.cond.i.i.i.i230.i = or i1 %i.cfw, %i.cfx
  br i1 %or.cond.i.i.i.i230.i, label %.invoke2833, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i: ; preds = %bb.no
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35402
  %i.cfy = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.cfv, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35402 ; 5 uses
  %i.cfz = icmp eq ptr %i.cfy, null
  br i1 %i.cfz, label %.invoke2833, label %bb.np

bb.np:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  %i.cga = icmp samesign ult i64 %.sroa.017.1.i428, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cga)
  %i.cgb = shl nuw nsw i64 %.val91.i424, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cfy, ptr nonnull readonly align 4 %.val90.i423, i64 %i.cgb, i1 false), !alias.scope !35403, !noalias !35404
  store ptr %i.cfy, ptr %i.cfi, align 8, !alias.scope !35266, !noalias !35265
  store i64 %.sroa.017.1.i428, ptr %i.cfj, align 8, !alias.scope !35266, !noalias !35265
  br i1 %i.cfq, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i": ; preds = %bb.np
  tail call void @mi_free(ptr noundef nonnull align 4 %.val90.i423) #38, !noalias !35268
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425"

bb.nq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425"
  %i.cgc = getelementptr inbounds nuw i8, ptr %.val.i421, i64 %i.asj
  store i8 0, ptr %i.cgc, align 1, !noalias !35268
  %i.cgd = icmp ult i64 %i.asj, %.val95.i427
  br i1 %i.cgd, label %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93, label %.invoke2835

.invoke2835:                                      ; preds = %bb.nq, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425"
  %i.cge = phi i64 [ %.val63.i422, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425" ], [ %.val95.i427, %bb.nq ]
  %i.cgf = phi ptr [ @1567, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i425" ], [ @1568, %bb.nq ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.asj, i64 noundef %i.cge, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cgf) #43
          to label %.cont2836 unwind label %.body432.thread

.cont2836:                                        ; preds = %.invoke2835
  unreachable

_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93: ; preds = %bb.nq
  %i.cgg = getelementptr inbounds nuw [4 x i8], ptr %.val94.i426, i64 %i.asj
  %i.cgh = trunc nuw nsw i64 %2 to i32
  store i32 %i.cgh, ptr %i.cgg, align 4, !noalias !35268
  store i64 %i.ask, ptr %i.asi, align 8, !alias.scope !35266, !noalias !35265
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i441

_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit: ; preds = %bb.iv
  %i.cgi = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sroa.0109.1.i.i359, ptr %i.cgi, align 8, !alias.scope !35322, !noalias !35323
  %i.cgj = zext i8 %.sroa.0113.1.i.i358 to i64
  %i.cgk = add nuw nsw i64 %i.cgj, 1
  %i.cgl = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.cgk, ptr %i.cgl, align 8, !alias.scope !35322, !noalias !35323
  tail call void @mi_free(ptr noundef nonnull align 4 %i.bcd) #38, !noalias !35311
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i205) #38, !noalias !35311
  tail call void @mi_free(ptr noundef nonnull align 4 %i.aym) #38, !noalias !35311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !35311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !35311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !35311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !35311
  tail call void @mi_free(ptr noundef nonnull align 1 %i.awn) #38, !noalias !35268
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i441

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i441: ; preds = %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit, %_ZN6brotli3enc14block_splitter15SplitByteVector17he88e5a9ef69dcbe2E.exit.thread93
  tail call void @mi_free(ptr noundef nonnull align 2 %i.apo) #38
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35405
  %i.cgm = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aph, i64 noundef range(i64 1, -9223372036854775807) 2) #38, !noalias !35405 ; 16 uses
  %i.cgn = icmp eq ptr %i.cgm, null
  br i1 %i.cgn, label %bb.nr, label %.lr.ph899

bb.nr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i441
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.aph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !35406
  unreachable

.lr.ph899:                                        ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i441, %bb.vg
  %.sroa.01.0898 = phi i64 [ %.sroa.01.1, %bb.vg ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i441 ] ; 6 uses
  %.sroa.011.0897 = phi i64 [ %i.cgo, %bb.vg ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i441 ] ; 3 uses
  %i.cgo = add nuw nsw i64 %.sroa.011.0897, 1     ; 2 uses
  %exitcond1660.not = icmp eq i64 %.sroa.011.0897, %1
  br i1 %exitcond1660.not, label %.invoke2837, label %bb.ve

bb.ns:                                            ; preds = %.invoke2839, %.invoke2837
  %i.cgp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.sink.split"

._crit_edge900:                                   ; preds = %bb.vg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35408)
  %i.cgq = udiv i64 %.sroa.01.1, 544
  %i.cgr = tail call i64 @llvm.umin.i64(i64 %i.cgq, i64 49) ; 8 uses
  %spec.store.select.i445 = add nuw nsw i64 %i.cgr, 1 ; 18 uses
  %i.cgs = icmp eq i64 %.sroa.01.1, 0
  br i1 %i.cgs, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit444.thread", %._crit_edge900
  %.sroa.10.0.i.i44220232052 = phi ptr [ inttoptr (i64 2 to ptr), %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17hc6759c00225004c5E.exit444.thread" ], [ %i.cgm, %._crit_edge900 ]
  %i.cgt = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.cgt, align 8, !alias.scope !35408, !noalias !35407
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.nu:                                            ; preds = %._crit_edge900
  %i.cgu = icmp ult i64 %.sroa.01.1, 128
  br i1 %i.cgu, label %bb.nv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i446

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i446: ; preds = %bb.nu
  %i.cgv = mul nuw nsw i64 %spec.store.select.i445, 2192 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !35409
  %i.cgw = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.cgv, i64 noundef range(i64 1, 9) 8) #38, !noalias !35409 ; 16 uses
  %i.cgx = icmp eq ptr %i.cgw, null
  br i1 %i.cgx, label %.invoke2839, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i446
  %.not92.i447 = icmp ult i64 %.sroa.01.1, 544
  br i1 %.not92.i447, label %.loopexit109.i452, label %.lr.ph.i.i.i.i448.preheader

.lr.ph.i.i.i.i448.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %i.cgy = add nsw i64 %i.cgr, -1
  %xtraiter4583 = and i64 %i.cgr, 7               ; 3 uses
  %i.cgz = icmp ult i64 %i.cgy, 7
  br i1 %i.cgz, label %.lr.ph.i.i.i.i448.epil.preheader, label %.lr.ph.i.i.i.i448.preheader.new

.lr.ph.i.i.i.i448.preheader.new:                  ; preds = %.lr.ph.i.i.i.i448.preheader
  %unroll_iter4588 = and i64 %i.cgr, 56
  br label %.lr.ph.i.i.i.i448

.lr.ph.i.i.i.i448:                                ; preds = %.lr.ph.i.i.i.i448, %.lr.ph.i.i.i.i448.preheader.new
  %.sroa.0.08.i.i.i.i449 = phi ptr [ %i.cgw, %.lr.ph.i.i.i.i448.preheader.new ], [ %i.chh, %.lr.ph.i.i.i.i448 ] ; 17 uses
  %niter4589 = phi i64 [ 0, %.lr.ph.i.i.i.i448.preheader.new ], [ %niter4589.next.7, %.lr.ph.i.i.i.i448 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i449, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i, align 8, !noalias !35411
  %i.cha = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cha, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.1, align 8, !noalias !35411
  %i.chb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chb, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.2, align 8, !noalias !35411
  %i.chc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chc, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.3, align 8, !noalias !35411
  %i.chd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chd, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.4, align 8, !noalias !35411
  %i.che = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.che, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.5, align 8, !noalias !35411
  %i.chf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chf, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.6, align 8, !noalias !35411
  %i.chg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chg, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.7, align 8, !noalias !35411
  %i.chh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449, i64 17536 ; 3 uses
  %niter4589.next.7 = add i64 %niter4589, 8       ; 2 uses
  %niter4589.ncmp.7 = icmp eq i64 %niter4589.next.7, %unroll_iter4588
  br i1 %niter4589.ncmp.7, label %.loopexit109.i452.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i448

bb.nv:                                            ; preds = %bb.nu
  %.val110.i995 = load ptr, ptr %9, align 8, !alias.scope !35408, !noalias !35407, !nonnull !45, !align !55, !noundef !45 ; 3 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.val111.i996 = load i64, ptr %i.chi, align 8, !alias.scope !35408, !noalias !35407, !noundef !45 ; 5 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.chk = load i64, ptr %i.chj, align 8, !alias.scope !35408, !noalias !35407, !noundef !45 ; 7 uses
  %i.chl = add i64 %i.chk, 1                      ; 7 uses
  %i.chm = icmp ult i64 %.val111.i996, %i.chl
  br i1 %i.chm, label %bb.uv, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h6391db0776edd08eE.exit229.i997"

.thread.i464:                                     ; preds = %bb.od, %.split32.us.i.invoke.i471, %.split29.us.i.invoke.i463
  %i.chn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit.i"

.loopexit109.i452.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i.i448
  %lcmp.mod4585.not = icmp eq i64 %xtraiter4583, 0
  br i1 %lcmp.mod4585.not, label %.loopexit109.i452, label %.lr.ph.i.i.i.i448.epil.preheader

.lr.ph.i.i.i.i448.epil.preheader:                 ; preds = %.loopexit109.i452.loopexit.unr-lcssa, %.lr.ph.i.i.i.i448.preheader
  %.sroa.0.08.i.i.i.i449.epil.init = phi ptr [ %i.cgw, %.lr.ph.i.i.i.i448.preheader ], [ %i.chh, %.loopexit109.i452.loopexit.unr-lcssa ]
  %lcmp.mod4587 = icmp ne i64 %xtraiter4583, 0
  call void @llvm.assume(i1 %lcmp.mod4587)
  br label %.lr.ph.i.i.i.i448.epil

.lr.ph.i.i.i.i448.epil:                           ; preds = %.lr.ph.i.i.i.i448.epil, %.lr.ph.i.i.i.i448.epil.preheader
  %.sroa.0.08.i.i.i.i449.epil = phi ptr [ %i.cho, %.lr.ph.i.i.i.i448.epil ], [ %.sroa.0.08.i.i.i.i449.epil.init, %.lr.ph.i.i.i.i448.epil.preheader ] ; 3 uses
  %epil.iter4584 = phi i64 [ %epil.iter4584.next, %.lr.ph.i.i.i.i448.epil ], [ 0, %.lr.ph.i.i.i.i448.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i449.epil, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !35411
  %i.cho = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i449.epil, i64 2192 ; 2 uses
  %epil.iter4584.next = add i64 %epil.iter4584, 1 ; 2 uses
  %epil.iter4584.cmp.not = icmp eq i64 %epil.iter4584.next, %xtraiter4583
  br i1 %epil.iter4584.cmp.not, label %.loopexit109.i452, label %.lr.ph.i.i.i.i448.epil, !llvm.loop !34839

.loopexit109.i452:                                ; preds = %.loopexit109.i452.loopexit.unr-lcssa, %.lr.ph.i.i.i.i448.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i453 = phi ptr [ %i.cgw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i" ], [ %i.chh, %.loopexit109.i452.loopexit.unr-lcssa ], [ %i.cho, %.lr.ph.i.i.i.i448.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i453, i8 0, i64 2184, i1 false), !noalias !35410
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i453, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !35411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35413)
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cgw, i64 %i.cgv
  %xtraiter4590 = and i64 %spec.store.select.i445, 7 ; 2 uses
  %lcmp.mod4591.not = icmp eq i64 %xtraiter4590, 0
  br i1 %lcmp.mod4591.not, label %.lr.ph.i.i.i454.prol.loopexit, label %.lr.ph.i.i.i454.prol

.lr.ph.i.i.i454.prol:                             ; preds = %.loopexit109.i452, %.lr.ph.i.i.i454.prol
  %.sroa.02.05.i.i.i455.prol = phi ptr [ %i.chq, %.lr.ph.i.i.i454.prol ], [ %i.cgw, %.loopexit109.i452 ] ; 3 uses
  %prol.iter4592 = phi i64 [ %prol.iter4592.next, %.lr.ph.i.i.i454.prol ], [ 0, %.loopexit109.i452 ]
  %i.chq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455.prol, i64 2192 ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455.prol, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i455.prol, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.chr, align 8, !alias.scope !35416, !noalias !35415
  %prol.iter4592.next = add i64 %prol.iter4592, 1 ; 2 uses
  %prol.iter4592.cmp.not = icmp eq i64 %prol.iter4592.next, %xtraiter4590
  br i1 %prol.iter4592.cmp.not, label %.lr.ph.i.i.i454.prol.loopexit, label %.lr.ph.i.i.i454.prol, !llvm.loop !34847

.lr.ph.i.i.i454.prol.loopexit:                    ; preds = %.lr.ph.i.i.i454.prol, %.loopexit109.i452
  %.sroa.02.05.i.i.i455.unr = phi ptr [ %i.cgw, %.loopexit109.i452 ], [ %i.chq, %.lr.ph.i.i.i454.prol ]
  %i.chs = icmp ult i64 %.sroa.01.1, 3808
  br i1 %i.chs, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i454

.lr.ph.i.i.i454:                                  ; preds = %.lr.ph.i.i.i454.prol.loopexit, %.lr.ph.i.i.i454
  %.sroa.02.05.i.i.i455 = phi ptr [ %i.cih, %.lr.ph.i.i.i454 ], [ %.sroa.02.05.i.i.i455.unr, %.lr.ph.i.i.i454.prol.loopexit ] ; 17 uses
  %i.cht = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 2192
  %i.chu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %.sroa.02.05.i.i.i455, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.chu, align 8, !alias.scope !35416, !noalias !35415
  %i.chv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 4384
  %i.chw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 4376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cht, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.chw, align 8, !alias.scope !35416, !noalias !35415
  %i.chx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 6576
  %i.chy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 6568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chv, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.chy, align 8, !alias.scope !35416, !noalias !35415
  %i.chz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 8768
  %i.cia = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 8760
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chx, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.cia, align 8, !alias.scope !35416, !noalias !35415
  %i.cib = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 10960
  %i.cic = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 10952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.chz, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.cic, align 8, !alias.scope !35416, !noalias !35415
  %i.cid = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 13152
  %i.cie = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 13144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cib, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.cie, align 8, !alias.scope !35416, !noalias !35415
  %i.cif = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 15344
  %i.cig = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 15336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cid, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.cig, align 8, !alias.scope !35416, !noalias !35415
  %i.cih = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 17536 ; 2 uses
  %i.cii = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i455, i64 17528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cif, i8 0, i64 2184, i1 false), !alias.scope !35414, !noalias !35415
  store float 3.402000e+38, ptr %i.cii, align 8, !alias.scope !35416, !noalias !35415
  %i.cij = icmp eq ptr %i.cih, %i.chp
  br i1 %i.cij, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i, label %.lr.ph.i.i.i454

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i: ; preds = %.lr.ph.i.i.i454, %.lr.ph.i.i.i454.prol.loopexit
  %i.cik = udiv i64 %.sroa.01.1, %spec.store.select.i445
  %i.cil = add i64 %.sroa.01.1, -41
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i: ; preds = %bb.nz
  %exitcond.not.i.i474 = icmp eq i64 %.sroa.07.024.i.i457, %i.cgr
  br i1 %exitcond.not.i.i474, label %bb.oa, label %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.split.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i
  %.sroa.0.025.i.i456 = phi i32 [ %.sroa.0.1.i.i460, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 7, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 3 uses
  %.sroa.07.024.i.i457 = phi i64 [ %i.cim, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.loopexit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h34e35a362bd23987E.exit.preheader.split.i.i ] ; 5 uses
end_hunk_0
