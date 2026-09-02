Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN4anki10collection8transact46_$LT$impl$u20$anki..collection..Collection$GT$14transact_inner17hdf474e536c8e1bc6E":bb.a
bb.fo:                                            ; preds = %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit634.i.i"
  %.sroa.4496.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.4496.0.copyload.i.i = load i8, ptr %.sroa.4496.0..sroa_idx.i.i, align 8, !noalias !791
  %.sroa.5497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload295 = load i24, ptr %.sroa.5497.0..sroa_idx.i.i, align 1, !noalias !800
  %.sroa.31.sroa.34.1..sroa.5497.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %.sroa.31.sroa.34.1.copyload234 = load i32, ptr %.sroa.31.sroa.34.1..sroa.5497.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !800
  %.sroa.59.9..sroa.5497.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.59.9.copyload79 = load i64, ptr %.sroa.59.9..sroa.5497.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.65.9..sroa.5497.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.65.9.copyload99 = load i64, ptr %.sroa.65.9..sroa.5497.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.9..sroa.5497.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %.sroa.68.sroa.0.0.copyload330 = load i64, ptr %.sroa.68.9..sroa.5497.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.9..sroa.5497.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.9..sroa.5497.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !791
  br label %bb.fv

bb.fp:                                            ; preds = %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit634.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !791
  %i.rw = getelementptr inbounds nuw i8, ptr %i.cz, i64 129
  %i.rx = load i8, ptr %i.rw, align 1, !range !6, !alias.scope !789, !noalias !790, !noundef !3
  invoke fastcc void @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hae557a547797f166E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i8 noundef 0, i8 %i.rx)
          to label %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit636.i.i" unwind label %bb.ew, !noalias !796

"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit636.i.i": ; preds = %bb.fp
  %i.ry = load i64, ptr %i.be, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not547.i.i = icmp eq i64 %i.ry, -9223372036854775773
  br i1 %.not547.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit636.i.i"
  %.sroa.4505.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.4505.0.copyload.i.i = load i8, ptr %.sroa.4505.0..sroa_idx.i.i, align 8, !noalias !791
  %.sroa.5506.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload296 = load i24, ptr %.sroa.5506.0..sroa_idx.i.i, align 1, !noalias !800
  %.sroa.31.sroa.34.1..sroa.5506.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.sroa.31.sroa.34.1.copyload235 = load i32, ptr %.sroa.31.sroa.34.1..sroa.5506.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !800
  %.sroa.59.9..sroa.5506.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.59.9.copyload80 = load i64, ptr %.sroa.59.9..sroa.5506.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.65.9..sroa.5506.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %.sroa.65.9.copyload100 = load i64, ptr %.sroa.65.9..sroa.5506.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.9..sroa.5506.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %.sroa.68.sroa.0.0.copyload331 = load i64, ptr %.sroa.68.9..sroa.5506.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.9..sroa.5506.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.9..sroa.5506.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !791
  br label %bb.fv

bb.fr:                                            ; preds = %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit636.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !791
  %i.rz = getelementptr inbounds nuw i8, ptr %i.cz, i64 132
  %i.sa = load i8, ptr %i.rz, align 4, !range !6, !alias.scope !789, !noalias !790, !noundef !3
  invoke fastcc void @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$10set_config17hae557a547797f166E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.bd, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i8 noundef 30, i8 %i.sa)
          to label %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit638.i.i" unwind label %bb.ew, !noalias !796

"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit638.i.i": ; preds = %bb.fr
  %i.sb = load i64, ptr %i.bd, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not549.i.i = icmp eq i64 %i.sb, -9223372036854775773
  br i1 %.not549.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit638.i.i"
  %.sroa.4514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4514.0.copyload.i.i = load i8, ptr %.sroa.4514.0..sroa_idx.i.i, align 8, !noalias !791
  %.sroa.5515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload297 = load i24, ptr %.sroa.5515.0..sroa_idx.i.i, align 1, !noalias !800
  %.sroa.31.sroa.34.1..sroa.5515.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %.sroa.31.sroa.34.1.copyload236 = load i32, ptr %.sroa.31.sroa.34.1..sroa.5515.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !800
  %.sroa.59.9..sroa.5515.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.59.9.copyload81 = load i64, ptr %.sroa.59.9..sroa.5515.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.65.9..sroa.5515.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.65.9.copyload101 = load i64, ptr %.sroa.65.9..sroa.5515.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.9..sroa.5515.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.sroa.68.sroa.0.0.copyload332 = load i64, ptr %.sroa.68.9..sroa.5515.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.9..sroa.5515.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.9..sroa.5515.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !791
  br label %bb.fv

bb.ft:                                            ; preds = %"_ZN4anki6config4bool46_$LT$impl$u20$anki..collection..Collection$GT$21set_config_bool_inner17he98dd957c06f3456E.exit638.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !791
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9561472e4abe2626E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit640.i.i" unwind label %bb.eq, !noalias !796

"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit640.i.i": ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !791
  %i.sc = trunc nuw i8 %.sroa.0295.4.i.i to i1
  br i1 %i.sc, label %bb.fu, label %"_ZN4core3ptr140drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$$GT$17h3daeab2aa9e8d962E.exit.i.i"

"_ZN4core3ptr140drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$$GT$17h3daeab2aa9e8d962E.exit.i.i": ; preds = %bb.fu, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit640.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !791
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd298a4e9fa525536E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cm)
          to label %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit642.i.i" unwind label %.loopexit.split-lp869.loopexit.split-lp.i.i, !noalias !796

bb.fu:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit640.i.i"
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha8e3e33caa0027afE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cc)
          to label %"_ZN4core3ptr140drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$$GT$17h3daeab2aa9e8d962E.exit.i.i" unwind label %bb.eh, !noalias !796

"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit642.i.i": ; preds = %"_ZN4core3ptr140drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$$GT$17h3daeab2aa9e8d962E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !791
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc93d27cfc99549fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cu)
          to label %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..DeckConfig$GT$$GT$17h91cae3be92479d3fE.exit645.i.i" unwind label %bb.n, !noalias !796

