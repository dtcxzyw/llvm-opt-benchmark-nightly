Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/runner-48abcf66c7dc4d26.runner.23a7f17303957c59-cgu.13?download=true
inline.NumInlined: 421
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6runner4main17h099bf4fdfa759e44E:bb.a

bb.bc:                                            ; preds = %bb.bb
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !677
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit61.i.i.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit.i.i.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h37c250d496d4ca1dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.thread.i.i.i unwind label %bb.f, !noalias !671

bb.bd:                                            ; preds = %bb.be, %.body58.i.i.i.i, %.body.i.i.i.i, %bb.ap, %bb.ah, %bb.z
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !677
  unreachable

bb.be:                                            ; preds = %bb.ah
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E"(ptr noalias noundef align 8 dereferenceable(24) %i.dg) #19
          to label %.body.i.i.i unwind label %bb.bd, !noalias !677

.thread.i.i.i:                                    ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit61.i.i.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit.i.i.i.i"
  %.sroa.6.0.ph.i.i.i = phi ptr [ %i.gb, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit.i.i.i.i" ], [ %i.gk, %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17hba754eb787bb2573E.exit61.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !667
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ar
  %.sroa.543.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.543.0.copyload.i.i.i.i = load ptr, ptr %.sroa.543.0..sroa_idx.i.i.i.i, align 8, !noalias !673
  %.sroa.644.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.644.0.copyload.i.i.i.i = load i64, ptr %.sroa.644.0..sroa_idx.i.i.i.i, align 8, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !673
  %.sroa.032.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dg, align 8, !noalias !673 ; 2 uses
  %.sroa.032.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.032.i.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.032.i.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !673 ; 2 uses
  %.sroa.032.i.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.gu = load i64, ptr %.sroa.032.i.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !667
  %i.gv = icmp eq i64 %.sroa.032.i.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.gv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %.thread.i.i.i
  %.sroa.6.0179.ph.i.i.i = phi ptr [ %.sroa.032.i.sroa.4.0.copyload.i.i.i, %bb.bf ], [ %.sroa.6.0.ph.i.i.i, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6.i.i.i)
  %i.gw = ptrtoint ptr %.sroa.6.0179.ph.i.i.i to i64
  br label %bb.m

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3815.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.5.i.i.i, i64 24, i1 false), !noalias !672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.sroa.6.i.i.i, i64 24, i1 false), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6.i.i.i)
  br label %bb.m

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.i.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit133.thread.i.i.i"
  %.val110.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !667, !nonnull !4, !noundef !4 ; 2 uses
  %i.gx = load i16, ptr %.val110.i.i.i, align 1
  %i.gy = xor i16 %i.gx, 30066
  %i.gz = getelementptr i8, ptr %.val110.i.i.i, i64 2
  %i.ha = load i8, ptr %i.gz, align 1
  %i.hb = zext i8 %i.ha to i16
  %i.hc = xor i16 %i.hb, 110
  %i.hd = or i16 %i.gy, %i.hc
  %i.he = icmp ne i16 %i.hd, 0
  %i.hf = zext i1 %i.he to i32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bi, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.thread.i.i.i"

bb.bi:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.i.i.i"
  %i.hh = invoke noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17he9286900b1b5bc30E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.bj unwind label %bb.f, !noalias !671

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i.i.i": ; preds = %"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread_crit_edge.i.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit133.thread.i.i.i"
  %.val107.i.i.i = phi i64 [ %.val107.pre.i.i.i, %"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread_crit_edge.i.i.i" ], [ %.val111.i.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit133.thread.i.i.i" ] ; 2 uses
  %.not.i143.i.i.i = icmp eq i64 %.val107.i.i.i, 5
  br i1 %.not.i143.i.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i_crit_edge.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.thread.i.i.i"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i_crit_edge.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i.i.i"
  %.val106.i.pre.i.i = load ptr, ptr %i.ef, align 8, !noalias !667
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i.i.i"

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.hh, label %"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread_crit_edge.i.i.i", label %bb.bk

"._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread_crit_edge.i.i.i": ; preds = %bb.bj
  %.val107.pre.i.i.i = load i64, ptr %i.eg, align 8, !noalias !667
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i.i.i"

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !667
  invoke void @"_ZN77_$LT$runner..run..RunArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hbb3829596edcab1bE"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.dk, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dn)
          to label %bb.bl unwind label %bb.f, !noalias !671

