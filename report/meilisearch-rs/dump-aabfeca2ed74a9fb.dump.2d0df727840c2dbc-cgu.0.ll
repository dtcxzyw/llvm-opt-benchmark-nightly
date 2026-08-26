Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h5f657d94c70bbdcaE":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !106643)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !106644, !noundef !13
  switch i8 %i.ex, label %bb.by [
    i8 32, label %bb.bx
    i8 10, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 125, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.i.i.i.i.i"
  ], !prof !1540

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.ey = add i64 %i.ev, 1                        ; 3 uses
  store i64 %i.ey, ptr %i.by, align 8, !alias.scope !106645, !noalias !106641
  %exitcond.not.i23.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ey, %i.es
  br i1 %exitcond.not.i23.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.bw

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.bv, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !106478
  store i64 3, ptr %i.x, align 8, !noalias !106478
  %i.ez = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !106439

.noexc22.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !106478
  br label %.loopexit55.i.i.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !106478
  store i64 10, ptr %i.y, align 8, !noalias !106478
  %i.fa = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y)
          to label %.noexc23.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !106439

.noexc23.i.i.i:                                   ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !106478
  br label %.loopexit55.i.i.i

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.i.i.i.i.i": ; preds = %bb.bw
  %i.fb = add i64 %i.ev, 1                        ; 2 uses
  store i64 %i.fb, ptr %i.by, align 8, !alias.scope !106648, !noalias !106480
  br label %bb.bz

bb.bz:                                            ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.i.i.i.i.i", %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.thread15.i.i.i.i.i"
  %.promoted.i.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.pre.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.thread15.i.i.i.i.i" ], [ %i.fb, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.i.i.i.i.i" ] ; 2 uses
  %i.fc = phi i64 [ %.pre.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.thread15.i.i.i.i.i" ], [ %i.es, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.10.020.i.i.i.i.i = phi i8 [ %i.de, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.thread15.i.i.i.i.i" ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed17hef59621b27f966acE.exit.i.i.i.i.i" ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !106651
  call void @llvm.experimental.noalias.scope.decl(metadata !106652)
  call void @llvm.experimental.noalias.scope.decl(metadata !106653)
  %i.fd = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bz
  %i.fe = load ptr, ptr %i.cc, align 8, !alias.scope !106530, !noalias !106539, !nonnull !13, !align !626, !noundef !13
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cb, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ff = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fi, %bb.cb ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106654)
  call void @llvm.experimental.noalias.scope.decl(metadata !106655)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !106656, !noundef !13
  switch i8 %i.fh, label %bb.cc [
    i8 32, label %bb.cb
    i8 10, label %bb.cb
    i8 9, label %bb.cb
    i8 13, label %bb.cb
    i8 58, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i"
  ], !prof !1540

bb.cb:                                            ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca
  %i.fi = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.by, align 8, !alias.scope !106657, !noalias !106546
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, %i.fc
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.ca

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.bz, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !106660
  store i64 3, ptr %i.j, align 8, !noalias !106660
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !106439

.noexc24.i.i.i:                                   ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !106660
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i"

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !106660
  store i64 6, ptr %i.k, align 8, !noalias !106660
  %i.fk = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !106439

.noexc25.i.i.i:                                   ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !106660
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i": ; preds = %bb.ca
  %i.fl = add i64 %i.ff, 1
  store i64 %i.fl, ptr %i.by, align 8, !alias.scope !106661, !noalias !106664
  invoke fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17hb6b4db9901790b05E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bx)
          to label %.noexc26.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !106439

.noexc26.i.i.i:                                   ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i"
  %.pre54.i.i.i.i.i = load i32, ptr %i.ab, align 8, !range !2982, !noalias !106651
  %i.fm = trunc nuw i32 %.pre54.i.i.i.i.i to i1
  br i1 %i.fm, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i", label %bb.ce

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i": ; preds = %.noexc26.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !106651
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i": ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i", %.noexc25.i.i.i, %.noexc24.i.i.i
  %i.fn = phi ptr [ %.pre.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i" ], [ %i.fj, %.noexc24.i.i.i ], [ %i.fk, %.noexc25.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !106651
  br label %.loopexit55.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.dd, %bb.dc, %bb.db
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i.loopexit:       ; preds = %bb.h, %bb.r, %bb.u, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z, %bb.aa, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h51f3f6cdd4d4cbcfE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.ab, %bb.ac, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ah, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i"
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
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E"(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #43
          to label %common.resume.i.i unwind label %bb.di, !noalias !106439

.loopexit55.i.i.i:                                ; preds = %bb.bu, %bb.bt, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i", %.noexc23.i.i.i, %.noexc22.i.i.i, %.noexc21.i.i.i, %bb.v, %.noexc6.i.i.i, %.noexc5.i.i.i, %bb.i
  %.sroa.1238.1.ph.i.i.i = phi ptr [ %i.eo, %.noexc21.i.i.i ], [ %i.cj, %.noexc6.i.i.i ], [ %i.ci, %.noexc5.i.i.i ], [ %i.fn, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i" ], [ %i.fa, %.noexc23.i.i.i ], [ %i.ez, %.noexc22.i.i.i ], [ %.sroa.121.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ %i.bu, %bb.i ], [ %.sroa.248.0.i.i.i.i.i.i.i.i.i.i, %bb.bt ], [ %.sroa.248.0.i.i.i.i.i.i.i.i.i.i, %bb.bu ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1238.1.ph.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !106665)
  call void @llvm.experimental.noalias.scope.decl(metadata !106668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !106671
  %.not.i.i.i.i.i.i = icmp eq ptr %.ph584, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i.i", label %bb.cd

bb.cd:                                            ; preds = %.loopexit55.i.i.i
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !106672, !noalias !106422
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !106672, !noalias !106422 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !106673, !noalias !106676
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.ph584, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !106673, !noalias !106676
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !106673, !noalias !106676
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !106673, !noalias !106676
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.ph584, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !106673, !noalias !106676
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !106673, !noalias !106676
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i.i": ; preds = %bb.cd, %.loopexit55.i.i.i
  %.sink23.i.i.i.i.i.i = phi i64 [ 1, %bb.cd ], [ 0, %.loopexit55.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.cd ], [ 0, %.loopexit55.i.i.i ]
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !106673, !noalias !106676
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.fo, align 8, !alias.scope !106673, !noalias !106676
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.fp, align 8, !alias.scope !106673, !noalias !106676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !106678
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h6b24948ab330a754E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !106683
  %i.fq = load ptr, ptr %i.h, align 8, !noalias !106678, !noundef !13
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !106678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !106678
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h6b24948ab330a754E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !106683
  %i.fr = load ptr, ptr %i.h, align 8, !noalias !106678, !noundef !13
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr105drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Kind$C$u32$GT$$GT$17heb7e3596090a6644E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hd1384698e60c7491E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !106678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !106671
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h5b459773d7a5cf3dE.exit.i.i"

bb.ce:                                            ; preds = %.noexc26.i.i.i
  %i.fs = load i32, ptr %i.bj, align 4, !noalias !106651, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !106651
  call void @llvm.experimental.noalias.scope.decl(metadata !106684)
  call void @llvm.experimental.noalias.scope.decl(metadata !106687)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.ci
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.gi, %bb.ci ], [ %i.bq, %bb.ce ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.ci ], [ %.ph584, %bb.ce ] ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.fv = load i16, ptr %i.fu, align 2, !noalias !106690, !noundef !13 ; 4 uses
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
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i575, align 1, !range !85928, !noalias !106690, !noundef !13
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
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !106694, !nonnull !13, !noundef !13
  %i.gi = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.cf

bb.cj:                                            ; preds = %.lr.ph
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.sroa.8.0.i.i.i.i.i.i.i576
  store i32 %i.fs, ptr %i.gk, align 4, !noalias !106697
  br label %bb.h

bb.ck:                                            ; preds = %._crit_edge
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !106698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !106698
  %i.gm = icmp ult i16 %i.fv, 11
  br i1 %i.gm, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gn = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !106705
  store i64 0, ptr %i.bl, align 8, !noalias !106705
  br i1 %i.gn, label %bb.cr, label %bb.co

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.fw
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.cn, label %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cm
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.go, align 1, !alias.scope !106709, !noalias !106712
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i"

bb.cn:                                            ; preds = %bb.cm
  %i.gp = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gp
  %i.gr = sub nuw nsw i64 %i.fw, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gq, ptr nonnull align 1 %i.go, i64 %i.gr, i1 false), !alias.scope !106709, !noalias !106712
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.go, align 1, !alias.scope !106709, !noalias !106712
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gp
  %i.gv = shl nuw nsw i64 %i.gr, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gu, ptr nonnull align 4 %i.gt, i64 %i.gv, i1 false), !alias.scope !106716, !noalias !106712
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.thread.i.i.i.i.i.i": ; preds = %bb.cn, %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.gx = add nuw nsw i16 %i.fv, 1
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.fs, ptr %i.gy, align 4, !alias.scope !106716, !noalias !106712
  store i16 %i.gx, ptr %i.gl, align 2, !noalias !106712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !106698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !106698
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i"

