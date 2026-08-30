Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/milli-dcad8bcf446596ae.milli.ae659b5d16487f95-cgu.0?download=true
inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5milli6search5facet6search20SearchForFacetValues13inner_execute17h2c76b6e347297e28E:bb.a
  store ptr %.sroa.0249.0.copyload, ptr %.sroa.4254.sroa.4.0..sroa.4254.0..sroa_idx.sroa_idx, align 8
  %.sroa.4254.sroa.5.0..sroa.4254.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4250.0.copyload, ptr %.sroa.4254.sroa.5.0..sroa.4254.0..sroa_idx.sroa_idx, align 8
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0249.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke fastcc void @_ZN5milli6search5facet6search20SearchForFacetValues38fetch_original_facets_using_normalized17h405ee4459052b1b4E(ptr noalias noundef align 8 captures(address) dereferenceable(320) %i.aq, ptr nonnull %i.bd, ptr nonnull %i.bf, i16 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0249.0.copyload, i64 noundef %.sroa.4250.0.copyload, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.sink.i, i64 noundef %.sroa.6.0.copyload.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable(40) %i.ba)
          to label %bb.fp unwind label %.loopexit.split-lp903.loopexit

bb.fp:                                            ; preds = %bb.fo
  %i.yl = load i64, ptr %i.aq, align 8, !range !1815, !noundef !10 ; 2 uses
  %.not355 = icmp eq i64 %i.yl, 97
  %i.ym = load i8, ptr %i.md, align 8             ; 2 uses
  br i1 %.not355, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %.sroa.3268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(311) %.sroa.3268.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(311) %.sroa.5265.0..sroa_idx, i64 311, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store i64 %i.yl, ptr %0, align 8
  %.sroa.2267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ym, ptr %.sroa.2267.0..sroa_idx, align 8
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.yn = trunc nuw i8 %i.ym to i1
  br i1 %i.yn, label %.loopexit1854, label %bb.dx

bb.fs:                                            ; preds = %bb.fq, %bb.fn
  call void @llvm.experimental.noalias.scope.decl(metadata !236238)
  call void @llvm.experimental.noalias.scope.decl(metadata !236241)
  call void @llvm.experimental.noalias.scope.decl(metadata !236244)
  call void @llvm.experimental.noalias.scope.decl(metadata !236247)
  %.val.i.i.i.i512 = load i64, ptr %i.lx, align 8, !range !180, !alias.scope !236250, !noundef !10 ; 2 uses
  %i.yo = icmp eq i64 %.val.i.i.i.i512, 0
  br i1 %i.yo, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.i.i.i514", label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.val1.i.i.i.i513 = load ptr, ptr %i.lz, align 8, !alias.scope !236250, !nonnull !10, !noundef !10
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i513, i64 noundef %.val.i.i.i.i512, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !236250
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.i.i.i514"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.i.i.i514": ; preds = %bb.ft, %bb.fs
  %.val.i.i.i515 = load i64, ptr %i.lq, align 8, !alias.scope !236251 ; 2 uses
  %i.yp = icmp eq i64 %.val.i.i.i515, 0
  br i1 %i.yp, label %"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$fst..inner_automaton..StartsWithState$LT$fst..inner_automaton..Str$GT$$GT$$GT$$GT$17hf5d4d74509e71611E.exit5.i.i.i517", label %bb.fu

bb.fu:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.i.i.i514"
  %.val2.i.i.i516 = load ptr, ptr %i.ls, align 8, !alias.scope !236251, !nonnull !10, !noundef !10
  %i.yq = mul nuw i64 %.val.i.i.i515, 96
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i516, i64 noundef %i.yq, i64 noundef range(i64 1, -9223372036854775807) 8) #101, !noalias !236251
  br label %"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$fst..inner_automaton..StartsWithState$LT$fst..inner_automaton..Str$GT$$GT$$GT$$GT$17hf5d4d74509e71611E.exit5.i.i.i517"

