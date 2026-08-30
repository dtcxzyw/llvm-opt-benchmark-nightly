Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 214
loop-unroll.NumRuntimeUnrolled: 566
loop-unroll.NumUnrolled: 784
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6b767040f5eb224cE":bb.a
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !208191, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !208191
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"

bb.j:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !1313, !noalias !208191, !noundef !14
  %i.ar = trunc nuw i8 %i.aq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !208191
  br i1 %i.ar, label %bb.k, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.j, align 8, !alias.scope !208195, !noalias !208196, !nonnull !14, !align !240, !noundef !14
  %i.at = tail call fastcc { i64, ptr } @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17hd00ecc51c8de0221E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as), !noalias !208197 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i": ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.av, %bb.k ], [ %i.ao, %bb.i ], [ null, %bb.j ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.au, %bb.k ], [ 1, %bb.i ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !208178
  %i.aw = load i8, ptr %i.z, align 8, !range !1313, !alias.scope !208178, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !208178
  store i64 24, ptr %i.l, align 8, !noalias !208178
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !208178
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit"

bb.m:                                             ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !208178, !noundef !14
  %i.bb = add i8 %i.ba, 1
  store i8 %i.bb, ptr %i.az, align 1, !alias.scope !208178
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h42fc347728cfe1c0E.exit.i.i"
  %i.bc = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17hf374ac2f2ec1a968E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.p unwind label %bb.o       ; 8 uses

bb.o:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..result..Result$LT$meilisearch_types..tasks..network..NetworkTopologyStats$C$serde_json..error..Error$GT$$GT$17h7c97a54232d7c2dcE"(i64 %.sroa.0.0.i.i.i, ptr %.sroa.3.0.i.i.i) #81
          to label %common.resume.i.i unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.be = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  %.not44.i.i = icmp eq ptr %i.bc, null           ; 2 uses
  br i1 %i.be, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not44.i.i, label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit", label %.thread23.i.i, !prof !12002

bb.r:                                             ; preds = %bb.p
  br i1 %.not44.i.i, label %.thread23.i.i, label %bb.t

bb.s:                                             ; preds = %bb.at, %bb.o
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208201)
  %i.bg = load i64, ptr %i.bc, align 8, !range !3586, !alias.scope !208204, !noalias !208205, !noundef !14
  switch i64 %i.bg, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" [
    i64 0, label %bb.u
    i64 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !208204, !noalias !208205, !noundef !14 ; 2 uses
  %i.bi = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.bi, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !208204, !noalias !208205, !nonnull !14, !noundef !14
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #79, !noalias !208208
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i"

bb.v:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bk)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" unwind label %bb.w, !noalias !208205

common.resume.i.i:                                ; preds = %bb.ba, %bb.at, %bb.w, %bb.o
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bl, %bb.w ], [ %i.em, %bb.ba ], [ %i.ef, %bb.at ], [ %i.bd, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef 40, i64 noundef 8) #79, !noalias !208205
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i": ; preds = %bb.v, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.u, %bb.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bc, i64 noundef 40, i64 noundef 8) #79, !noalias !208205
  br label %.thread23.i.i

bb.x:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !208178, !noundef !14
  %i.bo = add i8 %i.bn, -1                        ; 2 uses
  store i8 %i.bo, ptr %i.bm, align 1, !alias.scope !208178
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.aq, label %bb.y, !prof !121

bb.y:                                             ; preds = %bb.x, %bb.f
  %i.bq = add i64 %i.t, 1
  store i64 %i.bq, ptr %i.n, align 8, !alias.scope !208209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !208178
  store ptr %0, ptr %i.h, align 8, !noalias !208212
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 1, ptr %i.br, align 8, !noalias !208212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !208215
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !208222
  %i.bs = load i8, ptr %i.g, align 8, !range !1313, !noalias !208215, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %._crit_edge.i.i.i, label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.z