bb.co:                                            ; preds = %bb.cl
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.cp [
    i64 5, label %bb.cr
    i64 6, label %bb.cq
  ]

bb.cp:                                            ; preds = %bb.co
  store i64 6, ptr %i.bm, align 8, !noalias !106705
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h4681d6b29df39efdE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc29.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !106439

.noexc29.i.i.i:                                   ; preds = %bb.cp
  %i.gz = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc30.i.i.i

bb.cq:                                            ; preds = %bb.co
  store i64 5, ptr %i.bm, align 8, !noalias !106705
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h4681d6b29df39efdE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !106439

bb.cr:                                            ; preds = %bb.co, %bb.cl
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.cl ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.co ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.bm, align 8, !noalias !106705
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h4681d6b29df39efdE"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc30.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !106439

.noexc30.i.i.i:                                   ; preds = %bb.cr, %bb.cq, %.noexc29.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.cq ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc29.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.cr ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.cq ], [ %i.gz, %.noexc29.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.cr ] ; 6 uses
  %i.ha = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !106705, !nonnull !13, !noundef !13 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 54 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !noalias !106719, !noundef !13 ; 2 uses
  %i.hd = zext i16 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.cs, label %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc30.i.i.i
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.hf, align 1, !alias.scope !106723, !noalias !106719
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i"

bb.cs:                                            ; preds = %.noexc30.i.i.i
  %i.hg = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hg
  %i.hi = sub nuw nsw i64 %i.hd, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr nonnull align 1 %i.hf, i64 %i.hi, i1 false), !alias.scope !106723, !noalias !106719
  store i8 %.sroa.10.020.i.i.i.i.i, ptr %i.hf, align 1, !alias.scope !106723, !noalias !106719
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hg
  %i.hm = shl nuw nsw i64 %i.hi, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hl, ptr nonnull align 4 %i.hk, i64 %i.hm, i1 false), !alias.scope !106726, !noalias !106719
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i": ; preds = %bb.cs, %_ZN5alloc11collections5btree4node12slice_insert17he3a1de00e8e2d99fE.exit.i41.i.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.ho = add i16 %i.hc, 1
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.fs, ptr %i.hp, align 4, !alias.scope !106726, !noalias !106719
  store i16 %i.ho, ptr %i.hb, align 2, !noalias !106719
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !106729 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !106729 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !106729 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !106729
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !106729 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !106729 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !106698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !106698
  %.not.i.i.i27.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 18
  br i1 %.not.i.i.i27.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h383526f7f33bac04E.exit.i.i.i.i", label %bb.ct

bb.ct:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17hd0bc37a2927f9156E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.hq = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !106730, !noundef !13 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.dg, %bb.ct
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.dg ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.1024.1.i.i.i.i.i.i, %bb.dg ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.715.1.i.i.i.i.i.i, %bb.dg ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ct ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.dg ]
  call void @llvm.experimental.noalias.scope.decl(metadata !106733)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !106736
  %i.hr = call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !106736 ; 11 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.cu, label %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i, !prof !11

bb.cu:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.cv, !noalias !106736

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.cu
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.hr, align 8, !noalias !106736
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 54 ; 2 uses
  store i16 0, ptr %i.hu, align 2, !noalias !106736
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  store ptr %.ph584, ptr %i.hv, align 8, !noalias !106736
  %i.hw = add i64 %i.bq, 1
  store ptr %i.hr, ptr %.ph584, align 8, !noalias !106739
  %i.hx = getelementptr inbounds nuw i8, ptr %.ph584, i64 52
  store i16 0, ptr %i.hx, align 4, !noalias !106746
  store ptr %i.hr, ptr %i.ac, align 8, !alias.scope !106747, !noalias !106748
  store i64 %i.hw, ptr %i.bk, align 8, !alias.scope !106747, !noalias !106748
  %i.hy = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.bq
  br i1 %i.hy, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h77259e46558702d9E.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !220

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17h77259e46558702d9E.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17hc028ab36cbffc648E.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.hu, align 2, !noalias !106749
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.hz, align 8, !noalias !106749
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.ia, align 8, !noalias !106749
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.ib, align 8, !noalias !106749
end_hunk_0
begin_hunk_1_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6dc3b80c611ee5faE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !108150
  invoke fastcc void @"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$13next_key_seed12has_next_key17h0a38c32407b09c2fE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !108154

.noexc.i.i.i:                                     ; preds = %bb.h
  %i.ba = load i8, ptr %i.m, align 8, !range !1013, !noalias !108150, !noundef !13
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !108150, !nonnull !13, !align !25, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !108150
  br label %bb.q

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.be = load i8, ptr %i.aq, align 1, !range !1013, !noalias !108150, !noundef !13
  %i.bf = trunc nuw i8 %i.be to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !108150
  br i1 %i.bf, label %bb.k, label %bb.aw

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !108150
  %i.bg = load ptr, ptr %i.p, align 8, !alias.scope !108155, !noalias !108156, !nonnull !13, !align !25, !noundef !13 ; 7 uses
  invoke fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_enum17hbb6771e345b268bcE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bg)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit

.noexc5.i.i.i:                                    ; preds = %bb.k
  %i.bh = load i8, ptr %i.l, align 8, !range !1013, !noalias !108150, !noundef !13
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc5.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !108150, !nonnull !13, !align !25, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !108150
  br label %bb.q

bb.m:                                             ; preds = %.noexc5.i.i.i
  %i.bl = load i8, ptr %i.ar, align 1, !range !5618, !noalias !108150, !noundef !13 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !108150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !108157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108161)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !108164, !noalias !108169, !noundef !13 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !108175, !noalias !108176 ; 2 uses
  %i.bp = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !108164, !noalias !108169, !nonnull !13, !align !626, !noundef !13
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i
  %i.bs = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bv, %bb.o ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108178)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !108179, !noundef !13
  switch i8 %i.bu, label %bb.p [
    i8 32, label %bb.o
    i8 10, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 58, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i"
  ], !prof !1540

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bv = add i64 %i.bs, 1                        ; 3 uses
  store i64 %i.bv, ptr %i.bm, align 8, !alias.scope !108180, !noalias !108176
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.bo
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.n

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !108183
  store i64 3, ptr %i.j, align 8, !noalias !108183
  %i.bw = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !108154