"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$fst..inner_automaton..StartsWithState$LT$fst..inner_automaton..Str$GT$$GT$$GT$$GT$17hf5d4d74509e71611E.exit5.i.i.i517": ; preds = %bb.fu, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.i.i.i514"
  call void @llvm.experimental.noalias.scope.decl(metadata !236252)
  %i.yr = load i64, ptr %i.ln, align 8, !range !1339, !alias.scope !236255, !noundef !10
  switch i64 %i.yr, label %"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit523" [
    i64 0, label %bb.fv
    i64 1, label %bb.fw
  ]

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.sink.split.i.i.i.i519": ; preds = %bb.fw, %bb.fv
  %.val.i1.sink.i.i.i.i520 = phi i64 [ %.val.i.i.i.i.i522, %bb.fv ], [ %.val.i1.i.i.i.i518, %bb.fw ]
  %.val1.i2.i.i.i.i521 = load ptr, ptr %i.mb, align 8, !alias.scope !236255, !nonnull !10, !noundef !10
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i.i521, i64 noundef %.val.i1.sink.i.i.i.i520, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !236255
  br label %"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit523"

bb.fv:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$fst..inner_automaton..StartsWithState$LT$fst..inner_automaton..Str$GT$$GT$$GT$$GT$17hf5d4d74509e71611E.exit5.i.i.i517"
  %i.ys = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.val.i.i.i.i.i522 = load i64, ptr %i.ys, align 8, !range !180, !alias.scope !236256, !noundef !10 ; 2 uses
  %i.yt = icmp eq i64 %.val.i.i.i.i.i522, 0
  br i1 %i.yt, label %"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit523", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.sink.split.i.i.i.i519"

bb.fw:                                            ; preds = %"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$fst..inner_automaton..StartsWithState$LT$fst..inner_automaton..Str$GT$$GT$$GT$$GT$17hf5d4d74509e71611E.exit5.i.i.i517"
  %i.yu = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.val.i1.i.i.i.i518 = load i64, ptr %i.yu, align 8, !range !180, !alias.scope !236259, !noundef !10 ; 2 uses
  %i.yv = icmp eq i64 %.val.i1.i.i.i.i518, 0
  br i1 %i.yv, label %"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit523", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.sink.split.i.i.i.i519"

"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit523": ; preds = %bb.fw, %bb.fv, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.sink.split.i.i.i.i519", %"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$fst..inner_automaton..StartsWithState$LT$fst..inner_automaton..Str$GT$$GT$$GT$$GT$17hf5d4d74509e71611E.exit5.i.i.i517"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.gc, %bb.ih, %bb.ig, %bb.if, %bb.il, %"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E.exit453", %"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit523", %bb.dg
  %i.yw = icmp eq i64 %.sroa.6.0.copyload.sink.i, 0
  br i1 %i.yw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit527", label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.sink.i, i64 noundef %.sroa.6.0.copyload.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !236262
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit527"

"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit": ; preds = %bb.fl, %bb.fk, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h201e75be5a060c70E.exit.sink.split.i.i.i.i", %"_ZN4core3ptr143drop_in_place$LT$alloc..vec..Vec$LT$fst..raw..StreamState$LT$fst..inner_automaton..StartsWithState$LT$fst..inner_automaton..Str$GT$$GT$$GT$$GT$17hf5d4d74509e71611E.exit5.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.fz

bb.fz:                                            ; preds = %bb.ii, %bb.im, %.thread862, %"_ZN4core3ptr116drop_in_place$LT$fst..inner_set..Stream$LT$fst..inner_automaton..StartsWith$LT$fst..inner_automaton..Str$GT$$GT$$GT$17h1f80b02c13361ae1E.exit"
  %i.yx = icmp eq i64 %.sroa.6.0.copyload.sink.i, 0
  br i1 %i.yx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit531", label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.sink.i, i64 noundef %.sroa.6.0.copyload.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #101, !noalias !236267
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h62cb4af1f55d882eE.exit531"