._crit_edge.i.i.i:                                ; preds = %bb.ap, %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !208223, !nonnull !14, !align !240, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !208223
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.z:                                             ; preds = %bb.ap, %.lr.ph.i28.i.i
  %.sroa.01.069.i.i.i = phi i64 [ 0, %.lr.ph.i28.i.i ], [ %.sroa.01.1.i.i.i, %bb.ap ] ; 3 uses
  %.sroa.7.068.i.i.i = phi i64 [ undef, %.lr.ph.i28.i.i ], [ %.sroa.7.1.i.i.i, %bb.ap ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208226)
  call void @llvm.experimental.noalias.scope.decl(metadata !208227)
  %i.by = load i8, ptr %i.bu, align 1, !range !1313, !noalias !208223, !noundef !14
  %i.bz = trunc nuw i8 %i.by to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !208223
  br i1 %i.bz, label %bb.aa, label %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ca = load ptr, ptr %i.h, align 8, !alias.scope !208228, !noalias !208229, !nonnull !14, !align !240, !noundef !14 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208230)
  call void @llvm.experimental.noalias.scope.decl(metadata !208233)
  call void @llvm.experimental.noalias.scope.decl(metadata !208236)
  call void @llvm.experimental.noalias.scope.decl(metadata !208239)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 40 ; 8 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !208242, !noalias !208245, !noundef !14
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8, !alias.scope !208242, !noalias !208245
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 0, ptr %i.cf, align 8, !alias.scope !208250, !noalias !208245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !208251
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17he3f611958d61c442E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ca), !noalias !208245
  %i.cg = load i64, ptr %i.f, align 8, !range !802, !noalias !208251, !noundef !14
  %i.ch = icmp eq i64 %i.cg, 2
  %i.ci = load ptr, ptr %i.bv, align 8, !noalias !208251 ; 5 uses
  br i1 %i.ch, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !208251
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, 14
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i, label %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread36.i.i.i

_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread36.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208251
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208251
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i: ; preds = %bb.ab
  %i.cj = load i64, ptr %i.ci, align 1
  %i.ck = xor i64 %i.cj, 7165020730159427437
  %i.cl = getelementptr i8, ptr %i.ci, i64 6
  %i.cm = load i64, ptr %i.cl, align 1
  %i.cn = xor i64 %i.cm, 8319395793567310703
  %i.co = or i64 %i.ck, %i.cn
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !208251
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ad

_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i: ; preds = %bb.z
  %i.cr = trunc nuw i64 %.sroa.01.069.i.i.i to i1
  %1 = inttoptr i64 %.sroa.7.068.i.i.i to ptr
  %2 = select i1 %i.cr, ptr %1, ptr null
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.ad:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread36.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !208252)
  call void @llvm.experimental.noalias.scope.decl(metadata !208255)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !208258, !noalias !208261, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !208264, !noalias !208265 ; 2 uses
  %i.cu = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.cb, align 8, !alias.scope !208258, !noalias !208261, !nonnull !14, !align !584, !noundef !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %bb.af ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208266)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !208267, !noundef !14
  switch i8 %i.cy, label %bb.ag [
    i8 32, label %bb.af
    i8 10, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 58, label %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i
  ], !prof !3649

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.cz = add i64 %i.cw, 1                        ; 3 uses
  store i64 %i.cz, ptr %i.cc, align 8, !alias.scope !208268, !noalias !208265
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cz, %i.ct
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.ae

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.ad, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !208271
  store i64 3, ptr %i.d, align 8, !noalias !208271
  %i.da = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !208271
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !208271
  store i64 6, ptr %i.e, align 8, !noalias !208271
  %i.db = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !208271
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i: ; preds = %bb.ae
  %i.dc = add i64 %i.cw, 1
  store i64 %i.dc, ptr %i.cc, align 8, !alias.scope !208272
  %i.dd = call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17h54b10c2e8510c279E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ca) ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not21.i.i.i, label %bb.ap, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.ah:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.i.i.i
  %.not20.i.i.i = icmp eq i64 %.sroa.01.069.i.i.i, 0
  br i1 %.not20.i.i.i, label %bb.aj, label %bb.ai, !prof !15

bb.ai:                                            ; preds = %bb.ah
  %i.de = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17h70a3ad7d1a67bdeeE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1435, i64 noundef 14)
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !208275)
  call void @llvm.experimental.noalias.scope.decl(metadata !208278)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !208281, !noalias !208284, !noundef !14 ; 2 uses
  %.promoted.i.i.i.i23.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !208287, !noalias !208288 ; 2 uses
  %i.dh = icmp ult i64 %.promoted.i.i.i.i23.i.i.i, %i.dg
  br i1 %i.dh, label %.lr.ph.i.i.i.i25.i.i.i, label %.loopexit.i.i.i24.i.i.i

.lr.ph.i.i.i.i25.i.i.i:                           ; preds = %bb.aj
  %i.di = load ptr, ptr %i.cb, align 8, !alias.scope !208281, !noalias !208284, !nonnull !14, !align !584, !noundef !14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i25.i.i.i
  %i.dj = phi i64 [ %.promoted.i.i.i.i23.i.i.i, %.lr.ph.i.i.i.i25.i.i.i ], [ %i.dm, %bb.al ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !208289)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !208290, !noundef !14
  switch i8 %i.dl, label %bb.am [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 58, label %bb.ao
  ], !prof !3649

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.dm = add i64 %i.dj, 1                        ; 3 uses
  store i64 %i.dm, ptr %i.cc, align 8, !alias.scope !208291, !noalias !208288
  %exitcond.not.i.i.i.i26.i.i.i = icmp eq i64 %i.dm, %i.dg
  br i1 %exitcond.not.i.i.i.i26.i.i.i, label %.loopexit.i.i.i24.i.i.i, label %bb.ak