"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..DeckConfig$GT$$GT$17h91cae3be92479d3fE.exit645.i.i": ; preds = %"_ZN4core3ptr84drop_in_place$LT$std..collections..hash..set..HashSet$LT$anki..decks..DeckId$GT$$GT$17h2a3864c1efa9df5fE.exit642.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !791
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc93d27cfc99549fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cw)
          to label %"_ZN4anki10deckconfig6update46_$LT$impl$u20$anki..collection..Collection$GT$25update_deck_configs_inner17hdf68085f764f7164E.exit.i.thread" unwind label %bb.j, !noalias !796

"_ZN4anki10deckconfig6update46_$LT$impl$u20$anki..collection..Collection$GT$25update_deck_configs_inner17hdf68085f764f7164E.exit.i.thread": ; preds = %"_ZN4core3ptr126drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$anki..deckconfig..DeckConfig$GT$$GT$17h91cae3be92479d3fE.exit645.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !791
  call fastcc void @"_ZN4core3ptr71drop_in_place$LT$anki..deckconfig..update..UpdateDeckConfigsRequest$GT$17h89183897a03e7224E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !786
  br label %bb.mf

bb.fv:                                            ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i", %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fj, %bb.fg, %bb.ey
  %.sroa.68.sroa.0.5 = phi i64 [ %.sroa.68.sroa.0.0.copyload332, %bb.fs ], [ %.sroa.68.sroa.0.0.copyload331, %bb.fq ], [ %.sroa.68.sroa.0.0.copyload330, %bb.fo ], [ %.sroa.68.sroa.0.0.copyload329, %bb.fm ], [ %.sroa.68.sroa.0.0.copyload325, %bb.fj ], [ %.sroa.68.sroa.0.0.copyload341, %bb.fg ], [ %i.wi, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ %.sroa.68.sroa.0.0.copyload340, %bb.ey ] ; 2 uses
  %.sroa.31.sroa.0.sroa.29.sroa.0.5 = phi i24 [ %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload297, %bb.fs ], [ %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload296, %bb.fq ], [ %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload295, %bb.fo ], [ %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload, %bb.fm ], [ %.sroa.31.sroa.0.sroa.29.0.extract.trunc280, %bb.fj ], [ %.sroa.31.sroa.0.sroa.29.0.extract.trunc292, %bb.fg ], [ %.sroa.31.sroa.0.sroa.29.sroa.0.9, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ %.sroa.31.sroa.0.sroa.29.0.extract.trunc272, %bb.ey ] ; 2 uses
  %.sroa.31.sroa.0.sroa.0.5 = phi i8 [ %.sroa.4514.0.copyload.i.i, %bb.fs ], [ %.sroa.4505.0.copyload.i.i, %bb.fq ], [ %.sroa.4496.0.copyload.i.i, %bb.fo ], [ %.sroa.4487.0.copyload.i.i, %bb.fm ], [ %.sroa.31.sroa.0.sroa.0.0.extract.trunc249, %bb.fj ], [ %.sroa.31.sroa.0.sroa.0.0.extract.trunc255, %bb.fg ], [ %.sroa.31.sroa.0.sroa.0.9, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ %.sroa.31.sroa.0.sroa.0.0.extract.trunc245, %bb.ey ] ; 2 uses
  %.sroa.31.sroa.34.5 = phi i32 [ %.sroa.31.sroa.34.1.copyload236, %bb.fs ], [ %.sroa.31.sroa.34.1.copyload235, %bb.fq ], [ %.sroa.31.sroa.34.1.copyload234, %bb.fo ], [ %.sroa.31.sroa.34.1.copyload, %bb.fm ], [ %.sroa.31.sroa.34.0.extract.trunc219, %bb.fj ], [ %.sroa.31.sroa.34.0.extract.trunc231, %bb.fg ], [ %.sroa.31.sroa.34.9, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ %.sroa.31.sroa.34.0.extract.trunc211, %bb.ey ] ; 2 uses
  %.sroa.65.sroa.29.5.in.in = phi i64 [ %.sroa.65.9.copyload101, %bb.fs ], [ %.sroa.65.9.copyload100, %bb.fq ], [ %.sroa.65.9.copyload99, %bb.fo ], [ %.sroa.65.9.copyload, %bb.fm ], [ %.sroa.65.8.copyload91, %bb.fj ], [ %.sroa.7235.i.i.sroa.7.0.copyload, %bb.fg ], [ %i.wh, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ %.sroa.5389.0.copyload.i.i, %bb.ey ] ; 2 uses
  %.sroa.59.5 = phi i64 [ %.sroa.59.9.copyload81, %bb.fs ], [ %.sroa.59.9.copyload80, %bb.fq ], [ %.sroa.59.9.copyload79, %bb.fo ], [ %.sroa.59.9.copyload, %bb.fm ], [ %.sroa.59.8.copyload71, %bb.fj ], [ %.sroa.7235.i.i.sroa.6.0.copyload, %bb.fg ], [ %.sroa.59.9, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ %i.qp, %bb.ey ] ; 2 uses
  %.sroa.045.5 = phi i64 [ %i.sb, %bb.fs ], [ %i.ry, %bb.fq ], [ %i.rv, %bb.fo ], [ %i.rs, %bb.fm ], [ %i.rr, %bb.fj ], [ %i.rp, %bb.fg ], [ %.sroa.045.9, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ %i.qn, %bb.ey ] ; 2 uses
  %.sroa.0295.5.i.i = phi i8 [ %.sroa.0295.4.i.i, %bb.fs ], [ %.sroa.0295.4.i.i, %bb.fq ], [ %.sroa.0295.4.i.i, %bb.fo ], [ %.sroa.0295.4.i.i, %bb.fm ], [ 0, %bb.fj ], [ 0, %bb.fg ], [ 1, %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" ], [ 1, %bb.ey ] ; 2 uses
  invoke void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9561472e4abe2626E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" unwind label %bb.eq, !noalias !796

"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit652.i.i": ; preds = %bb.ga, %bb.fz, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.0292.0.i.i = phi i8 [ %.sroa.0292.3.i.i, %bb.fz ], [ %.sroa.0292.3.i.i, %bb.ga ], [ %.sroa.0292.1.ph.i.i, %.loopexit.i.i ], [ %.sroa.0292.7.i.i, %.loopexit.split-lp.i.i ]
  %.pn580.i.i = phi { ptr, i32 } [ %.pn578.i.i, %bb.fz ], [ %.pn578.i.i, %bb.ga ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.sd = trunc nuw i8 %.sroa.0292.0.i.i to i1
  br i1 %i.sd, label %bb.ir, label %bb.fa

.loopexit.i.i:                                    ; preds = %.thread791.i.i, %bb.fb
  %.sroa.0292.1.ph.i.i = phi i8 [ 1, %bb.fb ], [ %.sroa.0292.2793.i.i, %.thread791.i.i ]
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit652.i.i"

.loopexit.split-lp.i.i:                           ; preds = %bb.ij
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit652.i.i"

bb.fw:                                            ; preds = %bb.fb
  %i.se = load i64, ptr %i.bw, align 8, !range !13, !noalias !791, !noundef !3
  %.not551.i.i = icmp eq i64 %i.se, -9223372036854775773
  br i1 %.not551.i.i, label %bb.fy, label %.thread791.i.i

bb.fx:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !791
  %.pr790.i.i = load i64, ptr %i.bw, align 8, !alias.scope !845, !noalias !791
  %i.sf = icmp eq i64 %.pr790.i.i, -9223372036854775773
  br i1 %i.sf, label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit.i.i", label %.thread791.i.i

.thread791.i.i:                                   ; preds = %bb.fx, %bb.fw
  %.sroa.0292.2793.i.i = phi i8 [ %.sroa.0292.5.i.i, %bb.fx ], [ 1, %bb.fw ] ; 2 uses
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bw)
          to label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit.i.i" unwind label %.loopexit.i.i, !noalias !796

bb.fy:                                            ; preds = %bb.fw
  %i.sg = load ptr, ptr %i.qu, align 8, !noalias !791, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %i.sh = load i64, ptr %i.qv, align 8, !noalias !791, !noundef !3 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  %i.sj = load i64, ptr %i.si, align 8, !noalias !796, !noundef !3 ; 2 uses
  store i64 %i.sj, ptr %i.bv, align 8, !noalias !791
  %i.sk = invoke fastcc noundef align 8 dereferenceable_or_null(392) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h489c56590d579102E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.gb unwind label %.loopexit857.i.i, !noalias !796 ; 9 uses

bb.fz:                                            ; preds = %bb.gl, %.loopexit.split-lp858.i.i, %.loopexit857.i.i
  %.sroa.0292.3.i.i = phi i8 [ %.sroa.0292.6.i.i, %bb.gl ], [ %.sroa.0292.4.ph.i.i, %.loopexit857.i.i ], [ %.sroa.0292.4.ph859.i.i, %.loopexit.split-lp858.i.i ] ; 2 uses
  %.pn578.i.i = phi { ptr, i32 } [ %i.tl, %bb.gl ], [ %lpad.loopexit860.i.i, %.loopexit857.i.i ], [ %lpad.loopexit.split-lp861.i.i, %.loopexit.split-lp858.i.i ] ; 2 uses
  %i.sl = load i64, ptr %i.bw, align 8, !range !13, !alias.scope !846, !noalias !791, !noundef !3
  %i.sm = icmp eq i64 %i.sl, -9223372036854775773
  br i1 %i.sm, label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit652.i.i", label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bw)
          to label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit652.i.i" unwind label %bb.ed, !noalias !796

.loopexit857.i.i:                                 ; preds = %bb.if, %bb.ie, %bb.id, %bb.ib, %bb.hx, %bb.ho, %.critedge.i.i, %bb.hd, %bb.gy, %bb.gj, %bb.gh, %bb.gg, %bb.ge, %bb.fy
  %.sroa.0292.4.ph.i.i = phi i8 [ 1, %bb.fy ], [ 1, %bb.ge ], [ 1, %bb.gg ], [ 1, %bb.gh ], [ 0, %bb.gy ], [ %.sroa.0292.5.i.i, %bb.gj ], [ %.sroa.0292.5.i.i, %bb.hd ], [ %.sroa.0292.5.i.i, %bb.ho ], [ %.sroa.0292.5.i.i, %bb.hx ], [ %.sroa.0292.5.i.i, %.critedge.i.i ], [ %.sroa.0292.5.i.i, %bb.ib ], [ %.sroa.0292.5.i.i, %bb.id ], [ %.sroa.0292.5.i.i, %bb.ie ], [ %.sroa.0292.5.i.i, %bb.if ]
  %lpad.loopexit860.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

.loopexit.split-lp858.i.i:                        ; preds = %bb.il, %bb.gx
  %.sroa.0292.4.ph859.i.i = phi i8 [ 0, %bb.gx ], [ %.sroa.0292.8.i.i, %bb.il ]
  %lpad.loopexit.split-lp861.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gb:                                            ; preds = %bb.fy
  %.not552.i.i = icmp ne ptr %i.sk, null          ; 4 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %.sroa.0120.0.i.i = select i1 %.not552.i.i, ptr %i.sn, ptr null
  br i1 %.not552.i.i, label %select.unfold.i.i, label %bb.ge

select.unfold.i.i:                                ; preds = %bb.gb
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 296
  %i.sp = load i32, ptr %i.so, align 8, !noalias !796, !noundef !3 ; 2 uses
  %switch.i.i = icmp ult i32 %i.sp, 2
  %spec.select.i.i = select i1 %switch.i.i, i32 %i.sp, i32 0
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sk, i64 144
  %i.sr = load i64, ptr %i.sq, align 8, !noalias !796, !noundef !3 ; 2 uses
  %i.ss = icmp ult i64 %i.sr, 2305843009213693952
  call void @llvm.assume(i1 %i.ss)
  %i.st = icmp eq i64 %i.sr, 0
  br i1 %i.st, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %select.unfold.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.sk, i64 120
  %i.sv = load i64, ptr %i.su, align 8, !noalias !796, !noundef !3 ; 2 uses
  %i.sw = icmp ult i64 %i.sv, 2305843009213693952
  call void @llvm.assume(i1 %i.sw)
  %i.sx = icmp eq i64 %i.sv, 0
  %..i.i = select i1 %i.sx, i64 80, i64 104
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %select.unfold.i.i
  %.sink.i.i = phi i64 [ %..i.i, %bb.gc ], [ 128, %select.unfold.i.i ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sk, i64 %.sink.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sk, i64 348
  %i.ta = load float, ptr %i.sz, align 4, !noalias !796, !noundef !3
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gb
  %.sroa.0130.0803.i.i = phi ptr [ %i.sy, %bb.gd ], [ null, %bb.gb ] ; 3 uses
  %i.tb = phi i32 [ %spec.select.i.i, %bb.gd ], [ 0, %bb.gb ]
  %.sroa.4135.0.i.i = phi float [ %i.ta, %bb.gd ], [ undef, %bb.gb ]
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  %i.td = load i32, ptr %i.tc, align 8, !range !16, !noalias !796, !noundef !3 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.sg, i64 44
  %i.tf = load float, ptr %i.te, align 4, !noalias !796 ; 2 uses
  %i.tg = trunc nuw i32 %i.td to i1               ; 2 uses
  %.sroa.4135.1.i.i = select i1 %i.tg, float %i.tf, float %.sroa.4135.0.i.i
  %i.th = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hda43562294f76567E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qv)
          to label %bb.gf unwind label %.loopexit857.i.i, !noalias !796

bb.gf:                                            ; preds = %bb.ge
  %.not555.i.i = icmp eq ptr %i.th, null
  br i1 %.not555.i.i, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ti = invoke fastcc noundef align 8 dereferenceable_or_null(392) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h489c56590d579102E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.gi unwind label %.loopexit857.i.i, !noalias !796

bb.gh:                                            ; preds = %bb.gi, %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !791
  invoke fastcc void @"_ZN56_$LT$anki..decks..Deck$u20$as$u20$core..clone..Clone$GT$5clone17h13bf640fe61ea528E"(ptr noalias noundef align 8 captures(address) dereferenceable(192) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bx)
          to label %bb.gk unwind label %.loopexit857.i.i, !noalias !796

bb.gi:                                            ; preds = %bb.gg
  %.not556.i.i = icmp eq ptr %i.ti, null
  br i1 %.not556.i.i, label %bb.gh, label %bb.gj

bb.gj:                                            ; preds = %bb.gz, %bb.gi
  %.sroa.0292.5.i.i = phi i8 [ 0, %bb.gz ], [ 1, %bb.gi ] ; 13 uses
  %.sroa.6174.0.i.i = phi float [ %i.ue, %bb.gz ], [ %i.tf, %bb.gi ] ; 2 uses
  %.sroa.0170.0.i.i = phi i32 [ %i.uc, %bb.gz ], [ %i.td, %bb.gi ] ; 2 uses
  %.sroa.0169.0.i.i = phi i64 [ %i.tx, %bb.gz ], [ %i.sj, %bb.gi ] ; 2 uses
  store i64 %.sroa.0169.0.i.i, ptr %i.bu, align 8, !noalias !791
  %i.tj = invoke fastcc noundef align 8 dereferenceable_or_null(392) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h489c56590d579102E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bu)
          to label %bb.ha unwind label %.loopexit857.i.i, !noalias !796 ; 9 uses

