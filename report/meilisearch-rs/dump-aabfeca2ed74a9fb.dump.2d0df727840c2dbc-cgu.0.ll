Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8dcc6cc4c888f2e8E":bb.a
  %i.am = load ptr, ptr %i.al, align 8, !noalias !114462, !nonnull !13, !align !25, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114462
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h382e7b80cba6ac88E.exit.i.i"

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !1013, !noalias !114462, !noundef !13
  %i.ap = trunc nuw i8 %i.ao to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114462
  br i1 %i.ap, label %bb.k, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h382e7b80cba6ac88E.exit.i.i"

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.h, align 8, !alias.scope !114466, !noalias !114467, !nonnull !13, !align !25, !noundef !13
  %i.ar = tail call fastcc { i64, ptr } @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17h76accead9ca22315E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aq), !noalias !114468 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h382e7b80cba6ac88E.exit.i.i"

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h382e7b80cba6ac88E.exit.i.i": ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.at, %bb.k ], [ %i.am, %bb.i ], [ null, %bb.j ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.as, %bb.k ], [ 1, %bb.i ], [ 0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114449
  %i.au = load i8, ptr %i.x, align 8, !range !1013, !alias.scope !114449, !noundef !13
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !114449
  store i64 24, ptr %i.j, align 8, !noalias !114449
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !114449
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17h470f57d55b278ebcE.exit"

bb.m:                                             ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h382e7b80cba6ac88E.exit.i.i"
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !114449, !noundef !13
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !alias.scope !114449
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17h382e7b80cba6ac88E.exit.i.i"
  %i.ba = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_seq17h258a7df2ee407306E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.p unwind label %bb.o       ; 8 uses

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..result..Result$LT$meilisearch_types..tasks..network..NetworkTopologyStats$C$serde_json..error..Error$GT$$GT$17hda94f415b54805a8E"(i64 %.sroa.0.0.i.i.i, ptr %.sroa.3.0.i.i.i) #43
          to label %common.resume.i.i unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bc = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  %.not44.i.i = icmp eq ptr %i.ba, null           ; 2 uses
  br i1 %i.bc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not44.i.i, label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17h470f57d55b278ebcE.exit", label %.thread23.i.i, !prof !4380

bb.r:                                             ; preds = %bb.p
  br i1 %.not44.i.i, label %.thread23.i.i, label %bb.t

bb.s:                                             ; preds = %bb.aq, %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44
  unreachable

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114472)
  %i.be = load i64, ptr %i.ba, align 8, !range !1471, !alias.scope !114475, !noundef !13
  switch i64 %i.be, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" [
    i64 0, label %bb.u
    i64 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !114475, !noundef !13 ; 2 uses
  %i.bg = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.bg, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !114475, !nonnull !13, !noundef !13
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !114475
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i"

bb.v:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bi)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" unwind label %bb.w

common.resume.i.i:                                ; preds = %bb.ax, %bb.aq, %bb.w, %bb.o
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bj, %bb.w ], [ %i.dz, %bb.ax ], [ %i.ds, %bb.aq ], [ %i.bb, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.w:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 40, i64 noundef 8) #42
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i": ; preds = %bb.v, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i", %bb.u, %bb.t
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 40, i64 noundef 8) #42
  br label %.thread23.i.i

bb.x:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !114449, !noundef !13
  %i.bm = add i8 %i.bl, -1                        ; 2 uses
  store i8 %i.bm, ptr %i.bk, align 1, !alias.scope !114449
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.an, label %bb.y, !prof !11

bb.y:                                             ; preds = %bb.x, %bb.f
  %i.bo = add i64 %i.r, 1
  store i64 %i.bo, ptr %i.l, align 8, !alias.scope !114476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !114449
  store ptr %0, ptr %i.f, align 8, !noalias !114479
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.bp, align 8, !noalias !114479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !114482
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h0a38c32407b09c2fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !114489
  %i.bq = load i8, ptr %i.e, align 8, !range !1013, !noalias !114482, !noundef !13
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._crit_edge.i.i.i, label %.lr.ph.i30.i.i

.lr.ph.i30.i.i:                                   ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.z

._crit_edge.i.i.i:                                ; preds = %bb.am, %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !114490, !nonnull !13, !align !25, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114490
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i"