.loopexit.i.i.i24.i.i.i:                          ; preds = %bb.al, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !208294
  store i64 3, ptr %i.b, align 8, !noalias !208294
  %i.dn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !208294
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !208294
  store i64 6, ptr %i.c, align 8, !noalias !208294
  %i.do = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !208294
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit.i.i.i24.i.i.i
  %.sroa.0.0.i.ph.i.i.i.i.i = phi ptr [ %i.dn, %.loopexit.i.i.i24.i.i.i ], [ %i.do, %bb.am ]
  %i.dp = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i.i.i, 1
  br label %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.dq = add i64 %i.dj, 1
  store i64 %i.dq, ptr %i.cc, align 8, !alias.scope !208295
  %i.dr = call fastcc { i64, ptr } @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17hd00ecc51c8de0221E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ca)
  br label %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i

_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i: ; preds = %bb.ao, %bb.an
  %.merged.i.i.i.i.i = phi { i64, ptr } [ %i.dp, %bb.an ], [ %i.dr, %bb.ao ] ; 2 uses
  %i.ds = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.dt = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 1 ; 2 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = trunc nuw i64 %i.ds to i1
  br i1 %i.dv, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i", label %bb.ap

bb.ap:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i
  %.sroa.7.1.i.i.i = phi i64 [ %i.du, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ], [ %.sroa.7.068.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ]
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ], [ %.sroa.01.069.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !208298
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17hbff30297a975e291E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h), !noalias !208222
  %i.dw = load i8, ptr %i.g, align 8, !range !1313, !noalias !208298, !noundef !14
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %._crit_edge.i.i.i, label %bb.z

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i, %bb.ai, %bb.ag, %.loopexit.i.i.i.i.i.i, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i, %bb.ac, %._crit_edge.i.i.i
  %.sroa.6.1.i.i.i = phi ptr [ %2, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i ], [ %i.db, %bb.ag ], [ %i.bx, %._crit_edge.i.i.i ], [ %i.de, %bb.ai ], [ %i.ci, %bb.ac ], [ %i.da, %.loopexit.i.i.i.i.i.i ], [ %i.dt, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ], [ %i.dd, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ 0, %_ZN10serde_core2de9MapAccess8next_key17h290a5909f537dab6E.exit.thread32.i.i.i ], [ 1, %bb.ag ], [ 1, %._crit_edge.i.i.i ], [ 1, %bb.ai ], [ 1, %bb.ac ], [ 1, %.loopexit.i.i.i.i.i.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h8862486ea2380915E.exit.i.i.i ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h669552e78393dcf5E.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !208178
  %i.dy = load i8, ptr %i.ac, align 8, !range !1313, !alias.scope !208178, !noundef !14
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !208178
  store i64 24, ptr %i.k, align 8, !noalias !208178
  %i.ea = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h3a84b27939c3c65bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !208178
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit"

bb.ar:                                            ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !208178, !noundef !14
  %i.ed = add i8 %i.ec, 1
  store i8 %i.ed, ptr %i.eb, align 1, !alias.scope !208178
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h670382ad07a37a63E.exit.i.i"
  %i.ee = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7f477aab3cffc5f9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.au unwind label %bb.at     ; 8 uses

bb.at:                                            ; preds = %bb.as
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..result..Result$LT$meilisearch_types..tasks..network..NetworkTopologyStats$C$serde_json..error..Error$GT$$GT$17h7c97a54232d7c2dcE"(i64 %.sroa.0.1.i.i.i, ptr %.sroa.6.1.i.i.i) #81
          to label %common.resume.i.i unwind label %bb.s

bb.au:                                            ; preds = %bb.as
  %i.eg = trunc nuw i64 %.sroa.0.1.i.i.i to i1
  %.not43.i.i = icmp eq ptr %i.ee, null           ; 2 uses
  br i1 %i.eg, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not43.i.i, label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit", label %.thread23.i.i, !prof !12002

bb.aw:                                            ; preds = %bb.au
  br i1 %.not43.i.i, label %.thread23.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !208301)
  call void @llvm.experimental.noalias.scope.decl(metadata !208304)
  %i.eh = load i64, ptr %i.ee, align 8, !range !3586, !alias.scope !208307, !noalias !208308, !noundef !14
  switch i64 %i.eh, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i" [
    i64 0, label %bb.ay
    i64 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.val1.i.i.i.i30.i.i = load i64, ptr %i.ei, align 8, !alias.scope !208307, !noalias !208308, !noundef !14 ; 2 uses
  %i.ej = icmp eq i64 %.val1.i.i.i.i30.i.i, 0
  br i1 %i.ej, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i31.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i31.i.i": ; preds = %bb.ay
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.val.i.i.i.i32.i.i = load ptr, ptr %i.ek, align 8, !alias.scope !208307, !noalias !208308, !nonnull !14, !noundef !14
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i32.i.i, i64 noundef %.val1.i.i.i.i30.i.i, i64 noundef 1) #79, !noalias !208311
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i"