bb.gk:                                            ; preds = %bb.gh
  %i.tk = load i64, ptr %i.qw, align 8, !noalias !796, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !791
  invoke void @_ZN4anki5decks4Deck10normal_mut17h6f70618b2659f943E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bs, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.bt)
          to label %bb.gm unwind label %bb.gl, !noalias !796

bb.gl:                                            ; preds = %bb.gv, %bb.gs, %bb.gr, %bb.go, %bb.gk
  %.sroa.0292.6.i.i = phi i8 [ 0, %bb.gv ], [ 0, %bb.gs ], [ 1, %bb.gr ], [ 1, %bb.go ], [ 1, %bb.gk ]
  %i.tl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.bt) #27
          to label %bb.fz unwind label %bb.ed, !noalias !796

bb.gm:                                            ; preds = %bb.gk
  %i.tm = load i64, ptr %i.bs, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not557.i.i = icmp eq i64 %i.tm, -9223372036854775773
  %i.tn = load ptr, ptr %i.qx, align 8, !noalias !791 ; 2 uses
  br i1 %.not557.i.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %.sroa.5416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.59.16.copyload = load i64, ptr %.sroa.5416.0..sroa_idx.i.i, align 8, !noalias !800
  %.sroa.65.16..sroa.5416.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.to = load <2 x i64>, ptr %.sroa.65.16..sroa.5416.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.16..sroa.5416.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.16..sroa.5416.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !791
  %i.tp = ptrtoint ptr %i.tn to i64
  br label %bb.il

