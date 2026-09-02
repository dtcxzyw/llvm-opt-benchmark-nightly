Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc6encode22WriteMetaBlockInternal17h7952d72b2f7e6cd4E:bb.a
  br i1 %i.acj, label %bb.er, label %.invoke.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %i.aci ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 4, !noalias !38012, !noundef !27
  %i.acm = icmp eq i32 %i.acl, -1
  br i1 %i.acm, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  store i32 %.sroa.0.070.i.i.i, ptr %i.ack, align 4, !noalias !38012
  %i.acn = add i32 %.sroa.0.070.i.i.i, 1
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.sroa.0.3.i.i.i = phi i32 [ %i.acn, %bb.es ], [ %.sroa.0.070.i.i.i, %bb.er ] ; 5 uses
  %i.aco = add nuw nsw i64 %i.acf, 1
  %exitcond103.not.i.i.i = icmp eq i64 %i.acf, %i.jv
  br i1 %exitcond103.not.i.i.i, label %._crit_edge.i.i.i, label %bb.ep

.invoke.i.i.i:                                    ; preds = %bb.eq, %bb.ep
  %.ph.i.i = phi i64 [ %i.sc, %bb.ep ], [ %i.aci, %bb.eq ]
  %.ph165.i.i = phi i64 [ %i.sc, %bb.ep ], [ %i.jv, %bb.eq ]
  %.ph166.i.i = phi ptr [ @1909, %bb.ep ], [ @1910, %bb.eq ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph.i.i, i64 noundef %.ph165.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph166.i.i) #43
          to label %.cont.i.i.i unwind label %.thread29.i.i.i, !noalias !38012

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.eu:                                            ; preds = %.thread.i.i.i
  br i1 %i.acp, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i401.i.thread"

.thread.i.i.i:                                    ; preds = %.invoke176.i.i.i, %bb.ed
  %i.acp = phi i1 [ true, %.invoke176.i.i.i ], [ false, %bb.ed ] ; 2 uses
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.acq = icmp eq i64 %i.abe, 0
  br i1 %i.acq, label %bb.eu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i.i"

.thread.thread.i.i.i:                             ; preds = %bb.em
  %i.acr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acs = icmp eq i64 %i.abe, 0
  br i1 %i.acs, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i.i": ; preds = %.thread.thread.i.i.i
  call void @mi_free(ptr noundef nonnull %i.abd) #38, !noalias !38012
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i.i": ; preds = %.thread.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abd) ]
  call void @mi_free(ptr noundef nonnull %i.abd) #38, !noalias !38012
  br i1 %i.acp, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i401.i.thread"

._crit_edge.i158.i:                               ; preds = %bb.ex
  %i.act = icmp ugt i64 %.sroa.0.0158.i.i, %i.tp
  br i1 %i.act, label %.invoke.i.i, label %bb.ev, !prof !29

.invoke.i.i:                                      ; preds = %._crit_edge.i158.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0158.i.i, i64 noundef %i.tp, i64 noundef %i.tp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1911) #43
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !37882

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ev:                                            ; preds = %._crit_edge.i158.i
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %.sroa.08.0157.i.i
  %i.acv = sub nuw i64 %i.sc, %.sroa.08.0157.i.i
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %.sroa.0.0158.i.i
  %i.acx = sub nuw nsw i64 %i.tp, %.sroa.0.0158.i.i
  %i.acy = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i139.i, i64 noundef %i.sc, ptr noalias noundef nonnull align 4 %i.tn, i64 noundef %i.jv, ptr noalias noundef nonnull align 4 %i.acu, i64 noundef %i.acv, ptr noalias noundef nonnull align 4 %i.acw, i64 noundef %i.acx, ptr noalias noundef nonnull align 4 %i.tq, i64 noundef 2049, i64 noundef %.sroa.0.0.i92.i.i, i64 noundef %.sroa.0.0.i92.i.i, i64 noundef 256, i64 noundef 2048)
          to label %bb.ew unwind label %.loopexit.i.i, !noalias !37908

bb.ew:                                            ; preds = %bb.ev
  %i.acz = add nuw nsw i64 %i.acy, %.sroa.0.0158.i.i ; 2 uses
  %i.ada = add i64 %.sroa.08.0157.i.i, 64         ; 2 uses
  %i.adb = icmp ult i64 %i.ada, %i.jv
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.adb, label %.lr.ph156.i.i, label %._crit_edge160.i.i