bb.az:                                            ; preds = %bb.ax
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h17d36f2cee8d0937E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.el)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i" unwind label %bb.ba, !noalias !208308

bb.ba:                                            ; preds = %bb.az
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #79, !noalias !208308
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i": ; preds = %bb.az, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i31.i.i", %bb.ay, %bb.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ee, i64 noundef 40, i64 noundef 8) #79, !noalias !208308
  br label %.thread23.i.i

.thread23.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i", %bb.aw, %bb.av, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i", %bb.r, %bb.q, %bb.d
  %.sroa.11.3.in.i.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.6.1.i.i.i, %bb.aw ], [ %.sroa.3.0.i.i.i, %bb.r ], [ %i.bc, %bb.q ], [ %.sroa.3.0.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit.i.i" ], [ %.sroa.6.1.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h06a0773606025e84E.exit33.i.i" ], [ %i.ee, %bb.av ]
  %i.en = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h58686e8d5c72fc22E(ptr noalias noundef nonnull align 8 %.sroa.11.3.in.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit"

"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17hf0821f6b430b2da1E.exit": ; preds = %.loopexit.i.i, %bb.l, %bb.q, %bb.aq, %bb.av, %.thread23.i.i
  %.sroa.7.3.i.i = phi ptr [ %i.x, %.loopexit.i.i ], [ %i.ea, %bb.aq ], [ %i.ay, %bb.l ], [ %i.en, %.thread23.i.i ], [ %.sroa.3.0.i.i.i, %bb.q ], [ %.sroa.6.1.i.i.i, %bb.av ]
  %.sroa.0.3.i.i = phi i64 [ 1, %.loopexit.i.i ], [ 1, %bb.aq ], [ 1, %bb.l ], [ 1, %.thread23.i.i ], [ 0, %bb.q ], [ 0, %bb.av ]
  %i.eo = insertvalue { i64, ptr } poison, i64 %.sroa.0.3.i.i, 0
  %i.ep = insertvalue { i64, ptr } %i.eo, ptr %.sroa.7.3.i.i, 1
  ret { i64, ptr } %i.ep
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h702c17bbf0154f1eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.580.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.574.i.sroa.4.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 21 uses
  %i.ac = alloca [32 x i8], align 8               ; 28 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [72 x i8], align 8               ; 13 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [72 x i8], align 8               ; 13 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.045.sroa.0.i.sroa.5.i.i.i.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 11 uses
  %i.at = alloca [32 x i8], align 8               ; 10 uses
  %i.au = alloca [16 x i8], align 8               ; 14 uses
  %i.av = alloca [72 x i8], align 8               ; 13 uses
  %i.aw = alloca [80 x i8], align 8               ; 9 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [72 x i8], align 8               ; 11 uses
  %i.az = alloca [80 x i8], align 8               ; 9 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.18.i.i.i.i.i = alloca [56 x i8], align 8 ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.5.sroa.4.i = alloca [56 x i8], align 8   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208320)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !208323, !noalias !208326, !noundef !14 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !208330, !noalias !208331 ; 3 uses
  %i.bf = icmp ult i64 %.promoted.i.i.i, %i.be
  br i1 %i.bf, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !208323, !noalias !208326, !nonnull !14, !align !584, !noundef !14 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.bi = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.bl, %bb.c ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208332)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !208333, !noundef !14
  switch i8 %i.bk, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.ej
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bl = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bl, ptr %i.bc, align 8, !alias.scope !208334, !noalias !208331
  %exitcond.not.i.i.i = icmp eq i64 %i.bl, %i.be
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.thread.i.i": ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.580.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.045.sroa.0.i.sroa.5.i.i.i.i.i)
  br label %.loopexit.i.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hf3f620f8a707099fE.exit.thread.i.i": ; preds = %bb.b, %bb.a
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.bi, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208343)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.580.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.574.i.sroa.4.i.i.i.i.i)
end_hunk_0