bb.bl:                                            ; preds = %bb.bk
  %i.hi = load i64, ptr %i.dk, align 8, !range !188, !noalias !667, !noundef !4 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, -9223372036854775808
  %i.hk = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !667
  br i1 %i.hj, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.589.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.26.16.copyload11.i.i = load ptr, ptr %.sroa.589.0..sroa_idx.i.i.i, align 8, !noalias !672
  %.sroa.33.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.33.16.copyload12.i.i = load i64, ptr %.sroa.33.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !672
  %.sroa.3815.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3815.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3815.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i, i64 24, i1 false), !noalias !672
  %.sroa.39.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i, i64 24, i1 false), !noalias !672
  %.sroa.40.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  %.sroa.40.16.copyload16.i.i = load i64, ptr %.sroa.40.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !672
  %.sroa.41.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %.sroa.41.16.copyload17.i.i = load ptr, ptr %.sroa.41.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !672
  %.sroa.42.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %.sroa.42.16.copyload18.i.i = load i64, ptr %.sroa.42.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !672
  %.sroa.43.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.16..sroa.589.0..sroa_idx.i.sroa_idx.i.i, i64 16, i1 false), !noalias !672
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.42.1.i.i = phi i64 [ undef, %bb.bl ], [ %.sroa.42.16.copyload18.i.i, %bb.bm ]
  %.sroa.41.1.i.i = phi ptr [ undef, %bb.bl ], [ %.sroa.41.16.copyload17.i.i, %bb.bm ]
  %.sroa.40.1.i.i = phi i64 [ undef, %bb.bl ], [ %.sroa.40.16.copyload16.i.i, %bb.bm ]
  %.sroa.33.2.i.i = phi i64 [ undef, %bb.bl ], [ %.sroa.33.16.copyload12.i.i, %bb.bm ]
  %.sroa.26.2.i.i = phi ptr [ undef, %bb.bl ], [ %.sroa.26.16.copyload11.i.i, %bb.bm ]
  %.sink212.i.i.i = phi i64 [ -9223372036854775802, %bb.bl ], [ %i.hi, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !667
  %i.hm = ptrtoint ptr %i.hl to i64
  br label %bb.m

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i_crit_edge.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit133.i.i.i"
  %.val106.i.i.i = phi ptr [ %.val106.i.pre.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i._ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i_crit_edge.i.i" ], [ %.val114.i.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit133.i.i.i" ] ; 2 uses
  %i.hn = load i32, ptr %.val106.i.i.i, align 1
  %i.ho = xor i32 %i.hn, 1818850658
  %i.hp = getelementptr i8, ptr %.val106.i.i.i, i64 4
  %i.hq = load i8, ptr %i.hp, align 1
  %i.hr = zext i8 %i.hq to i32
  %i.hs = xor i32 %i.hr, 100
  %i.ht = or i32 %i.ho, %i.hs
  %i.hu = icmp ne i32 %i.ht, 0
  %i.hv = zext i1 %i.hu to i32
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.bo, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.thread.i.i.i"

bb.bo:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i.i.i"
  %i.hx = invoke noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17he9286900b1b5bc30E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.bp unwind label %bb.f, !noalias !671

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.thread.i.i.i": ; preds = %.thread-pre-split195_crit_edge.i.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i.i.i"
  %.val103.i.i.i = phi i64 [ %.val103.pr.pre.i.i.i, %.thread-pre-split195_crit_edge.i.i.i ], [ %.val107.i.i.i, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.thread.i.i.i" ]
  %.not.i147.i.i.i = icmp eq i64 %.val103.i.i.i, 7
  br i1 %.not.i147.i.i.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.i.i.i", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.thread.i.i.i"

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hx, label %.thread-pre-split195_crit_edge.i.i.i, label %bb.bq

.thread-pre-split195_crit_edge.i.i.i:             ; preds = %bb.bp
  %.val103.pr.pre.i.i.i = load i64, ptr %i.eg, align 8, !noalias !667
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.thread.i.i.i"

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !noalias !679
  invoke void @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches15try_remove_many17h95d4591a93abc93fE(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.cq, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @99, i64 noundef 4)
          to label %.noexc154.i.i.i.a unwind label %bb.f, !noalias !671

.noexc154.i.i.i.a:                                ; preds = %bb.bq
  invoke void @_ZN12clap_builder6parser5error12MatchesError6unwrap17h29ed8681e0e84466E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.cr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @99, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(120) %i.cq)
          to label %.noexc155.i.i.i unwind label %bb.f, !noalias !671

.noexc155.i.i.i:                                  ; preds = %.noexc154.i.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !noalias !679
  %i.hy = load ptr, ptr %i.cr, align 8, !noalias !679, !noundef !4
  %.not.i151.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i151.i.i.i, label %.thread196.i.i.i, label %bb.br

.thread196.i.i.i:                                 ; preds = %.noexc155.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !667
  br label %bb.m

bb.br:                                            ; preds = %.noexc155.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cp, ptr noundef nonnull align 8 dereferenceable(112) %i.cr, i64 112, i1 false), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !679
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h48c35432dbbd1cd4E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.co, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.cp)
          to label %bb.bs unwind label %bb.f, !noalias !671

