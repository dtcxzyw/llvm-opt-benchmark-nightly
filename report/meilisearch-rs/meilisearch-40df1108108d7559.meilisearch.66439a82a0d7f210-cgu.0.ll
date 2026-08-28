Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-40df1108108d7559.meilisearch.66439a82a0d7f210-cgu.0?download=true
inline.NumInlined: 140831
inline.NumDeleted: 44699
loop-unroll.NumCompletelyUnrolled: 243
loop-unroll.NumRuntimeUnrolled: 906
loop-unroll.NumUnrolled: 1163
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hede0c5546665bf96E":bb.a
  invoke fastcc void @_ZN23permissive_json_pointer17visit_leaf_values17hc8af4a1d64fd49b1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bn, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fp, i64 noundef %i.fr, ptr noalias noundef align 8 dereferenceable(8) %i.e)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !34059

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34062
  store ptr %i.f, ptr %i.d, align 8, !noalias !34062
  invoke fastcc void @_ZN23permissive_json_pointer17visit_leaf_values17h3031883aa8f12c3aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bo, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fp, i64 noundef %i.fr, ptr noalias noundef align 8 dereferenceable(8) %i.d)
          to label %bb.aj unwind label %bb.bi, !noalias !34059

bb.ai:                                            ; preds = %bb.aw, %bb.ag
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !34059, !nonnull !12, !noundef !12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !34059, !noundef !12
  %i.fw = load i64, ptr %i.q, align 8, !noalias !34059, !noundef !12
  %i.fx = load double, ptr %i.r, align 8, !noalias !34059, !noundef !12
  invoke fastcc void @_ZN11meilisearch6search9federated7perform20build_federation_hit17h0424caa3ae6cb5f7E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ez, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ft, i64 noundef %i.fv, i64 noundef %i.fw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fi, i64 noundef %i.fj, double noundef %i.fx, ptr noalias noundef align 8 dereferenceable(72) %i.bo)
          to label %bb.ay unwind label %bb.ax, !noalias !34059

bb.aj:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34059
  %i.fy = load ptr, ptr %i.bl, align 8, !noalias !34059, !nonnull !12, !noundef !12 ; 2 uses
  %i.fz = load i64, ptr %i.bm, align 8, !noalias !34059, !noundef !12 ; 2 uses
  %.idx = mul nuw nsw i64 %i.fz, 24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx
  %.not9.not.not.i.not.i.i.i.i.i.i.i.i246 = icmp eq i64 %i.fz, 0
  br i1 %.not9.not.not.i.not.i.i.i.i.i.i.i.i246, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hf0ad49d3bc441957E.exit.i.i.i.i.i.i.i.i", label %.lr.ph

bb.ak:                                            ; preds = %.lr.ph
  %i.gb = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  %.not9.not.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gb, %i.ga
  br i1 %.not9.not.not.i.not.i.i.i.i.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hf0ad49d3bc441957E.exit.i.i.i.i.i.i.i.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj, %bb.ak
  %i.gc = phi ptr [ %i.gb, %bb.ak ], [ %i.fy, %bb.aj ] ; 2 uses
  %i.gd = call fastcc noundef align 8 dereferenceable_or_null(24) ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17hb780588054e6256bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gc), !noalias !34067
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.ao

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hf0ad49d3bc441957E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ak, %bb.aj
  %.sroa.044.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !34059
  %.sroa.445.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !34059, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.546.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !noalias !34059 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34070)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !34073
  %i.ge = icmp ult i64 %.sroa.546.0.copyload.i.i.i.i.i.i.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.445.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.546.0.copyload.i.i.i.i.i.i.i.i
  store ptr %.sroa.445.0.copyload.i.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !34075, !noalias !34073
  store ptr %.sroa.445.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !34075, !noalias !34073
  store i64 %.sroa.044.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !34075, !noalias !34073
  store ptr %i.gf, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !34075, !noalias !34073
  call void @llvm.experimental.noalias.scope.decl(metadata !34079)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !34082, !noalias !34083, !noundef !12
  %i.gi = icmp eq i64 %i.gh, 0
  %i.gj = add nuw nsw i64 %.sroa.546.0.copyload.i.i.i.i.i.i.i.i, 1
  %i.gk = lshr i64 %i.gj, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.gi, i64 %.sroa.546.0.copyload.i.i.i.i.i.i.i.i, i64 %i.gk ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !34085, !noalias !34088, !noundef !12
  %i.gn = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.gm
  br i1 %i.gn, label %bb.al, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1144b0122cb4f93E.exit.i.i.i.i.i.i.i.i.i.i", !prof !10

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gt, ptr %i.bq, align 8, !alias.scope !34090, !noalias !34093
  call fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$meilisearch..search..FacetValue$GT$$GT$17h08fadd0ab1b3745aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #86, !noalias !34101
  br label %.body.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hf0ad49d3bc441957E.exit.i.i.i.i.i.i.i.i"
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.gq = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5c704cc60bc2e382E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ex, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gp, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1144b0122cb4f93E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.an, !noalias !34083 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1144b0122cb4f93E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.al, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hf0ad49d3bc441957E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !34103
  call void @llvm.experimental.noalias.scope.decl(metadata !34090)
  %i.gr = load ptr, ptr %i.bp, align 8, !alias.scope !34090, !noalias !34093, !nonnull !12, !noundef !12 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !34090, !noalias !34093 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gr
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr62drop_in_place$LT$$u5b$meilisearch..search..FacetValue$u5d$$GT$17hb661b15ebb30a9daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1144b0122cb4f93E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he339f17ad035e32dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gs = phi ptr [ %i.gt, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he339f17ad035e32dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1144b0122cb4f93E.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i64 24, i1 false), !noalias !34105
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 3 uses
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h38b8e2b15baafc2bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he339f17ad035e32dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %.body.i.i.i.i.i.i.i.i.i.i