scalar.ph1050:                                    ; preds = %scalar.ph1050.preheader, %bb.ex
  %i.adc = phi i64 [ %i.adh, %bb.ex ], [ %.ph1281, %scalar.ph1050.preheader ] ; 4 uses
  %.sroa.033.0155.i.i = phi i64 [ %i.adc, %bb.ex ], [ %.sroa.033.0155.i.i.ph, %scalar.ph1050.preheader ] ; 2 uses
  %i.add = add nuw i64 %.sroa.033.0155.i.i, %.sroa.0.0158.i.i ; 2 uses
  %exitcond225.not.i.i = icmp eq i64 %i.adc, %i.ua
  br i1 %exitcond225.not.i.i, label %.invoke337.i.i, label %bb.ex

bb.ex:                                            ; preds = %scalar.ph1050
  %i.ade = add nuw nsw i64 %.sroa.033.0155.i.i, %.sroa.08.0157.i.i
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %i.add
  %i.adg = trunc i64 %i.ade to i32
  store i32 %i.adg, ptr %i.adf, align 4, !noalias !37882
  %i.adh = add nuw nsw i64 %i.adc, 1
  %exitcond227.not.i.i = icmp eq i64 %i.adc, %umax226.i.i
  br i1 %exitcond227.not.i.i, label %._crit_edge.i158.i, label %scalar.ph1050, !llvm.loop !38028

.invoke337.i.i:                                   ; preds = %scalar.ph1050
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.add, i64 noundef %i.tp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1912) #43
          to label %.cont338.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !37882

.cont338.i.i:                                     ; preds = %.invoke337.i.i
  unreachable

bb.ey:                                            ; preds = %bb.fc, %.preheader105.i.i
  %i.adi = phi i64 [ %i.adq, %bb.fc ], [ 1, %.preheader105.i.i ] ; 4 uses
  %.sroa.031.0153.i.i = phi i64 [ %i.adi, %bb.fc ], [ 0, %.preheader105.i.i ] ; 4 uses
  %exitcond222.not.i.i = icmp eq i64 %i.adi, %i.tx
  br i1 %exitcond222.not.i.i, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.sc, i64 noundef %i.sc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1914) #43
          to label %bb.dh unwind label %bb.fa, !noalias !37882

bb.fa:                                            ; preds = %bb.ez
  %i.adj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i"

bb.fb:                                            ; preds = %bb.ey
  %i.adk = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i901.i, i64 %.sroa.031.0153.i.i ; 2 uses
  %i.adl = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139.i, i64 %.sroa.031.0153.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.adl, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.adk, i64 1040, i1 false), !alias.scope !38029, !noalias !38030
  %i.adm = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.adk)
          to label %bb.fc unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !38031

bb.fc:                                            ; preds = %bb.fb
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adl, i64 1032
  store float %i.adm, ptr %i.adn, align 8, !alias.scope !38032, !noalias !38035
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %.sroa.031.0153.i.i
  %i.adp = trunc i64 %.sroa.031.0153.i.i to i32
  store i32 %i.adp, ptr %i.ado, align 4, !alias.scope !37870, !noalias !38036
  %i.adq = add nuw i64 %i.adi, 1
  %exitcond224.not.i.i = icmp eq i64 %i.adi, %i.jv
  br i1 %exitcond224.not.i.i, label %.preheader101.i.i, label %bb.ey