bb.z:                                             ; preds = %bb.am, %.lr.ph.i30.i.i
  %.sroa.01.047.i.i.i = phi i64 [ 0, %.lr.ph.i30.i.i ], [ %.sroa.01.1.i.i.i, %bb.am ] ; 3 uses
  %.sroa.7.046.i.i.i = phi i64 [ undef, %.lr.ph.i30.i.i ], [ %.sroa.7.1.i.i.i, %bb.am ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114493)
  call void @llvm.experimental.noalias.scope.decl(metadata !114494)
  %i.bw = load i8, ptr %i.bs, align 1, !range !1013, !noalias !114490, !noundef !13
  %i.bx = trunc nuw i8 %i.bw to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !114490
  br i1 %i.bx, label %bb.aa, label %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread28.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.by = load ptr, ptr %i.f, align 8, !alias.scope !114495, !noalias !114496, !nonnull !13, !align !25, !noundef !13 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114497)
  call void @llvm.experimental.noalias.scope.decl(metadata !114500)
  call void @llvm.experimental.noalias.scope.decl(metadata !114503)
  call void @llvm.experimental.noalias.scope.decl(metadata !114506)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 5 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !114509, !noalias !114512, !noundef !13
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8, !alias.scope !114509, !noalias !114512
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 0, ptr %i.cd, align 8, !alias.scope !114517, !noalias !114512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !114518
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hb363ba977b6810eaE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.by), !noalias !114512
  %i.ce = load i64, ptr %i.d, align 8, !range !1515, !noalias !114518, !noundef !13
  %i.cf = icmp eq i64 %i.ce, 2
  %i.cg = load ptr, ptr %i.bt, align 8, !noalias !114518 ; 5 uses
  br i1 %i.cf, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !114518
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, 14
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.i.i.i, label %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread32.i.i.i

_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread32.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114518
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114518
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i"

_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.i.i.i: ; preds = %bb.ab
  %i.ch = load i64, ptr %i.cg, align 1
  %i.ci = xor i64 %i.ch, 7165020730159427437
  %i.cj = getelementptr i8, ptr %i.cg, i64 6
  %i.ck = load i64, ptr %i.cj, align 1
  %i.cl = xor i64 %i.ck, 8319395793567310703
  %i.cm = or i64 %i.ci, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %.not.i.i.i = icmp eq i32 %i.co, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !114518
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread28.i.i.i: ; preds = %bb.z
  %i.cp = trunc nuw i64 %.sroa.01.047.i.i.i to i1
  %.sroa.7.0..i.i.i = select i1 %i.cp, i64 %.sroa.7.046.i.i.i, i64 0
  %1 = inttoptr i64 %.sroa.7.0..i.i.i to ptr
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i"

bb.ad:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.i.i.i, %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread32.i.i.i
  %i.cq = call fastcc noundef align 8 ptr @_ZN10serde_core2de9MapAccess10next_value17h5b80f098bad18bf3E(ptr nonnull %i.by) ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not21.i.i.i, label %bb.am, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i"

bb.ae:                                            ; preds = %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.i.i.i
  %.not20.i.i.i = icmp eq i64 %.sroa.01.047.i.i.i, 0
  br i1 %.not20.i.i.i, label %bb.ag, label %bb.af, !prof !220

bb.af:                                            ; preds = %bb.ae
  %i.cr = call fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17h916ccbda68d47931E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @539, i64 noundef 14)
  br label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !114519)
  call void @llvm.experimental.noalias.scope.decl(metadata !114522)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !114525, !noalias !114530, !noundef !13 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !114534, !noalias !114535 ; 2 uses
  %i.cu = icmp ult i64 %.promoted.i.i.i.i.i.i.i, %i.ct
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ag
  %i.cv = load ptr, ptr %i.bz, align 8, !alias.scope !114525, !noalias !114530, !nonnull !13, !align !626, !noundef !13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %bb.ai ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114536)
  call void @llvm.experimental.noalias.scope.decl(metadata !114537)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !114538, !noundef !13
  switch i8 %i.cy, label %bb.aj [
    i8 32, label %bb.ai
    i8 10, label %bb.ai
    i8 9, label %bb.ai
    i8 13, label %bb.ai
    i8 58, label %bb.al
  ], !prof !1540

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah
  %i.cz = add i64 %i.cw, 1                        ; 3 uses
  store i64 %i.cz, ptr %i.ca, align 8, !alias.scope !114539, !noalias !114535
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cz, %i.ct
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %bb.ah

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.ai, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !114542
  store i64 3, ptr %i.b, align 8, !noalias !114542
  %i.da = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.by, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !114542
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114542
  store i64 6, ptr %i.c, align 8, !noalias !114542
  %i.db = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.by, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114542
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit.i.i.i.i.i.i
  %.sroa.0.0.i.ph.i.i.i.i.i = phi ptr [ %i.da, %.loopexit.i.i.i.i.i.i ], [ %i.db, %bb.aj ]
  %i.dc = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %.sroa.0.0.i.ph.i.i.i.i.i, 1
  br label %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i