"_ZN4core3ptr62drop_in_place$LT$$u5b$meilisearch..search..FacetValue$u5d$$GT$17hb661b15ebb30a9daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he339f17ad035e32dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hd1144b0122cb4f93E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !34106)
  call void @llvm.experimental.noalias.scope.decl(metadata !34109)
  %i.gu = load i64, ptr %i.br, align 8, !alias.scope !34112, !noalias !34093, !noundef !12 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.aw, label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$$u5b$meilisearch..search..FacetValue$u5d$$GT$17hb661b15ebb30a9daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.gw = load ptr, ptr %i.b, align 8, !alias.scope !34112, !noalias !34093, !nonnull !12, !noundef !12
  %i.gx = mul nuw i64 %i.gu, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !34113
  br label %bb.aw

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17he339f17ad035e32dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34104
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.gr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr62drop_in_place$LT$$u5b$meilisearch..search..FacetValue$u5d$$GT$17hb661b15ebb30a9daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr420drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$meilisearch..search..FacetValue$GT$$C$$LT$hashbrown..set..HashSet$LT$meilisearch..search..FacetValue$C$std..hash..random..RandomState$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$meilisearch..search..FacetValue$GT$$GT$..extend$LT$alloc..vec..Vec$LT$meilisearch..search..FacetValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf0dce10525e78304E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.c) #86, !noalias !34114
  br label %.body.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %.lr.ph
  %i.gz = load i32, ptr %i.t, align 4, !noalias !34059, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34115)
  %i.ha = lshr i32 %i.gz, 16
  %i.hb = trunc nuw i32 %i.ha to i16              ; 3 uses
  %i.hc = trunc i32 %i.gz to i16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !alias.scope !34115, !noalias !34059, !nonnull !12, !noundef !12 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !34115, !noalias !34059, !noundef !12 ; 8 uses
  switch i64 %i.hg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"
    i64 1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  ]

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ao
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ao ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.hh = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.hg
  call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 7 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 24
  %.val20.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.hj, align 8, !alias.scope !34118, !noalias !34123, !noundef !12 ; 2 uses
  %i.hk = icmp eq i16 %.val20.i.i.i.i.i.i.i.i.i.i.i, %i.hb
  br i1 %i.hk, label %bb.aq, label %bb.ap

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.025.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hg, %bb.ao ] ; 2 uses
  %.sroa.05.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ao ] ; 2 uses
  %i.hl = lshr i64 %.sroa.01.025.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hm = add i64 %i.hl, %.sroa.05.024.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.hn = icmp ult i64 %i.hm, %i.hg
  call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.he, i64 %i.hm
  %i.hp = getelementptr i8, ptr %i.ho, i64 24
  %.val22.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.hp, align 8, !alias.scope !34118, !noalias !34123, !noundef !12
  %i.hq = icmp ugt i16 %.val22.i.i.i.i.i.i.i.i.i.i.i, %i.hb
  %i.hr = select i1 %i.hq, i64 %.sroa.05.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hm, !unpredictable !12 ; 2 uses
  %i.hs = sub nuw i64 %.sroa.01.025.i.i.i.i.i.i.i.i.i.i.i, %i.hl ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, 1
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.hu = icmp ult i16 %.val20.i.i.i.i.i.i.i.i.i.i.i, %i.hb
  %i.hv = zext i1 %i.hu to i64
  %i.hw = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, %i.hv
  %i.hx = icmp ule i64 %i.hw, %i.hg
  call void @llvm.assume(i1 %i.hx)
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.hy = invoke noundef zeroext i1 @_ZN7roaring6bitmap9container9Container6remove17he5c60f0c5278434cE(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hi, i16 noundef %i.hc)
          to label %.noexc34.i.i.i.i.i.i.i.i unwind label %bb.bi, !noalias !34059

.noexc34.i.i.i.i.i.i.i.i:                         ; preds = %bb.aq
  br i1 %i.hy, label %bb.ar, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"

bb.ar:                                            ; preds = %.noexc34.i.i.i.i.i.i.i.i
  %i.hz = load i64, ptr %i.hi, align 8, !range !186, !noalias !34125, !noundef !12 ; 3 uses
  %i.ia = icmp eq i64 %i.hz, -9223372036854775808
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !34125, !noundef !12 ; 2 uses
  br i1 %i.ia, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.id = icmp ult i64 %i.ic, 4611686018427387904
  call void @llvm.assume(i1 %i.id)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.03.0.in.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ic, 0
  br i1 %.sroa.03.0.in.i.i.i.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb0b05612b2a64925E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb0b05612b2a64925E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !34126)
  %i.ie = icmp ult i64 %i.hg, 288230376151711744
  call void @llvm.assume(i1 %i.ie)
  %.sroa.4.0..sroa_idx.i33.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i33.i.i.i.i.i.i.i.i, align 8, !noalias !34129 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.ig = xor i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ih = add nsw i64 %i.hg, %i.ig
  %i.ii = shl nsw i64 %i.ih, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hi, ptr nonnull align 8 %i.if, i64 %i.ii, i1 false), !noalias !34130
  %i.ij = add nsw i64 %i.hg, -1
  store i64 %i.ij, ptr %i.hf, align 8, !alias.scope !34132, !noalias !34133
  switch i64 %i.hz, label %bb.au [
    i64 -9223372036854775808, label %bb.av
    i64 0, label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"
  ]

bb.au:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb0b05612b2a64925E.exit.i.i.i.i.i.i.i.i.i"
  %i.ik = shl nuw i64 %i.hz, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %i.ik, i64 noundef range(i64 1, -9223372036854775807) 2) #79, !noalias !34125
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"

bb.av:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb0b05612b2a64925E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 8192, i64 noundef 8) #79, !noalias !34125
  br label %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"

bb.aw:                                            ; preds = %bb.am, %"_ZN4core3ptr62drop_in_place$LT$$u5b$meilisearch..search..FacetValue$u5d$$GT$17hb661b15ebb30a9daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !34073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !34059
  br label %bb.ai

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.bi, %bb.bd, %.thread.i.i.i.i.i.i.i.i, %bb.ax, %bb.an, %.body.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.il, %bb.ax ], [ %i.ja, %bb.bi ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i, %bb.bd ], [ %i.gy, %bb.an ], [ %i.go, %.body.i.i.i.i.i.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch..search..SearchHit$GT$17h80df1e4e8fb2a2acE"(ptr noalias noundef align 8 dereferenceable(336) %i.o) #86
          to label %bb.z unwind label %bb.be, !noalias !34059

bb.ax:                                            ; preds = %bb.ai
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !34059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !34059
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #79, !noalias !34134
  %i.im = call noundef dereferenceable_or_null(11) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 11, i64 noundef range(i64 1, 17) 1) #79, !noalias !34134 ; 3 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9505) #85
          to label %.noexc37.i.i.i.i.i.i.i.i unwind label %bb.bd, !noalias !34059