bb.go:                                            ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !791
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 48
  store i64 %i.tk, ptr %i.tq, align 8, !noalias !796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !791
  invoke void @_ZN4anki5decks4Deck10normal_mut17h6f70618b2659f943E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.bt)
          to label %bb.gp unwind label %bb.gl, !noalias !796

bb.gp:                                            ; preds = %bb.go
  %i.tr = load i64, ptr %i.br, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not559.i.i = icmp eq i64 %i.tr, -9223372036854775773
  %i.ts = load ptr, ptr %i.qy, align 8, !noalias !791 ; 2 uses
  br i1 %.not559.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.sroa.5425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.59.16.copyload83 = load i64, ptr %.sroa.5425.0..sroa_idx.i.i, align 8, !noalias !800
  %.sroa.65.16..sroa.5425.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.tt = load <2 x i64>, ptr %.sroa.65.16..sroa.5425.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.16..sroa.5425.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.16..sroa.5425.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !791
  %i.tu = ptrtoint ptr %i.ts to i64
  br label %bb.il

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !791
  invoke void @_ZN4anki10deckconfig6update18update_deck_limits17hf8f01f93b8192d57E(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ts, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(44) %i.qz, i32 noundef %.sroa.10.8.copyload.i.i)
          to label %bb.gs unwind label %bb.gl, !noalias !796

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bp, ptr noundef nonnull align 8 dereferenceable(192) %i.bx, i64 192, i1 false), !noalias !791
  invoke void @"_ZN4anki5decks9addupdate46_$LT$impl$u20$anki..collection..Collection$GT$17update_deck_inner17h41bf92bfb43ed5d0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.bp, i32 noundef %i.ps)
          to label %bb.gt unwind label %bb.gl, !noalias !796

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !791
  %i.tv = load i64, ptr %i.bq, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not561.i.i = icmp eq i64 %i.tv, -9223372036854775773
  br i1 %.not561.i.i, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %.sroa.4432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.31.8.copyload55 = load i64, ptr %.sroa.4432.0..sroa_idx.i.i, align 8, !noalias !800
  %.sroa.59.8..sroa.4432.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.59.8.copyload72 = load i64, ptr %.sroa.59.8..sroa.4432.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.65.8..sroa.4432.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.tw = load <2 x i64>, ptr %.sroa.65.8..sroa.4432.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.8..sroa.4432.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.8..sroa.4432.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !791
  br label %bb.il

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !791
  %i.tx = load i64, ptr %i.qw, align 8, !noalias !796, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !791
  invoke void @_ZN4anki5decks4Deck6normal17ha0f56b77db7e46acE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.bt)
          to label %bb.gw unwind label %bb.gl, !noalias !796

