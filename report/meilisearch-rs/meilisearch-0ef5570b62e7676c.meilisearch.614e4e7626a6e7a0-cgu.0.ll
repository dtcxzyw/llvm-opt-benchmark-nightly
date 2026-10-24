Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc19backward_references30BrotliCreateBackwardReferences17hda9e5271d10c6767E:bb.a
  %i.ehn = icmp eq i32 %i.ehm, 2
  br i1 %i.ehn, label %bb.adj, label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592

bb.adj:                                           ; preds = %bb.adi
  %i.eho = getelementptr inbounds nuw i8, ptr %i.ehl, i64 4
  %i.ehp = load i32, ptr %i.eho, align 4, !alias.scope !36427, !noalias !36405, !noundef !45
  br label %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592

_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592: ; preds = %bb.adj, %bb.adi, %bb.adh
  %.sroa.0.0.i.i.i175.i = phi i32 [ 0, %bb.adi ], [ %i.ehk, %bb.adh ], [ %i.ehp, %bb.adj ]
  store i32 2, ptr %i.egl, align 4, !alias.scope !36426, !noalias !36405
  %.sroa.4.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.egl, i64 4
  store i32 %.sroa.0.0.i.i.i175.i, ptr %.sroa.4.0..sroa_idx.i42.i.i, align 4, !alias.scope !36426, !noalias !36405
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i173.i) ]
  %i.ehq = icmp ult i64 %i.egj, %.val39.i.i
  br i1 %i.ehq, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593", label %.invoke.i

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593": ; preds = %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592
  %i.ehr = getelementptr inbounds nuw [4 x i8], ptr %.val.i173.i, i64 %i.egj
  %i.ehs = load float, ptr %i.ehr, align 4, !noalias !36428, !noundef !45
  %i.eht = load float, ptr %.val.i173.i, align 4, !noalias !36428, !noundef !45
  %i.ehu = fsub float %i.ehs, %i.eht              ; 2 uses
  %i.ehv = fcmp ugt float %.sroa.0.0.i41.i.i, %i.ehu
  br i1 %i.ehv, label %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594"

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594": ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36429
  %i.ehw = fsub float %.sroa.0.0.i41.i.i, %i.ehu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !36429
  store i64 %i.egj, ptr %i.ebf, align 8, !noalias !36429
  store float %i.ehw, ptr %i.ebg, align 8, !noalias !36429
  store float %.sroa.0.0.i41.i.i, ptr %i.ebh, align 4, !noalias !36429
  invoke void @_ZN6brotli3enc19backward_references2hq20ComputeDistanceCache17hb778d3737a798c6aE(i64 noundef %i.egj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %8, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ean, i64 noundef range(i64 1, 0) %i.eal, ptr noalias noundef nonnull align 4 %i.c, i64 noundef 4)
          to label %.noexc187.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !36405