.noexc6.i.i.i:                                    ; preds = %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !108183
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i"

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !108183
  store i64 6, ptr %i.k, align 8, !noalias !108183
  %i.bx = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bg, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !108154

.noexc7.i.i.i:                                    ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !108183
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i": ; preds = %bb.n
  %i.by = add i64 %i.bs, 1
  store i64 %i.by, ptr %i.bm, align 8, !alias.scope !108184, !noalias !108187
  invoke fastcc void @"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$u32$GT$11deserialize17hb6b4db9901790b05E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.bg)
          to label %.noexc8.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit, !noalias !108154

.noexc8.i.i.i:                                    ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i"
  %.pre.i.i.i.i.i = load i32, ptr %i.n, align 8, !range !2982, !noalias !108157
  %i.bz = trunc nuw i32 %.pre.i.i.i.i.i to i1
  br i1 %i.bz, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i", label %bb.s

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i": ; preds = %.noexc8.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !108157
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i": ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i", %.noexc7.i.i.i, %.noexc6.i.i.i
  %i.ca = phi ptr [ %.pre.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i._crit_edge.i.i.i.i" ], [ %i.bw, %.noexc6.i.i.i ], [ %i.bx, %.noexc7.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !108157
  br label %bb.q

.loopexit.i.i.i:                                  ; preds = %bb.ar, %bb.aq, %bb.ap
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i.loopexit:       ; preds = %bb.h, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.i.i.i.i.i", %bb.k
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
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #43
          to label %common.resume.i.i unwind label %bb.ax, !noalias !108154

bb.q:                                             ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i", %bb.l, %bb.i
  %.sroa.1220.1.ph.i.i.i = phi ptr [ %i.bk, %bb.l ], [ %i.ca, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h89f7253c0a36b4c6E.exit.thread.i.i.i.i.i" ], [ %i.bd, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1220.1.ph.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !108194
  %.not.i.i.i.i.i.i = icmp eq ptr %.ph347, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !108195, !noalias !108137
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !108195, !noalias !108137 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !108196, !noalias !108199
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.ph347, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !108196, !noalias !108199
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !108196, !noalias !108199
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !108196, !noalias !108199
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.ph347, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !108196, !noalias !108199
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !108196, !noalias !108199
  br label %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i.i"

"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i.i": ; preds = %bb.r, %bb.q
  %.sink23.i.i.i.i.i.i = phi i64 [ 1, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.r ], [ 0, %bb.q ]
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.i, align 8, !alias.scope !108196, !noalias !108199
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sink23.i.i.i.i.i.i, ptr %i.cb, align 8, !alias.scope !108196, !noalias !108199
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i.i.i, ptr %i.cc, align 8, !alias.scope !108196, !noalias !108199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !108201
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha46e023301a232d2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !108206
  %i.cd = load ptr, ptr %i.h, align 8, !noalias !108201, !noundef !13
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !108201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !108201
  call fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17ha46e023301a232d2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i), !noalias !108206
  %i.ce = load ptr, ptr %i.h, align 8, !noalias !108201, !noundef !13
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN4core3ptr107drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$meilisearch_types..tasks..Status$C$u32$GT$$GT$17hd12d8e61663dc994E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %"_ZN119_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h591dc62cb05d5d8cE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !108201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !108194
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h612a494dc93607f9E.exit.i.i"

bb.s:                                             ; preds = %.noexc8.i.i.i
  %i.cf = load i32, ptr %i.as, align 4, !noalias !108157, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !108157
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108210)
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.w
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.w ], [ %.ph347, %bb.s ] ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 56 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !108213, !noundef !13 ; 4 uses
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
  %.val7.i.i.i.i.i.i.i = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i341, align 1, !range !5618, !noalias !108213, !noundef !13
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
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !108217, !nonnull !13, !noundef !13
  %i.cv = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.t

bb.x:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.sroa.8.0.i.i.i.i.i.i.i342
  store i32 %i.cf, ptr %i.cx, align 4, !noalias !108220
  br label %bb.h

bb.y:                                             ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !108221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !108221
  %i.cz = icmp ult i16 %i.ci, 11
  br i1 %i.cz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !108228
  store i64 0, ptr %i.au, align 8, !noalias !108228
  br i1 %i.da, label %bb.af, label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.cj
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.ab, label %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !108232, !noalias !108235
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dc
  %i.de = sub nuw nsw i64 %i.cj, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.db, i64 %i.de, i1 false), !alias.scope !108232, !noalias !108235
  store i8 %i.bl, ptr %i.db, align 1, !alias.scope !108232, !noalias !108235
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dc
  %i.di = shl nuw nsw i64 %i.de, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr nonnull align 4 %i.dg, i64 %i.di, i1 false), !alias.scope !108239, !noalias !108235
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.thread.i.i.i.i.i.i": ; preds = %bb.ab, %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.dk = add nuw nsw i16 %i.ci, 1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.dl, align 4, !alias.scope !108239, !noalias !108235
  store i16 %i.dk, ptr %i.cy, align 2, !noalias !108235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !108221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !108221
  br label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i"

bb.ac:                                            ; preds = %bb.z
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.ad [
    i64 5, label %bb.af
    i64 6, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  store i64 6, ptr %i.av, align 8, !noalias !108228
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h910abb89a9049a35E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !108154

.noexc11.i.i.i:                                   ; preds = %bb.ad
  %i.dm = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %.noexc12.i.i.i

bb.ae:                                            ; preds = %bb.ac
  store i64 5, ptr %i.av, align 8, !noalias !108228
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h910abb89a9049a35E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !108154

bb.af:                                            ; preds = %bb.ac, %bb.z
  %.sink61.i.i.i.i.i.i.i = phi i64 [ 4, %bb.z ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.ac ]
  store i64 %.sink61.i.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !108228
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h910abb89a9049a35E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc12.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.loopexit.split-lp, !noalias !108154

.noexc12.i.i.i:                                   ; preds = %bb.af, %bb.ae, %.noexc11.i.i.i
  %.sink58.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %bb.ae ], [ %.sink58.i.sroa.gep37.i.i.i.i.i.i, %.noexc11.i.i.i ], [ %.sink58.i.sroa.gep.i.i.i.i.i.i, %bb.af ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.dm, %.noexc11.i.i.i ], [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.af ] ; 6 uses
  %i.dn = load ptr, ptr %.sink58.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !108228, !nonnull !13, !noundef !13 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 54 ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !noalias !108242, !noundef !13 ; 2 uses
  %i.dq = zext i16 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 56 ; 2 uses
  %.not.i40.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i.i.i.i.i, label %bb.ag, label %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i41.i.i.i.i.i.i.i

_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i41.i.i.i.i.i.i.i: ; preds = %.noexc12.i.i.i
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !108246, !noalias !108242
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i"

bb.ag:                                            ; preds = %.noexc12.i.i.i
  %i.dt = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = sub nuw nsw i64 %i.dq, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.ds, i64 %i.dv, i1 false), !alias.scope !108246, !noalias !108242
  store i8 %i.bl, ptr %i.ds, align 1, !alias.scope !108246, !noalias !108242
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dt
  %i.dz = shl nuw nsw i64 %i.dv, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr nonnull align 4 %i.dx, i64 %i.dz, i1 false), !alias.scope !108249, !noalias !108242
  br label %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i"

