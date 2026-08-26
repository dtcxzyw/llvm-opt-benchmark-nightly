Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilitool-3c21fadc9a6b74a0.meilitool.c082eaae8d87b010-cgu.0?download=true
inline.NumInlined: 19729
inline.NumDeleted: 8931
loop-unroll.NumCompletelyUnrolled: 99
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 258
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h44a105064ade3344E":bb.a
  %i.ev = phi i64 [ %.promoted.i17.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i22.i.i.i.i.i.i.i.i.i.i ], [ %i.ey, %bb.bx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56346)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !56347, !noundef !15
  switch i8 %i.ex, label %bb.by [
    i8 32, label %bb.bx
    i8 10, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 125, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.i.i.i.i.i"
  ], !prof !1195

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.ey = add i64 %i.ev, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.by, align 8, !alias.scope !56348, !noalias !56345
  %exitcond.not.i23.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ey, %i.es
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.bw

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bv, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !56198
  store i64 3, ptr %i.x, align 8, !noalias !56198
  %i.ez = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56163

.noexc22.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !56198
  br label %.loopexit55.i.i.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !56198
  store i64 10, ptr %i.y, align 8, !noalias !56198
  %i.fa = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hf5fbb9662e1714d2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56163

.noexc23.i.i.i:                                   ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !56198
  br label %.loopexit55.i.i.i

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.i.i.i.i.i": ; preds = %bb.bw
  %i.fb = add i64 %i.ev, 1                        ; 2 uses
  store i64 %i.fb, ptr %i.by, align 8, !alias.scope !56351, !noalias !56200
  br label %bb.bz

bb.bz:                                            ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.i.i.i.i.i", %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.thread15.i.i.i.i.i"
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.pre.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.thread15.i.i.i.i.i" ], [ %i.fb, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.i.i.i.i.i" ] ; 2 uses
  %i.fc = phi i64 [ %.pre.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.thread15.i.i.i.i.i" ], [ %i.es, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.10.020.i.i.i.i.i = phi i8 [ %i.de, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.thread15.i.i.i.i.i" ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17h8b19046e946632a9E.exit.i.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !56354
  call void @llvm.experimental.noalias.scope.decl(metadata !56355)
  call void @llvm.experimental.noalias.scope.decl(metadata !56356)
  %i.fd = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  %i.fe = load ptr, ptr %i.cc, align 8, !alias.scope !56247, !noalias !56254, !nonnull !15, !align !533, !noundef !15
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ff = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fi, %bb.cb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !56357)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !56358, !noundef !15
  switch i8 %i.fh, label %bb.cc [
    i8 32, label %bb.cb
    i8 10, label %bb.cb
    i8 9, label %bb.cb
    i8 13, label %bb.cb
    i8 58, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i"
  ], !prof !1195

bb.cb:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca
  %i.fi = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.by, align 8, !alias.scope !56359, !noalias !56260
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, %i.fc
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.ca

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bz, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !56362
  store i64 3, ptr %i.j, align 8, !noalias !56362
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56163

.noexc24.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !56362
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i"

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !56362
  store i64 6, ptr %i.k, align 8, !noalias !56362
  %i.fk = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !56163

.noexc25.i.i.i:                                   ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !56362
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i": ; preds = %bb.ca
  %i.fl = add i64 %i.ff, 1
  store i64 %i.fl, ptr %i.by, align 8, !alias.scope !56363, !noalias !56366
  invoke fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h7f2c4e1f8ef5d5eeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bx)
          to label %.noexc26.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !56163