bb.gb:                                            ; preds = %bb.dn
  %i.yy = load i64, ptr %i.ay, align 8, !range !1815, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.yy, 97
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0188.0.copyload = load i64, ptr %i.yz, align 8 ; 3 uses
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.721.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4189.0..sroa_idx, i64 56, i1 false)
  br i1 %.not, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %.sroa.4203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %.sroa.4203.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(248) %.sroa.6197.0..sroa_idx, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.sroa.3202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3202.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.721.sroa.7, i64 56, i1 false)
  store i64 %i.yy, ptr %0, align 8
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0188.0.copyload, ptr %.sroa.2201.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.sroa.7)
  br label %bb.fx

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.330, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.721.sroa.7, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.sroa.7)
  %.not342 = icmp eq i64 %.sroa.0188.0.copyload, -9223372036854775807
  br i1 %.not342, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5199.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.330, i64 56, i1 false)
  store i64 %.sroa.0188.0.copyload, ptr %i.ai, align 8
  %i.za = invoke fastcc noundef zeroext i1 @"_ZN5milli6search5facet6search20SearchForFacetValues13inner_execute28_$u7b$$u7b$closure$u7d$$u7d$17hb2d8248e1a52006aE"(ptr %.sroa.10.0.i.i.sink.i, i64 %.sroa.6.0.copyload.i, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.ai)
          to label %bb.gg unwind label %bb.cv

bb.gf:                                            ; preds = %bb.gd, %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !236272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !236275
  %i.zb = load i64, ptr %i.ih, align 8, !alias.scope !236272, !noalias !236278, !noundef !10
  %i.zc = load i32, ptr %i.ij, align 8, !alias.scope !236272, !noalias !236278, !noundef !10
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17hd8c3391ad890b6d3E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, i64 %i.zb, i32 %i.zc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3882, i64 noundef 17)
          to label %.noexc534 unwind label %bb.cv

.noexc534:                                        ; preds = %bb.gf
  %i.zd = load i32, ptr %i.f, align 8, !range !22789, !noalias !236275, !noundef !10 ; 2 uses
  %.not.i532 = icmp eq i32 %i.zd, 5
  %i.ze = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.zf = load i8, ptr %i.ze, align 4, !noalias !236275 ; 2 uses
  br i1 %.not.i532, label %bb.gj, label %bb.gi

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br i1 %i.za, label %bb.gh, label %bb.gf

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !236279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !236282
  %i.zg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i535 = load ptr, ptr %i.zg, align 8, !alias.scope !236279, !noalias !236284, !nonnull !10, !align !1504, !noundef !10
  %i.zh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val1.i = load i64, ptr %i.zh, align 8, !alias.scope !236279, !noalias !236284, !noundef !10
  store ptr %3, ptr %i.e, align 8, !noalias !236282
  %i.zi = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.val.i535, ptr %i.zi, align 8, !noalias !236282
  %i.zj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.val1.i, ptr %i.zj, align 8, !noalias !236282
  %i.zk = invoke fastcc noundef zeroext i1 @_ZN3fst3raw6FstRef12contains_key17h0dcc3225bbc39a0aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.sink.i, i64 noundef %.sroa.6.0.copyload.i)
          to label %bb.ii unwind label %bb.cv

bb.gi:                                            ; preds = %.noexc534
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %.sroa.617.0.copyload.i = load i8, ptr %.sroa.617.0..sroa_idx.i, align 1, !noalias !236275
  %.sroa.7.0..sroa_idx.i533 = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %.sroa.352.sroa.2.0..sroa.352.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.352.sroa.2.0..sroa.352.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.7.0..sroa_idx.i533, i64 18, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !236275
  store i32 %i.zd, ptr %i.ah, align 8
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i8 %i.zf, ptr %.sroa.251.0..sroa_idx, align 4
  %.sroa.352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 %.sroa.617.0.copyload.i, ptr %.sroa.352.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah)
          to label %bb.ih unwind label %bb.cv

bb.gj:                                            ; preds = %.noexc534
  %i.zl = trunc nuw i8 %i.zf to i1
  %i.zm = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.zn = load i8, ptr %i.zm, align 1, !noalias !236275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !236275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke void @_ZN5milli5index5Index22min_word_len_two_typos17hcbb85e4c19939c30E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(496) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bf)
          to label %bb.gk unwind label %bb.cv