bb.bs:                                            ; preds = %bb.br
  %.sroa.07.0.copyload.i.i.i.i = load i64, ptr %i.co, align 8, !noalias !679 ; 2 uses
  %.sroa.4.0..sroa_idx.i152.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i152.i.i.i, align 8, !noalias !679 ; 3 uses
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.58.0.copyload.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !667
  %i.hz = icmp eq i64 %.sroa.07.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.hz, label %bb.bt, label %bb.m

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  %i.ia = ptrtoint ptr %.sroa.4.0.copyload.i.i.i.i to i64
  br label %bb.m

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.i.i.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.thread.i.i.i"
  %.val.i.i.i = load ptr, ptr %i.ef, align 8, !noalias !667, !nonnull !4, !noundef !4 ; 2 uses
  %i.ib = load i32, ptr %.val.i.i.i, align 1
  %i.ic = xor i32 %i.ib, 1751347809
  %i.id = getelementptr i8, ptr %.val.i.i.i, i64 3
  %i.ie = load i32, ptr %i.id, align 1
  %i.if = xor i32 %i.ie, 1702259048
  %i.ig = or i32 %i.ic, %i.if
  %i.ih = icmp ne i32 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.bu, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.thread.i.i.i"

bb.bu:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.i.i.i"
  %i.ik = invoke noundef zeroext i1 @_ZN12clap_builder6parser7matches11arg_matches10ArgMatches11contains_id17he9286900b1b5bc30E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.bv unwind label %bb.f, !noalias !671

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.thread.i.i.i": ; preds = %bb.bv, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.i.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.thread.i.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit146.i.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit137.i.i.i", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit129.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !667
  store ptr %i.do, ptr %i.dh, align 8, !noalias !667
  %.sroa.499.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.499.0..sroa_idx.i.i.i, align 8, !noalias !667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !683
  store ptr @114, ptr %i.cn, align 8, !noalias !690
  %.sroa.4163.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 2, ptr %.sroa.4163.0..sroa_idx.i.i.i, align 8, !noalias !690
  %.sroa.5.0..sroa_idx164.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.dh, ptr %.sroa.5.0..sroa_idx164.i.i.i, align 8, !noalias !690
  %.sroa.6165.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store i64 1, ptr %.sroa.6165.0..sroa_idx.i.i.i, align 8, !noalias !690
  %.sroa.7166.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr null, ptr %.sroa.7166.0..sroa_idx.i.i.i, align 8, !noalias !690
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.cn)
          to label %bb.cf unwind label %bb.f, !noalias !671

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.ik, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.thread.i.i.i", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !667
  invoke void @"_ZN85_$LT$runner..archive..ArchiveArgs$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17ha1e25f7322a1fbd7E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dn)
          to label %bb.bx unwind label %bb.f, !noalias !671

bb.bx:                                            ; preds = %bb.bw
  %i.il = load i64, ptr %i.dj, align 8, !range !205, !noalias !667, !noundef !4 ; 2 uses
  %i.im = icmp eq i64 %i.il, -9223372036854775807
  %i.in = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !noalias !667 ; 2 uses
  br i1 %i.im, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !667
  %i.ip = ptrtoint ptr %i.io to i64
  br label %bb.m

bb.bz:                                            ; preds = %bb.bx
  %.sroa.595.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.33.24.copyload13.i.i = load i64, ptr %.sroa.595.0..sroa_idx.i.i.i, align 8, !noalias !672
  %.sroa.3815.24..sroa.595.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3815.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3815.24..sroa.595.0..sroa_idx.i.sroa_idx.i.i, i64 24, i1 false), !noalias !672
  %.sroa.39.24..sroa.595.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.24..sroa.595.0..sroa_idx.i.sroa_idx.i.i, i64 24, i1 false), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !667
  br label %bb.m