bb.gw:                                            ; preds = %bb.gv
  %i.ty = load i64, ptr %i.bo, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not563.i.i = icmp eq i64 %i.ty, -9223372036854775773
  %i.tz = load ptr, ptr %i.ra, align 8, !noalias !791 ; 3 uses
  br i1 %.not563.i.i, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.sroa.5440.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.59.16.copyload84 = load i64, ptr %.sroa.5440.0..sroa_idx.i.i, align 8, !noalias !800
  %.sroa.65.16..sroa.5440.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ua = load <2 x i64>, ptr %.sroa.65.16..sroa.5440.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.16..sroa.5440.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.16..sroa.5440.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !791
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.bt)
          to label %bb.ik unwind label %.loopexit.split-lp858.i.i, !noalias !796

bb.gy:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !791
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.uc = load i32, ptr %i.ub, align 8, !range !16, !noalias !796, !noundef !3
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 44
  %i.ue = load float, ptr %i.ud, align 4, !noalias !796
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.bt)
          to label %bb.gz unwind label %.loopexit857.i.i, !noalias !796

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !791
  br label %bb.gj

bb.ha:                                            ; preds = %bb.gj
  %.not565.i.i = icmp eq ptr %i.tj, null          ; 5 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %.sroa.0189.0.i.i = select i1 %.not565.i.i, ptr null, ptr %i.uf
  br i1 %.not565.i.i, label %.thread824.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tj, i64 296
  %i.uh = load i32, ptr %i.ug, align 8, !noalias !796, !noundef !3 ; 2 uses
  %switch599.i.i = icmp ult i32 %i.uh, 2
  %spec.select854.i.i = select i1 %switch599.i.i, i32 %i.uh, i32 0
  br label %.thread824.i.i

.thread824.i.i:                                   ; preds = %bb.hb, %bb.ha
  %i.ui = phi i32 [ 0, %bb.ha ], [ %spec.select854.i.i, %bb.hb ] ; 2 uses
  %.not568.i.i = icmp eq i32 %i.tb, %i.ui
  br i1 %.not568.i.i, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hg, %.thread824.i.i
  br i1 %.not565.i.i, label %bb.hk, label %bb.hh

bb.hd:                                            ; preds = %.thread824.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !791
  invoke fastcc void @"_ZN4anki9scheduler3new46_$LT$impl$u20$anki..collection..Collection$GT$9sort_deck17h4651e85a6df7cfe9E"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.bn, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %i.sh, i32 noundef %i.ui, i32 noundef %i.ps)
          to label %bb.he unwind label %.loopexit857.i.i, !noalias !796

bb.he:                                            ; preds = %bb.hd
  %i.uj = load i64, ptr %i.bn, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not569.i.i = icmp eq i64 %i.uj, -9223372036854775773
  br i1 %.not569.i.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %.sroa.4453.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.4453.0.copyload.i.i = load i64, ptr %.sroa.4453.0..sroa_idx.i.i, align 8, !noalias !791
  %.sroa.5454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.59.16.copyload85 = load i64, ptr %.sroa.5454.0..sroa_idx.i.i, align 8, !noalias !800
  %.sroa.65.16..sroa.5454.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.uk = load <2 x i64>, ptr %.sroa.65.16..sroa.5454.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.16..sroa.5454.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.16..sroa.5454.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !791
  br label %bb.ii

bb.hg:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !791
  br label %bb.hc

bb.hh:                                            ; preds = %bb.hc
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tj, i64 144
  %i.um = load i64, ptr %i.ul, align 8, !noalias !796, !noundef !3 ; 2 uses
  %i.un = icmp ult i64 %i.um, 2305843009213693952
  call void @llvm.assume(i1 %i.un)
  %i.uo = icmp eq i64 %i.um, 0
  br i1 %i.uo, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.up = getelementptr inbounds nuw i8, ptr %i.tj, i64 120
  %i.uq = load i64, ptr %i.up, align 8, !noalias !796, !noundef !3 ; 2 uses
  %i.ur = icmp ult i64 %i.uq, 2305843009213693952
  call void @llvm.assume(i1 %i.ur)
  %i.us = icmp eq i64 %i.uq, 0
  %.1140.i.i = select i1 %i.us, i64 80, i64 104
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.sink1139.i.i = phi i64 [ %.1140.i.i, %bb.hi ], [ 128, %bb.hh ]
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.sink1139.i.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tj, i64 348
  %i.uv = load float, ptr %i.uu, align 4, !noalias !796, !noundef !3
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hc
  %.sroa.0210.0835.i.i = phi ptr [ %i.ut, %bb.hj ], [ null, %bb.hc ] ; 3 uses
  %.sroa.5217.0.i.i = phi float [ %i.uv, %bb.hj ], [ undef, %bb.hc ]
  %.sroa.0215.0.i.i = phi i32 [ 1, %bb.hj ], [ %.sroa.0170.0.i.i, %bb.hc ] ; 2 uses
  %i.uw = trunc nuw i32 %.sroa.0170.0.i.i to i1   ; 2 uses
  %.sroa.5217.1.i.i = select i1 %i.uw, float %.sroa.6174.0.i.i, float %.sroa.5217.0.i.i
  br i1 %i.qh, label %.critedge.i.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %.not571.i.i = icmp eq ptr %.sroa.0130.0803.i.i, null
  %i.ux = icmp eq ptr %.sroa.0210.0835.i.i, null  ; 2 uses
  br i1 %.not571.i.i, label %.split.i.i, label %bb.hm

.critedge.i.i:                                    ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h75e8923f00694154E.exit655.i.i", %bb.hw, %bb.hv, %bb.hr, %bb.hq, %bb.hn, %.split.i.i, %bb.hm, %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !791
  invoke void @"_ZN9hashbrown11rustc_entry62_$LT$impl$u20$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$GT$11rustc_entry17h1d3684a2c6eb9f8aE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cc, i64 noundef %.sroa.0169.0.i.i)
          to label %bb.hy unwind label %.loopexit857.i.i, !noalias !796