bb.gk:                                            ; preds = %bb.gj
  %i.zo = load i32, ptr %i.aw, align 8, !range !22789, !noundef !10 ; 2 uses
  %.not345 = icmp eq i32 %i.zo, 5
  %i.zp = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.zq = load i8, ptr %i.zp, align 4             ; 2 uses
  br i1 %.not345, label %.invoke, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %.sroa.362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.362.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5224.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store i32 %i.zo, ptr %i.af, align 8
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i8 %i.zq, ptr %.sroa.261.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @"_ZN78_$LT$milli..error..Error$u20$as$u20$core..convert..From$LT$heed..Error$GT$$GT$4from17h86d263f3c2dd8736E"(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(address) dereferenceable(320) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af)
          to label %bb.ig unwind label %bb.cv

.invoke:                                          ; preds = %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.zr = zext i8 %i.zn to i64
  %6 = select i1 %i.zl, i64 %i.zr, i64 5
  %i.zs = icmp ult i64 %.sroa.6.0.copyload.i, %6
  %i.zt = zext i8 %i.zq to i64
  %i.zu = icmp ult i64 %.sroa.6.0.copyload.i, %i.zt
  %. = select i1 %i.zu, i8 1, i8 2
  %i.zv = select i1 %i.zs, i8 0, i8 %.
  invoke fastcc void @_ZN5milli6search9build_dfa17h047d1593c29a4079E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i.sink.i, i64 noundef %.sroa.6.0.copyload.i, i8 noundef %i.zv, i1 noundef zeroext true)
          to label %bb.gm unwind label %bb.cv

bb.gm:                                            ; preds = %.invoke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.zw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.val.i537 = load ptr, ptr %i.zw, align 8, !alias.scope !236285, !noalias !236288, !nonnull !10, !align !1504, !noundef !10
  %i.zx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.val7.i538 = load i64, ptr %i.zx, align 8, !alias.scope !236285, !noalias !236288, !noundef !10
  store ptr %3, ptr %i.ab, align 8
  %.sroa.10674.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.val.i537, ptr %.sroa.10674.120..sroa_idx, align 8
  %.sroa.11675.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.val7.i538, ptr %.sroa.11675.120..sroa_idx, align 8
  store i64 2, ptr %i.z, align 8
  store i64 2, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @"_ZN3fst3raw24StreamWithState$LT$A$GT$3new17h52819874e59acf97E"(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.ad, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aa, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.z, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.y)
          to label %bb.gn unwind label %bb.cv

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.av, ptr noundef nonnull align 8 dereferenceable(176) %i.ad, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.aac = getelementptr inbounds nuw i8, ptr %i.av, i64 128 ; 5 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.av, i64 144 ; 7 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.av, i64 136 ; 3 uses
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 75
  %.sroa.9.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aah = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.c, i64 73 ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aam = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.c, i64 74 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.av, i64 152 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.aas = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.aat = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.av, i64 120 ; 5 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.av, i64 112 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.aax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.aay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  br label %bb.go