bb.ca:                                            ; preds = %bb.cb, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.iq, %bb.cb ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E"(ptr noalias noundef align 8 dereferenceable(24) %i.do) #19
          to label %.body.i unwind label %bb.ck, !noalias !671

bb.cb:                                            ; preds = %bb.cg, %bb.m
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.cc:                                            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !667
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.i.i" unwind label %bb.cd, !noalias !671

bb.cd:                                            ; preds = %bb.cc
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %.body.i unwind label %bb.ce, !noalias !671

bb.ce:                                            ; preds = %bb.cd
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !671
  unreachable

bb.cf:                                            ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit150.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !667
  %i.it = invoke noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$3raw17hd07630100fc1b01bE"(i8 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.di)
          to label %bb.cg unwind label %bb.f, !noalias !671

bb.cg:                                            ; preds = %bb.cf
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..ArgMatches$GT$17h65f5fe1d64acbf4fE"(ptr noalias noundef align 8 dereferenceable(56) %i.dn)
          to label %bb.ch unwind label %bb.cb, !noalias !671

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !667
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit159.i.i.i" unwind label %bb.ci, !noalias !671

bb.ci:                                            ; preds = %bb.ch
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %.body.i unwind label %bb.cj, !noalias !671

bb.cj:                                            ; preds = %bb.ci
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !671
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit159.i.i.i": ; preds = %bb.ch
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %.noexc3.i unwind label %bb.cl, !noalias !654

.noexc3.i:                                        ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit159.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !667
  br label %"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.thread.i.i"

bb.ck:                                            ; preds = %bb.ca, %.body.i.i.i
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !671
  unreachable

"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.thread.i.i": ; preds = %.noexc3.i, %bb.e
  %.sroa.14.2.ph.in.i.i = phi ptr [ %i.it, %.noexc3.i ], [ %i.eh, %bb.e ]
  %.sroa.14.2.ph.i.i = ptrtoint ptr %.sroa.14.2.ph.in.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !663
  br label %bb.cm

"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.i.i": ; preds = %bb.cc
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %.noexc4.i unwind label %bb.cl, !noalias !654

.noexc4.i:                                        ; preds = %"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !663
  %i.ix = icmp eq i64 %.sroa.0.0.i.i, -9223372036854775802
  br i1 %i.ix, label %bb.cm, label %_ZN12clap_builder6derive6Parser5parse17h85e300092c6b5c2bE.exit

.body.i:                                          ; preds = %bb.co, %bb.cl, %bb.ci, %bb.cd, %bb.ca
  %.pn.i = phi { ptr, i32 } [ %i.jc, %bb.co ], [ %i.iy, %bb.cl ], [ %i.iu, %bb.ci ], [ %i.ir, %bb.cd ], [ %.pn.i.i.i, %bb.ca ]
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..arg_matches..ArgMatches$GT$17h65f5fe1d64acbf4fE"(ptr noalias noundef align 8 dereferenceable(56) %i.du) #19
          to label %common.resume unwind label %bb.cq, !noalias !654

bb.cl:                                            ; preds = %bb.cm, %"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit159.i.i.i", %bb.e, %_ZN12clap_builder7builder7command7Command11get_matches17h1ad6153a2c95d4beE.exit.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cm:                                            ; preds = %.noexc4.i, %"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.thread.i.i"
  %.sroa.14.226.i.i = phi i64 [ %.sroa.14.2.ph.i.i, %"_ZN72_$LT$runner..Command$u20$as$u20$clap_builder..derive..FromArgMatches$GT$20from_arg_matches_mut17hdd08ebf4c6cce2f8E.exit.thread.i.i" ], [ %.sroa.14.0.i.i, %.noexc4.i ] ; 2 uses
  %i.iz = inttoptr i64 %.sroa.14.226.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3815.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.39.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.43.i.i)
  %i.ja = icmp ne i64 %.sroa.14.226.i.i, 0
  call void @llvm.assume(i1 %i.ja)
  %i.jb = invoke noundef nonnull align 8 ptr @_ZN12clap_builder6derive12format_error17ha9666ce68069345fE(ptr noalias noundef nonnull align 8 %i.iz)
          to label %bb.cn unwind label %bb.cl, !noalias !654 ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !654
  store ptr %i.jb, ptr %i.ds, align 8, !noalias !654
  invoke void @"_ZN12clap_builder5error14Error$LT$F$GT$4exit17hf3dd1f92e013cd7bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ds) #18
          to label %bb.cp unwind label %bb.co, !noalias !654