.lr.ph.i156.i:                                    ; preds = %.lr.ph.i156.i.preheader1288, %.lr.ph.i156.i
  %i.adr = phi i64 [ %i.adt, %.lr.ph.i156.i ], [ %.ph1289, %.lr.ph.i156.i.preheader1288 ] ; 3 uses
  %.sroa.029.0152.i.i = phi i64 [ %i.adr, %.lr.ph.i156.i ], [ %.sroa.029.0152.i.i.ph, %.lr.ph.i156.i.preheader1288 ]
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %.sroa.029.0152.i.i
  store i32 1, ptr %i.ads, align 4, !noalias !37882
  %i.adt = add i64 %i.adr, 1
  %exitcond.not.i.i = icmp eq i64 %i.adr, %i.jv
  br i1 %exitcond.not.i.i, label %.preheader105.i.i, label %.lr.ph.i156.i, !llvm.loop !38037

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i": ; preds = %bb.fa, %bb.df, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %.pn42.i.i = phi { ptr, i32 } [ %i.adj, %bb.fa ], [ %lpad.thr_comm.split-lp63.i.i, %bb.df ], [ %lpad.loopexit102.i.i, %.loopexit.i.i ], [ %lpad.loopexit106.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp107.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  %.sroa.011.041.i.i = phi ptr [ %i.tq, %bb.fa ], [ %i.tq, %bb.df ], [ %i.tq, %.loopexit.i.i ], [ %i.tq, %.loopexit.split-lp.loopexit.i.i ], [ %.sroa.011.1.ph.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.041.i.i) ]
  call void @mi_free(ptr noundef nonnull %.sroa.011.041.i.i) #38, !noalias !37882
  br label %.thread45.thread81.i.i