"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i": ; preds = %bb.ag, %_ZN5alloc11collections5btree4node12slice_insert17hee24825d9c996e1fE.exit.i41.i.i.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eb = add i16 %i.dp, 1
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.10.0.i.i.i.i.i.i.i
  store i32 %i.cf, ptr %i.ec, align 4, !alias.scope !108249, !noalias !108242
  store i16 %i.eb, ptr %i.do, align 2, !noalias !108242
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i8, ptr %i.f, align 8, !noalias !108252 ; 3 uses
  %.sroa.61.0.copyload.i.i.i.i.i.i = load i32, ptr %.sroa.61.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !108252 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !108252 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !108252
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink58.i.sroa.gep37.i.i.i.i.i.i, align 8, !noalias !108252 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink57.i.sroa.gep39.i.i.i.i.i.i, align 8, !noalias !108252 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !108221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !108221
  %.not.i.i.i9.i.i.i = icmp eq i8 %.sroa.0.0.copyload.i.i.i.i.i.i, 5
  br i1 %.not.i.i.i9.i.i.i, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h6f17c1ef1d206fe2E.exit.i.i.i.i", label %bb.ah

bb.ah:                                            ; preds = %"_ZN5alloc11collections5btree4node210Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$6insert17h941c31d4032a2973E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i.i.i.i) ]
  %i.ed = load ptr, ptr %.sroa.7.0.copyload.i.i.i.i.i.i, align 8, !noalias !108253, !noundef !13 ; 2 uses
  %.not.i91.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i91.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.au, %bb.ah
  %.sroa.13.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1127.0.copyload29.i.i.i.i.i.i, %bb.au ]
  %.sroa.11.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.9.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.1024.1.i.i.i.i.i.i, %bb.au ] ; 3 uses
  %.sroa.74.0.lcssa.i.i.i.i.i.i = phi i32 [ %.sroa.61.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.715.1.i.i.i.i.i.i, %bb.au ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i8 [ %.sroa.0.0.copyload.i.i.i.i.i.i, %bb.ah ], [ %.sroa.011.0.i.i.i.i.i.i, %bb.au ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108256)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !108259
  %i.ee = tail call noalias noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !108259 ; 11 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ai, label %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i, !prof !11

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 168) #41
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.aj, !noalias !108259

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr null, ptr %i.ee, align 8, !noalias !108259
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 54 ; 2 uses
  store i16 0, ptr %i.eh, align 2, !noalias !108259
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  store ptr %.ph347, ptr %i.ei, align 8, !noalias !108259
  %i.ej = add i64 %i.az, 1
  store ptr %i.ee, ptr %.ph347, align 8, !noalias !108262
  %i.ek = getelementptr inbounds nuw i8, ptr %.ph347, i64 52
  store i16 0, ptr %i.ek, align 4, !noalias !108269
  store ptr %i.ee, ptr %i.o, align 8, !alias.scope !108270, !noalias !108271
  store i64 %i.ej, ptr %i.at, align 8, !alias.scope !108270, !noalias !108271
  %i.el = icmp eq i64 %.sroa.13.0.lcssa.i.i.i.i.i.i, %i.az
  br i1 %i.el, label %"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17ha34b81c056644bfdE.exit.i.i.i.i.i.i", label %.invoke.i.i.i, !prof !220

"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry28_$u7b$$u7b$closure$u7d$$u7d$17ha34b81c056644bfdE.exit.i.i.i.i.i.i": ; preds = %_ZN5alloc11collections5btree3mem7replace17hc33c1d4b00610d9dE.exit.i.i.i.i.i.i.i
  store i16 1, ptr %i.eh, align 2, !noalias !108272
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  store i8 %.sroa.0.0.lcssa.i.i.i.i.i.i, ptr %i.em, align 8, !noalias !108272
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i32 %.sroa.74.0.lcssa.i.i.i.i.i.i, ptr %i.en, align 8, !noalias !108272
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store ptr %.sroa.11.0.lcssa.i.i.i.i.i.i, ptr %i.eo, align 8, !noalias !108272
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h74563b9ee6ee587fE":bb.a
  %i.pg = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h7059d30ebc5bc17fE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.eg)
          to label %bb.ed unwind label %bb.ec, !noalias !111278 ; 10 uses

bb.ec:                                            ; preds = %bb.eb
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$core..result..Result$LT$meilisearch_types..webhooks..Webhook$C$serde_json..error..Error$GT$$GT$17h3faa2b32b2660427E"(ptr noalias noundef align 8 dereferenceable(48) %i.y) #43
          to label %.body.i.i.i unwind label %bb.bx, !noalias !111278

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !noalias !111282
  store ptr %i.pg, ptr %i.de, align 8, !noalias !111282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !111282
  %i.pi = load i64, ptr %i.z, align 8, !range !641, !noalias !111282, !noundef !13 ; 4 uses
  %i.pj = icmp eq i64 %i.pi, -9223372036854775808
  br i1 %i.pj, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %.sroa.225.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !111282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.326.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !111282
  br label %.thread22.i.i.i.i.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ed
  %i.pk = load ptr, ptr %i.df, align 8, !noalias !111282, !nonnull !13, !align !25, !noundef !13 ; 2 uses
  %.not29.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.pg, null
  br i1 %.not29.i.i.i.i.i.i.i.i.i, label %.thread22.i.i.i.i.i.i.i.i.i, label %bb.ej

bb.eh:                                            ; preds = %bb.ee
  call void @llvm.experimental.noalias.scope.decl(metadata !111436)
  call void @llvm.experimental.noalias.scope.decl(metadata !111439)
  call void @llvm.experimental.noalias.scope.decl(metadata !111442)
  %i.pl = icmp eq i64 %i.pi, 0
  br i1 %i.pl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i68.i.i.i.i.i.i.i.i.i", label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.val1.i.i.i67.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !111445, !noalias !111282, !nonnull !13, !noundef !13
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i67.i.i.i.i.i.i.i.i.i, i64 noundef %i.pi, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !111446
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i68.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i68.i.i.i.i.i.i.i.i.i": ; preds = %bb.ei, %bb.eh
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17hbde378d143e303eeE"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.dg)
          to label %.thread22.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i, !noalias !111172

.thread22.i.i.i.i.i.i.i.i.i:                      ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i68.i.i.i.i.i.i.i.i.i", %bb.eg, %bb.ef
  %.sroa.09.328.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.eg ], [ -9223372036854775808, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i" ], [ %i.pi, %bb.ef ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i68.i.i.i.i.i.i.i.i.i" ]
  %.sroa.12.327.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pk, %bb.eg ], [ %i.pk, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i.i.i.i.i, %bb.ef ], [ %i.pg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i68.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !111282
  br label %bb.cc

bb.ej:                                            ; preds = %bb.eg
  call void @llvm.experimental.noalias.scope.decl(metadata !111447)
  call void @llvm.experimental.noalias.scope.decl(metadata !111450)
  %i.pm = load i64, ptr %i.pg, align 8, !range !1471, !alias.scope !111453, !noalias !111278, !noundef !13
  switch i64 %i.pm, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i" [
    i64 0, label %bb.ek
    i64 1, label %bb.el
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %.val1.i.i.i.i70.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pn, align 8, !alias.scope !111453, !noalias !111278, !noundef !13 ; 2 uses
  %i.po = icmp eq i64 %.val1.i.i.i.i70.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.po, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i71.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i71.i.i.i.i.i.i.i.i.i": ; preds = %bb.ek
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %.val.i.i.i.i72.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pp, align 8, !alias.scope !111453, !noalias !111278, !nonnull !13, !noundef !13
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i72.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i70.i.i.i.i.i.i.i.i.i, i64 noundef 1) #42, !noalias !111454
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i"