.noexc26.i.i.i:                                   ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i"
  %.pre54.i.i.i.i.i = load i32, ptr %i.ab, align 8, !range !752, !noalias !56354
  %i.fm = trunc nuw i32 %.pre54.i.i.i.i.i to i1
  br i1 %i.fm, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i", label %bb.ce

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i": ; preds = %.noexc26.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !56354
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i": ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i", %.noexc25.i.i.i, %.noexc24.i.i.i
  %i.fn = phi ptr [ %.pre.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i" ], [ %i.fj, %.noexc24.i.i.i ], [ %i.fk, %.noexc25.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !56354
  br label %.loopexit55.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.dd, %bb.dc, %bb.db
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i.loopexit:       ; preds = %bb.h, %bb.r, %bb.u, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z, %bb.aa, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h733eb15b1078cd41E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ab, %bb.ac, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ah, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp: ; preds = %bb.cp, %bb.cq, %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.dh, %.invoke.i.i.i, %bb.cc, %.loopexit.i.i.i.i.i.i.i, %bb.by, %.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.bs, %.noexc9.i.i.i, %bb.s, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n, %.loopexit19.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp51.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.i.i.i.loopexit, %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp51.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.i.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E"(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #44
          to label %common.resume.i.i unwind label %bb.di, !noalias !56163

.loopexit55.i.i.i:                                ; preds = %bb.bu, %bb.bt, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i", %.noexc23.i.i.i, %.noexc22.i.i.i, %.noexc21.i.i.i, %bb.v, %.noexc6.i.i.i, %.noexc5.i.i.i, %bb.i
  %.sroa.1238.1.ph.i.i.i = phi ptr [ %i.eo, %.noexc21.i.i.i ], [ %i.cj, %.noexc6.i.i.i ], [ %i.ci, %.noexc5.i.i.i ], [ %i.fn, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i" ], [ %i.fa, %.noexc23.i.i.i ], [ %i.ez, %.noexc22.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.bu, %bb.i ], [ %.sroa.248.0.i.i.i.i.i.i.i.i.i.i, %bb.bt ], [ %.sroa.248.0.i.i.i.i.i.i.i.i.i.i, %bb.bu ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1238.1.ph.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !56367)
  call void @llvm.experimental.noalias.scope.decl(metadata !56370)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !56373
  %.not.i.i.i.i.i.i = icmp eq ptr %.ph584, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %.loopexit55.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !56374, !noalias !56146
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !56374, !noalias !56146 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !56375, !noalias !56378
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.ph584, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !56375, !noalias !56378
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !56375, !noalias !56378
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !56375, !noalias !56378
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.ph584, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !56375, !noalias !56378
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !56375, !noalias !56378
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i.i": ; preds = %bb.cd, %.loopexit55.i.i.i
  %.sink23.i.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %.loopexit55.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.cd ], [ 0, %.loopexit55.i.i.i ]
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !56375, !noalias !56378
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.fo, align 8, !alias.scope !56375, !noalias !56378
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.fp, align 8, !alias.scope !56375, !noalias !56378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !56380
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h3388872d8d85c13cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !56385
  %i.fq = load ptr, ptr %i.h, align 8, !noalias !56380, !noundef !15
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !56380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !56380
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h3388872d8d85c13cE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !56385
  %i.fr = load ptr, ptr %i.h, align 8, !noalias !56380, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17hbfad86e3ebb04966E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17ha0de055dc84ffa45E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !56380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !56373
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hd70d8859abf08232E.exit.i.i"

bb.ce:                                            ; preds = %.noexc26.i.i.i
  %i.fs = load i32, ptr %i.bj, align 4, !noalias !56354, !noundef !15 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !56354
  call void @llvm.experimental.noalias.scope.decl(metadata !56386)
  call void @llvm.experimental.noalias.scope.decl(metadata !56389)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ci
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.gi, %bb.ci ], [ %i.bq, %bb.ce ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.ci ], [ %.ph584, %bb.ce ] ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.fv = load i16, ptr %i.fu, align 2, !noalias !56392, !noundef !15 ; 4 uses
  %i.fw = zext i16 %i.fv to i64                   ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fw
  %i.fy = icmp eq i16 %i.fv, 0
  br i1 %i.fy, label %._crit_edge, label %.lr.ph

bb.cg:                                            ; preds = %.lr.ph
  %i.fz = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i576, 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i575, i64 1 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fx
  br i1 %i.gb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cf, %bb.cg
  %.sroa.8.0.i.i.i.i.i.i.i576 = phi i64 [ %i.fz, %bb.cg ], [ 0, %bb.cf ] ; 3 uses
  %.sroa.03.0.i.i.i.i.i.i.i575 = phi ptr [ %i.ga, %bb.cg ], [ %i.ft, %bb.cf ] ; 2 uses
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i575, align 1, !range !24875, !noalias !56392, !noundef !15
  %i.gc = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 18) %.sroa.10.020.i.i.i.i.i, i8 %.val7.i.i.i.i.i.i.i)
  switch i8 %i.gc, label %bb.ch [
    i8 -1, label %._crit_edge
    i8 0, label %bb.cj
    i8 1, label %bb.cg
  ]