.thread45.thread81.i.i:                           ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i", %.thread27.i.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.thread45.thread81.loopexit.split-lp.loopexit.i.i, %.thread45.thread81.loopexit.i.i
  %.sroa.028.132.not.i.i = phi i1 [ %.not.i155.i, %.thread27.i.i ], [ %.not.i155.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i" ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.i.i ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ true, %.thread45.thread81.loopexit.i.i ]
  %.pn.pn31.i.i = phi { ptr, i32 } [ %i.ts, %.thread27.i.i ], [ %.pn42.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17hdd030099a818249dE.exit124.i.i" ], [ %lpad.loopexit90.i.i, %.thread45.thread81.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit98.i.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.i.i, %.thread45.thread81.loopexit.i.i ] ; 2 uses
  %i.adu = icmp eq i64 %i.tp, 0
  br i1 %i.adu, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i.i": ; preds = %.thread45.thread81.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.to) ]
  call void @mi_free(ptr noundef nonnull %i.to) #38, !noalias !37882
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i.i", %.thread45.thread81.i.i
  br i1 %.sroa.028.132.not.i.i, label %.thread38.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i.i", %.thread.thread.i.i.i, %bb.eu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i.i", %.thread29.i.i.i
  %.sink.i.sink.i.i = phi ptr [ %i.adv, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i" ], [ %i.abd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i.i" ], [ %i.aai, %.thread29.i.i.i ], [ %i.aai, %bb.eu ], [ %i.aai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i.i" ], [ %i.aai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i.i" ], [ %i.aai, %.thread.thread.i.i.i ]
  %.pn.pn.pn24.ph.i.i = phi { ptr, i32 } [ %.pn.pn.pn2574.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i" ], [ %i.abj, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i.i" ], [ %lpad.thr_comm.split-lp.i.i.i, %.thread29.i.i.i ], [ %lpad.thr_comm.i.i.i, %bb.eu ], [ %lpad.thr_comm.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i.i" ], [ %i.acr, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread161.i.i.i" ], [ %i.acr, %.thread.thread.i.i.i ]
  call void @mi_free(ptr noundef nonnull %.sink.i.sink.i.i) #38, !noalias !37882
  br label %.thread38.thread.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i", %.thread72.i.i
  %i.adv = phi ptr [ %i.tg, %.thread72.i.i ], [ %i.tn, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i" ] ; 2 uses
  %.pn.pn.pn2574.i.i = phi { ptr, i32 } [ %i.tm, %.thread72.i.i ], [ %.pn.pn31.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adv) ]
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit127.sink.split.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i.i", %._crit_edge80.i.i.i
  store i64 %i.abf, ptr %i.fg, align 8, !alias.scope !38004, !noalias !38005
  call void @mi_free(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i901.i) #38, !noalias !37702
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164.i", %.thread90.i
  %i.adw = load i32, ptr %i.gu, align 4, !alias.scope !37698, !noalias !37704, !noundef !27
  %i.adx = icmp eq i32 %i.adw, 0
  br i1 %i.adx, label %.loopexit260.i, label %bb.fd

bb.fd:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i"
  %i.ady = load i64, ptr %.sroa.7.0..sroa_idx.i23, align 8, !alias.scope !37702, !noalias !37706, !noundef !27 ; 3 uses
  %i.adz = icmp eq i64 %i.ady, 0
  br i1 %i.adz, label %.loopexit260.i, label %.lr.ph459.i

.lr.ph459.i:                                      ; preds = %bb.fd
  %i.aea = add i64 %i.ady, -1                     ; 2 uses
  %.first_iter.i = icmp ult i64 %i.aea, %i.sc
  br i1 %.first_iter.i, label %.split457.i.preheader.us, label %.invoke.i

.split457.i.preheader.us:                         ; preds = %.lr.ph459.i, %.loopexit.i.us
  %.sroa.0.0458.i.us = phi i64 [ %i.aeb, %.loopexit.i.us ], [ %i.ady, %.lr.ph459.i ]
  %i.aeb = add i64 %.sroa.0.0458.i.us, -1         ; 4 uses
  %i.aec = shl i64 %i.aeb, 6                      ; 2 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.aeb ; 2 uses
  br label %.split457.i.us

.split457.i.us:                                   ; preds = %bb.fe, %.split457.i.preheader.us
  %.sroa.020.0456.i.us = phi i64 [ 0, %.split457.i.preheader.us ], [ %i.aen, %bb.fe ] ; 3 uses
  %i.aee = add nuw nsw i64 %.sroa.020.0456.i.us, %i.aec ; 3 uses
  %i.aef = icmp ult i64 %i.aee, %i.sc
  br i1 %i.aef, label %.split457.i.us.1, label %.invoke.i

.split457.i.us.1:                                 ; preds = %.split457.i.us
  %i.aeg = load i32, ptr %i.aed, align 4, !noalias !37702, !noundef !27
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.aee
  store i32 %i.aeg, ptr %i.aeh, align 4, !noalias !37702
  %i.aei = or disjoint i64 %.sroa.020.0456.i.us, 1
  %i.aej = add nuw nsw i64 %i.aei, %i.aec         ; 3 uses
  %i.aek = icmp ult i64 %i.aej, %i.sc
  br i1 %i.aek, label %bb.fe, label %.invoke.i

bb.fe:                                            ; preds = %.split457.i.us.1
  %i.ael = load i32, ptr %i.aed, align 4, !noalias !37702, !noundef !27
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.aej
  store i32 %i.ael, ptr %i.aem, align 4, !noalias !37702
  %i.aen = add nuw nsw i64 %.sroa.020.0456.i.us, 2 ; 2 uses
  %exitcond671.not.i.us.1 = icmp eq i64 %i.aen, 64
  br i1 %exitcond671.not.i.us.1, label %.loopexit.i.us, label %.split457.i.us

.loopexit.i.us:                                   ; preds = %bb.fe
  %i.aeo = icmp eq i64 %i.aeb, 0
  br i1 %i.aeo, label %.loopexit260.i, label %.split457.i.preheader.us

.loopexit260.i:                                   ; preds = %.loopexit.i.us, %bb.fd, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h14c94f2a1b156012E.exit.i"
  %i.aep = load i64, ptr %.sroa.737.0..sroa_idx.i, align 8, !alias.scope !37702, !noalias !37706, !noundef !27 ; 3 uses
  %i.aeq = shl i64 %i.aep, 2                      ; 52 uses
  store i64 %i.aeq, ptr %i.fd, align 8, !alias.scope !37702, !noalias !37706
  %i.aer = shl i64 %i.aep, 4                      ; 12 uses
  %i.aes = icmp ugt i64 %i.aeq, 4611686018427387903
  %i.aet = icmp ugt i64 %i.aer, 9223372036854775804
  %or.cond.i.i.i.i165.i = or i1 %i.aes, %i.aet
  br i1 %or.cond.i.i.i.i165.i, label %.invoke1131.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i: ; preds = %.loopexit260.i
  %i.aeu = icmp eq i64 %i.aer, 0
  br i1 %i.aeu, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38038
  %i.aev = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aer, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38038 ; 2 uses
  %i.aew = icmp eq ptr %i.aev, null
  br i1 %i.aew, label %.invoke1131.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aex = ptrtoint ptr %i.aev to i64
  br label %bb.fh

.invoke1131.i:                                    ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i, %bb.fi, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i", %bb.ff, %.loopexit260.i
  %i.aey = phi i64 [ 0, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i" ], [ 0, %.loopexit260.i ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i ], [ 4, %bb.ff ], [ 8, %bb.fi ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i ]
  %i.aez = phi i64 [ %i.afd, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i" ], [ %i.aer, %.loopexit260.i ], [ %i.aer, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i299.i ], [ %i.aer, %bb.ff ], [ %i.afd, %bb.fi ], [ %i.aer, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.aey, i64 %i.aez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.cont1132.i unwind label %.split.thread.i, !noalias !37702

.cont1132.i:                                      ; preds = %.invoke1131.i
  unreachable

bb.fh:                                            ; preds = %bb.fg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i
  %.sroa.10.0.i.i167.i = phi i64 [ %i.aex, %bb.fg ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166.i ]
  %i.afa = inttoptr i64 %.sroa.10.0.i.i167.i to ptr ; 12 uses
  %i.afb = icmp samesign ult i64 %i.aeq, 2305843009213693952
  call void @llvm.assume(i1 %i.afb)
  %.val40.i = load i64, ptr %i.fc, align 8, !alias.scope !37702, !noalias !37706, !noundef !27
  %i.afc = icmp eq i64 %.val40.i, 0
  br i1 %i.afc, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171.i": ; preds = %bb.fh
  %.val39.i = load ptr, ptr %i.fb, align 8, !alias.scope !37702, !noalias !37706, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val39.i) #38, !noalias !37702
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171.i", %bb.fh
  store ptr %i.afa, ptr %i.fb, align 8, !alias.scope !37702, !noalias !37706
  store i64 %i.aeq, ptr %i.fc, align 8, !alias.scope !37702, !noalias !37706
  store i64 %i.aeq, ptr %i.fm, align 8, !alias.scope !37702, !noalias !37706
  %i.afd = mul i64 %i.aep, 8768                   ; 4 uses
  %or.cond.i.i.i.i.i173.i = icmp samesign ugt i64 %i.aeq, 4207742717543237
  br i1 %or.cond.i.i.i.i.i173.i, label %.invoke1131.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit172.i"
  %i.afe = icmp eq i64 %i.afd, 0
  br i1 %i.afe, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i", label %bb.fi

bb.fi:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38043
  %i.aff = call noundef ptr @mi_malloc_aligned(i64 noundef %i.afd, i64 noundef range(i64 1, 9) 8) #38, !noalias !38043 ; 2 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %.invoke1131.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i": ; preds = %bb.fi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i
  %.sroa.10.0.i.i.i176.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i ], [ %i.aff, %bb.fi ] ; 13 uses
  %.sroa.4.0.i.i.i177.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174.i ], [ %i.aeq, %bb.fi ]
  %i.afh = icmp samesign ule i64 %i.aeq, %.sroa.4.0.i.i.i177.i
  call void @llvm.assume(i1 %i.afh)
  %.not867.i = icmp eq i64 %i.aeq, 0              ; 7 uses
  br i1 %.not867.i, label %._crit_edge.i.i.i178.i, label %.lr.ph.i.i.i183.i.preheader

.lr.ph.i.i.i183.i.preheader:                      ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i"
  %i.afi = add nsw i64 %i.aeq, -1                 ; 2 uses
  %i.afj = add nsw i64 %i.aeq, -2
  %xtraiter1374 = and i64 %i.afi, 7
  %i.afk = icmp ult i64 %i.afj, 7
  br i1 %i.afk, label %.lr.ph.i.i.i183.i.epil.preheader, label %.lr.ph.i.i.i183.i.preheader.new

.lr.ph.i.i.i183.i.preheader.new:                  ; preds = %.lr.ph.i.i.i183.i.preheader
  %unroll_iter1380 = and i64 %i.afi, -8
  br label %.lr.ph.i.i.i183.i

.lr.ph.i.i.i183.i.epil.preheader:                 ; preds = %.lr.ph.i.i.i183.i, %.lr.ph.i.i.i183.i.preheader
  %.sroa.0.08.i.i.i184.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i176.i, %.lr.ph.i.i.i183.i.preheader ], [ %i.aft, %.lr.ph.i.i.i183.i ]
  br label %.lr.ph.i.i.i183.i.epil