bb.co:                                            ; preds = %bb.cn
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$clap_builder..error..Error$GT$17hb90fa646967889d6E"(ptr nonnull %i.jb) #19
          to label %.body.i unwind label %bb.cq, !noalias !654

bb.cp:                                            ; preds = %bb.cn
  unreachable

bb.cq:                                            ; preds = %bb.co, %.body.i
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !654
  unreachable

_ZN12clap_builder6derive6Parser5parse17h85e300092c6b5c2bE.exit: ; preds = %.noexc4.i
  %i.je = inttoptr i64 %.sroa.14.0.i.i to ptr     ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3815.i.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.i.i, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6runner4main17h099bf4fdfa759e44E:bb.a
  %i.sy = invoke noundef align 8 dereferenceable(200) ptr @_ZN3std7process7Command3env17hb8ce69071b51a417E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.sm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 19, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.br)
          to label %bb.kl unwind label %bb.kc, !noalias !694

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !694
  %i.sz = invoke noundef align 8 dereferenceable(200) ptr @_ZN3std7process7Command3env17h42918cb0dbb15f97E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.sy, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @74, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @75, i64 noundef 1)
          to label %bb.km unwind label %bb.kc, !noalias !694

bb.km:                                            ; preds = %bb.kl
  %i.ta = invoke noundef align 8 dereferenceable(200) ptr @_ZN3std7process7Command3env17h42918cb0dbb15f97E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.sz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @76, i64 noundef 16, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @75, i64 noundef 1)
          to label %bb.kn unwind label %bb.kc, !noalias !694

bb.kn:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !694
  invoke void @_ZN3std3env3var17h564892c8a7c5df20E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 4)
          to label %bb.ko unwind label %bb.kc, !noalias !694

bb.ko:                                            ; preds = %bb.kn
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.tb = load i64, ptr %i.bn, align 8, !range !285, !alias.scope !832, !noalias !834, !noundef !4
  %i.tc = trunc nuw i64 %i.tb to i1
  br i1 %i.tc, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.td = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.td, i64 24, i1 false), !alias.scope !835, !noalias !694
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h4a0d896e0bbd03a6E.exit.i"

bb.kq:                                            ; preds = %bb.ko
  store i64 0, ptr %i.bo, align 8, !alias.scope !836, !noalias !839
  %.sroa.4.0..sroa_idx.i.i141.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i141.i, align 8, !alias.scope !836, !noalias !839
  %.sroa.5.0..sroa_idx.i.i142.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i142.i, align 8, !alias.scope !836, !noalias !839
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h459fe4b67601912eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h4a0d896e0bbd03a6E.exit.i" unwind label %bb.kc, !noalias !694

"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h4a0d896e0bbd03a6E.exit.i": ; preds = %bb.kq, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !694
  %i.te = invoke noundef align 8 dereferenceable(200) ptr @_ZN3std7process7Command3env17h76f5ed0e535ba81cE(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ta, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 4, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bo)
          to label %bb.kr unwind label %bb.kc, !noalias !694 ; 0 uses

bb.kr:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h4a0d896e0bbd03a6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !694
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i145.i" unwind label %bb.ks, !noalias !694

bb.ks:                                            ; preds = %bb.kr
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %.body146.i unwind label %bb.kt, !noalias !694

bb.kt:                                            ; preds = %bb.ks
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !694
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i145.i": ; preds = %bb.kr
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bs)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit149.i" unwind label %bb.jx, !noalias !694

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit149.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i145.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !694
  invoke void @_ZN3std3env3var17h564892c8a7c5df20E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bm, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 12)
          to label %bb.ku unwind label %bb.jx, !noalias !694

bb.ku:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit149.i"
  %i.th = load i64, ptr %i.bm, align 8, !range !285, !noalias !694, !noundef !4
  %.not45.i = icmp eq i64 %i.th, 0
  br i1 %.not45.i, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h459fe4b67601912eE"(ptr noalias noundef align 8 dereferenceable(32) %i.bm)
          to label %bb.kx unwind label %bb.jx, !noalias !694

bb.kw:                                            ; preds = %bb.ku
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h459fe4b67601912eE"(ptr noalias noundef align 8 dereferenceable(32) %i.bm)
          to label %bb.kz unwind label %bb.jx, !noalias !694

bb.kx:                                            ; preds = %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !694
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kz, %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !694
  invoke void @_ZN3std7process7Command6status17hb60b5e3d3789d376E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.bw)
          to label %bb.la unwind label %bb.jx, !noalias !694