bb.hm:                                            ; preds = %bb.hl
  br i1 %i.ux, label %.critedge.i.i, label %bb.ho

.split.i.i:                                       ; preds = %bb.hl
  br i1 %i.ux, label %bb.hp, label %.critedge.i.i

bb.hn:                                            ; preds = %bb.ho
  br i1 %i.vc, label %bb.hp, label %.critedge.i.i

bb.ho:                                            ; preds = %bb.hm
  %i.uy = getelementptr i8, ptr %.sroa.0130.0803.i.i, i64 8
  %.sroa.0130.0.val.i.i = load ptr, ptr %i.uy, align 8, !noalias !796, !nonnull !3, !noundef !3
  %i.uz = getelementptr i8, ptr %.sroa.0130.0803.i.i, i64 16
  %.sroa.0130.0.val606.i.i = load i64, ptr %i.uz, align 8, !noalias !796, !noundef !3
  %i.va = getelementptr i8, ptr %.sroa.0210.0835.i.i, i64 8
  %.sroa.0210.0.val.i.i = load ptr, ptr %i.va, align 8, !noalias !796, !nonnull !3, !noundef !3
  %i.vb = getelementptr i8, ptr %.sroa.0210.0835.i.i, i64 16
  %.sroa.0210.0.val607.i.i = load i64, ptr %i.vb, align 8, !noalias !796, !noundef !3
  %i.vc = invoke noundef zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17he7e65f63d539ed2eE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0130.0.val.i.i, i64 noundef %.sroa.0130.0.val606.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0210.0.val.i.i, i64 noundef %.sroa.0210.0.val607.i.i)
          to label %bb.hn unwind label %.loopexit857.i.i, !noalias !796

bb.hp:                                            ; preds = %bb.hn, %.split.i.i
  %4 = or i1 %.not552.i.i, %i.tg
  br i1 %4, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.vd = trunc nuw i32 %.sroa.0215.0.i.i to i1
  %i.ve = fcmp oeq float %.sroa.4135.1.i.i, %.sroa.5217.1.i.i
  %or.cond.i.i = select i1 %i.vd, i1 %i.ve, i1 false
  br i1 %or.cond.i.i, label %bb.hs, label %.critedge.i.i

bb.hr:                                            ; preds = %bb.hp
  %i.vf = icmp eq i32 %.sroa.0215.0.i.i, 0
  br i1 %i.vf, label %bb.hs, label %.critedge.i.i

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.vg = load i8, ptr %i.rb, align 1, !range !6, !alias.scope !789, !noalias !790, !noundef !3
  %i.vh = trunc nuw i8 %i.vg to i1
  br i1 %i.vh, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i", %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h75e8923f00694154E.exit655.i.i", %bb.hw, %bb.hs
  br i1 %i.uw, label %bb.ie, label %bb.if

bb.hu:                                            ; preds = %bb.hs
  br i1 %.not552.i.i, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  br i1 %.not565.i.i, label %.critedge.i.i, label %bb.hx

bb.hw:                                            ; preds = %bb.hu
  br i1 %.not565.i.i, label %bb.ht, label %.critedge.i.i

bb.hx:                                            ; preds = %bb.hv
  %i.vi = getelementptr i8, ptr %i.sk, i64 184
  %.sroa.0139.0.val.i.i = load ptr, ptr %i.vi, align 8, !noalias !796, !nonnull !3, !noundef !3
  %i.vj = getelementptr i8, ptr %i.sk, i64 192
  %.sroa.0139.0.val604.i.i = load i64, ptr %i.vj, align 8, !noalias !796, !noundef !3
  %i.vk = getelementptr i8, ptr %i.tj, i64 184
  %.sroa.0222.0.val.i.i = load ptr, ptr %i.vk, align 8, !noalias !796, !nonnull !3, !noundef !3
  %i.vl = getelementptr i8, ptr %i.tj, i64 192
  %.sroa.0222.0.val605.i.i = load i64, ptr %i.vl, align 8, !noalias !796, !noundef !3
  %i.vm = invoke noundef zeroext i1 @"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17he7e65f63d539ed2eE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0139.0.val.i.i, i64 noundef %.sroa.0139.0.val604.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0222.0.val.i.i, i64 noundef %.sroa.0222.0.val605.i.i)
          to label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h75e8923f00694154E.exit655.i.i" unwind label %.loopexit857.i.i, !noalias !796

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h75e8923f00694154E.exit655.i.i": ; preds = %bb.hx
  br i1 %i.vm, label %bb.ht, label %.critedge.i.i

bb.hy:                                            ; preds = %.critedge.i.i
  %i.vn = load ptr, ptr %i.ba, align 8, !noalias !791, !noundef !3
  %.not575.i.i = icmp eq ptr %i.vn, null
  br i1 %.not575.i.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !noalias !791
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hy
  %i.vo = load <2 x ptr>, ptr %i.rc, align 8, !noalias !791
  store <2 x ptr> %i.vo, ptr %i.rd, align 8, !noalias !791
  store ptr null, ptr %i.bm, align 8, !noalias !791
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !791
  %i.vp = invoke fastcc noundef align 8 dereferenceable(24) ptr @"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$10or_default17h0e66c2af8bf84a32E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.bm)
          to label %bb.ic unwind label %.loopexit857.i.i, !noalias !796 ; 4 uses

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !791
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16 ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !847, !noalias !796, !noundef !3 ; 3 uses
  %i.vs = load i64, ptr %i.vp, align 8, !range !11, !alias.scope !847, !noalias !796, !noundef !3
  %i.vt = icmp eq i64 %i.vr, %i.vs
  br i1 %i.vt, label %bb.id, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i"

bb.id:                                            ; preds = %bb.ic
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hec843fede6384983E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.vp)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i" unwind label %.loopexit857.i.i, !noalias !796

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hee073860126ff384E.exit.i.i": ; preds = %bb.id, %bb.ic
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vv = load ptr, ptr %i.vu, align 8, !alias.scope !847, !noalias !796, !nonnull !3, !noundef !3
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.vv, i64 %i.vr
  store i64 %i.sh, ptr %i.vw, align 8, !noalias !796
  %i.vx = add i64 %i.vr, 1
  store i64 %i.vx, ptr %i.vq, align 8, !alias.scope !847, !noalias !796
  br label %bb.ht