bb.al:                                            ; preds = %bb.ah
  %i.dd = add i64 %i.cw, 1
  store i64 %i.dd, ptr %i.ca, align 8, !alias.scope !114543
  %i.de = call fastcc { i64, ptr } @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u64$GT$11deserialize17h76accead9ca22315E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.by)
  br label %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i

_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.merged.i.i.i.i.i = phi { i64, ptr } [ %i.dc, %bb.ak ], [ %i.de, %bb.al ] ; 2 uses
  %i.df = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 0
  %i.dg = extractvalue { i64, ptr } %.merged.i.i.i.i.i, 1 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = trunc nuw i64 %i.df to i1
  br i1 %i.di, label %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i", label %bb.am

bb.am:                                            ; preds = %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i, %bb.ad
  %.sroa.7.1.i.i.i = phi i64 [ %i.dh, %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i ], [ %.sroa.7.046.i.i.i, %bb.ad ]
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i ], [ %.sroa.01.047.i.i.i, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !114546
  call fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h0a38c32407b09c2fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !114489
  %i.dj = load i8, ptr %i.e, align 8, !range !1013, !noalias !114546, !noundef !13
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._crit_edge.i.i.i, label %bb.z

"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i, %bb.ad, %bb.af, %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread28.i.i.i, %bb.ac, %._crit_edge.i.i.i
  %.sroa.6.1.i.i.i = phi ptr [ %1, %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread28.i.i.i ], [ %i.cg, %bb.ac ], [ %i.bv, %._crit_edge.i.i.i ], [ %i.cr, %bb.af ], [ %i.dg, %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i ], [ %i.cq, %bb.ad ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ 0, %_ZN10serde_core2de9MapAccess8next_key17h11d1ae98a7b7fdcaE.exit.thread28.i.i.i ], [ 1, %bb.ac ], [ 1, %._crit_edge.i.i.i ], [ 1, %bb.af ], [ 1, %bb.ad ], [ 1, %_ZN10serde_core2de9MapAccess10next_value17h99ce8512029f96beE.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !114449
  %i.dl = load i8, ptr %i.aa, align 8, !range !1013, !alias.scope !114449, !noundef !13
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !114449
  store i64 24, ptr %i.i, align 8, !noalias !114449
  %i.dn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !114449
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17h470f57d55b278ebcE.exit"

bb.ao:                                            ; preds = %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i"
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !114449, !noundef !13
  %i.dq = add i8 %i.dp, 1
  store i8 %i.dq, ptr %i.do, align 1, !alias.scope !114449
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %"_ZN218_$LT$meilisearch_types..tasks..network.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5228344a69e49b9bE.exit.i.i"
  %i.dr = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hd749302c89dd846aE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.ar unwind label %bb.aq     ; 8 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr131drop_in_place$LT$core..result..Result$LT$meilisearch_types..tasks..network..NetworkTopologyStats$C$serde_json..error..Error$GT$$GT$17hda94f415b54805a8E"(i64 %.sroa.0.1.i.i.i, ptr %.sroa.6.1.i.i.i) #43
          to label %common.resume.i.i unwind label %bb.s

bb.ar:                                            ; preds = %bb.ap
  %i.dt = trunc nuw i64 %.sroa.0.1.i.i.i to i1
  %.not43.i.i = icmp eq ptr %i.dr, null           ; 2 uses
  br i1 %i.dt, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %.not43.i.i, label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17h470f57d55b278ebcE.exit", label %.thread23.i.i, !prof !4380

bb.at:                                            ; preds = %bb.ar
  br i1 %.not43.i.i, label %.thread23.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !114549)
  call void @llvm.experimental.noalias.scope.decl(metadata !114552)
  %i.du = load i64, ptr %i.dr, align 8, !range !1471, !alias.scope !114555, !noundef !13
  switch i64 %i.du, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit34.i.i" [
    i64 0, label %bb.av
    i64 1, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.val1.i.i.i.i31.i.i = load i64, ptr %i.dv, align 8, !alias.scope !114555, !noundef !13 ; 2 uses
  %i.dw = icmp eq i64 %.val1.i.i.i.i31.i.i, 0
  br i1 %i.dw, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit34.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i32.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i32.i.i": ; preds = %bb.av
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.val.i.i.i.i33.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !114555, !nonnull !13, !noundef !13
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i33.i.i, i64 noundef %.val1.i.i.i.i31.i.i, i64 noundef 1) #42, !noalias !114555
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit34.i.i"