bb.el:                                            ; preds = %bb.ej
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.pq)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i" unwind label %bb.em, !noalias !111278

bb.em:                                            ; preds = %bb.el
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pg, i64 noundef 40, i64 noundef 8) #42, !noalias !111278
  br label %.body.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h5462876ad9a9693dE.exit73.i.i.i.i.i.i.i.i.i": ; preds = %bb.el, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i71.i.i.i.i.i.i.i.i.i", %bb.ek, %bb.ej
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pg, i64 noundef 40, i64 noundef 8) #42, !noalias !111278
  br label %.thread22.i.i.i.i.i.i.i.i.i

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h4ce8b70a8b050ad2E.exit.thread34.i.i.i.i.i": ; preds = %bb.cc, %bb.aq
  %.sroa.12.5.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %bb.aq ], [ %.sroa.12.2.i.i.i.i.i.i.i.i.i, %bb.cc ]
  %.val58.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fr, align 8, !alias.scope !111277, !noalias !111278
  %.val59.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fp, align 8, !alias.scope !111277, !noalias !111278
  %i.ps = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17he31acd0043bb3d2eE(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i.i.i.i.i, i64 %.val58.i.i.i.i.i.i.i.i.i, i64 %.val59.i.i.i.i.i.i.i.i.i)
          to label %.noexc22.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !111172

.noexc22.i.i.i:                                   ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h4ce8b70a8b050ad2E.exit.thread34.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i.i.i)
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h4ce8b70a8b050ad2E.exit.thread.i.i.i.i.i"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h4ce8b70a8b050ad2E.exit.thread.i.i.i.i.i": ; preds = %.noexc9.i.i.i, %.noexc22.i.i.i, %bb.bn, %.noexc11.i.i.i
  %.sroa.1012.133.i.i.i.i.i = phi ptr [ %i.ps, %.noexc22.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i.i, %bb.bn ], [ %i.gs, %.noexc11.i.i.i ], [ %i.fm, %.noexc9.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1012.133.i.i.i.i.i) ]
  br label %bb.en

.loopexit.i.i.i:                                  ; preds = %bb.an
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17hf2c9ff55970d367dE.exit.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i68.i.i.i.i.i.i.i.i.i", %bb.cg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i.i.i", %bb.bh, %bb.az, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h5b7cd31f5905735dE.exit.i.i.i.i.i.i.i.i.i", %bb.aw, %bb.ac, %bb.ab, %bb.aa, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h5b7cd31f5905735dE.exit.i.i.i.i.i.i.i.i.i.i", %bb.y, %bb.t
  %lpad.loopexit39.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h4ce8b70a8b050ad2E.exit.thread34.i.i.i.i.i", %bb.dz, %bb.bm, %bb.aq, %bb.ap, %_ZN10serde_core2de7Visitor18visit_borrowed_str17h5c378e870b5b0207E.exit.i.i.i.i.thread.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf363a8afc567a1e5E.exit.thread24.i.i.i.i.i.i"
  %lpad.loopexit.split-lp40.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.gt, %bb.gn, %bb.fq, %bb.fj, %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit.i.i.i, %bb.em, %bb.ec, %bb.dy, %bb.du, %bb.du, %bb.cb, %bb.bq, %bb.bj, %bb.bi
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.iq, %bb.bq ], [ %.pn98.i.i.i.i.i.i.i.i.i.i, %bb.du ], [ %i.jb, %bb.cb ], [ %i.if, %bb.bi ], [ %i.pr, %bb.em ], [ %i.if, %bb.bj ], [ %.pn98.i.i.i.i.i.i.i.i.i.i, %bb.dy ], [ %.pn98.i.i.i.i.i.i.i.i.i.i, %bb.du ], [ %i.ph, %bb.ec ], [ %i.aaw, %bb.gt ], [ %i.sh, %bb.fj ], [ %lpad.phi.i.i.i.i.i.i, %bb.gn ], [ %i.sy, %bb.fq ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit39.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp40.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$GT$17h9ba74d72064b490fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #43
          to label %common.resume.i.i unwind label %bb.gx, !noalias !111172

bb.en:                                            ; preds = %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h4ce8b70a8b050ad2E.exit.thread.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf363a8afc567a1e5E.exit.thread.i.i.i.i.i.i", %bb.u
  %storemerge.i.i.i = phi ptr [ %.sroa.1012.133.i.i.i.i.i, %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17h4ce8b70a8b050ad2E.exit.thread.i.i.i.i.i" ], [ %i.ed, %bb.u ], [ %.sroa.10.220.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hf363a8afc567a1e5E.exit.thread.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.0.i.i.i.i.i)
  call fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$uuid..Uuid$C$meilisearch_types..webhooks..Webhook$GT$$GT$17h9ba74d72064b490fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ap), !noalias !111172
  br label %"_ZN215_$LT$serde_core..de..impls..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$GT$..deserialize..MapVisitor$LT$K$C$V$GT$$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h2cf4d8f07588e417E.exit.i.i"

bb.eo:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.sroa.2.0..sroa.4.16..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !111155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ao, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i.sroa.0.i.i.i.i.i, i64 6, i1 false), !noalias !111155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.0.i.i.i.i.i)
  store i8 %.sroa.7.i.sroa.7.0.i.i.i.i.i, ptr %.sroa.027.i.sroa.4.0..sroa_idx.i.i, align 2, !noalias !111155
  store ptr %.sroa.10.223.i.i.i.i.i.i, ptr %.sroa.027.i.sroa.5.0..sroa_idx.i.i, align 1, !noalias !111155
  store i8 %.sroa.14.222.i.i.i.i.i.i, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 1, !noalias !111155
  store i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i, ptr %i.an, align 8, !noalias !111155
  store ptr %.sroa.12.2.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.16..sroa_idx.i.i.i, align 8, !noalias !111155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !111155
  call void @llvm.experimental.noalias.scope.decl(metadata !111455)
  call void @llvm.experimental.noalias.scope.decl(metadata !111458)
  call void @llvm.experimental.noalias.scope.decl(metadata !111460)
  call void @llvm.experimental.noalias.scope.decl(metadata !111463)
  call void @llvm.experimental.noalias.scope.decl(metadata !111465)
  %.not.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.pt = load i64, ptr %i.dr, align 8, !alias.scope !111467, !noalias !111468, !noundef !13 ; 3 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.et, %bb.ep
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.pt, %bb.ep ], [ %i.qw, %bb.et ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.dz, %bb.ep ], [ %i.qv, %bb.et ] ; 11 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 714
  %i.pv = load i16, ptr %i.pu, align 2, !noalias !111471, !noundef !13 ; 4 uses
  %i.pw = zext i16 %i.pv to i64                   ; 5 uses
  %.idx = shl nuw nsw i64 %i.pw, 4
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 %.idx
  %i.py = icmp eq i16 %i.pv, 0
  br i1 %i.py, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i"