bb.kz:                                            ; preds = %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !694
  %i.ti = invoke noundef align 8 dereferenceable(200) ptr @_ZN3std7process7Command3env17h42918cb0dbb15f97E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.bw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @79, i64 noundef 24)
          to label %bb.ky unwind label %bb.jx, !noalias !694 ; 0 uses

bb.la:                                            ; preds = %bb.ky
  %i.tj = load i32, ptr %i.bk, align 8, !range !840, !noalias !694, !noundef !4
  %i.tk = trunc nuw i32 %i.tj to i1
  br i1 %i.tk, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.tl)
          to label %"_ZN4core3ptr97drop_in_place$LT$core..result..Result$LT$std..process..ExitStatus$C$std..io..error..Error$GT$$GT$17h22cf470e35becca3E.exit.i" unwind label %bb.jx, !noalias !694

bb.lc:                                            ; preds = %bb.la
  %i.tm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.tn = load i32, ptr %i.tm, align 4, !noalias !694, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !694
  %.not46.i = icmp eq i32 %i.tn, 0
  br i1 %.not46.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !694
  %i.to = invoke { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE()
          to label %bb.lf unwind label %bb.jx, !noalias !694 ; 2 uses

bb.le:                                            ; preds = %bb.lo, %bb.lg, %bb.lc
  %.sroa.041.0.i = phi i1 [ true, %bb.lc ], [ %i.ud, %bb.lo ], [ false, %bb.lg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !694
  invoke void @_ZN9termcolor14StandardStream6stdout17h39ae5ab88b74660eE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.bh, i8 noundef 0)
          to label %bb.lp unwind label %bb.jx, !noalias !694

bb.lf:                                            ; preds = %bb.ld
  %i.tp = extractvalue { i64, i32 } %i.to, 0
  %i.tq = extractvalue { i64, i32 } %i.to, 1
  store i64 %i.tp, ptr %i.bj, align 8, !noalias !694
  %i.tr = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.tq, ptr %i.tr, align 8, !noalias !694
  %i.ts = invoke { i64, i32 } @_ZN3std4time7Instant14duration_since17hd41f099837877f66E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bj, i64 noundef %i.ro, i32 noundef %i.rp)
          to label %bb.lg unwind label %bb.jx, !noalias !694

bb.lg:                                            ; preds = %bb.lf
  %i.tt = extractvalue { i64, i32 } %i.ts, 0
  %i.tu = icmp ult i64 %i.tt, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !694
  br i1 %i.tu, label %bb.lh, label %bb.le

bb.lh:                                            ; preds = %bb.lg
  invoke fastcc void @_ZN6runner5build15bootstrap_build17h9aca8e442402aeb1E()
          to label %bb.li unwind label %bb.jx, !noalias !694

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !694
  invoke void @_ZN3std7process7Command6status17hb60b5e3d3789d376E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.bw)
          to label %bb.lj unwind label %bb.jx, !noalias !694

bb.lj:                                            ; preds = %bb.li
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.tv = load i32, ptr %i.bi, align 8, !range !840, !alias.scope !841, !noalias !844, !noundef !4
  %i.tw = trunc nuw i32 %i.tv to i1
  br i1 %i.tw, label %bb.lk, label %bb.lo, !prof !720

bb.lk:                                            ; preds = %bb.lj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !847
  %i.tx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !alias.scope !841, !noalias !844, !nonnull !4, !noundef !4
  store ptr %i.ty, ptr %i.a, align 8, !noalias !847
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #18
          to label %bb.lm unwind label %bb.ll, !noalias !848

bb.ll:                                            ; preds = %bb.lk
  %i.tz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #19
          to label %.body146.i unwind label %bb.ln, !noalias !848

bb.lm:                                            ; preds = %bb.lk
  unreachable

bb.ln:                                            ; preds = %bb.ll
  %i.ua = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !848
  unreachable

bb.lo:                                            ; preds = %bb.lj
  %i.ub = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.uc = load i32, ptr %i.ub, align 4, !alias.scope !841, !noalias !844, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !694
  %i.ud = icmp eq i32 %i.uc, 0
  br label %bb.le