.noexc37.i.i.i.i.i.i.i.i:                         ; preds = %bb.az
  unreachable

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.bc, %bb.ba
  %lpad.thr_comm.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.im, ptr noundef nonnull align 1 dereferenceable(11) @1993, i64 11, i1 false), !noalias !34142
  store i64 11, ptr %i.k, align 8, !noalias !34059
  store ptr %i.im, ptr %.sroa.448.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !34059
  store i64 11, ptr %.sroa.549.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !34059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !34059
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h3a435058f46e570fE"(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.g, ptr noalias noundef align 8 dereferenceable(72) %i.bn, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.j)
          to label %bb.bb unwind label %.thread.i.i.i.i.i.i.i.i, !noalias !34059

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.bs, i64 72, i1 false), !noalias !34059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !34059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !34059
  %i.io = load i64, ptr %i.l, align 8, !range !994, !alias.scope !34143, !noalias !34059, !noundef !12
  %i.ip = icmp eq i64 %i.io, -9223372036854775803
  br i1 %i.ip, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h5d1e726ef6ecafb7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.l)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i" unwind label %.thread.i.i.i.i.i.i.i.i, !noalias !34059

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !34059
  %.sroa.010.i.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !34059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i3.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, i64 104, i1 false), !noalias !34146
  %.sroa.010.i.sroa.5.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.010.i.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34059
  %.sroa.010.i.sroa.6.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !noalias !34059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.010.i.sroa.7.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.010.i.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 208, i1 false), !noalias !34053
  %i.iq = load double, ptr %i.r, align 8, !noalias !34059, !noundef !12
  %i.ir = load i64, ptr %i.q, align 8, !noalias !34059, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.i.sroa.7.336..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !34053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !34059
  br label %bb.bn

bb.bd:                                            ; preds = %bb.az
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h5d1e726ef6ecafb7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j) #86
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.be, !noalias !34059

bb.be:                                            ; preds = %bb.bj, %bb.bd, %.body.i.i.i.i.i.i.i.i, %bb.ac, %bb.z
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !34059
  unreachable

"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.av, %bb.au, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hb0b05612b2a64925E.exit.i.i.i.i.i.i.i.i.i", %bb.at, %.noexc34.i.i.i.i.i.i.i.i, %bb.ap, %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !34147)
  %.val4.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !34147, !noalias !34059, !nonnull !12, !noundef !12 ; 2 uses
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !34147, !noalias !34059, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34150)
  %i.it = icmp eq i64 %.val5.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.it, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8af02dee52fc9969E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i39.i.i.i.i.i.i.i.i

.lr.ph.i.i.i39.i.i.i.i.i.i.i.i:                   ; preds = %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i", %"_ZN4core3ptr52drop_in_place$LT$meilisearch..search..FacetValue$GT$17h9722c21976bf9375E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iv, %"_ZN4core3ptr52drop_in_place$LT$meilisearch..search..FacetValue$GT$17h9722c21976bf9375E.exit.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.iv = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iu, align 8, !range !186, !alias.scope !34150, !noalias !34153, !noundef !12 ; 2 uses
  %switch.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf, label %"_ZN4core3ptr52drop_in_place$LT$meilisearch..search..FacetValue$GT$17h9722c21976bf9375E.exit.i.i.i.i.i.i.i.i.i.i.i"

bb.bf:                                            ; preds = %.lr.ph.i.i.i39.i.i.i.i.i.i.i.i
  %i.iw = getelementptr i8, ptr %i.iu, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.iw, align 8, !alias.scope !34150, !noalias !34153, !nonnull !12, !noundef !12
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #79, !noalias !34154
  br label %"_ZN4core3ptr52drop_in_place$LT$meilisearch..search..FacetValue$GT$17h9722c21976bf9375E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr52drop_in_place$LT$meilisearch..search..FacetValue$GT$17h9722c21976bf9375E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bf, %.lr.ph.i.i.i39.i.i.i.i.i.i.i.i
  %i.ix = icmp eq i64 %i.iv, %.val5.i.i.i.i.i.i.i.i.i
  br i1 %i.ix, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8af02dee52fc9969E.exit.i.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i39.i.i.i.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8af02dee52fc9969E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr52drop_in_place$LT$meilisearch..search..FacetValue$GT$17h9722c21976bf9375E.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6remove17hd2d87063d916f3d7E.exit.i.i.i.i.i.i.i.i"
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !34147, !noalias !34059 ; 2 uses
  %i.iy = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.iy, label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch..search..FacetValue$GT$$GT$17hc7e6e51c7522490eE.exit.i.i.i.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8af02dee52fc9969E.exit.i.i.i.i.i.i.i.i.i"
  %i.iz = mul nuw i64 %.val.i.i.i.i.i.i.i.i.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i.i, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 8) #79, !noalias !34153
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch..search..FacetValue$GT$$GT$17hc7e6e51c7522490eE.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch..search..FacetValue$GT$$GT$17hc7e6e51c7522490eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bg, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8af02dee52fc9969E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !34059
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$meilisearch..search..SearchHit$GT$17h80df1e4e8fb2a2acE"(ptr noalias noundef align 8 dereferenceable(336) %i.o)
          to label %bb.bh unwind label %bb.aa, !noalias !34059

bb.bh:                                            ; preds = %bb.bl, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch..search..FacetValue$GT$$GT$17hc7e6e51c7522490eE.exit.i.i.i.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 3, %bb.bl ], [ 2, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch..search..FacetValue$GT$$GT$17hc7e6e51c7522490eE.exit.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !34059
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$milli..score_details..ScoreDetails$GT$$GT$17hc8bc34ae8ba1e901E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.p)
          to label %bb.bn unwind label %.body.i.i.i.i.i.i.i, !noalias !34053

bb.bi:                                            ; preds = %bb.aq, %.noexc.i.i.i.i.i.i.i.i, %bb.ah
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch..search..FacetValue$GT$$GT$17hc7e6e51c7522490eE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #86, !noalias !34059
  br label %.body.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.ae
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$milli..progress..ScopedProgressStep$LT$milli..search..steps..SearchStep$GT$$GT$17he4acaa03134e886bE"(ptr %i.fd, i8 %i.fe) #86
          to label %bb.z unwind label %bb.be, !noalias !34059

bb.bk:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i3.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false), !noalias !34146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !34059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !34059
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$milli..progress..ScopedProgressStep$LT$milli..search..steps..SearchStep$GT$$GT$17he4acaa03134e886bE"(ptr %i.fd, i8 %i.fe)
          to label %bb.bl unwind label %bb.aa, !noalias !34059

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i.i.i)
  br label %bb.bh

bb.bm:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !34053
  invoke fastcc void @"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$milli..score_details..ScoreDetails$GT$$GT$17hc8bc34ae8ba1e901E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.y)
          to label %bb.bt unwind label %bb.bs, !noalias !34051