bb.er:                                            ; preds = %endblock
  %i.pz = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i1301, 1
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i.i1300, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.px
  br i1 %i.qb, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i._crit_edge", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i": ; preds = %bb.eq, %bb.er
  %.sroa.8.0.i.i.i.i.i.i.i1301 = phi i64 [ %i.pz, %bb.er ], [ 0, %bb.eq ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.i1300 = phi ptr [ %i.qa, %bb.er ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.eq ] ; 3 uses
  %i.qc = load i64, ptr %i.ao, align 8
  %i.qd = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i1300, align 1
  %i.qe = call i64 @llvm.bswap.i64(i64 %i.qc)     ; 2 uses
  %i.qf = call i64 @llvm.bswap.i64(i64 %i.qd)     ; 2 uses
  %i.qg = icmp eq i64 %i.qe, %i.qf
  br i1 %i.qg, label %loadbb2022, label %res_block

res_block:                                        ; preds = %loadbb2022, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i"
  %phi.src1 = phi i64 [ %i.qe, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i" ], [ %i.qn, %loadbb2022 ]
  %phi.src2 = phi i64 [ %i.qf, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i" ], [ %i.qo, %loadbb2022 ]
  %i.qh = icmp ult i64 %phi.src1, %phi.src2
  %i.qi = select i1 %i.qh, i32 -1, i32 1
  br label %endblock

loadbb2022:                                       ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i"
  %i.qj = getelementptr i8, ptr %i.ao, i64 8
  %i.qk = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i.i.i1300, i64 8
  %i.ql = load i64, ptr %i.qj, align 8
  %i.qm = load i64, ptr %i.qk, align 1
  %i.qn = call i64 @llvm.bswap.i64(i64 %i.ql)     ; 2 uses
  %i.qo = call i64 @llvm.bswap.i64(i64 %i.qm)     ; 2 uses
  %i.qp = icmp eq i64 %i.qn, %i.qo
  br i1 %i.qp, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb2022
  %phi.res = phi i32 [ 0, %loadbb2022 ], [ %i.qi, %res_block ]
  %i.qq = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  switch i8 %i.qq, label %bb.es [
    i8 -1, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i._crit_edge"
    i8 0, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hbc5679b822478e31E.exit.i.i.i"
    i8 1, label %bb.er
  ]

bb.es:                                            ; preds = %endblock
  unreachable

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i._crit_edge": ; preds = %bb.er, %endblock, %bb.eq
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i64 [ %i.pw, %bb.eq ], [ %i.pw, %bb.er ], [ %.sroa.8.0.i.i.i.i.i.i.i1301, %endblock ] ; 13 uses
  %i.qr = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, 0
  br i1 %i.qr, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i._crit_edge"
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 720
  %i.qt = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12
  call void @llvm.assume(i1 %i.qt)
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.qv = load ptr, ptr %i.qu, align 8, !noalias !111477, !nonnull !13, !noundef !13
  %i.qw = add i64 %.sroa.3.0.i.i.i.i.i.i, -1
  br label %bb.eq

.thread.i.i.i.i:                                  ; preds = %bb.eo
  %.sroa.7.8.copyload8.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !111480, !noalias !111481
  %.sroa.11.8.copyload12.i.i.i.i = load i64, ptr %.sroa.11.8..sroa_idx9.i.i.i.i, align 8, !alias.scope !111480, !noalias !111481
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !111482
  %i.qx = call noalias noundef align 8 dereferenceable_or_null(720) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 720, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !111482 ; 8 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.ev, label %bb.ew, !prof !11

bb.eu:                                            ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7388d2f0e72c1067E.exit.i.i.i.i.i.i.i._crit_edge"
  %i.qz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 714
  %.sroa.7.8.copyload7.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !111480, !noalias !111481 ; 2 uses
  %.sroa.11.8.copyload10.i.i.i.i = load i64, ptr %.sroa.11.8..sroa_idx9.i.i.i.i, align 8, !alias.scope !111480, !noalias !111481 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0182.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !111487
  %i.ra = icmp ugt i16 %i.pv, 10
  br i1 %i.ra, label %bb.ex, label %bb.ey

bb.ev:                                            ; preds = %.thread.i.i.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 720) #41
          to label %.noexc.i.i.i.i.i unwind label %bb.gt, !noalias !111482

.noexc.i.i.i.i.i:                                 ; preds = %bb.ev
  unreachable

bb.ew:                                            ; preds = %.thread.i.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 704
  store ptr null, ptr %i.rb, align 8, !noalias !111482
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qx, i64 714
  store ptr %i.qx, ptr %i.ap, align 8, !alias.scope !111455, !noalias !111493
  store i64 0, ptr %i.dr, align 8, !alias.scope !111455, !noalias !111493
  store i16 1, ptr %i.rc, align 2, !noalias !111494
  store ptr %.sroa.7.8.copyload8.i.i.i.i, ptr %i.qx, align 8, !noalias !111499
  %.sroa.9.8..sroa_idx26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store i64 %.sroa.11.8.copyload12.i.i.i.i, ptr %.sroa.9.8..sroa_idx26.i.i.i.i, align 8, !noalias !111499
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qx, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rd, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.an, i64 48, i1 false), !noalias !111500
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hbc5679b822478e31E.exit.thread.i.i.i"

bb.ex:                                            ; preds = %bb.eu
  %i.re = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !111501
  store i64 0, ptr %i.du, align 8, !noalias !111501
  br i1 %i.re, label %.invoke.i.i.i.i.i.i.i, label %bb.fb

bb.ey:                                            ; preds = %bb.eu
  %.not.i.i.i.i.not.i.i.i.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, %i.pw
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i.i.i.i.not.i.i.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.an, i64 48, i1 false), !noalias !111507
  call void @llvm.experimental.noalias.scope.decl(metadata !111508)
  br label %.thread.i.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ey
  %i.rg = add nuw nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1 ; 2 uses
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.i.i.i.i, i64 %i.rg
  %i.ri = sub nuw nsw i64 %i.pw, %.sroa.4.0.i.ph.i.i.i.i.i.i ; 2 uses
  %i.rj = shl nuw nsw i64 %i.ri, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rh, ptr nonnull align 1 %i.rf, i64 %i.rj, i1 false), !alias.scope !111511, !noalias !111514
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.an, i64 48, i1 false), !noalias !111507
  %i.rl = getelementptr inbounds nuw [48 x i8], ptr %i.rk, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  %i.rm = getelementptr inbounds nuw [48 x i8], ptr %i.rk, i64 %i.rg
  %i.rn = mul nuw nsw i64 %i.ri, 48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rm, ptr nonnull align 8 %i.rl, i64 %i.rn, i1 false), !alias.scope !111521, !noalias !111523
  br label %.thread.i.i.i.i.i.i

bb.fb:                                            ; preds = %bb.ex
  switch i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.fc [
    i64 5, label %.invoke.i.i.i.i.i.i.i
    i64 6, label %bb.fd
  ]

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.fb, %bb.ex
  %.sink.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %bb.fb ], [ 4, %bb.ex ]
  store i64 %.sink.i.i.i.i.i.i.i, ptr %i.dv, align 8, !noalias !111501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !111501
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h16f53b9310e537cfE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ff unwind label %bb.fj, !noalias !111524

bb.fc:                                            ; preds = %bb.fb
  store i64 6, ptr %i.dv, align 8, !noalias !111501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !111501
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h16f53b9310e537cfE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.fe unwind label %bb.fj, !noalias !111524

bb.fd:                                            ; preds = %bb.fb
  store i64 5, ptr %i.dv, align 8, !noalias !111501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !111501
  invoke fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h16f53b9310e537cfE"(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ff unwind label %bb.fj, !noalias !111524