bb.ch:                                            ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.cg, %.lr.ph, %bb.cf
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.fw, %bb.cf ], [ %i.fw, %bb.cg ], [ %.sroa.8.0.i.i.i.i.i.i.i576, %.lr.ph ] ; 13 uses
  %i.gd = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.gd, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.gf = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !56396, !nonnull !15, !noundef !15
  %i.gi = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.cf

bb.cj:                                            ; preds = %.lr.ph
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.sroa.8.0.i.i.i.i.i.i.i576
  store i32 %i.fs, ptr %i.gk, align 4, !noalias !56399
  br label %bb.h

bb.ck:                                            ; preds = %._crit_edge
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !56400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !56400
  %i.gm = icmp ult i16 %i.fv, 11
  br i1 %i.gm, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gn = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !56407
  store i64 0, ptr %i.bl, align 8, !noalias !56407
  br i1 %i.gn, label %bb.cr, label %bb.co

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.fw
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.cn, label %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cm
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.go, align 1, !alias.scope !56411, !noalias !56414
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i"

bb.cn:                                            ; preds = %bb.cm
  %i.gp = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gp
  %i.gr = sub nuw nsw i64 %i.fw, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr nonnull align 1 %i.go, i64 %i.gr, i1 false), !alias.scope !56411, !noalias !56414
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.go, align 1, !alias.scope !56411, !noalias !56414
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gp
  %i.gv = shl nuw nsw i64 %i.gr, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gu, ptr nonnull align 4 %i.gt, i64 %i.gv, i1 false), !alias.scope !56418, !noalias !56414
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.thread.i.i.i.i.i.i": ; preds = %bb.cn, %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gx = add nuw nsw i16 %i.fv, 1
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.fs, ptr %i.gy, align 4, !alias.scope !56418, !noalias !56414
  store i16 %i.gx, ptr %i.gl, align 2, !noalias !56414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !56400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !56400
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i"

bb.co:                                            ; preds = %bb.cl
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.cp [
    i64 5, label %bb.cr
    i64 6, label %bb.cq
  ]

bb.cp:                                            ; preds = %bb.co
  store i64 6, ptr %i.bm, align 8, !noalias !56407
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h97bbb5946871872fE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !56163

.noexc29.i.i.i:                                   ; preds = %bb.cp
  %i.gz = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc30.i.i.i

bb.cq:                                            ; preds = %bb.co
  store i64 5, ptr %i.bm, align 8, !noalias !56407
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h97bbb5946871872fE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !56163

bb.cr:                                            ; preds = %bb.co, %bb.cl
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.cl ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.co ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.bm, align 8, !noalias !56407
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h97bbb5946871872fE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !56163

.noexc30.i.i.i:                                   ; preds = %bb.cr, %bb.cq, %.noexc29.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.cq ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc29.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.cr ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cq ], [ %i.gz, %.noexc29.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cr ] ; 6 uses
  %i.ha = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !56407, !nonnull !15, !noundef !15 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 54 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !noalias !56421, !noundef !15 ; 2 uses
  %i.hd = zext i16 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.cs, label %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.hf, align 1, !alias.scope !56425, !noalias !56421
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i"

bb.cs:                                            ; preds = %.noexc30.i.i.i
  %i.hg = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hg
  %i.hi = sub nuw nsw i64 %i.hd, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr nonnull align 1 %i.hf, i64 %i.hi, i1 false), !alias.scope !56425, !noalias !56421
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.hf, align 1, !alias.scope !56425, !noalias !56421
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hg
  %i.hm = shl nuw nsw i64 %i.hi, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hl, ptr nonnull align 4 %i.hk, i64 %i.hm, i1 false), !alias.scope !56428, !noalias !56421
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i": ; preds = %bb.cs, %_ZN5alloc11collections5btree4node12slice_insert17hbce58eec833b5e03E.exit.i41.i.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.ho = add i16 %i.hc, 1
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.fs, ptr %i.hp, align 4, !alias.scope !56428, !noalias !56421
  store i16 %i.ho, ptr %i.hb, align 2, !noalias !56421
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !56431 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !56431 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !56431 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !56431
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !56431 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !56431 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !56400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !56400
  %.not.i.i.i27.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 18
  br i1 %.not.i.i.i27.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17he758e48258680adaE.exit.i.i.i.i", label %bb.ct