bb.lp:                                            ; preds = %bb.le
  br i1 %.sroa.041.0.i, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !694
  %i.ue = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.uf = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  store i8 11, ptr %i.uf, align 1, !noalias !694
  %i.ug = getelementptr inbounds nuw i8, ptr %i.bg, i64 5
  %i.uh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i32 0, ptr %i.uh, align 1, !noalias !694
  store i8 1, ptr %i.ug, align 1, !noalias !694
  %i.ui = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  store i8 0, ptr %i.ui, align 1, !noalias !694
  store i8 2, ptr %i.ue, align 1, !noalias !694
  store i8 1, ptr %i.bg, align 1, !noalias !694
  %i.uj = load i64, ptr %i.bh, align 8, !range !285, !noalias !694, !noundef !4
  %i.uk = trunc nuw i64 %i.uj to i1
  br i1 %i.uk, label %bb.ls, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit74.i"

bb.lr:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !694
  %i.ul = getelementptr inbounds nuw i8, ptr %i.bc, i64 7
  %i.um = getelementptr inbounds nuw i8, ptr %i.bc, i64 11
  store i8 11, ptr %i.um, align 1, !noalias !694
  %i.un = getelementptr inbounds nuw i8, ptr %i.bc, i64 5
  %i.uo = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i32 0, ptr %i.uo, align 1, !noalias !694
  store i8 1, ptr %i.un, align 1, !noalias !694
  %i.up = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  store i8 0, ptr %i.up, align 1, !noalias !694
  store i8 3, ptr %i.ul, align 1, !noalias !694
  store i8 1, ptr %i.bc, align 1, !noalias !694
  %i.uq = load i64, ptr %i.bh, align 8, !range !285, !noalias !694, !noundef !4
  %i.ur = trunc nuw i64 %i.uq to i1
  br i1 %i.ur, label %bb.mt, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit62.i"

bb.ls:                                            ; preds = %bb.lq
  %i.us = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ut = invoke fastcc noundef ptr @"_ZN66_$LT$termcolor..Ansi$LT$W$GT$$u20$as$u20$termcolor..WriteColor$GT$9set_color17hcb54e9a91f81391dE"(ptr noalias noundef align 8 dereferenceable(48) %i.us, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(15) %i.bg)
          to label %bb.lt unwind label %bb.ly, !noalias !694 ; 2 uses

bb.lt:                                            ; preds = %bb.ls
  %.not.i71.i = icmp eq ptr %i.ut, null
  br i1 %.not.i71.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit74.i", label %bb.lu, !prof !849

bb.lu:                                            ; preds = %bb.lt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !850
  store ptr %i.ut, ptr %i.au, align 8, !noalias !850
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull align 1 %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #18
          to label %bb.lw unwind label %bb.lv, !noalias !694

bb.lv:                                            ; preds = %bb.lu
  %i.uu = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.au) #19
          to label %.body.i20 unwind label %bb.lx, !noalias !694

bb.lw:                                            ; preds = %bb.lu
  unreachable

bb.lx:                                            ; preds = %bb.lv
  %i.uv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !694
  unreachable

bb.ly:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit.i", %bb.ne, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit62.i", %bb.mt, %bb.mf, %bb.lz, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit74.i", %bb.ls
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

.body.i20:                                        ; preds = %bb.nh, %bb.nb, %bb.mw, %bb.mi, %bb.mc, %bb.ly, %bb.lv
  %eh.lpad-body.i21 = phi { ptr, i32 } [ %i.wi, %bb.nb ], [ %i.wb, %bb.mw ], [ %i.vr, %bb.mi ], [ %i.vl, %bb.mc ], [ %i.uu, %bb.lv ], [ %i.uw, %bb.ly ], [ %i.wo, %bb.nh ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$termcolor..StandardStream$GT$17h16eca2cc7aa421ffE"(ptr noalias noundef align 8 dereferenceable(56) %i.bh) #19
          to label %.body146.i unwind label %bb.nl, !noalias !694

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit74.i": ; preds = %bb.lt, %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !694
  %i.ux = invoke { i64, i32 } @_ZN3std4time7Instant7elapsed17hf6ed2a969b0e9ab4E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bx)
          to label %bb.lz unwind label %bb.ly, !noalias !694 ; 2 uses