bb.fe:                                            ; preds = %bb.fc
  %i.ro = add nsw i64 %.sroa.4.0.i.ph.i.i.i.i.i.i, -7
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %.invoke.i.i.i.i.i.i.i
  %.sink62.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sink62.i.sroa.gep.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ %.sink62.i.sroa.gep41.i.i.i.i.i.i, %bb.fd ], [ %.sink62.i.sroa.gep41.i.i.i.i.i.i, %bb.fe ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i.i.i.i.i, %.invoke.i.i.i.i.i.i.i ], [ 0, %bb.fd ], [ %i.ro, %bb.fe ] ; 6 uses
  %i.rp = load ptr, ptr %.sink62.i.sroa.phi.i.i.i.i.i.i, align 8, !noalias !111501, !nonnull !13, !noundef !13 ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 714 ; 2 uses
  %i.rr = load i16, ptr %i.rq, align 2, !noalias !111525, !noundef !13 ; 2 uses
  %i.rs = zext i16 %i.rr to i64                   ; 2 uses
  %.not.i41.not.i.i.i.i.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i.i.i.i.i, %i.rs
  %i.rt = getelementptr inbounds nuw [16 x i8], ptr %i.rp, i64 %.sroa.10.0.i.i.i.i.i.i.i ; 3 uses
  br i1 %.not.i41.not.i.i.i.i.i.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.an, i64 48, i1 false), !noalias !111507
  call void @llvm.experimental.noalias.scope.decl(metadata !111531)
  br label %bb.fk

bb.fh:                                            ; preds = %bb.ff
  %i.ru = add nuw nsw i64 %.sroa.10.0.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.rp, i64 %i.ru
  %i.rw = sub nuw nsw i64 %i.rs, %.sroa.10.0.i.i.i.i.i.i.i ; 2 uses
  %i.rx = shl nuw nsw i64 %i.rw, 4
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rv, ptr nonnull align 1 %i.rt, i64 %i.rx, i1 false), !alias.scope !111534, !noalias !111537
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rp, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.an, i64 48, i1 false), !noalias !111507
  %i.rz = getelementptr inbounds nuw [48 x i8], ptr %i.ry, i64 %.sroa.10.0.i.i.i.i.i.i.i
  %i.sa = getelementptr inbounds nuw [48 x i8], ptr %i.ry, i64 %i.ru
  %i.sb = mul nuw nsw i64 %i.rw, 48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.sa, ptr nonnull align 8 %i.rz, i64 %i.sb, i1 false), !alias.scope !111539, !noalias !111541
  br label %bb.fk

bb.fi:                                            ; preds = %bb.fj
  %i.sc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !111524
  unreachable

.thread.i.i.i.i.i.i:                              ; preds = %bb.fa, %bb.ez
  store ptr %.sroa.7.8.copyload7.i.i.i.i, ptr %i.rf, align 1, !noalias !111499
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i64 %.sroa.11.8.copyload10.i.i.i.i, ptr %i.sd, align 1, !noalias !111499
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 176
  %i.sf = add nuw nsw i16 %i.pv, 1
  %i.sg = getelementptr inbounds nuw [48 x i8], ptr %i.se, i64 %.sroa.4.0.i.ph.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sg, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.f, i64 48, i1 false), !alias.scope !111542, !noalias !111543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.sf, ptr %i.qz, align 2, !noalias !111543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !111487
  br label %bb.fm

bb.fj:                                            ; preds = %bb.fd, %bb.fc, %.invoke.i.i.i.i.i.i.i
  %i.sh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$meilisearch_types..webhooks..Webhook$GT$17hf2c9ff55970d367dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.an) #43
          to label %.body.i.i.i unwind label %bb.fi, !noalias !111500

bb.fk:                                            ; preds = %bb.fh, %bb.fg
  store ptr %.sroa.7.8.copyload7.i.i.i.i, ptr %i.rt, align 1, !noalias !111499
  %i.si = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store i64 %.sroa.11.8.copyload10.i.i.i.i, ptr %i.si, align 1, !noalias !111499
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rp, i64 176
  %i.sk = add i16 %i.rr, 1
  %i.sl = getelementptr inbounds nuw [48 x i8], ptr %i.sj, i64 %.sroa.10.0.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.sl, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !alias.scope !111544, !noalias !111525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i16 %i.sk, ptr %i.rq, align 2, !noalias !111525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !111545
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !111545 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i, i64 40, i1 false), !noalias !111545
  %.sroa.78.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink62.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !111545 ; 4 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink61.i.sroa.gep.i.i.i.i.i.i, align 8, !noalias !111545 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sink62.i.sroa.gep41.i.i.i.i.i.i, align 8, !noalias !111545 ; 3 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sink61.i.sroa.gep43.i.i.i.i.i.i, align 8, !noalias !111545 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !111501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !111487