bb.bn:                                            ; preds = %bb.bh, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i"
  %.sroa.11.0.i.i.i.i.i.i.i = phi i64 [ %i.ir, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i" ], [ undef, %bb.bh ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i.i = phi double [ %i.iq, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i" ], [ undef, %bb.bh ] ; 2 uses
  %.sroa.835.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.010.i.sroa.6.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i" ], [ undef, %bb.bh ]
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.010.i.sroa.5.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i" ], [ undef, %bb.bh ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.010.i.sroa.0.0.copyload.i.i.i.i.i.i.i, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h20e5270ec9a248fcE.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.bh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !34053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !34053
  switch i64 %.sroa.0.1.i.i.i.i.i.i.i, label %bb.bp [
    i64 3, label %bb.bo
    i64 2, label %bb.bq
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.jc = load i64, ptr %i.q, align 8, !noalias !34053, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i3.i.i.i.i.i, i64 104, i1 false), !noalias !34047
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i3.i.i.i.i.i, i64 104, i1 false), !noalias !34047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.14.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.010.i.sroa.7.i.i.i.i.i.i.i, i64 232, i1 false), !noalias !34047
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
end_hunk_0
begin_hunk_1_@"_ZN12async_openai6client6stream28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec61db9753c6a282E":bb.a
  %i.tt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

"_ZN4core3ptr53drop_in_place$LT$eventsource_stream..event..Event$GT$17h965775f9ed0a4d63E.exit59": ; preds = %bb.hw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e5649c0df70927aE.exit7.i56"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.ij

bb.ia:                                            ; preds = %bb.h
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  br label %bb.ih

bb.ib:                                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.tv = load i64, ptr %i.bl, align 8, !range !191, !noundef !12
  %.not34 = icmp eq i64 %i.tv, -9223372036854775807
  br i1 %.not34, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bj, ptr noundef nonnull align 8 dereferenceable(192) %i.bl, i64 192, i1 false)
  %i.tw = load i64, ptr %i.bj, align 8, !range !186, !alias.scope !183681, !noundef !12
  %.not.i.i60 = icmp eq i64 %i.tw, -9223372036854775808
  br i1 %.not.i.i60, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$async_openai..types..chat..CreateChatCompletionStreamResponse$GT$17hf48abb70a68edd84E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.bl)
  br label %"_ZN4core3ptr188drop_in_place$LT$tokio..sync..mpsc..error..SendError$LT$core..result..Result$LT$async_openai..types..chat..CreateChatCompletionStreamResponse$C$async_openai..error..OpenAIError$GT$$GT$$GT$17ha0882be01fced893E.exit62"

bb.ie:                                            ; preds = %bb.ic
  %i.tx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  invoke void @"_ZN4core3ptr53drop_in_place$LT$async_openai..error..OpenAIError$GT$17h6907d657160d169aE"(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.tx)
          to label %"_ZN4core3ptr188drop_in_place$LT$tokio..sync..mpsc..error..SendError$LT$core..result..Result$LT$async_openai..types..chat..CreateChatCompletionStreamResponse$C$async_openai..error..OpenAIError$GT$$GT$$GT$17ha0882be01fced893E.exit62" unwind label %bb.ig

bb.if:                                            ; preds = %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.ii

bb.ig:                                            ; preds = %bb.ie
  %i.ty = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ih

"_ZN4core3ptr188drop_in_place$LT$tokio..sync..mpsc..error..SendError$LT$core..result..Result$LT$async_openai..types..chat..CreateChatCompletionStreamResponse$C$async_openai..error..OpenAIError$GT$$GT$$GT$17ha0882be01fced893E.exit62": ; preds = %bb.id, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.ij

bb.ih:                                            ; preds = %bb.ig, %bb.ia
  %.pn35 = phi { ptr, i32 } [ %i.ty, %bb.ig ], [ %i.tu, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.is

bb.ii:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$eventsource_stream..event..Event$GT$17h965775f9ed0a4d63E.exit", %bb.if, %bb.i, %bb.a
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %0, ptr %i.tz, align 8
  br label %bb.d

bb.ij:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$eventsource_stream..event..Event$GT$17h965775f9ed0a4d63E.exit59", %"_ZN4core3ptr188drop_in_place$LT$tokio..sync..mpsc..error..SendError$LT$core..result..Result$LT$async_openai..types..chat..CreateChatCompletionStreamResponse$C$async_openai..error..OpenAIError$GT$$GT$$GT$17ha0882be01fced893E.exit62", %bb.g
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i8 1, ptr %i.ua, align 8, !alias.scope !183686
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$reqwest_eventsource..event_source..EventSource$GT$17hdf2799dd49a08666E"(ptr noalias noundef align 8 dereferenceable(424) %0)
          to label %bb.il unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.ub = landingpad { ptr, i32 }
          cleanup
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 424
  invoke fastcc void @"_ZN4core3ptr198drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$core..result..Result$LT$async_openai..types..chat..CreateChatCompletionStreamResponse$C$async_openai..error..OpenAIError$GT$$GT$$GT$17h52c832cb8a0466f1E"(ptr noalias noundef align 8 dereferenceable(8) %i.uc) #86
          to label %.body65 unwind label %bb.hz

bb.il:                                            ; preds = %bb.ij
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183689)
  call void @llvm.experimental.noalias.scope.decl(metadata !183692)
  %.val.i.i63 = load ptr, ptr %i.ud, align 8, !alias.scope !183695, !nonnull !12, !noundef !12 ; 6 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 456
  %i.uf = atomicrmw sub ptr %i.ue, i64 1 acq_rel, align 8, !noalias !183695
  %i.ug = icmp eq i64 %i.uf, 1
  br i1 %i.ug, label %bb.im, label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h617a39725bec048fE.exit.i.i"

bb.im:                                            ; preds = %bb.il
  %i.uh = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 128
  %i.ui = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 136
  %i.uj = atomicrmw add ptr %i.ui, i64 1 acquire, align 8, !noalias !183695
  %i.uk = invoke fastcc noundef nonnull ptr @"_ZN5tokio4sync4mpsc4list11Tx$LT$T$GT$10find_block17hcc49aafa4c26beb0E"(ptr noundef nonnull align 8 %i.uh, i64 noundef %i.uj)
          to label %.noexc.i.i unwind label %bb.in, !noalias !183695

.noexc.i.i:                                       ; preds = %bb.im
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 6160
  %i.um = atomicrmw or ptr %i.ul, i64 8589934592 release, align 8, !noalias !183695 ; 0 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 256
  invoke void @_ZN5tokio4sync4task12atomic_waker11AtomicWaker4wake17h980b6260b7cb34d7E(ptr noundef nonnull align 8 %i.un)
          to label %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h617a39725bec048fE.exit.i.i" unwind label %bb.in, !noalias !183695

bb.in:                                            ; preds = %.noexc.i.i, %bb.im
  %i.uo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.up = atomicrmw sub ptr %.val.i.i63, i64 1 release, align 8, !noalias !183696
  %i.uq = icmp eq i64 %i.up, 1
  br i1 %i.uq, label %bb.io, label %.body65