.noexc187.i:                                      ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594"
  invoke void @_ZN6brotli3enc19backward_references2hq13StartPosQueue4push17hfb5ef7c96d67ff19E(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %.noexc188.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !36405

.noexc188.i:                                      ; preds = %.noexc187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36429
  br label %_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595

_ZN6brotli3enc19backward_references2hq12EvaluateNode17hf4bbd34eaae1782fE.exit.i.i595: ; preds = %.noexc188.i, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit6.i.i.i593"
  %i.ehx = getelementptr inbounds nuw [4 x i8], ptr %i.eah, i64 %i.egj
  %i.ehy = load i32, ptr %i.ehx, align 4, !alias.scope !36420, !noalias !36405, !noundef !45
  %i.ehz = zext i32 %i.ehy to i64
  %i.eia = add i64 %.sroa.0.278.i.i, %i.ehz       ; 2 uses
  %.sroa.018.1.i.i = add i64 %.sroa.018.179.i.i, -1 ; 2 uses
  %i.eib = icmp eq i64 %.sroa.018.1.i.i, 0
  br i1 %i.eib, label %.loopexit.i.i589, label %.lr.ph.i174.i

.invoke.i:                                        ; preds = %.loopexit2293, %bb.acm, %bb.acj, %.lr.ph63.i.i, %bb.ach, %.lr.ph70.i.i, %bb.acz, %bb.acv, %bb.acr, %bb.act, %.lr.ph95.i.i, %.lr.ph.i.i580, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592, %bb.adf
  %i.eic = phi i64 [ %.val42.i.i, %bb.ach ], [ %i.efm, %bb.act ], [ %i.egj, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592 ], [ %i.efb, %bb.acr ], [ %i.eeh, %.lr.ph.i.i580 ], [ %i.egb, %bb.acz ], [ %11, %.lr.ph63.i.i ], [ %i.ehf, %bb.adf ], [ %.sroa.0.1.i93.i.i, %.lr.ph95.i.i ], [ %.sroa.05.084.i.i, %bb.acv ], [ %i.ecr, %.lr.ph70.i.i ], [ %i.eds, %bb.acm ], [ %i.edv, %bb.acj ], [ 0, %.loopexit2293 ]
  %i.eid = phi i64 [ %.val42.i.i, %bb.ach ], [ %i.eal, %bb.act ], [ %.val39.i.i, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592 ], [ %i.eal, %bb.acr ], [ %3, %.lr.ph.i.i580 ], [ %.sroa.16.0.lcssa.i, %bb.acz ], [ %11, %.lr.ph63.i.i ], [ %i.eal, %bb.adf ], [ %i.eal, %.lr.ph95.i.i ], [ %0, %bb.acv ], [ %3, %.lr.ph70.i.i ], [ 140, %bb.acm ], [ 704, %bb.acj ], [ 0, %.loopexit2293 ]
  %i.eie = phi ptr [ @1764, %bb.ach ], [ @1759, %bb.act ], [ @1760, %_ZN6brotli3enc19backward_references2hq23ComputeDistanceShortcut17h874cc0a1454c5946E.exit.i.i.i592 ], [ @1757, %bb.acr ], [ @1768, %.lr.ph.i.i580 ], [ @1743, %bb.acz ], [ @1765, %.lr.ph63.i.i ], [ @1755, %bb.adf ], [ @1758, %.lr.ph95.i.i ], [ @1742, %bb.acv ], [ @1763, %.lr.ph70.i.i ], [ @1767, %bb.acm ], [ @1766, %bb.acj ], [ @1762, %.loopexit2293 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eic, i64 noundef %i.eid, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eie) #43
          to label %.cont.i unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i", !noalias !36405

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.loopexit.i585:                                   ; preds = %bb.acu, %bb.acs
  %.sroa.08.0.i.lcssa.i.i586 = phi i64 [ 0, %bb.acs ], [ %i.efo, %bb.acu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36423
  %i.eif = add i64 %.sroa.08.0.i.lcssa.i.i586, %i.eak ; 2 uses
  store i64 %i.eif, ptr %12, align 8, !alias.scope !36399
  invoke void @_ZN6brotli3enc19backward_references2hq26BrotliZopfliCreateCommands17h0cfaebb68bc5bb36E(i64 noundef range(i64 0, 4294967296) %0, i64 noundef range(i64 0, 4294967296) %1, i64 noundef %i.dzq, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ean, i64 noundef %i.eal, ptr noalias noundef nonnull align 4 %8, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(8) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, ptr noalias noundef nonnull align 4 %10, i64 noundef %11, ptr noalias noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.acb unwind label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", !noalias !36405

.preheader.i577:                                  ; preds = %.preheader.i577.preheader, %.preheader.i577
  %.sroa.054.0293.i = phi i64 [ %i.eij, %.preheader.i577 ], [ 0, %.preheader.i577.preheader ] ; 3 uses
  %niter4577 = phi i64 [ %niter4577.next.1, %.preheader.i577 ], [ 0, %.preheader.i577.preheader ]
  %i.eig = getelementptr inbounds nuw [20 x i8], ptr %i.ean, i64 %.sroa.054.0293.i ; 4 uses
  store i64 9151254648282152960, ptr %i.eig, align 4, !noalias !36405
  %.sroa.4.0..sroa_idx.i578 = getelementptr inbounds nuw i8, ptr %i.eig, i64 8
  store i32 1, ptr %.sroa.4.0..sroa_idx.i578, align 4, !noalias !36405
  %.sroa.5.0..sroa_idx.i579 = getelementptr inbounds nuw i8, ptr %i.eig, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx.i579, align 4, !noalias !36405
  %.sroa.653.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eig, i64 16
  store i32 0, ptr %.sroa.653.0..sroa_idx.i, align 4, !noalias !36405
  %i.eih = getelementptr inbounds nuw [20 x i8], ptr %i.ean, i64 %.sroa.054.0293.i ; 4 uses
  %i.eii = getelementptr inbounds nuw i8, ptr %i.eih, i64 20
  store i64 9151254648282152960, ptr %i.eii, align 4, !noalias !36405
  %.sroa.4.0..sroa_idx.i578.1 = getelementptr inbounds nuw i8, ptr %i.eih, i64 28
  store i32 1, ptr %.sroa.4.0..sroa_idx.i578.1, align 4, !noalias !36405
  %.sroa.5.0..sroa_idx.i579.1 = getelementptr inbounds nuw i8, ptr %i.eih, i64 32
  store i32 0, ptr %.sroa.5.0..sroa_idx.i579.1, align 4, !noalias !36405
  %.sroa.653.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.eih, i64 36
  store i32 0, ptr %.sroa.653.0..sroa_idx.i.1, align 4, !noalias !36405
  %i.eij = add nuw nsw i64 %.sroa.054.0293.i, 2   ; 2 uses
  %niter4577.next.1 = add i64 %niter4577, 2       ; 2 uses
  %niter4577.ncmp.1 = icmp eq i64 %niter4577.next.1, %unroll_iter4576
  br i1 %niter4577.ncmp.1, label %.unr-lcssa4570, label %.preheader.i577

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp": ; preds = %.noexc187.i, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit.i.i.i594", %bb.acx, %.loopexit.i585, %.noexc156.i, %.noexc155.i, %._crit_edge64.i.i, %bb.ace
  %lpad.loopexit.split-lp4450 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i"

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i": ; preds = %.invoke.i, %bb.acy, %.loopexit130.i
  %.sroa.046.2.ph.ph.ph.i = phi i1 [ false, %.loopexit130.i ], [ true, %bb.acy ], [ true, %.invoke.i ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i"

"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i": ; preds = %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp", %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i"
  %.sroa.046.2.i = phi i1 [ %.sroa.046.2.ph.ph.ph.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i" ], [ true, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i" ], [ %lpad.loopexit.split-lp4450, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp" ]
  call void @mi_free(ptr noundef nonnull %i.ean) #38, !noalias !36405
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"

bb.adk:                                           ; preds = %bb.adu, %.lr.ph289.i
  %.sroa.0.0288.i = phi i64 [ %i.dzr, %.lr.ph289.i ], [ %.sroa.0.1.i600, %bb.adu ] ; 10 uses
  %.sroa.08.0287.i = phi i64 [ 0, %.lr.ph289.i ], [ %.sroa.08.1.i, %bb.adu ] ; 10 uses
  %.sroa.016.0286.i = phi i64 [ 0, %.lr.ph289.i ], [ %i.ekm, %bb.adu ] ; 9 uses
  %.sroa.06.0285.i = phi ptr [ %i.dzw, %.lr.ph289.i ], [ %.sroa.06.3.i, %bb.adu ] ; 11 uses
  %.sroa.16.0284.i = phi i64 [ %i.dzr, %.lr.ph289.i ], [ %.sroa.16.3.i, %bb.adu ] ; 4 uses
  %.sroa.06.0285.i2282 = ptrtoaddr ptr %.sroa.06.0285.i to i64
  %i.eik = add i64 %.sroa.016.0286.i, %1          ; 6 uses
  %.sroa.0.0.i.i599 = tail call noundef i64 @llvm.umin.i64(i64 %i.dzq, i64 %i.eik)
  %i.eil = sub i64 %0, %.sroa.016.0286.i
  %i.eim = add i64 %.sroa.08.0287.i, 128          ; 2 uses
  %i.ein = icmp ult i64 %.sroa.0.0288.i, %i.eim
  br i1 %i.ein, label %.preheader, label %bb.adp

.preheader:                                       ; preds = %bb.adk, %.preheader
  %.sroa.026.1.i = phi i64 [ %i.eip, %.preheader ], [ %.sroa.0.0288.i, %bb.adk ] ; 7 uses
  %i.eio = icmp ult i64 %.sroa.026.1.i, %i.eim
  %i.eip = shl i64 %.sroa.026.1.i, 1
  br i1 %i.eio, label %.preheader, label %bb.adl

bb.adl:                                           ; preds = %.preheader
  %i.eiq = shl i64 %.sroa.026.1.i, 3              ; 3 uses
  %i.eir = icmp ugt i64 %.sroa.026.1.i, 2305843009213693951
  %i.eis = icmp ugt i64 %i.eiq, 9223372036854775800
  %or.cond.i.i.i.i.i191.i = or i1 %i.eir, %i.eis
  br i1 %or.cond.i.i.i.i.i191.i, label %bb.adm, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i, !prof !92

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i: ; preds = %bb.adl
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !36430
  %i.eit = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.eiq, i64 noundef range(i64 1, -9223372036854775807) 8) #38, !noalias !36430 ; 10 uses
  %i.eiu = ptrtoaddr ptr %i.eit to i64
  %i.eiv = icmp eq ptr %i.eit, null
  br i1 %i.eiv, label %bb.adm, label %bb.adn

bb.adm:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i, %bb.adl
  %.sroa.4.0.ph.i.i.i195.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i ], [ 0, %bb.adl ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i195.i, i64 %i.eiq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc196.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !36405

.noexc196.i:                                      ; preds = %bb.adm
  unreachable

bb.adn:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i192.i
  %i.eiw = icmp samesign ult i64 %.sroa.026.1.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.eiw)
  %.not88.i = icmp samesign ugt i64 %.sroa.0.0288.i, %.sroa.16.0284.i
  br i1 %.not88.i, label %bb.ado, label %.lr.ph.i601.preheader, !prof !47

.lr.ph.i601.preheader:                            ; preds = %bb.adn
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0288.i, 4
  %i.eix = sub i64 %.sroa.06.0285.i2282, %i.eiu
  %diff.check = icmp ugt i64 %i.eix, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i601.preheader4484, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i601.preheader
  %n.vec = and i64 %.sroa.0.0288.i, 1152921504606846972 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eiy = getelementptr inbounds nuw [8 x i8], ptr %i.eit, i64 %index ; 2 uses
  %i.eiz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %index ; 2 uses
  %i.eja = getelementptr inbounds nuw i8, ptr %i.eiz, i64 16
  %wide.load = load <2 x i64>, ptr %i.eiz, align 8, !noalias !36405
  %wide.load2283 = load <2 x i64>, ptr %i.eja, align 8, !noalias !36405
  %i.ejb = getelementptr inbounds nuw i8, ptr %i.eiy, i64 16
  store <2 x i64> %wide.load, ptr %i.eiy, align 8, !noalias !36405
  store <2 x i64> %wide.load2283, ptr %i.ejb, align 8, !noalias !36405
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ejc = icmp eq i64 %index.next, %n.vec
  br i1 %i.ejc, label %middle.block, label %vector.body, !llvm.loop !35977

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.0.0288.i, %n.vec
  br i1 %cmp.n, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", label %.lr.ph.i601.preheader4484

.lr.ph.i601.preheader4484:                        ; preds = %.lr.ph.i601.preheader, %middle.block
  %.sroa.8.0281.i.ph = phi i64 [ 0, %.lr.ph.i601.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter4561 = and i64 %.sroa.0.0288.i, 3      ; 2 uses
  %lcmp.mod4562.not = icmp eq i64 %xtraiter4561, 0
  br i1 %lcmp.mod4562.not, label %.lr.ph.i601.prol.loopexit, label %.lr.ph.i601.prol

.lr.ph.i601.prol:                                 ; preds = %.lr.ph.i601.preheader4484, %.lr.ph.i601.prol
  %.sroa.8.0281.i.prol = phi i64 [ %i.ejf, %.lr.ph.i601.prol ], [ %.sroa.8.0281.i.ph, %.lr.ph.i601.preheader4484 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i601.prol ], [ 0, %.lr.ph.i601.preheader4484 ]
  %i.ejd = getelementptr inbounds nuw [8 x i8], ptr %i.eit, i64 %.sroa.8.0281.i.prol
  %i.eje = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %.sroa.8.0281.i.prol
  %i.ejf = add nuw nsw i64 %.sroa.8.0281.i.prol, 1 ; 2 uses
  %i.ejg = load i64, ptr %i.eje, align 8, !noalias !36405, !noundef !45
  store i64 %i.ejg, ptr %i.ejd, align 8, !noalias !36405
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter4561
  br i1 %prol.iter.cmp.not, label %.lr.ph.i601.prol.loopexit, label %.lr.ph.i601.prol, !llvm.loop !35978

.lr.ph.i601.prol.loopexit:                        ; preds = %.lr.ph.i601.prol, %.lr.ph.i601.preheader4484
  %.sroa.8.0281.i.unr = phi i64 [ %.sroa.8.0281.i.ph, %.lr.ph.i601.preheader4484 ], [ %i.ejf, %.lr.ph.i601.prol ]
  %i.ejh = sub nsw i64 %.sroa.8.0281.i.ph, %.sroa.0.0288.i
  %i.eji = icmp ugt i64 %i.ejh, -4
  br i1 %i.eji, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", label %.lr.ph.i601

bb.ado:                                           ; preds = %bb.adn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36401
  store ptr @186, ptr %i.j, align 8, !noalias !36401
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ejj, align 8, !noalias !36401
  %i.ejk = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.ejk, align 8, !noalias !36401
  %i.ejl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ejl, align 8, !noalias !36401
  %i.ejm = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.ejm, align 8, !noalias !36401
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1773) #43
          to label %bb.aby unwind label %.thread117.i, !noalias !36405

.thread117.i:                                     ; preds = %bb.ado
  %i.ejn = landingpad { ptr, i32 }
          cleanup
  call void @mi_free(ptr noundef nonnull %i.eit) #38, !noalias !36405
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"

.lr.ph.i601:                                      ; preds = %.lr.ph.i601.prol.loopexit, %.lr.ph.i601
  %.sroa.8.0281.i = phi i64 [ %i.ekc, %.lr.ph.i601 ], [ %.sroa.8.0281.i.unr, %.lr.ph.i601.prol.loopexit ] ; 6 uses
  %i.ejo = getelementptr inbounds nuw [8 x i8], ptr %i.eit, i64 %.sroa.8.0281.i
  %i.ejp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %.sroa.8.0281.i
  %i.ejq = add nuw nsw i64 %.sroa.8.0281.i, 1     ; 2 uses
  %i.ejr = load i64, ptr %i.ejp, align 8, !noalias !36405, !noundef !45
  store i64 %i.ejr, ptr %i.ejo, align 8, !noalias !36405
  %i.ejs = getelementptr inbounds nuw [8 x i8], ptr %i.eit, i64 %i.ejq
  %i.ejt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %i.ejq
  %i.eju = add nuw nsw i64 %.sroa.8.0281.i, 2     ; 2 uses
  %i.ejv = load i64, ptr %i.ejt, align 8, !noalias !36405, !noundef !45
  store i64 %i.ejv, ptr %i.ejs, align 8, !noalias !36405
  %i.ejw = getelementptr inbounds nuw [8 x i8], ptr %i.eit, i64 %i.eju
  %i.ejx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %i.eju
  %i.ejy = add nuw nsw i64 %.sroa.8.0281.i, 3     ; 2 uses
  %i.ejz = load i64, ptr %i.ejx, align 8, !noalias !36405, !noundef !45
  store i64 %i.ejz, ptr %i.ejw, align 8, !noalias !36405
  %i.eka = getelementptr inbounds nuw [8 x i8], ptr %i.eit, i64 %i.ejy
  %i.ekb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.0285.i, i64 %i.ejy
  %i.ekc = add nuw nsw i64 %.sroa.8.0281.i, 4     ; 2 uses
  %i.ekd = load i64, ptr %i.ekb, align 8, !noalias !36405, !noundef !45
  store i64 %i.ekd, ptr %i.eka, align 8, !noalias !36405
  %exitcond.not.i602.3 = icmp eq i64 %i.ekc, %.sroa.0.0288.i
  br i1 %exitcond.not.i602.3, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", label %.lr.ph.i601, !llvm.loop !35979

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i": ; preds = %.lr.ph.i601.prol.loopexit, %.lr.ph.i601, %middle.block
  tail call void @mi_free(ptr noundef nonnull align 8 %.sroa.06.0285.i) #38, !noalias !36405
  br label %bb.adp

bb.adp:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i", %bb.adk
  %.sroa.16.3.i = phi i64 [ %.sroa.16.0284.i, %bb.adk ], [ %.sroa.026.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i" ] ; 14 uses
  %.sroa.06.3.i = phi ptr [ %.sroa.06.0285.i, %bb.adk ], [ %i.eit, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i" ] ; 10 uses
  %.sroa.0.1.i600 = phi i64 [ %.sroa.0.0288.i, %bb.adk ], [ %.sroa.026.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i203.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.3.i) ]
  %i.eke = icmp ugt i64 %.sroa.08.0287.i, %.sroa.16.3.i
  br i1 %i.eke, label %bb.adr, label %bb.adq, !prof !47

bb.adq:                                           ; preds = %bb.adp
  %i.ekf = sub nuw nsw i64 %.sroa.16.3.i, %.sroa.08.0287.i
  %i.ekg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.3.i, i64 %.sroa.08.0287.i ; 2 uses
  %i.ekh = invoke fastcc noundef i64 @_ZN6brotli3enc19backward_references2hq17FindAllMatchesH1017hde6636636d51df5aE(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.dtn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %_ZN6brotli3enc11static_dict20kBrotliEncDictionary17hd33b94a02c5a34a0E.20, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %5, i64 noundef %i.eik, i64 noundef %i.eil, i64 noundef %.sroa.0.0.i.i599, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %6, ptr noalias noundef nonnull align 8 %i.ekg, i64 noundef %i.ekf)
          to label %bb.ads unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 3 uses

bb.adr:                                           ; preds = %bb.adp
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.08.0287.i, i64 noundef %.sroa.16.3.i, i64 noundef %.sroa.16.3.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1778) #43
          to label %bb.aby unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !36405

bb.ads:                                           ; preds = %bb.adq
  %i.eki = add i64 %i.ekh, %.sroa.08.0287.i       ; 2 uses
  %i.ekj = icmp ult i64 %.sroa.016.0286.i, %0
  br i1 %i.ekj, label %bb.adt, label %.invoke

bb.adt:                                           ; preds = %bb.ads
  %i.ekk = getelementptr inbounds nuw [4 x i8], ptr %i.dzs, i64 %.sroa.016.0286.i ; 2 uses
  %i.ekl = trunc i64 %i.ekh to i32
  store i32 %i.ekl, ptr %i.ekk, align 4, !noalias !36405
  %.not91.i = icmp eq i64 %i.ekh, 0
  br i1 %.not91.i, label %bb.adu, label %bb.adv

bb.adu:                                           ; preds = %._crit_edge.i, %bb.adw, %bb.adt
  %.sroa.016.1.i = phi i64 [ %i.elv, %._crit_edge.i ], [ %.sroa.016.0286.i, %bb.adt ], [ %.sroa.016.0286.i, %bb.adw ] ; 2 uses
  %.sroa.08.1.i = phi i64 [ %i.ekz, %._crit_edge.i ], [ %.sroa.08.0287.i, %bb.adt ], [ %i.eki, %bb.adw ]
  %i.ekm = add i64 %.sroa.016.1.i, 1
  %i.ekn = add i64 %.sroa.016.1.i, 4
  %i.eko = icmp ult i64 %i.ekn, %0
  br i1 %i.eko, label %bb.adk, label %._crit_edge290.i

bb.adv:                                           ; preds = %bb.adt
  %i.ekp = add i64 %i.eki, -1                     ; 3 uses
  %i.ekq = icmp ult i64 %i.ekp, %.sroa.16.3.i
  br i1 %i.ekq, label %bb.adw, label %.invoke

bb.adw:                                           ; preds = %bb.adv
  %i.ekr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.3.i, i64 %i.ekp
  %i.eks = load i64, ptr %i.ekr, align 8, !noalias !36405, !noundef !45 ; 3 uses
  %sum.shift.i = lshr i64 %i.eks, 37              ; 2 uses
  %i.ekt = icmp ugt i64 %i.eks, 44805098831871
  br i1 %i.ekt, label %bb.adx, label %bb.adu

bb.adx:                                           ; preds = %bb.adw
  %i.eku = add nsw i64 %sum.shift.i, -1           ; 4 uses
  %i.ekv = icmp ult i64 %.sroa.08.0287.i, %.sroa.16.3.i
  br i1 %i.ekv, label %bb.ady, label %.invoke

.invoke:                                          ; preds = %bb.adx, %bb.adv, %bb.ads
  %i.ekw = phi i64 [ %i.ekp, %bb.adv ], [ %.sroa.016.0286.i, %bb.ads ], [ %.sroa.08.0287.i, %bb.adx ]
  %i.ekx = phi i64 [ %.sroa.16.3.i, %bb.adv ], [ %0, %bb.ads ], [ %.sroa.16.3.i, %bb.adx ]
  %i.eky = phi ptr [ @1775, %bb.adv ], [ @1774, %bb.ads ], [ @1776, %bb.adx ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ekw, i64 noundef %i.ekx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eky) #43
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !36405

.cont:                                            ; preds = %.invoke
  unreachable

bb.ady:                                           ; preds = %bb.adx
  store i64 %i.eks, ptr %i.ekg, align 8, !noalias !36405
  %i.ekz = add nuw nsw i64 %.sroa.08.0287.i, 1
  store i32 1, ptr %i.ekk, align 4, !noalias !36405
  %i.ela = add i64 %sum.shift.i, %i.eik
  %.sroa.0.0.i206.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.07.0.i, i64 %i.ela) ; 4 uses
  %i.elb = add i64 %i.eik, 1                      ; 3 uses
  %i.elc = add i64 %i.eik, 64
  %.not.i207.i = icmp ugt i64 %i.elc, %.sroa.0.0.i206.i
  %i.eld = add nsw i64 %.sroa.0.0.i206.i, -63
  %spec.select.i.i = select i1 %.not.i207.i, i64 %i.elb, i64 %i.eld ; 5 uses
  %i.ele = add i64 %i.eik, 513
  %.not8.i.i = icmp ule i64 %i.ele, %spec.select.i.i
  %i.elf = icmp ult i64 %i.elb, %spec.select.i.i
  %or.cond.i208.i = and i1 %.not8.i.i, %i.elf
  br i1 %or.cond.i208.i, label %.lr.ph.i211.i, label %.loopexit.i209.i

.loopexit.i209.i:                                 ; preds = %.noexc212.i, %bb.ady
  %i.elg = icmp ult i64 %spec.select.i.i, %.sroa.0.0.i206.i
  br i1 %i.elg, label %.lr.ph11.i.i, label %.loopexit

.lr.ph.i211.i:                                    ; preds = %bb.ady, %.noexc212.i
  %.sroa.05.09.i.i = phi i64 [ %i.eli, %.noexc212.i ], [ %i.elb, %bb.ady ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36431
  store i64 0, ptr %i.b, align 8, !noalias !36431
  %i.elh = invoke fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.dtn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.05.09.i.i, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %i.eae, i64 noundef 128, i64 noundef %i.eac, ptr noalias noundef align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %.noexc212.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp, !noalias !36399 ; 0 uses

.noexc212.i:                                      ; preds = %.lr.ph.i211.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36431
  %i.eli = add i64 %.sroa.05.09.i.i, 8            ; 2 uses
  %i.elj = icmp ult i64 %i.eli, %spec.select.i.i
  br i1 %i.elj, label %.lr.ph.i211.i, label %.loopexit.i209.i

.lr.ph11.i.i:                                     ; preds = %.loopexit.i209.i, %.noexc213.i
  %.sroa.0.110.i.i = phi i64 [ %i.ell, %.noexc213.i ], [ %spec.select.i.i, %.loopexit.i209.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36431
  store i64 0, ptr %i.a, align 8, !noalias !36431
  %i.elk = invoke fastcc noundef i64 @_ZN6brotli3enc19backward_references19hash_to_binary_tree22StoreAndFindMatchesH1017h1a8db7e0f3094503E(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.dtn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i64 noundef %.sroa.0.110.i.i, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %i.eae, i64 noundef 128, i64 noundef %i.eac, ptr noalias noundef align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %.noexc213.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp, !noalias !36399 ; 0 uses

.noexc213.i:                                      ; preds = %.lr.ph11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36431
  %i.ell = add nuw nsw i64 %.sroa.0.110.i.i, 1    ; 2 uses
  %i.elm = icmp ult i64 %i.ell, %.sroa.0.0.i206.i
  br i1 %i.elm, label %.lr.ph11.i.i, label %.loopexit

.loopexit:                                        ; preds = %.noexc213.i, %.loopexit.i209.i
  %i.eln = add nuw nsw i64 %.sroa.016.0286.i, 1   ; 2 uses
  %i.elo = sub nuw nsw i64 %0, %i.eln
  %.not93.i = icmp ugt i64 %i.eku, %i.elo
  br i1 %.not93.i, label %bb.adz, label %bb.aea, !prof !47

bb.adz:                                           ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36401
  store ptr @186, ptr %i.i, align 8, !noalias !36401
  %i.elp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.elp, align 8, !noalias !36401
  %i.elq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.elq, align 8, !noalias !36401
  %i.elr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.elr, align 8, !noalias !36401
  %i.els = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.els, align 8, !noalias !36401
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1777) #43
          to label %bb.aby unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !36405

bb.aea:                                           ; preds = %.loopexit
  %i.elt = icmp eq i64 %i.eku, 0
  br i1 %i.elt, label %._crit_edge.i, label %.lr.ph283.preheader.i

.lr.ph283.preheader.i:                            ; preds = %bb.aea
  %.idx.i = shl nuw nsw i64 %i.eku, 2
  %i.elu = getelementptr [4 x i8], ptr %i.dzs, i64 %i.eln
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.elu, i8 0, i64 %.idx.i, i1 false), !noalias !36405
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph283.preheader.i, %bb.aea
  %i.elv = add nuw nsw i64 %i.eku, %.sroa.016.0286.i
  br label %bb.adu

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i": ; preds = %.thread117.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i", %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i
  %i.elw = phi ptr [ %i.eah, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i" ], [ %i.dzs, %.thread117.i ], [ %i.dzs, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %i.eaf, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.16.1.i = phi i64 [ %.sroa.16.0.lcssa.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i" ], [ %.sroa.16.0284.i, %.thread117.i ], [ %.sroa.16.3.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %.sroa.16.2.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.06.1.i = phi ptr [ %.sroa.06.0.lcssa.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i" ], [ %.sroa.06.0285.i, %.thread117.i ], [ %.sroa.06.3.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %.sroa.06.2.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.pn95.i = phi { ptr, i32 } [ %lpad.phi.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i" ], [ %i.ejn, %.thread117.i ], [ %lpad.loopexit139.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp140.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1.i = phi i1 [ %.sroa.046.2.i, %"_ZN4core3ptr127drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..backward_references..hash_to_binary_tree..ZopfliNode$GT$$GT$17hda72967c3231e63cE.exit.i" ], [ false, %.thread117.i ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ false, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %i.elx = icmp eq i64 %.sroa.16.1.i, 0
  br i1 %i.elx, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit217.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.1.i) ]
  call void @mi_free(ptr noundef nonnull %.sroa.06.1.i) #38, !noalias !36405
  br i1 %.sroa.046.1.i, label %bb.aeb, label %bb.aec

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit217.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit215.i"
  br i1 %.sroa.046.1.i, label %bb.aeb, label %bb.aec

bb.aeb:                                           ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit217.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i"
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$brotli..enc..backward_references..hq..ZopfliCostModel$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h4a80bcf68e0e39d0E"(ptr noalias noundef align 8 dereferenceable(2864) %i.l) #44, !noalias !36405
  br label %bb.aec

bb.aec:                                           ; preds = %bb.aeb, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u64$GT$$GT$17hc830dd20d031bb73E.exit217.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i"
  br i1 %.not.i559, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i218.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i218.i": ; preds = %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp, %bb.aec, %.thread492.i
  %.pn95.pn.pn.ph494.i = phi { ptr, i32 } [ %i.dzy, %.thread492.i ], [ %.pn95.i, %bb.aec ], [ %lpad.loopexit.split-lp4482, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp ]
  %i.ely = phi ptr [ %i.dzs, %.thread492.i ], [ %i.elw, %bb.aec ], [ %i.dzs, %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ely) ]
  br label %common.resume.sink.split

_ZN6brotli3enc19backward_references2hq38BrotliCreateHqZopfliBackwardReferences17h9e97b296fe1388bdE.exit: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17h00f3242a0f4817f1E.exit.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i8.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !36401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aap
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc26compress_fragment_two_pass13StoreCommands17hfcc52551749eafcfE(ptr noalias noundef nonnull readonly align 1 captures(address) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 4 captures(none) %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6, ptr noalias noundef nonnull align 1 %7, i64 noundef %8) unnamed_addr #3 {
bb.a:
  %i.a = alloca [512 x i8], align 4               ; 16 uses
  %i.b = alloca [256 x i8], align 2               ; 6 uses
  %i.c = alloca [128 x i8], align 1               ; 6 uses
  %i.d = alloca [1024 x i8], align 4              ; 5 uses
  %i.e = alloca [512 x i8], align 2               ; 6 uses
  %i.f = alloca [256 x i8], align 1               ; 6 uses
end_hunk_0