end_hunk_2
begin_hunk_3_@"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdacb55dad24a48b7E"
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdacb55dad24a48b7E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17habcca6f8b95852b3E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h6ba6552543d5bbccE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h96a2df68957e9d9cE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5e76d9b1ba539a0aE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h04d94a92680cde33E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h71b7fb4f33c88492E"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbf0ea5db536d8aeaE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbc82ab6aad049e8fE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h877425924756c09cE"(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #36

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef) unnamed_addr #37

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #38

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN4core5slice4sort6stable14driftsort_main17hb9285367ba39bd98E(ptr noalias noundef nonnull align 8, i64 noundef, ptr noalias noundef nonnull align 1) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_ZN14regex_automata4meta5regex5Regex15create_captures17hd1f1c41fe24ba5c3E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN87_$LT$serde..private..de..content..ExpectedInMap$u20$as$u20$serde_core..de..Expected$GT$3fmt17hee50c1e5b7c0889eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN87_$LT$serde..private..de..content..ExpectedInSeq$u20$as$u20$serde_core..de..Expected$GT$3fmt17h5209ed9fb190c9f6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN10serde_json5error10make_error17h0aca2ec88570a3b5E(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$10clone_from17h3b1113510cb58582E"(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #31

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef i64 @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_encode17h4ab468344a4a115aE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN6base646encode11add_padding17hfee52ebf0de15a1fE(i64 noundef, ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_decode17he366f845365a0b7dE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(323), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull align 1, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdb194af966c9b62eE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h6a1c31c5c37b4364E"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h283b209be273917cE"(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h191f38cb1e56328fE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i128(i128, i128) #31

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 0, 289) i16 @"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i16, i16 } @_ZN10serde_json4read22decode_four_hex_digits17h7f6a17924b407a69E(i8 noundef, i8 noundef, i8 noundef, i8 noundef) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef range(i8 0, 42), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_ZN3std2io5error5Error3new17h3d5870e22f9457d9E(i8 noundef range(i8 0, 42), i64 noundef, i64 noundef) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_ZN3std2io5error5Error3new17h7157d976289c6a33E(i8 noundef range(i8 0, 42), i64 noundef, i1 noundef zeroext) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_ZN7roaring6bitmap5store5Store13with_capacity17hc6b77316ec3dc503E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN7roaring6bitmap5store5Store12insert_range17h99c18b5fd54fe8ebE(ptr noalias noundef align 8 dereferenceable(24), i48) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN7roaring6bitmap9container9Container8contains17h29a1f91ea813ef1eE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i16 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN7roaring6bitmap9container9Container20ensure_correct_store17hc18ddf6a5eea8937E(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17he39bb96de29f0249E"(ptr noalias noundef align 4 dereferenceable(4), i64 noundef range(i64 0, 3), i64 noundef) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli10heed_codec14roaring_bitmap24cbo_roaring_bitmap_codec21CboRoaringBitmapCodec18serialize_into_vec17hf8b4f2c0d3df5053E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN66_$LT$milli..criterion..Criterion$u20$as$u20$core..fmt..Display$GT$3fmt17h9e32f299f4b2ac6dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5serde7private2de19flat_map_take_entry17he0694281756fc3ddE(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_ZN10serde_json3ser17invalid_raw_value17h7b86ac75f635f2e0E() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN5milli10heed_codec14roaring_bitmap24cbo_roaring_bitmap_codec21CboRoaringBitmapCodec16deserialize_from17he826154b066657bcE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$13parse_str_raw17h800a6d7beff91465E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114112) i32 @_ZN9byte_unit6common19get_char_from_bytes17h3278923d4ab29cc8E(i8 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @"_ZN78_$LT$rust_decimal..decimal..Decimal$u20$as$u20$core..ops..arith..AddAssign$GT$10add_assign17h830300418ac00dd0E"(ptr noalias noundef align 4 dereferenceable(16), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN9byte_unit4unit5parse8read_xib17h2d84fa7f2a734216E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i1 noundef zeroext, i8, ptr noundef nonnull, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @"_ZN65_$LT$rust_decimal..decimal..Decimal$u20$as$u20$core..cmp..Ord$GT$3cmp17h15260d3ac525b478E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_ZN12rust_decimal7decimal7Decimal4ceil17h0de2e8be52f0bddeE(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"_ZN80_$LT$rust_decimal..decimal..Decimal$u20$as$u20$num_traits..cast..ToPrimitive$GT$6to_u6417h3f45ba8693bae9d2E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #33

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17hbda1b32cb3f89ae5E(i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h426e5247b99c5843E(i1 noundef zeroext) unnamed_addr #2

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h735543a5df864733E"(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_ZN9once_cell3imp18initialize_or_wait17h8267270b59612bf2E(ptr noundef nonnull align 8, ptr noundef align 1, ptr) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #31

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #31

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #31 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #35 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { noreturn }
attributes #42 = { nounwind }
attributes #43 = { cold }
attributes #44 = { cold noreturn nounwind }
attributes #45 = { "function-inline-cost-multiplier"="2" }
attributes #46 = { cold "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN10serde_json3ser18format_escaped_str17h7f68db694562f0e8E: argument 0"}
!5 = distinct !{!5, !"_ZN10serde_json3ser18format_escaped_str17h7f68db694562f0e8E"}
!6 = !{!7, !9, !4}
!7 = distinct !{!7, !8, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E: argument 0"}
!8 = distinct !{!8, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E"}
!9 = distinct !{!9, !8, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E: argument 1"}
!10 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i8 0, i8 42}
!13 = !{}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN10serde_json3ser27format_escaped_str_contents17hf118b3e394b985c2E: argument 0"}
!16 = distinct !{!16, !"_ZN10serde_json3ser27format_escaped_str_contents17hf118b3e394b985c2E"}
!17 = !{!15, !4}
!18 = !{!19, !21, !15, !4}
!19 = distinct !{!19, !20, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E: argument 0"}
!20 = distinct !{!20, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E"}
!21 = distinct !{!21, !20, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E: argument 0"}
!24 = distinct !{!24, !"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hbbd939ba801c9a27E"}
!25 = !{i64 8}
!26 = !{i64 0, i64 -9223372036854775808}
!27 = !{i64 1, i64 0}
!28 = !{!29, !31, !4}
!29 = distinct !{!29, !30, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E: argument 0"}
!30 = distinct !{!30, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E"}
!31 = distinct !{!31, !30, !"_ZN3std2io5Write9write_all17h28acb055d4d75283E: argument 1"}
!32 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN10serde_json3ser18format_escaped_str17h196f5fdb81210b7cE: argument 0"}
!35 = distinct !{!35, !"_ZN10serde_json3ser18format_escaped_str17h196f5fdb81210b7cE"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 0"}
!38 = distinct !{!38, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 0"}
!41 = distinct !{!41, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE: argument 0"}
!44 = distinct !{!44, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE: argument 0"}
!47 = distinct !{!47, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE"}
!48 = !{!49, !46, !43, !40, !37}
!49 = distinct !{!49, !50, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E: argument 0"}
!50 = distinct !{!50, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E"}
!51 = !{!52, !53, !54, !34}
!52 = distinct !{!52, !41, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 1"}
!53 = distinct !{!53, !38, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 1"}
!54 = distinct !{!54, !55, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE: argument 0"}
!55 = distinct !{!55, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE"}
!56 = !{!46, !43, !40, !37}
!57 = !{!46, !43, !40, !37, !34}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN10serde_json3ser27format_escaped_str_contents17h3b107cb32c812b17E: argument 0"}
!60 = distinct !{!60, !"_ZN10serde_json3ser27format_escaped_str_contents17h3b107cb32c812b17E"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 0"}
!63 = distinct !{!63, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 0"}
!66 = distinct !{!66, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE: argument 0"}
!69 = distinct !{!69, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE: argument 0"}
!72 = distinct !{!72, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE"}
!73 = !{!74, !71, !68, !65, !62}
!74 = distinct !{!74, !75, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E: argument 0"}
!75 = distinct !{!75, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E"}
!76 = !{!77, !78, !79, !81, !59, !34}
!77 = distinct !{!77, !66, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 1"}
!78 = distinct !{!78, !63, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 1"}
!79 = distinct !{!79, !80, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE: argument 0"}
!80 = distinct !{!80, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE"}
!81 = distinct !{!81, !82, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h1b271cd491a44977E: argument 0"}
!82 = distinct !{!82, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h1b271cd491a44977E"}
!83 = !{!71, !68, !65, !62}
!84 = !{!59, !34}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 0"}
!87 = distinct !{!87, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 0"}
!90 = distinct !{!90, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE: argument 0"}
!93 = distinct !{!93, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE: argument 0"}
!96 = distinct !{!96, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE"}
!97 = !{!98, !95, !92, !89, !86}
!98 = distinct !{!98, !99, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E: argument 0"}
!99 = distinct !{!99, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E"}
!100 = !{!101, !102, !103, !105, !59, !34}
!101 = distinct !{!101, !90, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 1"}
!102 = distinct !{!102, !87, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 1"}
!103 = distinct !{!103, !104, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE: argument 0"}
!104 = distinct !{!104, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE"}
!105 = distinct !{!105, !106, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h1b271cd491a44977E: argument 0"}
!106 = distinct !{!106, !"_ZN10serde_json3ser9Formatter21write_string_fragment17h1b271cd491a44977E"}
!107 = !{!95, !92, !89, !86}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 0"}
!110 = distinct !{!110, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 0"}
!113 = distinct !{!113, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE: argument 0"}
!116 = distinct !{!116, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17he3f348f1f6aa023eE"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE: argument 0"}
!119 = distinct !{!119, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2f770149ff2d8fbbE"}
!120 = !{!121, !118, !115, !112, !109}
!121 = distinct !{!121, !122, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E: argument 0"}
!122 = distinct !{!122, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2e01935aa9204b67E"}
!123 = !{!124, !125, !126, !59, !34}
!124 = distinct !{!124, !113, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 1"}
!125 = distinct !{!125, !110, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 1"}
!126 = distinct !{!126, !127, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE: argument 0"}
!127 = distinct !{!127, !"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h26817b3c326e73bfE"}
!128 = !{!118, !115, !112, !109}
!129 = !{!118, !115, !112, !109, !59, !34}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E: argument 0"}
!132 = distinct !{!132, !"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17haf7fd7e5a7cb67b0E"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE: argument 0"}
!135 = distinct !{!135, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17ha358ce75d37fc21aE"}
!136 = !{!137}
end_hunk_3