bb.lz:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit74.i"
  %i.uy = extractvalue { i64, i32 } %i.ux, 0
  %i.uz = extractvalue { i64, i32 } %i.ux, 1      ; 2 uses
  %i.va = uitofp i64 %i.uy to float
  %i.vb = icmp ult i32 %i.uz, 1000000000
  call void @llvm.assume(i1 %i.vb)
  %i.vc = uitofp nneg i32 %i.uz to float
  %i.vd = fdiv float %i.vc, 1.000000e+09
  %i.ve = fadd float %i.vd, %i.va
  store float %i.ve, ptr %i.be, align 4, !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !694
  store ptr %i.be, ptr %i.bd, align 8, !noalias !694
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f32$GT$3fmt17hb35e8898df474edaE", ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !694
  store ptr @85, ptr %i.bf, align 8, !noalias !694
  %i.vf = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 2, ptr %i.vf, align 8, !noalias !694
  %i.vg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr @86, ptr %i.vg, align 8, !noalias !694
  %i.vh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i64 1, ptr %i.vh, align 8, !noalias !694
  %i.vi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.bd, ptr %i.vi, align 8, !noalias !694
  %i.vj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 1, ptr %i.vj, align 8, !noalias !694
  %i.vk = invoke noundef ptr @_ZN3std2io5Write9write_fmt17h371b309a5b4531ccE(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bf)
          to label %bb.ma unwind label %bb.ly, !noalias !694 ; 2 uses

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !694
  %.not.i67.i = icmp eq ptr %i.vk, null
  br i1 %.not.i67.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit70.i", label %bb.mb, !prof !704

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !853
  store ptr %i.vk, ptr %i.av, align 8, !noalias !853
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull align 1 %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #18
          to label %bb.md unwind label %bb.mc, !noalias !694

bb.mc:                                            ; preds = %bb.mb
  %i.vl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.av) #19
          to label %.body.i20 unwind label %bb.me, !noalias !694

bb.md:                                            ; preds = %bb.mb
  unreachable

bb.me:                                            ; preds = %bb.mc
  %i.vm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !694
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit70.i": ; preds = %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !694
  %i.vn = load i64, ptr %i.bh, align 8, !range !285, !noalias !694, !noundef !4
  %i.vo = trunc nuw i64 %i.vn to i1
  br i1 %i.vo, label %bb.mf, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit66.i"

bb.mf:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit70.i"
  %i.vp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.vq = invoke noundef ptr @_ZN3std2io5Write9write_all17h49aea10e46b1d736E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.vp, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 4)
          to label %bb.mg unwind label %bb.ly, !noalias !694 ; 2 uses

bb.mg:                                            ; preds = %bb.mf
  %.not.i63.i = icmp eq ptr %i.vq, null
  br i1 %.not.i63.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit66.i", label %bb.mh, !prof !849

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !856
  store ptr %i.vq, ptr %i.aw, align 8, !noalias !856
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull align 1 %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #18
          to label %bb.mj unwind label %bb.mi, !noalias !694

bb.mi:                                            ; preds = %bb.mh
  %i.vr = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h86d6ffc4b9a315b5E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw) #19
          to label %.body.i20 unwind label %bb.mk, !noalias !694

bb.mj:                                            ; preds = %bb.mh
  unreachable

bb.mk:                                            ; preds = %bb.mi
  %i.vs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !694
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit66.i": ; preds = %bb.mg, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit70.i"
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$termcolor..StandardStream$GT$17h16eca2cc7aa421ffE"(ptr noalias noundef align 8 dereferenceable(56) %i.bh)
          to label %bb.ml unwind label %bb.jx, !noalias !694

bb.ml:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h51015d284e698bbdE.exit66.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !694
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17ha1867097bb3a9946E"(ptr noalias noundef align 8 dereferenceable(200) %i.bw)
          to label %bb.mm unwind label %.body129.i, !noalias !694

bb.mm:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !694
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i157.i" unwind label %bb.mn, !noalias !694

bb.mn:                                            ; preds = %bb.mm
  %i.vt = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %.body100.i unwind label %bb.mo, !noalias !694

bb.mo:                                            ; preds = %bb.mn
  %i.vu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !694
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i157.i": ; preds = %bb.mm
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit162.i" unwind label %bb.hu, !noalias !694

"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit162.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h22828b7800b2480bE.exit.i157.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !694
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i164.i" unwind label %bb.mp, !noalias !694

bb.mp:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit162.i"
  %i.vv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body84.i unwind label %bb.mq, !noalias !694

bb.mq:                                            ; preds = %bb.mp
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20, !noalias !694
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i164.i": ; preds = %"_ZN4core3ptr40drop_in_place$LT$camino..Utf8PathBuf$GT$17h442765fba03a3515E.exit162.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdc2932a369b1b4f5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit169.i" unwind label %bb.fz, !noalias !694

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfab8dcfc0cf781a8E.exit169.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha0d509fb50aab2bcE.exit.i164.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !694
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3f255f5b51e12f3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %_ZN6runner5build9run_build17h59c89f2c2b2f97e5E.exit unwind label %bb.mr, !noalias !694

end_hunk_1