bb.aw:                                            ; preds = %bb.au
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.dy)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit34.i.i" unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dr, i64 noundef 40, i64 noundef 8) #42
  br label %common.resume.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit34.i.i": ; preds = %bb.aw, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i32.i.i", %bb.av, %bb.au
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dr, i64 noundef 40, i64 noundef 8) #42
  br label %.thread23.i.i

.thread23.i.i:                                    ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit34.i.i", %bb.at, %bb.as, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i", %bb.r, %bb.q, %bb.d
  %.sroa.11.3.in.i.i = phi ptr [ %i.w, %bb.d ], [ %.sroa.6.1.i.i.i, %bb.at ], [ %.sroa.3.0.i.i.i, %bb.r ], [ %i.ba, %bb.q ], [ %.sroa.3.0.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit.i.i" ], [ %.sroa.6.1.i.i.i, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit34.i.i" ], [ %i.dr, %bb.as ]
  %i.ea = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h07299f01aaf065d0E(ptr noalias noundef nonnull align 8 %.sroa.11.3.in.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17h470f57d55b278ebcE.exit"

"_ZN17meilisearch_types5tasks7network1_113_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$meilisearch_types..tasks..network..NetworkTopologyStats$GT$11deserialize17h470f57d55b278ebcE.exit": ; preds = %.loopexit.i.i, %bb.l, %bb.q, %bb.an, %bb.as, %.thread23.i.i
  %.sroa.7.3.i.i = phi ptr [ %i.v, %.loopexit.i.i ], [ %i.dn, %bb.an ], [ %i.aw, %bb.l ], [ %i.ea, %.thread23.i.i ], [ %.sroa.3.0.i.i.i, %bb.q ], [ %.sroa.6.1.i.i.i, %bb.as ]
  %.sroa.0.3.i.i = phi i64 [ 1, %.loopexit.i.i ], [ 1, %bb.an ], [ 1, %bb.l ], [ 1, %.thread23.i.i ], [ 0, %bb.q ], [ 0, %bb.as ]
  %i.eb = insertvalue { i64, ptr } poison, i64 %.sroa.0.3.i.i, 0
  %i.ec = insertvalue { i64, ptr } %i.eb, ptr %.sroa.7.3.i.i, 1
  ret { i64, ptr } %i.ec
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8e70ff77ca81562eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [152 x i8], align 8               ; 17 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.630.i.i.i = alloca [88 x i8], align 8    ; 6 uses
  %.sroa.6.i.i.i = alloca [88 x i8], align 8      ; 6 uses
  %i.e = alloca [152 x i8], align 8               ; 16 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.12.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 12 uses
  %.sroa.845.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 6 uses
  %.sroa.7.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 5 uses
  %i.h = alloca [96 x i8], align 8                ; 8 uses
  %i.i = alloca [96 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 6 uses
  %i.m = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.920.i.i.i = alloca [88 x i8], align 8    ; 6 uses
  %.sroa.17.i.i.i = alloca [88 x i8], align 8     ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.928.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114564)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114566)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !114569, !noalias !114574, !noundef !13 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !114578, !noalias !114579 ; 2 uses
  %i.w = icmp ult i64 %.promoted.i.i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i, label %.loopexit45.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !114569, !noalias !114574, !nonnull !13, !align !626, !noundef !13
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.z = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.ac, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114581)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !114582, !noundef !13
  switch i8 %i.ab, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !prof !1540

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ac = add i64 %i.z, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !114583, !noalias !114579
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.v
  br i1 %exitcond.not.i.i.i, label %.loopexit45.i.i, label %bb.b

.loopexit45.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !114586
  store i64 5, ptr %i.s, align 8, !noalias !114586
  %i.ad = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !114587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !114586
  br label %"_ZN10serde_core2de5impls111_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$11deserialize17h8c3371220eae8c48E.exit"

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !1013, !alias.scope !114588, !noalias !114587, !noundef !13
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ah = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h8f339b226a3438dcE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1802), !noalias !114587
  br label %bb.cx

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !114588, !noalias !114587, !noundef !13
  %i.ak = add i8 %i.aj, -1                        ; 2 uses
  store i8 %i.ak, ptr %i.ai, align 1, !alias.scope !114588, !noalias !114587
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.cl, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.am = add i64 %i.z, 1
  store i64 %i.am, ptr %i.t, align 8, !alias.scope !114589, !noalias !114587
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.928.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.920.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !114586
  store ptr %1, ptr %i.o, align 8, !noalias !114592
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i8 1, ptr %i.an, align 8, !noalias !114592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !114592
  store ptr null, ptr %i.n, align 8, !noalias !114592
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.ao, align 8, !noalias !114592
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.610.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
end_hunk_0