bb.ie:                                            ; preds = %bb.ht
  %i.vy = invoke { i32, float } @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17habb238a796152e44E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca, i64 noundef %i.sh, float noundef %.sroa.6174.0.i.i)
          to label %bb.if unwind label %.loopexit857.i.i, !noalias !796 ; 0 uses

bb.if:                                            ; preds = %bb.ie, %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !791
  invoke fastcc void @"_ZN4anki10deckconfig6update46_$LT$impl$u20$anki..collection..Collection$GT$30adjust_remaining_steps_in_deck17h801162d6011b48c2E"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %i.sh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(384) %.sroa.0120.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(384) %.sroa.0189.0.i.i, i32 noundef %i.ps)
          to label %bb.ig unwind label %.loopexit857.i.i, !noalias !796

bb.ig:                                            ; preds = %bb.if
  %i.vz = load i64, ptr %i.bl, align 8, !range !13, !noalias !791, !noundef !3 ; 2 uses
  %.not576.i.i = icmp eq i64 %i.vz, -9223372036854775773
  br i1 %.not576.i.i, label %bb.fx, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %.sroa.4465.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.31.8.copyload56 = load i64, ptr %.sroa.4465.0..sroa_idx.i.i, align 8, !noalias !800
  %.sroa.59.8..sroa.4465.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.59.8.copyload73 = load i64, ptr %.sroa.59.8..sroa.4465.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.65.8..sroa.4465.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.wa = load <2 x i64>, ptr %.sroa.65.8..sroa.4465.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !800
  %.sroa.68.sroa.29.0..sroa.68.8..sroa.4465.0..sroa_idx.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.68.sroa.29.0..sroa.68.8..sroa.4465.0..sroa_idx.i.i.sroa_idx.sroa_idx, i64 72, i1 false), !noalias !800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !791
  br label %bb.ii

bb.ii:                                            ; preds = %bb.im, %bb.ik, %bb.ih, %bb.hf
  %.sroa.31.sroa.0.sroa.29.sroa.0.9.in.in.in = phi i64 [ %.sroa.31.8.copyload56, %bb.ih ], [ %.sroa.4453.0.copyload.i.i, %bb.hf ], [ %i.we, %bb.ik ], [ %.sroa.31.sroa.0.sroa.29.sroa.0.8.in.in.in, %bb.im ] ; 3 uses
  %.sroa.59.9 = phi i64 [ %.sroa.59.8.copyload73, %bb.ih ], [ %.sroa.59.16.copyload85, %bb.hf ], [ %.sroa.59.16.copyload84, %bb.ik ], [ %.sroa.59.8, %bb.im ]
  %.sroa.045.9 = phi i64 [ %i.vz, %bb.ih ], [ %i.uj, %bb.hf ], [ %i.ty, %bb.ik ], [ %.sroa.045.8, %bb.im ]
  %.sroa.0292.7.i.i = phi i8 [ %.sroa.0292.5.i.i, %bb.ih ], [ %.sroa.0292.5.i.i, %bb.hf ], [ 0, %bb.ik ], [ %.sroa.0292.8.i.i, %bb.im ] ; 2 uses
  %i.wb = phi <2 x i64> [ %i.wa, %bb.ih ], [ %i.uk, %bb.hf ], [ %i.ua, %bb.ik ], [ %i.wf, %bb.im ] ; 2 uses
  %.sroa.31.sroa.34.9.in = lshr i64 %.sroa.31.sroa.0.sroa.29.sroa.0.9.in.in.in, 32
  %.sroa.31.sroa.34.9 = trunc nuw i64 %.sroa.31.sroa.34.9.in to i32
  %.sroa.31.sroa.0.sroa.0.9 = trunc i64 %.sroa.31.sroa.0.sroa.29.sroa.0.9.in.in.in to i8
  %.sroa.31.sroa.0.sroa.29.sroa.0.9.in.in = trunc i64 %.sroa.31.sroa.0.sroa.29.sroa.0.9.in.in.in to i32
  %.sroa.31.sroa.0.sroa.29.sroa.0.9.in = lshr i32 %.sroa.31.sroa.0.sroa.29.sroa.0.9.in.in, 8
  %.sroa.31.sroa.0.sroa.29.sroa.0.9 = trunc nuw i32 %.sroa.31.sroa.0.sroa.29.sroa.0.9.in to i24
  %i.wc = load i64, ptr %i.bw, align 8, !range !13, !alias.scope !848, !noalias !791, !noundef !3
  %i.wd = icmp eq i64 %i.wc, -9223372036854775773
  br i1 %i.wd, label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit658.i.i", label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bw)
          to label %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit658.i.i" unwind label %.loopexit.split-lp.i.i, !noalias !796

bb.ik:                                            ; preds = %bb.gx
  %i.we = ptrtoint ptr %i.tz to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !791
  br label %bb.ii

bb.il:                                            ; preds = %bb.gu, %bb.gq, %bb.gn
  %.sroa.31.sroa.0.sroa.29.sroa.0.8.in.in.in = phi i64 [ %.sroa.31.8.copyload55, %bb.gu ], [ %i.tu, %bb.gq ], [ %i.tp, %bb.gn ]
  %.sroa.59.8 = phi i64 [ %.sroa.59.8.copyload72, %bb.gu ], [ %.sroa.59.16.copyload83, %bb.gq ], [ %.sroa.59.16.copyload, %bb.gn ]
  %.sroa.045.8 = phi i64 [ %i.tv, %bb.gu ], [ %i.tr, %bb.gq ], [ %i.tm, %bb.gn ]
  %.sroa.0292.8.i.i = phi i8 [ 0, %bb.gu ], [ 1, %bb.gq ], [ 1, %bb.gn ] ; 2 uses
  %i.wf = phi <2 x i64> [ %i.tw, %bb.gu ], [ %i.tt, %bb.gq ], [ %i.to, %bb.gn ]
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.bt)
          to label %bb.im unwind label %.loopexit.split-lp858.i.i, !noalias !796

bb.im:                                            ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !791
  br label %bb.ii