bb.io:                                            ; preds = %bb.in
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0269f5ec6f8ec80bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ud)
          to label %.body65 unwind label %bb.iq

"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h617a39725bec048fE.exit.i.i": ; preds = %.noexc.i.i, %bb.il
  %i.ur = atomicrmw sub ptr %.val.i.i63, i64 1 release, align 8, !noalias !183701
  %i.us = icmp eq i64 %i.ur, 1
  br i1 %i.us, label %bb.ip, label %common.ret

bb.ip:                                            ; preds = %"_ZN82_$LT$tokio..sync..mpsc..chan..Tx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h617a39725bec048fE.exit.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h0269f5ec6f8ec80bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ud)
          to label %common.ret unwind label %bb.ir

bb.iq:                                            ; preds = %bb.io
  %i.ut = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !183695
  unreachable

.body65:                                          ; preds = %bb.ir, %bb.io, %bb.in, %bb.it, %bb.ik
  %.pn40 = phi { ptr, i32 } [ %.pn38, %bb.it ], [ %i.ub, %bb.ik ], [ %i.uu, %bb.ir ], [ %i.uo, %bb.io ], [ %i.uo, %bb.in ]
  store i8 2, ptr %i.bn, align 8
  resume { ptr, i32 } %.pn40

bb.ir:                                            ; preds = %bb.ip
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body65

bb.is:                                            ; preds = %bb.hy, %bb.ih, %bb.e
  %.pn38 = phi { ptr, i32 } [ %i.bp, %bb.e ], [ %.pn35, %bb.ih ], [ %.pn29.pn, %bb.hy ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$reqwest_eventsource..event_source..EventSource$GT$17hdf2799dd49a08666E"(ptr noalias noundef align 8 dereferenceable(424) %0) #86
          to label %bb.it unwind label %bb.hz

bb.it:                                            ; preds = %bb.is
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 424
  invoke fastcc void @"_ZN4core3ptr198drop_in_place$LT$tokio..sync..mpsc..unbounded..UnboundedSender$LT$core..result..Result$LT$async_openai..types..chat..CreateChatCompletionStreamResponse$C$async_openai..error..OpenAIError$GT$$GT$$GT$17h52c832cb8a0466f1E"(ptr noalias noundef align 8 dereferenceable(8) %i.uv) #86
          to label %.body65 unwind label %bb.hz
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$12remove_entry17h45ae719137bade24E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef range(i64 3, 44) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 7 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.l, %.backedge.i ], [ 0, %bb.a ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i = load i64, ptr %i.j, align 8, !noalias !183706, !noundef !12
  %.not.i.i.i.i.i = icmp eq i64 %.val9.i, %3
  br i1 %.not.i.i.i.i.i, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i", label %.backedge.i

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i": ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.g, align 8, !noalias !183706, !nonnull !12, !align !12036, !noundef !12
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %.val8.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %3), !alias.scope !183711, !noalias !183706
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.k = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.k, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = icmp eq ptr %i.i, %i.e
  br i1 %i.m, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h946c908cb205640bE.exit.i.i.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183715)
  %i.n = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp samesign ult i64 %i.h, %i.d
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h862859b523c0e6aeE.exit", label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3905) #85, !noalias !183715
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h862859b523c0e6aeE.exit": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.h ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !noalias !183715, !nonnull !12, !align !12036, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !183715, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.t = xor i64 %i.h, -1                         ; 2 uses
  %i.u = add nsw i64 %i.d, %i.t
  %i.v = shl nsw i64 %i.u, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.s, i64 %i.v, i1 false), !noalias !183715
  %i.w = add nsw i64 %i.d, -1
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !183715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183718)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !183718, !noalias !183721, !noundef !12 ; 5 uses
  %i.z = icmp ult i64 %i.y, 88686269585142076
  tail call void @llvm.assume(i1 %i.z)
  %.not.i10 = icmp samesign ult i64 %i.h, %i.y
  br i1 %.not.i10, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hcbcfacf0b40135acE.exit", label %bb.d, !prof !17

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h862859b523c0e6aeE.exit"
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove13assert_failed17headf60d52b65606fE"(i64 noundef %i.h, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3906) #85, !noalias !183723
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hcbcfacf0b40135acE.exit": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17h862859b523c0e6aeE.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !183718, !noalias !183721, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.h ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.ac, i64 104, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = add nsw i64 %i.y, %i.t
  %i.af = mul nsw i64 %i.ae, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ad, i64 %i.af, i1 false), !noalias !183723
  %i.ag = add nsw i64 %i.y, -1
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !183718, !noalias !183721
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hcbcfacf0b40135acE.exit"
  %.sink24 = phi i64 [ 8, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hcbcfacf0b40135acE.exit" ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hcbcfacf0b40135acE.exit" ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink24
  store i64 %.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12clap_builder4util8flat_map20FlatMap$LT$K$C$V$GT$6insert17hfa5ee87dcab663b8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 5 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"
  %.sroa.8.024 = phi i64 [ %i.h, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ 0, %bb.a ] ; 4 uses
  %.sroa.012.023 = phi ptr [ %i.g, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge" ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.012.023, i64 16 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.024, 1
  %i.i = getelementptr i8, ptr %.sroa.012.023, i64 8
  %.val9 = load i64, ptr %i.i, align 8, !noundef !12
  %.not.i.i = icmp eq i64 %.val9, %3
  br i1 %.not.i.i, label %.split, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

.split:                                           ; preds = %.lr.ph
  %.val = load ptr, ptr %.sroa.012.023, align 8, !nonnull !12, !noundef !12
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %2, i64 %3)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.j, label %bb.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge"

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge": ; preds = %.split, %.lr.ph
  %i.k = icmp eq ptr %i.g, %i.e
  br i1 %i.k, label %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge", label %.lr.ph

"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge": ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit.backedge", %bb.a
  %i.l = load i64, ptr %1, align 8, !range !64, !alias.scope !183724, !noalias !183729, !noundef !12
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h90488284a11b96fbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3907)
          to label %._crit_edge unwind label %bb.g, !noalias !183734

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !183724, !noalias !183729
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge"
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %"_ZN67_$LT$clap_builder..util..id..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17ha175c02ac7e49b23E.exit._crit_edge" ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %2, ptr %i.o, align 8, !noalias !183735
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %3, ptr %i.p, align 8, !noalias !183736
  %i.q = add i64 %i.d, 1
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !183724, !noalias !183729
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !183737, !noalias !183740, !noundef !12 ; 3 uses
  %i.u = load i64, ptr %i.r, align 8, !range !64, !alias.scope !183737, !noalias !183740, !noundef !12
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h227c91f2cdf747efE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3908)
          to label %bb.i unwind label %bb.e, !noalias !183742

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h67f2d35b1303ae94E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #86
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !183742
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h67f2d35b1303ae94E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %4) #86
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87, !noalias !183734
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !183737, !noalias !183740, !nonnull !12, !noundef !12
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  %i.ad = add i64 %i.t, 1
  store i64 %i.ad, ptr %i.s, align 8, !alias.scope !183737, !noalias !183740
  store i64 2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  ret void