.lr.ph.i.i.i183.i.epil:                           ; preds = %.lr.ph.i.i.i183.i.epil, %.lr.ph.i.i.i183.i.epil.preheader
  %.sroa.0.08.i.i.i184.i.epil = phi ptr [ %i.afl, %.lr.ph.i.i.i183.i.epil ], [ %.sroa.0.08.i.i.i184.i.epil.init, %.lr.ph.i.i.i183.i.epil.preheader ] ; 4 uses
  %epil.iter1375 = phi i64 [ %epil.iter1375.next, %.lr.ph.i.i.i183.i.epil ], [ 0, %.lr.ph.i.i.i183.i.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184.i.epil, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.epil, align 8, !noalias !38051
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 2192 ; 2 uses
  %epil.iter1375.next = add i64 %epil.iter1375, 1 ; 2 uses
  %epil.iter1375.cmp.not = icmp eq i64 %epil.iter1375.next, %xtraiter1374
  br i1 %epil.iter1375.cmp.not, label %._crit_edge.thread.i.i.i180.i, label %.lr.ph.i.i.i183.i.epil, !llvm.loop !38054

._crit_edge.thread.i.i.i180.i:                    ; preds = %.lr.ph.i.i.i183.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afl, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i.epil, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182.i, align 8, !noalias !38051
  br label %._crit_edge.i.i.i178.i

.lr.ph.i.i.i183.i:                                ; preds = %.lr.ph.i.i.i183.i, %.lr.ph.i.i.i183.i.preheader.new
  %.sroa.0.08.i.i.i184.i = phi ptr [ %.sroa.10.0.i.i.i176.i, %.lr.ph.i.i.i183.i.preheader.new ], [ %i.aft, %.lr.ph.i.i.i183.i ] ; 17 uses
  %niter1381 = phi i64 [ 0, %.lr.ph.i.i.i183.i.preheader.new ], [ %niter1381.next.7, %.lr.ph.i.i.i183.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184.i, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i, align 8, !noalias !38051
  %i.afm = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afm, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.1, align 8, !noalias !38051
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 4384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afn, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.2, align 8, !noalias !38051
  %i.afo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 6576
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afo, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.3, align 8, !noalias !38051
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 8768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afp, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.4, align 8, !noalias !38051
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 10960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afq, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.5, align 8, !noalias !38051
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 13152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afr, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.6, align 8, !noalias !38051
  %i.afs = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 15344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.afs, i8 0, i64 2184, i1 false), !noalias !37702
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.i.7, align 8, !noalias !38051
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.i, i64 17536 ; 2 uses
  %niter1381.next.7 = add i64 %niter1381, 8       ; 2 uses
  %niter1381.ncmp.7 = icmp eq i64 %niter1381.next.7, %unroll_iter1380
  br i1 %niter1381.ncmp.7, label %.lr.ph.i.i.i183.i.epil.preheader, label %.lr.ph.i.i.i183.i

._crit_edge.i.i.i178.i:                           ; preds = %._crit_edge.thread.i.i.i180.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i175.i"
  %.val70.i = load i64, ptr %i.fl, align 8, !alias.scope !37702, !noalias !37706, !noundef !27
  %i.afu = icmp eq i64 %.val70.i, 0
  br i1 %i.afu, label %bb.fj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i": ; preds = %._crit_edge.i.i.i178.i
  %.val69.i = load ptr, ptr %i.fk, align 8, !alias.scope !37702, !noalias !37706, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val69.i) #38, !noalias !37702
  br label %bb.fj

bb.fj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i191.i", %._crit_edge.i.i.i178.i
  store ptr %.sroa.10.0.i.i.i176.i, ptr %i.fk, align 8, !alias.scope !37702, !noalias !37706
  store i64 %i.aeq, ptr %i.fl, align 8, !alias.scope !37702, !noalias !37706
  call void @llvm.experimental.noalias.scope.decl(metadata !38055)
  call void @llvm.experimental.noalias.scope.decl(metadata !38058)
  call void @llvm.experimental.noalias.scope.decl(metadata !38060)
  call void @llvm.experimental.noalias.scope.decl(metadata !38062)
  br i1 %.not867.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h15f2ab7bbce2f039E.exit88.i197.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i: ; preds = %bb.fj
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !38064
  %i.afv = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.aer, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !38064 ; 3 uses
  %i.afw = icmp eq ptr %i.afv, null
  br i1 %i.afw, label %.invoke1131.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i195.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194.i
end_hunk_0