bb.ct:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h87cb728827dbf0a5E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.hq = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !56432, !noundef !15 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.dg, %bb.ct
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.dg ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.1024.1.i.i.i.i.i.i, %bb.dg ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.715.1.i.i.i.i.i.i, %bb.dg ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.dg ]
  call void @llvm.experimental.noalias.scope.decl(metadata !56435)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !56438
  %i.hr = call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !56438 ; 11 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.cu, label %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i, !prof !122

bb.cu:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cv, !noalias !56438

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.cu
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.hr, align 8, !noalias !56438
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 54 ; 2 uses
  store i16 0, ptr %i.hu, align 2, !noalias !56438
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  store ptr %.ph584, ptr %i.hv, align 8, !noalias !56438
  %i.hw = add i64 %i.bq, 1
  store ptr %i.hr, ptr %.ph584, align 8, !noalias !56441
  %i.hx = getelementptr inbounds nuw i8, ptr %.ph584, i64 52
  store i16 0, ptr %i.hx, align 4, !noalias !56448
  store ptr %i.hr, ptr %i.ac, align 8, !alias.scope !56449, !noalias !56450
  store i64 %i.hw, ptr %i.bk, align 8, !alias.scope !56449, !noalias !56450
  %i.hy = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.bq
  br i1 %i.hy, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h62f8453a997e5a0dE.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !16

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h62f8453a997e5a0dE.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17hd9e8e858c1fd4811E.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.hu, align 2, !noalias !56451
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.hz, align 8, !noalias !56451
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.ia, align 8, !noalias !56451
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.ib, align 8, !noalias !56451
end_hunk_0
begin_hunk_1_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h52964c2ef2ec1b83E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !57531
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h0966436940de472cE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !57535

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ba = load i8, ptr %i.m, align 8, !range !447, !noalias !57531, !noundef !15
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !57531, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !57531
  br label %bb.q

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.be = load i8, ptr %i.aq, align 1, !range !447, !noalias !57531, !noundef !15
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !57531
  br i1 %i.bf, label %bb.k, label %bb.aw

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !57531
  %i.bg = load ptr, ptr %i.p, align 8, !alias.scope !57536, !noalias !57537, !nonnull !15, !align !569, !noundef !15 ; 7 uses
  invoke fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17hd79f9ab1488815adE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit

.noexc5.i.i.i:                                    ; preds = %bb.k
  %i.bh = load i8, ptr %i.l, align 8, !range !447, !noalias !57531, !noundef !15
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc5.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !57531, !nonnull !15, !align !569, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !57531
  br label %bb.q

bb.m:                                             ; preds = %.noexc5.i.i.i
  %i.bl = load i8, ptr %i.ar, align 1, !range !1476, !noalias !57531, !noundef !15 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !57531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !57538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57542)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !57545, !noalias !57548, !noundef !15 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !57553, !noalias !57554 ; 2 uses
  %i.bp = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !57545, !noalias !57548, !nonnull !15, !align !533, !noundef !15
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bs = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bv, %bb.o ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57555)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !57556, !noundef !15
  switch i8 %i.bu, label %bb.p [
    i8 32, label %bb.o
    i8 10, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 58, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i"
  ], !prof !1195

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bv = add i64 %i.bs, 1                        ; 3 uses
  store i64 %i.bv, ptr %i.bm, align 8, !alias.scope !57557, !noalias !57554
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.bo
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.n

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !57560
  store i64 3, ptr %i.j, align 8, !noalias !57560
  %i.bw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !57535

.noexc6.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !57560
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !57560
  store i64 6, ptr %i.k, align 8, !noalias !57560
  %i.bx = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h33cb1f9f6da94657E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !57535

.noexc7.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !57560
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i": ; preds = %bb.n
  %i.by = add i64 %i.bs, 1
  store i64 %i.by, ptr %i.bm, align 8, !alias.scope !57561, !noalias !57564
  invoke fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17h7f2c4e1f8ef5d5eeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bg)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !57535