bb.k:                                             ; preds = %.split
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !12 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.8.024, %i.af
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !12, !noundef !12
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.ai, i64 %.sroa.8.024 ; 8 uses
  %i.ak = load <2 x i64>, ptr %4, align 8, !alias.scope !183743, !noalias !12
  %i.al = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !183747, !noalias !12
  store <2 x i64> %i.ak, ptr %i.aj, align 1, !alias.scope !183747, !noalias !12
  store <2 x i64> %i.al, ptr %4, align 8, !alias.scope !183743, !noalias !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !alias.scope !183750, !noalias !12
  %i.ap = load <2 x i64>, ptr %i.am, align 1, !alias.scope !183753, !noalias !12
  store <2 x i64> %i.ao, ptr %i.am, align 1, !alias.scope !183753, !noalias !12
  store <2 x i64> %i.ap, ptr %i.an, align 8, !alias.scope !183750, !noalias !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !alias.scope !183756, !noalias !12
  %i.at = load <2 x i64>, ptr %i.aq, align 1, !alias.scope !183759, !noalias !12
  store <2 x i64> %i.as, ptr %i.aq, align 1, !alias.scope !183759, !noalias !12
  store <2 x i64> %i.at, ptr %i.ar, align 8, !alias.scope !183756, !noalias !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !alias.scope !183762, !noalias !12
  %i.ax = load <2 x i64>, ptr %i.au, align 1, !alias.scope !183765, !noalias !12
  store <2 x i64> %i.aw, ptr %i.au, align 1, !alias.scope !183765, !noalias !12
  store <2 x i64> %i.ax, ptr %i.av, align 8, !alias.scope !183762, !noalias !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.az, align 8, !alias.scope !183768, !noalias !12
  %i.bb = load <2 x i64>, ptr %i.ay, align 1, !alias.scope !183771, !noalias !12
  store <2 x i64> %i.ba, ptr %i.ay, align 1, !alias.scope !183771, !noalias !12
  store <2 x i64> %i.bb, ptr %i.az, align 8, !alias.scope !183768, !noalias !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !alias.scope !183774, !noalias !12
  %i.bf = load <2 x i64>, ptr %i.bc, align 1, !alias.scope !183777, !noalias !12
  store <2 x i64> %i.be, ptr %i.bc, align 1, !alias.scope !183777, !noalias !12
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !alias.scope !183774, !noalias !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183782)
  %.sroa.0.0.copyload.i.i.i.12.i.i = load i64, ptr %i.bg, align 1, !alias.scope !183780, !noalias !183782
  %.sroa.02.0.copyload.i.i.i.12.i.i = load i64, ptr %i.bh, align 8, !alias.scope !183782, !noalias !183780
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i, ptr %i.bg, align 1, !alias.scope !183780, !noalias !183782
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i, ptr %i.bh, align 8, !alias.scope !183782, !noalias !183780
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 104, i1 false)
  br label %bb.j

bb.m:                                             ; preds = %bb.k
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.8.024, i64 noundef %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3910) #85
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$clap_builder..parser..matches..matched_arg..MatchedArg$GT$17h67f2d35b1303ae94E"(ptr noalias noundef align 8 dereferenceable(104) %4) #86
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #87
  unreachable