bb.go:                                            ; preds = %bb.ie, %bb.gn
  call void @llvm.experimental.noalias.scope.decl(metadata !236291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aba = load i64, ptr %i.av, align 8, !range !2111, !alias.scope !236291, !noalias !236294, !noundef !10
  store i64 0, ptr %i.av, align 8, !alias.scope !236291, !noalias !236294
  %i.abb = trunc nuw i64 %i.aba to i1
  br i1 %i.abb, label %bb.gp, label %bb.gr

bb.gp:                                            ; preds = %bb.go
  %i.abc = load i64, ptr %i.zy, align 8, !range !1339, !alias.scope !236296, !noalias !236299, !noundef !10 ; 2 uses
  switch i64 %i.abc, label %default.unreachable [
    i64 0, label %_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.i591
    i64 1, label %bb.gq
    i64 2, label %_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.thread.i587
  ]

bb.gq:                                            ; preds = %bb.gp
  br label %_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.i591

_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.i591: ; preds = %bb.gp, %bb.gq
  %.sink.i.i592 = phi i64 [ -1, %bb.gq ], [ %i.abc, %bb.gp ]
  %i.abd = load i64, ptr %i.zz, align 8, !alias.scope !236296, !noalias !236299, !noundef !10
  %i.abe = sub i64 0, %i.abd
  %i.abf = icmp slt i64 %.sink.i.i592, %i.abe
  br i1 %i.abf, label %bb.gs, label %_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.thread.i587

bb.gr:                                            ; preds = %.noexc593, %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.abg = load i64, ptr %i.aad, align 8, !alias.scope !236291, !noalias !236294, !noundef !10 ; 2 uses
  %i.abh = icmp eq i64 %i.abg, 0
  br i1 %i.abh, label %.thread.i574, label %.lr.ph.i541

_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.thread.i587: ; preds = %bb.gp, %_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.i591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !236301
  %.val36.i588 = load i32, ptr %i.aab, align 8, !alias.scope !236291, !noalias !236294, !noundef !10
  store i32 %.val36.i588, ptr %i.d, align 4, !noalias !236301
  %i.abi = invoke noundef zeroext i1 @"_ZN82_$LT$levenshtein_automata..dfa..DFA$u20$as$u20$fst..inner_automaton..Automaton$GT$8is_match17h93917ec3f1672b89E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aaa, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %.noexc593 unwind label %.loopexit.split-lp893.loopexit

.noexc593:                                        ; preds = %_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.thread.i587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !236301
  br i1 %i.abi, label %.thread852, label %bb.gr

bb.gs:                                            ; preds = %_ZN3fst3raw5Bound11exceeded_by17hcbbe8d56da66b333E.exit.i591
  store i64 0, ptr %i.aad, align 8, !alias.scope !236291, !noalias !236294
  br label %.thread862.sink.split

.lr.ph.i541:                                      ; preds = %bb.gr, %.backedge.i573
  %i.abj = phi i64 [ %i.anh, %.backedge.i573 ], [ %i.abg, %bb.gr ] ; 2 uses
  %i.abk = add nsw i64 %i.abj, -1                 ; 5 uses
  store i64 %i.abk, ptr %i.aad, align 8, !alias.scope !236291, !noalias !236294
  %i.abl = load i64, ptr %i.aac, align 8, !range !180, !alias.scope !236291, !noalias !236294, !noundef !10
  %i.abm = icmp samesign ult i64 %i.abk, %i.abl
  call void @llvm.assume(i1 %i.abm)
  %i.abn = load ptr, ptr %i.aae, align 8, !alias.scope !236291, !noalias !236294, !nonnull !10, !noundef !10
  %i.abo = icmp samesign ult i64 %i.abj, 104811045873349727
  call void @llvm.assume(i1 %i.abo)
  %i.abp = getelementptr inbounds nuw [88 x i8], ptr %i.abn, i64 %i.abk ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %.sroa.05.i, ptr noundef nonnull align 8 dereferenceable(75) %i.abp, i64 75, i1 false), !noalias !236294
  %.sroa.422.0..sroa_idx.i542 = getelementptr inbounds nuw i8, ptr %i.abp, i64 75
  %.sroa.422.0.copyload.i = load i8, ptr %.sroa.422.0..sroa_idx.i542, align 1, !noalias !236294 ; 2 uses
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abp, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx.i, i64 12, i1 false), !noalias !236294
  %.not.i543 = icmp eq i8 %.sroa.422.0.copyload.i, 2
  br i1 %.not.i543, label %.thread.i574, label %bb.gt

bb.gt:                                            ; preds = %.lr.ph.i541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !236301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(75) %i.c, ptr noundef nonnull align 8 dereferenceable(75) %.sroa.05.i, i64 75, i1 false), !noalias !236301
  store i8 %.sroa.422.0.copyload.i, ptr %.sroa.7.0..sroa_idx6.i, align 1, !noalias !236301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.0..sroa_idx8.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.9.i, i64 12, i1 false), !noalias !236301
  %i.abq = load i64, ptr %i.c, align 8, !noalias !236301, !noundef !10 ; 6 uses
  %i.abr = load i64, ptr %i.aag, align 8, !noalias !236301, !noundef !10 ; 4 uses
  %.not26.i544 = icmp uge i64 %i.abq, %i.abr
  %.val37.i545 = load i32, ptr %i.aah, align 8, !noalias !236301
  %.not97.i = icmp eq i32 %.val37.i545, 0
  %or.cond205.i = select i1 %.not26.i544, i1 true, i1 %.not97.i
  br i1 %or.cond205.i, label %bb.hs, label %bb.gu