.noexc8.i.i.i:                                    ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i"
  %.pre.i.i.i.i.i = load i32, ptr %i.n, align 8, !range !752, !noalias !57538
  %i.bz = trunc nuw i32 %.pre.i.i.i.i.i to i1
  br i1 %i.bz, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i", label %bb.s

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i": ; preds = %.noexc8.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !57538
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i": ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i", %.noexc7.i.i.i, %.noexc6.i.i.i
  %i.ca = phi ptr [ %.pre.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i._crit_edge.i.i.i.i" ], [ %i.bw, %.noexc6.i.i.i ], [ %i.bx, %.noexc7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !57538
  br label %bb.q

.loopexit.i.i.i:                                  ; preds = %bb.ar, %bb.aq, %bb.ap
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i.loopexit:       ; preds = %bb.h, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.i.i.i.i.i", %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp: ; preds = %bb.ad, %bb.ae, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %bb.av, %.invoke.i.i.i, %bb.p, %.loopexit.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp33.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.i.i.i.loopexit, %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp33.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.i.i.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #44
          to label %common.resume.i.i unwind label %bb.ax, !noalias !57535

bb.q:                                             ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i", %bb.l, %bb.i
  %.sroa.1220.1.ph.i.i.i = phi ptr [ %i.bk, %bb.l ], [ %i.ca, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h178981e336d73911E.exit.thread.i.i.i.i.i" ], [ %i.bd, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1220.1.ph.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !57571
  %.not.i.i.i.i.i.i = icmp eq ptr %.ph347, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !57572, !noalias !57518
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !57572, !noalias !57518 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57573, !noalias !57576
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.ph347, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57573, !noalias !57576
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57573, !noalias !57576
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57573, !noalias !57576
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.ph347, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57573, !noalias !57576
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !57573, !noalias !57576
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i.i": ; preds = %bb.r, %bb.q
  %.sink23.i.i.i.i.i.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.r ], [ 0, %bb.q ]
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !57573, !noalias !57576
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.cb, align 8, !alias.scope !57573, !noalias !57576
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.cc, align 8, !alias.scope !57573, !noalias !57576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !57578
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hdc275c56da1d7f62E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !57583
  %i.cd = load ptr, ptr %i.h, align 8, !noalias !57578, !noundef !15
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57578
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !57578
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hdc275c56da1d7f62E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !57583
  %i.ce = load ptr, ptr %i.h, align 8, !noalias !57578, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17h60e32d412cd4f5caE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h13556def75b3db97E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !57578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !57571
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h44c222b797ed86ddE.exit.i.i"

bb.s:                                             ; preds = %.noexc8.i.i.i
  %i.cf = load i32, ptr %i.as, align 4, !noalias !57538, !noundef !15 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !57538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57587)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.w
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.w ], [ %.ph347, %bb.s ] ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !57590, !noundef !15 ; 4 uses
  %i.cj = zext i16 %i.ci to i64                   ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj
  %i.cl = icmp eq i16 %i.ci, 0
  br i1 %i.cl, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.cm = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i342, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i341, i64 1 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ck
  br i1 %i.co, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u
  %.sroa.8.0.i.i.i.i.i.i.i342 = phi i64 [ %i.cm, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.sroa.03.0.i.i.i.i.i.i.i341 = phi ptr [ %i.cn, %bb.u ], [ %i.cg, %bb.t ] ; 2 uses
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i341, align 1, !range !1476, !noalias !57590, !noundef !15
  %i.cp = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 range(i8 0, 5) %i.bl, i8 %.val7.i.i.i.i.i.i.i)
  switch i8 %i.cp, label %bb.v [
    i8 -1, label %._crit_edge
    i8 0, label %bb.x
    i8 1, label %bb.u
  ]

bb.v:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.u, %.lr.ph, %bb.t
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.cj, %bb.t ], [ %i.cj, %bb.u ], [ %.sroa.8.0.i.i.i.i.i.i.i342, %.lr.ph ] ; 13 uses
  %i.cq = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.cq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.cs = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !57594, !nonnull !15, !noundef !15
  %i.cv = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.sroa.8.0.i.i.i.i.i.i.i342
  store i32 %i.cf, ptr %i.cx, align 4, !noalias !57597
  br label %bb.h

bb.y:                                             ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !57598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !57598
  %i.cz = icmp ult i16 %i.ci, 11
  br i1 %i.cz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !57605
  store i64 0, ptr %i.au, align 8, !noalias !57605
  br i1 %i.da, label %bb.af, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.cj
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.ab, label %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !57609, !noalias !57612
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dc
  %i.de = sub nuw nsw i64 %i.cj, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.db, i64 %i.de, i1 false), !alias.scope !57609, !noalias !57612
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !57609, !noalias !57612
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.di = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr nonnull align 4 %i.dg, i64 %i.di, i1 false), !alias.scope !57616, !noalias !57612
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.thread.i.i.i.i.i.i": ; preds = %bb.ab, %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.dk = add nuw nsw i16 %i.ci, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.dl, align 4, !alias.scope !57616, !noalias !57612
  store i16 %i.dk, ptr %i.cy, align 2, !noalias !57612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !57598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !57598
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i"