.body:                                            ; preds = %bb.g, %bb.e, %bb.o
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.y, %bb.g ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN12clap_builder5error14Error$LT$F$GT$12invalid_utf817h2a78d8126262503dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 46 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_1
begin_hunk_2_@"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h807849db75189ca0E":bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !427989, !nonnull !12, !noundef !12 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !427989, !noundef !12 ; 11 uses
  switch i64 %i.aq, label %.lr.ph.i.i.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.az, %.lr.ph.i.i.i ] ; 3 uses
  %i.ar = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.aq
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i16, ptr %i.as, align 2, !alias.scope !427990, !noalias !427993, !noundef !12 ; 2 uses
  %i.at = icmp eq i16 %.val20.i.i.i, %i.d
  br i1 %i.at, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i ], [ %i.aq, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.au = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.av = add i64 %i.au, %.sroa.05.024.i.i.i      ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.aq
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.av
  %.val22.i.i.i = load i16, ptr %i.ax, align 2, !alias.scope !427990, !noalias !427993, !noundef !12
  %i.ay = icmp ugt i16 %.val22.i.i.i, %i.d
  %i.az = select i1 %i.ay, i64 %.sroa.05.024.i.i.i, i64 %i.av, !unpredictable !12 ; 2 uses
  %i.ba = sub nuw i64 %.sroa.01.025.i.i.i, %i.au  ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = icmp ult i16 %.val20.i.i.i, %i.d
  %i.bd = zext i1 %i.bc to i64
  %i.be = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ule i64 %i.be, %i.aq
  tail call void @llvm.assume(i1 %i.bf)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.be, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %i.bg = icmp ult i64 %i.aq, 4611686018427387904
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = load i64, ptr %i.am, align 8, !range !64, !alias.scope !427995, !noalias !427998, !noundef !12
  %i.bi = icmp eq i64 %i.aq, %i.bh
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8816)
  %.pre.i.i = load ptr, ptr %i.an, align 8, !alias.scope !427995, !noalias !427998
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = phi ptr [ %.pre.i.i, %bb.l ], [ %i.ao, %bb.k ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bj, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bl = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.aq
  br i1 %i.bl, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hb9300292937d655fE.exit.i.i"

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bn = sub nuw nsw i64 %i.aq, %.sroa.4.0.i.ph.i.i
  %i.bo = shl nuw nsw i64 %i.bn, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bm, ptr nonnull align 2 %i.bk, i64 %i.bo, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hb9300292937d655fE.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hb9300292937d655fE.exit.i.i": ; preds = %bb.n, %bb.m
  store i16 %i.d, ptr %i.bk, align 2
  %i.bp = add nuw nsw i64 %i.aq, 1
  store i64 %i.bp, ptr %i.ap, align 8, !alias.scope !427995, !noalias !427998
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.o:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428000)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !428003, !nonnull !12, !noundef !12 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 24 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !428003, !noundef !12 ; 16 uses
  switch i64 %i.bt, label %.lr.ph.i.i.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h0824a7c09248d8eaE.exit.i.i"
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.sroa.01.026.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %i.bt, %bb.o ] ; 2 uses
  %.sroa.05.025.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ 0, %bb.o ] ; 2 uses
  %i.bu = lshr i64 %.sroa.01.026.i.i.i.i, 1       ; 2 uses
  %i.bv = add i64 %i.bu, %.sroa.05.025.i.i.i.i    ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bv
  %i.by = getelementptr i8, ptr %i.bx, i64 2
  %.val22.i.i.i.i = load i16, ptr %i.by, align 2, !alias.scope !428004, !noalias !428009, !noundef !12
  %.not.i.i.i.i = icmp ult i16 %.val22.i.i.i.i, %i.d
  %i.bz = select i1 %.not.i.i.i.i, i64 %i.bv, i64 %.sroa.05.025.i.i.i.i, !unpredictable !12 ; 2 uses
  %i.ca = sub nuw i64 %.sroa.01.026.i.i.i.i, %i.bu ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h0824a7c09248d8eaE.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h0824a7c09248d8eaE.exit.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.o
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.o ], [ %i.bz, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.cc = icmp ult i64 %.sroa.05.0.lcssa.i.i.i.i, %i.bt
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.05.0.lcssa.i.i.i.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 2
  %.val20.i.i.i.i = load i16, ptr %i.ce, align 2, !alias.scope !428004, !noalias !428009, !noundef !12
  %i.cf = icmp ult i16 %.val20.i.i.i.i, %i.d
  %i.cg = zext i1 %i.cf to i64
  %i.ch = add nuw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.cg ; 8 uses
  %i.ci = icmp ule i64 %i.ch, %i.bt
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr [4 x i8], ptr %i.br, i64 %i.ch ; 7 uses
  %i.ck = sub nuw i64 %i.bt, %i.ch                ; 2 uses
  %.not9.i.i = icmp eq i64 %i.bt, %i.ch
  br i1 %.not9.i.i, label %.thread23.i.i, label %bb.p

bb.p:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h0824a7c09248d8eaE.exit.i.i"
  %i.cl = load i16, ptr %i.cj, align 2, !noalias !428003, !noundef !12 ; 3 uses
  %.not10.i.i = icmp ugt i16 %i.cl, %i.d
  br i1 %.not10.i.i, label %bb.r, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

bb.q:                                             ; preds = %bb.r
  %.not11.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not11.i.i, label %.thread.i.i, label %.thread23.i.i

bb.r:                                             ; preds = %bb.p
  %i.cm = add nuw i16 %i.d, 1
  %i.cn = icmp eq i16 %i.cl, %i.cm
  br i1 %i.cn, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.co = add i16 %i.cl, -1
  store i16 %i.co, ptr %i.cj, align 2, !noalias !428003
  %.not12.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not12.i.i, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread, label %bb.x

.thread23.i.i:                                    ; preds = %bb.q, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h0824a7c09248d8eaE.exit.i.i"
  %i.cp = phi i64 [ %i.ck, %bb.q ], [ 0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15partition_point17h0824a7c09248d8eaE.exit.i.i" ]
  %i.cq = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !noalias !428003, !noundef !12
  %i.cs = add i16 %i.cr, 1
  %i.ct = icmp eq i16 %i.cs, %i.d
  br i1 %i.ct, label %bb.w, label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread23.i.i, %bb.q, %bb.o
  %.sroa.4.0.i.i1922.i.i = phi i64 [ %i.ch, %.thread23.i.i ], [ 0, %bb.q ], [ %i.bt, %bb.o ] ; 2 uses
  %i.cu = phi i64 [ %i.cp, %.thread23.i.i ], [ %i.ck, %bb.q ], [ %i.bt, %bb.o ]
  %i.cv = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load i64, ptr %i.am, align 8, !range !64, !alias.scope !428012, !noundef !12
  %i.cx = icmp eq i64 %i.bt, %i.cw
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread.i.i
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8d5e9699404ee268E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8818)
  %.pre.i1.i = load ptr, ptr %i.bq, align 8, !alias.scope !428012
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i.i
  %i.cy = phi ptr [ %.pre.i1.i, %bb.t ], [ %i.br, %.thread.i.i ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.sroa.4.0.i.i1922.i.i ; 4 uses
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.i1922.i.i, %i.bt
  br i1 %i.da, label %bb.v, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17ha2bda32ef3262de1E.exit.i.i"

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.db, ptr nonnull align 2 %i.cz, i64 %i.dc, i1 false)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17ha2bda32ef3262de1E.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17ha2bda32ef3262de1E.exit.i.i": ; preds = %bb.v, %bb.u
  store i16 %i.d, ptr %i.cz, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  store i16 %i.d, ptr %i.dd, align 2
  %i.de = add nuw nsw i64 %i.bt, 1
  store i64 %i.de, ptr %i.bs, align 8, !alias.scope !428012
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.w:                                             ; preds = %.thread23.i.i
  store i16 %i.d, ptr %i.cq, align 2, !noalias !428003
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

bb.x:                                             ; preds = %bb.s
  %i.df = getelementptr i8, ptr %i.cj, i64 -2     ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !noalias !428003, !noundef !12
  %i.dh = add i16 %i.d, -1
  %i.di = icmp eq i16 %i.dg, %i.dh
  br i1 %i.di, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hd977720a98a937dbE.exit.i.i", label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hd977720a98a937dbE.exit.i.i": ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !428003, !noundef !12
  store i16 %i.dk, ptr %i.df, align 2, !noalias !428003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428015)
  %i.dl = icmp ult i64 %i.bt, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.dn = xor i64 %i.ch, -1
  %i.do = add nsw i64 %i.bt, %i.dn
  %i.dp = shl nsw i64 %i.do, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cj, ptr nonnull align 2 %i.dm, i64 %i.dp, i1 false), !noalias !428018
  %i.dq = add nsw i64 %i.bt, -1
  store i64 %i.dq, ptr %i.bs, align 8, !alias.scope !428018
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit: ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428019)
  %.mask = and i32 %1, 65535
  %i.dr = zext nneg i32 %.mask to i64             ; 2 uses
  %i.ds = and i64 %i.dr, 63                       ; 2 uses
  %i.dt = lshr i64 %i.dr, 6
  %i.du = load ptr, ptr %i.am, align 8, !alias.scope !428022, !nonnull !12, !align !4496, !noundef !12
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !428022, !noundef !12 ; 2 uses
  %i.dx = shl nuw i64 1, %i.ds
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = xor i64 %i.dy, %i.dw
  %i.ea = lshr i64 %i.dz, %i.ds                   ; 2 uses
  store i64 %i.dy, ptr %i.dv, align 8, !noalias !428022
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !428022, !noundef !12
  %i.ed = add i64 %i.ea, %i.ec
  store i64 %i.ed, ptr %i.eb, align 8, !alias.scope !428022
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22, label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6remove17hd977720a98a937dbE.exit.i.i", %bb.x, %bb.s, %bb.w, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17ha2bda32ef3262de1E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hb9300292937d655fE.exit.i.i", %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit
  %i.ee = tail call noundef zeroext i1 @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hbe63faf056884c5aE(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.01.0) ; 0 uses
  br label %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22