.thread.i574:                                     ; preds = %bb.gr, %.backedge.i573, %.lr.ph.i541
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %.thread862.sink.split

bb.gu:                                            ; preds = %bb.gt
  %i.abs = load i8, ptr %i.aai, align 8, !range !2595, !alias.scope !236302, !noalias !236305, !noundef !10
  switch i8 %i.abs, label %default.unreachable [
    i8 0, label %bb.gv
    i8 1, label %bb.gw
    i8 2, label %bb.gx
    i8 3, label %bb.hd
  ], !prof !92426

bb.gv:                                            ; preds = %bb.gu
  %i.abt = icmp eq i64 %i.abq, 0
  br i1 %i.abt, label %bb.he, label %.invoke1667, !prof !119

bb.gw:                                            ; preds = %bb.gu
  %i.abu = icmp eq i64 %i.abq, 0
  br i1 %i.abu, label %bb.hi, label %.invoke1667, !prof !119

bb.gx:                                            ; preds = %bb.gu
  %i.abv = load i8, ptr %i.aaj, align 1, !alias.scope !236302, !noalias !236305, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !236307)
  %i.abw = load i64, ptr %i.aak, align 8, !alias.scope !236307, !noalias !236301, !noundef !10 ; 3 uses
  %i.abx = and i8 %i.abv, 63
  %i.aby = icmp eq i8 %i.abx, 0                   ; 2 uses
  %..i.i546 = sext i1 %i.aby to i64               ; 2 uses
  %i.abz = load i64, ptr %i.aal, align 8, !alias.scope !236307, !noalias !236301, !noundef !10
  %i.aca = icmp ugt i64 %i.abz, 1
  %i.acb = icmp ugt i64 %i.abr, 32
  %or.cond.i.i547 = and i1 %i.acb, %i.aca         ; 2 uses
  %.sroa.01.0.neg.i.i548 = select i1 %or.cond.i.i547, i64 -256, i64 0 ; 2 uses
  %reass.sub = sub i64 %i.abw, %i.abq
  %i.acc = add i64 %reass.sub, -2
  %i.acd = add i64 %i.acc, %..i.i546
  %i.ace = add i64 %i.acd, %.sroa.01.0.neg.i.i548 ; 3 uses
  %i.acf = load i64, ptr %i.aam, align 8, !alias.scope !236307, !noalias !236301, !noundef !10 ; 10 uses
  %i.acg = icmp ult i64 %i.ace, %i.acf
  br i1 %i.acg, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i550, label %.invoke1671

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i550: ; preds = %bb.gx
  %i.ach = load ptr, ptr %i.aaf, align 8, !alias.scope !236307, !noalias !236301, !nonnull !10, !align !1504, !noundef !10 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 %i.ace
  %i.acj = load i8, ptr %i.aci, align 1, !noalias !236310, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !236311)
  %i.ack = load i8, ptr %i.aan, align 2, !alias.scope !236311, !noalias !236301, !noundef !10 ; 3 uses
  %i.acl = and i8 %i.ack, 15                      ; 10 uses
  %i.acm = zext nneg i8 %i.acl to i64             ; 4 uses
  %i.acn = icmp eq i8 %i.acl, 0
  br i1 %i.acn, label %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i550..loopexit.i563_crit_edge, label %bb.gy

_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i550..loopexit.i563_crit_edge: ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i550
  %.pre1367 = lshr exact i8 %i.ack, 4
  br label %.loopexit.i563

bb.gy:                                            ; preds = %_ZN3fst3raw4node13StateAnyTrans5input17hd1feacb4c6a942c4E.exit.i550
  %i.aco = select i1 %or.cond.i.i547, i64 -257, i64 -1
  %i.acp = lshr i8 %i.ack, 4                      ; 9 uses
end_hunk_0