bb.ac:                                            ; preds = %bb.z
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.ad [
    i64 5, label %bb.af
    i64 6, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  store i64 6, ptr %i.av, align 8, !noalias !57605
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hf06274b00cab2432E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !57535

.noexc11.i.i.i:                                   ; preds = %bb.ad
  %i.dm = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc12.i.i.i

bb.ae:                                            ; preds = %bb.ac
  store i64 5, ptr %i.av, align 8, !noalias !57605
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hf06274b00cab2432E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !57535

bb.af:                                            ; preds = %bb.ac, %bb.z
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.z ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.ac ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !57605
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hf06274b00cab2432E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !57535

.noexc12.i.i.i:                                   ; preds = %bb.af, %bb.ae, %.noexc11.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.ae ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc11.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.af ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.dm, %.noexc11.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.af ] ; 6 uses
  %i.dn = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !57605, !nonnull !15, !noundef !15 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 54 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !noalias !57619, !noundef !15 ; 2 uses
  %i.dq = zext i16 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.ag, label %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !57623, !noalias !57619
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i"

bb.ag:                                            ; preds = %.noexc12.i.i.i
  %i.dt = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = sub nuw nsw i64 %i.dq, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.ds, i64 %i.dv, i1 false), !alias.scope !57623, !noalias !57619
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !57623, !noalias !57619
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dt
  %i.dz = shl nuw nsw i64 %i.dv, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull align 4 %i.dx, i64 %i.dz, i1 false), !alias.scope !57626, !noalias !57619
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i": ; preds = %bb.ag, %_ZN5alloc11collections5btree4node12slice_insert17h8bc49df71c105e16E.exit.i41.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eb = add i16 %i.dp, 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.ec, align 4, !alias.scope !57626, !noalias !57619
  store i16 %i.eb, ptr %i.do, align 2, !noalias !57619
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !57629 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !57629 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !57629 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !57629
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !57629 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !57629 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !57598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !57598
  %.not.i.i.i9.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i9.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h573d748ed1bbd187E.exit.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h5bc00adf764d38fbE.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.ed = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !57630, !noundef !15 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.au, %bb.ah
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.au ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1024.1.i.i.i.i.i.i, %bb.au ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.715.1.i.i.i.i.i.i, %bb.au ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.au ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57633)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !57636
  %i.ee = tail call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !57636 ; 11 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ai, label %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i, !prof !122

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #46
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !57636

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.ee, align 8, !noalias !57636
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 54 ; 2 uses
  store i16 0, ptr %i.eh, align 2, !noalias !57636
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  store ptr %.ph347, ptr %i.ei, align 8, !noalias !57636
  %i.ej = add i64 %i.az, 1
  store ptr %i.ee, ptr %.ph347, align 8, !noalias !57639
  %i.ek = getelementptr inbounds nuw i8, ptr %.ph347, i64 52
  store i16 0, ptr %i.ek, align 4, !noalias !57646
  store ptr %i.ee, ptr %i.o, align 8, !alias.scope !57647, !noalias !57648
  store i64 %i.ej, ptr %i.at, align 8, !alias.scope !57647, !noalias !57648
  %i.el = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.az
  br i1 %i.el, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h3ea8209e4b043a20E.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !16

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h3ea8209e4b043a20E.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17h7c08b598015e560eE.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.eh, align 2, !noalias !57649
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.em, align 8, !noalias !57649
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.en, align 8, !noalias !57649
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.eo, align 8, !noalias !57649
end_hunk_1
begin_hunk_2_@_ZN5milli5index5Index8read_txn17ha85b5f3af551ba1bE

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN55_$LT$std..path..Display$u20$as$u20$core..fmt..Debug$GT$3fmt17hd09ed430cbd202e7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index9write_txn17hfd0dc3f1e8e42466E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs4File8metadata17h41665091e954bb3bE(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_ZN3std4time7Instant7elapsed17h31a868da1daaa41fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$core..time..Duration$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc90c1fafc37461E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h361a6d98ea723aceE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10DumpWriter3new17h3001ef0ae2515585E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 1 captures(address) dead_on_return dereferenceable(17)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN16meilisearch_auth5store19open_auth_store_env17h7258b480d27ef4d8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN16meilisearch_auth14AuthController3new17h6d1116e1b729c97cE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10DumpWriter11create_keys17h17149387a675e6e6E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN16meilisearch_auth14AuthController9list_keys17hba994ab95b1fcc41E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer9KeyWriter5flush17h52cd62b5ddd69143E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10DumpWriter18create_tasks_queue17h30c03db230deac54E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10TaskWriter5flush17h0390c2f465a6fea7E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10DumpWriter20create_batches_queue17h33a6eb1763533571E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer11BatchWriter5flush17h3bdccc702bd1ba0dE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index10created_at17h4e3a4cd61be86488E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index10updated_at17hff483457381d170bE(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10DumpWriter12create_index17h2795ebcf739f91daE(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index14fields_ids_map17h4b57f48348f4aca9E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index13all_documents17h0e15e0befe4c5fb6E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN17meilisearch_types8settings8settings17h434d4bbc0b5a657dE(ptr dead_on_unwind noalias noundef writable sret([760 x i8]) align 8 captures(address) dereferenceable(760), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer11IndexWriter8settings17h836973ef3ec16bc4E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(760)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli12obkv_to_json17h7e8f0c25a6ebbbbaE(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer11IndexWriter13push_document17hf7183be2075a026fE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer11BatchWriter10push_batch17h57d29dd2b3ff9208E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1264)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN92_$LT$dump..TaskDump$u20$as$u20$core..convert..From$LT$meilisearch_types..tasks..Task$GT$$GT$4from17h11bcb05c314867fbE"(ptr dead_on_unwind noalias noundef writable sret([808 x i8]) align 8 captures(address) dereferenceable(808), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(784)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10TaskWriter9push_task17h14acf8aef3158bb8E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN10file_store9FileStore10get_update17h93c61cfd73e2d101E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10UpdateFile13push_document17h1b91d3e24522cfb6E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli9documents14obkv_to_object17h04caa95564ad3d0dE(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer10UpdateFile5flush17h4b9b094b1cfbe23cE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4dump6writer9KeyWriter8push_key17h0165b7c412d83695E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index9words_fst17h3acd6f7e73067114E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN3std2fs4File8sync_all17h52a9e4b80cf34edbE(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2fs8DirEntry4path17h6a1ecac780b01e6aE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN3std2io5stdio6stdout17h687e931aeb3d48a6E() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index13documents_ids17h19819575a9a2e946E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN7roaring6bitmap4iter102_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$roaring..bitmap..RoaringBitmap$GT$9into_iter17hd1387b1d8941035fE"(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index10embeddings17h8943c5bfba81fbe0E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(72) ptr @_ZN10serde_json3map5Entry9or_insert17h300c77b45e4f8b43E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN17meilisearch_types10versioning11get_version17h9b7a69031943823fE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN17meilisearch_types10versioning13parse_version17h26fefa75a3416efaE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN17meilisearch_types10versioning19create_version_file17h2a2e1462d1959992E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5arroy7upgrade22cosine_from_0_4_to_0_517h271f546b9b47375eE(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef, i32 noundef, ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index19number_of_documents17h70c9e105518eb957E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index12on_disk_size17heae86aee582d5115E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index9used_size17h600c9b429a5486a0E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli5index5Index18field_distribution17h99246b81cd58d2b8E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN10file_store9FileStore9all_uuids17hd851b3ab12f596f0E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN10file_store9FileStore11update_path17h801b8f38897a13dbE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_ZN5milli9documents19DocumentsBatchIndex4name17h6df985993a79fa37E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), i16 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread7Builder4name17h994fadd2a6dd1509E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli6update3new7reindex18field_distribution17hb5d8a67eda5965f1E(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 8 captures(address) dereferenceable(320), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(496), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli8progress8Progress16as_progress_view17hcdc82e2e442c04acE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #41 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_ZN9meilitool4main17hd80a340b4e16eae7E, ptr %i.a, align 8
  %i.c = call noundef i64 @_ZN3std2rt19lang_start_internal17h6ba36b077a531782E(ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @953, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #31

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #31

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #35 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { cold }
attributes #45 = { nounwind }
attributes #46 = { noreturn }
attributes #47 = { cold noreturn nounwind }
attributes #48 = { "function-inline-cost-multiplier"="2" }
attributes #49 = { cold "function-inline-cost-multiplier"="2" }
attributes #50 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZN10serde_json3ser18format_escaped_str17hdac2baebdc3201d0E: argument 0"}
!6 = distinct !{!6, !"_ZN10serde_json3ser18format_escaped_str17hdac2baebdc3201d0E"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 0"}
!9 = distinct !{!9, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E"}
!10 = !{i64 0, i64 -9223372036854775808}
!11 = !{!12, !13, !5}
!12 = distinct !{!12, !9, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 1"}
!13 = distinct !{!13, !14, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E: argument 0"}
!14 = distinct !{!14, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E"}
!15 = !{}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 0"}
!19 = distinct !{!19, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE"}
!20 = !{!18, !8}
!21 = !{!22, !12, !13, !5}
!22 = distinct !{!22, !19, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 1"}
!23 = !{!18, !8, !5}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN10serde_json3ser27format_escaped_str_contents17h12d2a4d347e339f3E: argument 0"}
!26 = distinct !{!26, !"_ZN10serde_json3ser27format_escaped_str_contents17h12d2a4d347e339f3E"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 0"}
!29 = distinct !{!29, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E"}
!30 = !{!31, !32, !34, !25, !5}
!31 = distinct !{!31, !29, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 1"}
!32 = distinct !{!32, !33, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E: argument 0"}
!33 = distinct !{!33, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E"}
!34 = distinct !{!34, !35, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E: argument 0"}
!35 = distinct !{!35, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 0"}
!38 = distinct !{!38, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE"}
!39 = !{!37, !28}
!40 = !{!41, !31, !32, !34, !25, !5}
!41 = distinct !{!41, !38, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 1"}
!42 = !{!25, !5}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 0"}
!45 = distinct !{!45, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E"}
!46 = !{!47, !48, !50, !25, !5}
!47 = distinct !{!47, !45, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 1"}
!48 = distinct !{!48, !49, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E: argument 0"}
!49 = distinct !{!49, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E"}
!50 = distinct !{!50, !51, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E: argument 0"}
!51 = distinct !{!51, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h7f5eb506a2bd3c49E"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 0"}
!54 = distinct !{!54, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE"}
!55 = !{!53, !44}
!56 = !{!57, !47, !48, !50, !25, !5}
!57 = distinct !{!57, !54, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 1"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 0"}
!60 = distinct !{!60, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E"}
!61 = !{!62, !63, !25, !5}
!62 = distinct !{!62, !60, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 1"}
!63 = distinct !{!63, !64, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E: argument 0"}
!64 = distinct !{!64, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 0"}
!67 = distinct !{!67, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE"}
!68 = !{!66, !59}
!69 = !{!70, !62, !63, !25, !5}
!70 = distinct !{!70, !67, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 1"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 0"}
!73 = distinct !{!73, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E"}
!74 = !{!75, !76, !25, !5}
!75 = distinct !{!75, !73, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 1"}
!76 = distinct !{!76, !77, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E: argument 0"}
!77 = distinct !{!77, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 0"}
!80 = distinct !{!80, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE"}
!81 = !{!79, !72}
!82 = !{!83, !75, !76, !25, !5}
!83 = distinct !{!83, !80, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 1"}
!84 = !{!79, !72, !25, !5}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 0"}
!87 = distinct !{!87, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E"}
!88 = !{!89, !90, !5}
!89 = distinct !{!89, !87, !"_ZN83_$LT$std..io..buffered..bufwriter..BufWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h22dfbcfdc59f99d5E: argument 1"}
!90 = distinct !{!90, !91, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E: argument 0"}
!91 = distinct !{!91, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17ha99251ba171af053E"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 0"}
!94 = distinct !{!94, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE"}
!95 = !{!93, !86}
!96 = !{!97, !89, !90, !5}
!97 = distinct !{!97, !94, !"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$25write_to_buffer_unchecked17hc4f6254798d99decE: argument 1"}
!98 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN10serde_json3ser18format_escaped_str17h4e2bb133a563d743E: argument 0"}
!101 = distinct !{!101, !"_ZN10serde_json3ser18format_escaped_str17h4e2bb133a563d743E"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h8129e9183dd420e1E: argument 0"}
!104 = distinct !{!104, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h8129e9183dd420e1E"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2bd82023de9eded6E: argument 0"}
!107 = distinct !{!107, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h2bd82023de9eded6E"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hfc223499bef370e1E: argument 0"}
!110 = distinct !{!110, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hfc223499bef370e1E"}
!111 = !{!112}
end_hunk_2