_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread22: ; preds = %bb.p, %._crit_edge.i.i.i, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit, %_ZN7roaring6bitmap5store5Store6insert17h106184e890affaf8E.exit.thread
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN7roaring6bitmap8inherent48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$6insert17h94eafc541148e8c7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = trunc nuw i32 %i.a to i16                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !12 ; 11 uses
  switch i64 %i.f, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %.lr.ph.i.i ] ; 4 uses
  %i.g = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.05.0.lcssa.i.i
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %.val20.i.i = load i16, ptr %i.i, align 8, !alias.scope !428023, !noalias !428028, !noundef !12 ; 2 uses
  %i.j = icmp eq i16 %.val20.i.i, %i.b
  br i1 %i.j, label %bb.h, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add i64 %i.k, %.sroa.05.024.i.i          ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.f
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val22.i.i = load i16, ptr %i.o, align 8, !alias.scope !428023, !noalias !428028, !noundef !12
  %i.p = icmp ugt i16 %.val22.i.i, %i.b
  %i.q = select i1 %i.p, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !12 ; 2 uses
  %i.r = sub nuw i64 %.sroa.01.025.i.i, %i.k      ; 2 uses
  %i.s = icmp ugt i64 %i.r, 1
  br i1 %i.s, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = icmp ult i16 %.val20.i.i, %i.b
  %i.u = zext i1 %i.t to i64
  %i.v = add nuw i64 %.sroa.05.0.lcssa.i.i, %i.u  ; 2 uses
  %i.w = icmp ule i64 %i.v, %i.f
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.i.i.ph = phi i64 [ %i.v, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  %i.x = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %0, align 8, !range !64, !alias.scope !428030, !noalias !428033, !noundef !12
  %i.z = icmp eq i64 %i.f, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2bed7fedf0cce30dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8822)
          to label %._crit_edge unwind label %bb.f, !noalias !428033

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !alias.scope !428030, !noalias !428033
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.aa = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %bb.c ]
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.sroa.4.0.i.i.ph ; 6 uses
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.f
  br i1 %i.ac, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hc65a8fb25582686fE.exit"

bb.f:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$roaring..bitmap..container..Container$GT$17h46045e97d2c1a56dE"(i64 0, ptr nonnull inttoptr (i64 2 to ptr)) #86, !noalias !428033
  resume { ptr, i32 } %i.ad

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = sub nuw nsw i64 %i.f, %.sroa.4.0.i.i.ph
  %i.ag = shl nuw nsw i64 %i.af, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ab, i64 %i.ag, i1 false), !noalias !428033
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hc65a8fb25582686fE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hc65a8fb25582686fE.exit": ; preds = %bb.e, %bb.g
  store i64 0, ptr %i.ab, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i16 %i.b, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ah = add nuw nsw i64 %i.f, 1
  store i64 %i.ah, ptr %i.e, align 8, !alias.scope !428030, !noalias !428033
  %.pn.pre = load ptr, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hc65a8fb25582686fE.exit"
  %.pn = phi ptr [ %.pn.pre, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hc65a8fb25582686fE.exit" ], [ %i.d, %._crit_edge.i.i ]
  %.sroa.4.0.i.i18 = phi i64 [ %.sroa.4.0.i.i.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10insert_mut17hc65a8fb25582686fE.exit" ], [ %.sroa.05.0.lcssa.i.i, %._crit_edge.i.i ]
  %.sroa.0.0 = getelementptr inbounds nuw [32 x i8], ptr %.pn, i64 %.sroa.4.0.i.i18 ; 7 uses
  %i.ai = trunc i32 %1 to i16                     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428035)
  %i.aj = load i64, ptr %.sroa.0.0, align 8, !range !186, !alias.scope !428035, !noundef !12 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -9223372036854775808
  br i1 %i.ak, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428038)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !428041, !nonnull !12, !noundef !12 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !428041, !noundef !12 ; 11 uses
  switch i64 %i.ao, label %.lr.ph.i.i.i [
    i64 0, label %bb.k
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %.sroa.05.0.lcssa.i.i.i
  %.val20.i.i.i = load i16, ptr %i.aq, align 2, !alias.scope !428042, !noalias !428045, !noundef !12 ; 2 uses
  %i.ar = icmp eq i16 %.val20.i.i.i, %i.ai
  br i1 %i.ar, label %_ZN7roaring6bitmap9container9Container6insert17h10bfdf8dd2dc937aE.exit, label %bb.j

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %i.as = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.at = add i64 %i.as, %.sroa.05.024.i.i.i      ; 3 uses
  %i.au = icmp ult i64 %i.at, %i.ao
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.at
  %.val22.i.i.i = load i16, ptr %i.av, align 2, !alias.scope !428042, !noalias !428045, !noundef !12
  %i.aw = icmp ugt i16 %.val22.i.i.i, %i.ai
  %i.ax = select i1 %i.aw, i64 %.sroa.05.024.i.i.i, i64 %i.at, !unpredictable !12 ; 2 uses
  %i.ay = sub nuw i64 %.sroa.01.025.i.i.i, %i.as  ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 1
  br i1 %i.az, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ba = icmp ult i16 %.val20.i.i.i, %i.ai
  %i.bb = zext i1 %i.ba to i64
  %i.bc = add nuw i64 %.sroa.05.0.lcssa.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ule i64 %i.bc, %i.ao
  tail call void @llvm.assume(i1 %i.bd)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.bc, %bb.j ], [ %i.ao, %bb.i ] ; 3 uses
  %i.be = icmp ult i64 %i.ao, 4611686018427387904
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp eq i64 %i.ao, %i.aj
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1ce9a538e264a91eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8814)
  %.pre.i.i = load ptr, ptr %i.al, align 8, !alias.scope !428047, !noalias !428050
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre.i.i, %bb.l ], [ %i.am, %bb.k ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %.sroa.4.0.i.ph.i.i ; 3 uses
  %i.bi = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, %i.ao
  br i1 %i.bi, label %bb.n, label %_ZN7roaring6bitmap5store11array_store10ArrayStore6insert17h0248df32d451d9b2E.exit.thread.i
end_hunk_2