"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit658.i.i": ; preds = %bb.ij, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !791
  %i.wg = trunc nuw i8 %.sroa.0292.7.i.i to i1
  br i1 %i.wg, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.io, %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit658.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8704.i.i)
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fcdda048c4e4913E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i" unwind label %bb.ew, !noalias !796

bb.io:                                            ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit658.i.i"
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.bx)
          to label %bb.in unwind label %.loopexit.split-lp864.i.i, !noalias !796

"_ZN4core3ptr77drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..decks..Deck$GT$$GT$17h448aeaf13a822c08E.exit660.i.i": ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !791
  %i.wh = extractelement <2 x i64> %i.wb, i64 0
  %i.wi = extractelement <2 x i64> %i.wb, i64 1
  br label %bb.fv

"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit.i.i": ; preds = %.thread791.i.i, %bb.fx
  %.sroa.0292.2794.i.i = phi i8 [ %.sroa.0292.5.i.i, %bb.fx ], [ %.sroa.0292.2793.i.i, %.thread791.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !791
  %i.wj = trunc nuw i8 %.sroa.0292.2794.i.i to i1
  br i1 %i.wj, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.iq, %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8704.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8704.i.i)
  %i.wk = load ptr, ptr %.sroa.7101.0..sroa_idx.i.i, align 8, !alias.scope !849, !noalias !843, !nonnull !3, !noundef !3
  %i.wl = load ptr, ptr %.sroa.599.0..sroa_idx.i.i, align 8, !alias.scope !849, !noalias !843, !nonnull !3, !noundef !3 ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.wk
  br i1 %i.wm, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0227591d4c3ab2aE.exit.thread.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0227591d4c3ab2aE.exit.i.i"

bb.iq:                                            ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit.i.i"
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.bx)
          to label %bb.ip unwind label %.loopexit863.i.i, !noalias !796

bb.ir:                                            ; preds = %"_ZN4core3ptr109drop_in_place$LT$core..result..Result$LT$$RF$anki_proto..decks..deck..Normal$C$anki..error..AnkiError$GT$$GT$17hf2dd017777a66235E.exit652.i.i"
  invoke fastcc void @"_ZN4core3ptr38drop_in_place$LT$anki..decks..Deck$GT$17hc3e578a44c150c50E"(ptr noalias noundef align 8 dereferenceable(192) %i.bx) #27
          to label %bb.fa unwind label %bb.ed, !noalias !796

"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i": ; preds = %bb.fv
  %.sroa.65.sroa.0.5 = trunc i64 %.sroa.65.sroa.29.5.in.in to i32 ; 2 uses
  %.sroa.65.sroa.29.5.in = lshr i64 %.sroa.65.sroa.29.5.in.in, 32
  %.sroa.65.sroa.29.5 = trunc nuw i64 %.sroa.65.sroa.29.5.in to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !791
  %i.wn = trunc nuw i8 %.sroa.0295.5.i.i to i1
  br i1 %i.wn, label %bb.is, label %"_ZN4core3ptr140drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$$GT$17h3daeab2aa9e8d962E.exit662.i.i"

"_ZN4core3ptr140drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..deckconfig..DeckConfigId$C$alloc..vec..Vec$LT$anki..decks..DeckId$GT$$GT$$GT$17h3daeab2aa9e8d962E.exit662.i.i": ; preds = %bb.is, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i"
  %.sroa.68.sroa.0.6 = phi i64 [ %.sroa.68.sroa.0.7, %bb.is ], [ %.sroa.68.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  %.sroa.31.sroa.0.sroa.29.sroa.0.6 = phi i24 [ %.sroa.31.sroa.0.sroa.29.sroa.0.7, %bb.is ], [ %.sroa.31.sroa.0.sroa.29.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  %.sroa.31.sroa.0.sroa.0.6 = phi i8 [ %.sroa.31.sroa.0.sroa.0.7, %bb.is ], [ %.sroa.31.sroa.0.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  %.sroa.31.sroa.34.6 = phi i32 [ %.sroa.31.sroa.34.7, %bb.is ], [ %.sroa.31.sroa.34.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  %.sroa.65.sroa.29.6 = phi i32 [ %.sroa.65.sroa.29.7, %bb.is ], [ %.sroa.65.sroa.29.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  %.sroa.65.sroa.0.6 = phi i32 [ %.sroa.65.sroa.0.7, %bb.is ], [ %.sroa.65.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  %.sroa.59.6 = phi i64 [ %.sroa.59.7, %bb.is ], [ %.sroa.59.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  %.sroa.045.6 = phi i64 [ %.sroa.045.7, %bb.is ], [ %.sroa.045.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !791
  br label %bb.iu

bb.is:                                            ; preds = %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i", %.critedge603.i.i
  %.sroa.68.sroa.0.7 = phi i64 [ %.sroa.68.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %.sroa.68.sroa.0.0.copyload333, %.critedge603.i.i ]
  %.sroa.31.sroa.0.sroa.29.sroa.0.7 = phi i24 [ %.sroa.31.sroa.0.sroa.29.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %.sroa.31.sroa.0.sroa.29.sroa.0.0.copyload298, %.critedge603.i.i ]
  %.sroa.31.sroa.0.sroa.0.7 = phi i8 [ %.sroa.31.sroa.0.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %.sroa.4379.0.copyload.i.i, %.critedge603.i.i ]
  %.sroa.31.sroa.34.7 = phi i32 [ %.sroa.31.sroa.34.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %.sroa.31.sroa.34.1.copyload237, %.critedge603.i.i ]
  %.sroa.65.sroa.29.7 = phi i32 [ %.sroa.65.sroa.29.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %.sroa.65.sroa.29.0.extract.trunc163, %.critedge603.i.i ]
  %.sroa.65.sroa.0.7 = phi i32 [ %.sroa.65.sroa.0.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %.sroa.65.sroa.0.0.extract.trunc123, %.critedge603.i.i ]
  %.sroa.59.7 = phi i64 [ %.sroa.59.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %.sroa.59.9.copyload82, %.critedge603.i.i ]
  %.sroa.045.7 = phi i64 [ %.sroa.045.5, %"_ZN4core3ptr90drop_in_place$LT$std..collections..hash..map..HashMap$LT$anki..decks..DeckId$C$f32$GT$$GT$17h3ef7e3a0ace16449E.exit649.i.i" ], [ %i.qj, %.critedge603.i.i ]
end_hunk_0
