Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN10serde_core2de9MapAccess10next_value17hf5c4de7fdf35f4deE:bb.a

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.df = add i64 %i.dc, 1                        ; 3 uses
  store i64 %i.df, ptr %i.q, align 8, !alias.scope !6236, !noalias !6231
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.df, %i.cz
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit145.i.i.i.i.i, label %bb.al

.loopexit145.i.i.i.i.i:                           ; preds = %bb.ak, %bb.av, %bb.am
  %.sroa.030.0182.i.i.i.i.i = phi i8 [ %i.ds, %bb.av ], [ %.sroa.030.0186.i.i.i.i.i, %bb.am ], [ %.sroa.055.1.i.i.i.i.i, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6160
  switch i8 %.sroa.030.0182.i.i.i.i.i, label %bb.an [
    i8 91, label %bb.ap
    i8 123, label %bb.ao
  ]

bb.an:                                            ; preds = %.loopexit145.i.i.i.i.i
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @261, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #42
  unreachable

bb.ao:                                            ; preds = %.loopexit145.i.i.i.i.i
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.loopexit145.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.ao ], [ 2, %.loopexit145.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !6160
  %i.dg = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

.loopexit.i.i.i.i.i:                              ; preds = %bb.as, %bb.ar, %bb.al
  br i1 %.sroa.028.0187.i.i.i.i.i, label %bb.aw, label %.critedge.i.i.i.i.i, !prof !30

bb.aq:                                            ; preds = %bb.al
  br i1 %.sroa.028.0187.i.i.i.i.i, label %bb.at, label %.critedge.i.i.i.i.i

bb.ar:                                            ; preds = %bb.al
  %i.dh = icmp eq i8 %.sroa.030.0186.i.i.i.i.i, 91
  br i1 %i.dh, label %bb.au, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.al
  %i.di = icmp eq i8 %.sroa.030.0186.i.i.i.i.i, 123
  br i1 %i.di, label %bb.au, label %.loopexit.i.i.i.i.i

bb.at:                                            ; preds = %bb.aq
  %i.dj = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dj, ptr %i.q, align 8, !alias.scope !6237
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.at, %bb.aq, %.loopexit.i.i.i.i.i
  %.promoted.i92.i.i.i.i.i = phi i64 [ %i.dc, %bb.aq ], [ %i.dc, %.loopexit.i.i.i.i.i ], [ %i.dj, %bb.at ] ; 3 uses
  %i.dk = icmp eq i8 %.sroa.030.0186.i.i.i.i.i, 123
  br i1 %i.dk, label %bb.ax, label %bb.bg

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.dl = add i64 %i.dc, 1                        ; 3 uses
  store i64 %i.dl, ptr %i.q, align 8, !alias.scope !6238
  %i.dm = load i64, ptr %i.ad, align 8, !alias.scope !6160, !noundef !28 ; 2 uses
  %.not63.i.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not63.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit", label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dn = add i64 %i.dm, -1                       ; 3 uses
  store i64 %i.dn, ptr %i.ad, align 8, !alias.scope !6160
  %i.do = load i64, ptr %.0.val, align 8, !range !29, !alias.scope !6160, !noundef !28
  %i.dp = icmp ult i64 %i.dn, %i.do
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = load ptr, ptr %i.af, align 8, !alias.scope !6160, !nonnull !28, !noundef !28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dn
  %i.ds = load i8, ptr %i.dr, align 1, !noundef !28 ; 2 uses
  %i.dt = icmp ult i64 %i.dl, %i.cz
  br i1 %i.dt, label %.lr.ph.i89.i.i.i.i.i, label %.loopexit145.i.i.i.i.i

bb.aw:                                            ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6160
  switch i8 %.sroa.030.0186.i.i.i.i.i, label %bb.bh [
    i8 91, label %bb.bj
    i8 123, label %bb.bi
  ]

bb.ax:                                            ; preds = %.critedge.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6239)
  %i.du = icmp ult i64 %.promoted.i92.i.i.i.i.i, %i.cz
  br i1 %i.du, label %.lr.ph.i97.i.i.i.i.i, label %.loopexit147.i.i.i.i.i

.lr.ph.i97.i.i.i.i.i:                             ; preds = %bb.ax, %bb.ay
  %i.dv = phi i64 [ %i.dy, %bb.ay ], [ %.promoted.i92.i.i.i.i.i, %bb.ax ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !noalias !6240, !noundef !28
  switch i8 %i.dx, label %bb.ba [
    i8 32, label %bb.ay
    i8 10, label %bb.ay
    i8 9, label %bb.ay
    i8 13, label %bb.ay
    i8 34, label %bb.az
  ], !prof !62

bb.ay:                                            ; preds = %.lr.ph.i97.i.i.i.i.i, %.lr.ph.i97.i.i.i.i.i, %.lr.ph.i97.i.i.i.i.i, %.lr.ph.i97.i.i.i.i.i
  %i.dy = add i64 %i.dv, 1                        ; 3 uses
  store i64 %i.dy, ptr %i.q, align 8, !alias.scope !6241, !noalias !6242
  %exitcond.not.i98.i.i.i.i.i = icmp eq i64 %i.dy, %i.cz
  br i1 %exitcond.not.i98.i.i.i.i.i, label %.loopexit147.i.i.i.i.i, label %.lr.ph.i97.i.i.i.i.i

.loopexit147.i.i.i.i.i:                           ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6160
  store i64 3, ptr %i.i, align 8, !noalias !6160
  %i.dz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.az:                                            ; preds = %.lr.ph.i97.i.i.i.i.i
  %i.ea = add i64 %i.dv, 1
  store i64 %i.ea, ptr %i.q, align 8, !alias.scope !6243
  %i.eb = tail call noundef align 8 ptr @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h81eca9ab2bccb71bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not64.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not64.i.i.i.i.i, label %bb.bb, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.ba:                                            ; preds = %.lr.ph.i97.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6160
  store i64 17, ptr %i.j, align 8, !noalias !6160
  %i.ec = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.bb:                                            ; preds = %bb.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6244)
  %i.ed = load i64, ptr %i.r, align 8, !alias.scope !6245, !noalias !6246, !noundef !28 ; 3 uses
  %.promoted.i100.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !6247, !noalias !6248 ; 2 uses
  %i.ee = icmp ult i64 %.promoted.i100.i.i.i.i.i, %i.ed
  br i1 %i.ee, label %.lr.ph.i105.i.i.i.i.i, label %.loopexit146.i.i.i.i.i

.lr.ph.i105.i.i.i.i.i:                            ; preds = %bb.bb
  %i.ef = load ptr, ptr %i.u, align 8, !alias.scope !6245, !noalias !6246, !nonnull !28, !align !37, !noundef !28 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bd, %.lr.ph.i105.i.i.i.i.i
  %i.eg = phi i64 [ %.promoted.i100.i.i.i.i.i, %.lr.ph.i105.i.i.i.i.i ], [ %i.ej, %bb.bd ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6250)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noalias !6251, !noundef !28
  switch i8 %i.ei, label %bb.bf [
    i8 32, label %bb.bd
    i8 10, label %bb.bd
    i8 9, label %bb.bd
    i8 13, label %bb.bd
    i8 58, label %bb.be
  ], !prof !62

bb.bd:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc
  %i.ej = add i64 %i.eg, 1                        ; 3 uses
  store i64 %i.ej, ptr %i.q, align 8, !alias.scope !6252, !noalias !6248
  %exitcond.not.i106.i.i.i.i.i = icmp eq i64 %i.ej, %i.ed
  br i1 %exitcond.not.i106.i.i.i.i.i, label %.loopexit146.i.i.i.i.i, label %bb.bc

.loopexit146.i.i.i.i.i:                           ; preds = %bb.bb, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6160
  store i64 3, ptr %i.g, align 8, !noalias !6160
  %i.ek = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.be:                                            ; preds = %bb.bc
  %i.el = add i64 %i.eg, 1                        ; 2 uses
  store i64 %i.el, ptr %i.q, align 8, !alias.scope !6253
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6160
  store i64 6, ptr %i.h, align 8, !noalias !6160
  %i.em = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.bg:                                            ; preds = %bb.be, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i92.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.el, %bb.be ] ; 2 uses
  %i.en = phi i64 [ %i.cz, %.critedge.i.i.i.i.i ], [ %i.ed, %bb.be ] ; 2 uses
  %i.eo = phi ptr [ %i.db, %.critedge.i.i.i.i.i ], [ %i.ef, %bb.be ]
  %i.ep = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.en
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i

bb.bh:                                            ; preds = %bb.aw
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @261, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #42
  unreachable

bb.bi:                                            ; preds = %bb.aw
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.aw
  %storemerge65.i.i.i.i.i = phi i64 [ 8, %bb.bi ], [ 7, %bb.aw ]
  store i64 %storemerge65.i.i.i.i.i, ptr %i.l, align 8, !noalias !6160
  %i.eq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit": ; preds = %bb.ac, %bb.ad, %bb.ah, %bb.ai, %bb.az, %bb.au, %.loopexit.i.i, %bb.d, %.loopexit153.i.i.i.i.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i", %.loopexit256.i.i.i.i.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i", %.loopexit249.i.i.i.i.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i", %.loopexit242.i.i.i.i.i, %bb.ag, %bb.ap, %.loopexit147.i.i.i.i.i, %bb.ba, %.loopexit146.i.i.i.i.i, %bb.bf, %bb.bj
  %.sroa.0.0.i = phi ptr [ null, %bb.au ], [ %i.cq, %bb.ag ], [ %i.am, %.loopexit153.i.i.i.i.i ], [ %i.ay, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i" ], [ %i.ca, %.loopexit242.i.i.i.i.i ], [ %i.ek, %.loopexit146.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.dz, %.loopexit147.i.i.i.i.i ], [ %i.dg, %bb.ap ], [ %i.ec, %bb.ba ], [ %i.eq, %bb.bj ], [ %i.bz, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i" ], [ %i.bl, %.loopexit249.i.i.i.i.i ], [ %i.az, %.loopexit256.i.i.i.i.i ], [ %i.em, %bb.bf ], [ %i.bk, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i" ], [ %i.aa, %.loopexit.i.i ], [ %i.eb, %bb.az ], [ %i.cc, %bb.ac ], [ %i.cr, %bb.ah ], [ %i.ce, %bb.ad ], [ null, %bb.ai ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17h3121c50c8bb62f3bE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.a, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.b, align 8, !noundef !28 ; 3 uses
  %.idx = shl nuw nsw i64 %.val11, 5
  %i.c = getelementptr inbounds nuw i8, ptr %.val10, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6325)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !6325, !noalias !6326, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6330)
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !6331, !noalias !6332, !noundef !28 ; 3 uses
  %i.f = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !6331, !noalias !6332, !noundef !28
  %i.g = icmp eq i64 %i.f, %i.e
  br i1 %i.g, label %bb.b, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.e, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6332
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !6333, !noalias !6332
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i: ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.e, %bb.a ], [ %.pre.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !6333, !noalias !6332, !nonnull !28, !noundef !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  store i8 91, ptr %i.l, align 1, !noalias !6334
  %i.m = add nuw i64 %i.h, 1                      ; 4 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !6333, !noalias !6332
  %.not = icmp eq i64 %.val11, 0
  br i1 %.not, label %bb.c, label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.peel

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  %i.n = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !6339, !noalias !6340, !noundef !28
  %i.o = icmp eq i64 %i.n, %i.m
  br i1 %i.o, label %bb.d, label %.thread, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.m, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6340
  %.pre.i.i.i.i.i.i11.i = load i64, ptr %i.d, align 8, !alias.scope !6341, !noalias !6340
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i.i.i.i.i11.i, %bb.d ] ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %i.j, align 8, !alias.scope !6341, !noalias !6340, !nonnull !28, !noundef !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 93, ptr %i.s, align 1, !noalias !6342
  %i.t = add nuw i64 %i.p, 1
  store i64 %i.t, ptr %i.d, align 8, !alias.scope !6341, !noalias !6340
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit"

_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.peel: ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i
  %i.u = tail call fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hcf298494b73328fcE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val10, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !6343, !inline_history !6293 ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.u, null
  br i1 %.not.i.i.peel, label %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit.preheader", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit"

"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit.preheader": ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.peel
  %i.v = icmp eq i64 %.val11, 1
  %.val.pre60 = load ptr, ptr %0, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val.pre60, i64 16 ; 2 uses
  br i1 %i.v, label %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit.preheader"
  %.sroa.0.02359 = getelementptr inbounds nuw i8, ptr %.val10, i64 32
  %.val.pre = load ptr, ptr %0, align 8, !nonnull !28 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.pre, i64 16 ; 2 uses
  br label %bb.e

"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit": ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i
  %.sroa.0.023 = getelementptr inbounds nuw i8, ptr %.sroa.0.02361, i64 32 ; 2 uses
  %i.y = icmp eq ptr %.sroa.0.023, %i.c
  br i1 %i.y, label %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit._crit_edge", label %bb.e, !llvm.loop !6294

bb.e:                                             ; preds = %.lr.ph, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit"
  %i.z = phi ptr [ %i.w, %.lr.ph ], [ %i.x, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit" ] ; 3 uses
  %.val.pre62 = phi ptr [ %.val.pre60, %.lr.ph ], [ %.val.pre, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit" ] ; 3 uses
  %.sroa.0.02361 = phi ptr [ %.sroa.0.02359, %.lr.ph ], [ %.sroa.0.023, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6344), !noalias !6345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6346), !noalias !6345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6347), !noalias !6345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6348), !noalias !6345
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !6349, !noalias !6350, !noundef !28 ; 3 uses
  %i.ab = load i64, ptr %.val.pre62, align 8, !range !29, !alias.scope !6349, !noalias !6350, !noundef !28
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.pre62, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6350, !inline_history !6310
  %.pre.i.i.i.i.i.i.i16 = load i64, ptr %i.z, align 8, !alias.scope !6351, !noalias !6350
  br label %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i

_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i: ; preds = %bb.e, %bb.f
  %i.ad = phi i64 [ %i.aa, %bb.e ], [ %.pre.i.i.i.i.i.i.i16, %bb.f ] ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae), !noalias !6345
  %i.af = getelementptr inbounds nuw i8, ptr %.val.pre62, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !6351, !noalias !6350, !nonnull !28, !noundef !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store i8 44, ptr %i.ah, align 1, !noalias !6352
  %i.ai = add nuw i64 %i.ad, 1
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !6351, !noalias !6350
  %i.aj = tail call fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hcf298494b73328fcE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.02361, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !6343, !inline_history !6293 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit", label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit", !llvm.loop !6294

"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit._crit_edge": ; preds = %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit", %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit.preheader"
  %.val.pre.lcssa = phi ptr [ %.val.pre60, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit.preheader" ], [ %.val.pre, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit" ] ; 3 uses
  %.lcssa = phi ptr [ %i.w, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit.preheader" ], [ %i.x, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  %i.ak = load i64, ptr %.lcssa, align 8, !alias.scope !6357, !noalias !6358, !noundef !28 ; 3 uses
  %i.al = load i64, ptr %.val.pre.lcssa, align 8, !range !29, !alias.scope !6357, !noalias !6358, !noundef !28
  %i.am = icmp eq i64 %i.al, %i.ak
  br i1 %i.am, label %bb.g, label %_ZN10serde_json3ser9Formatter9end_array17ha7f35ba9bc317bcdE.exit.i14, !prof !30

bb.g:                                             ; preds = %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit._crit_edge"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.pre.lcssa, i64 noundef %i.ak, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6358
  %.pre.i.i.i.i.i.i.i15 = load i64, ptr %.lcssa, align 8, !alias.scope !6359, !noalias !6358
  br label %_ZN10serde_json3ser9Formatter9end_array17ha7f35ba9bc317bcdE.exit.i14

_ZN10serde_json3ser9Formatter9end_array17ha7f35ba9bc317bcdE.exit.i14: ; preds = %bb.g, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit._crit_edge"
  %i.an = phi i64 [ %i.ak, %"_ZN10serde_core3ser10Serializer11collect_seq28_$u7b$$u7b$closure$u7d$$u7d$17h194d9dd83f991618E.exit._crit_edge" ], [ %.pre.i.i.i.i.i.i.i15, %bb.g ] ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.pre.lcssa, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !6359, !noalias !6358, !nonnull !28, !noundef !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an
  store i8 93, ptr %i.ar, align 1, !noalias !6359
  %i.as = add nuw i64 %i.an, 1
  store i64 %i.as, ptr %.lcssa, align 8, !alias.scope !6359, !noalias !6358
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit": ; preds = %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.peel, %.thread, %_ZN10serde_json3ser9Formatter9end_array17ha7f35ba9bc317bcdE.exit.i14
  %.sroa.0.0 = phi ptr [ null, %_ZN10serde_json3ser9Formatter9end_array17ha7f35ba9bc317bcdE.exit.i14 ], [ null, %.thread ], [ %i.u, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i.peel ], [ %i.aj, %_ZN10serde_json3ser9Formatter17begin_array_value17h99dd1a34b9f19112E.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 5, 34) %2, i8 %.0.val) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6433)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6433, !noalias !6434, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !42, !alias.scope !6433, !noalias !6434, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !6435 ; 6 uses
  br i1 %i.d, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6439)
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6440, !noalias !6441, !noundef !28 ; 3 uses
  %i.g = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !6440, !noalias !6441, !noundef !28
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.f, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6441
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !6442, !noalias !6441
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6442, !noalias !6441, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 44, ptr %i.m, align 1, !noalias !6443
  %i.n = add nuw i64 %i.i, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !6442, !noalias !6441
  %.val9.pre.i = load ptr, ptr %i.a, align 8, !noalias !6435
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit": ; preds = %bb.a, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"
  %.val9.i = phi ptr [ %.val.i, %bb.a ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i8 2, ptr %i.b, align 8, !alias.scope !6433, !noalias !6434
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %.val.i5 = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6447)
end_hunk_0
begin_hunk_1_@_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E:bb.a
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u32$GT$5write17hf6dbf6ee5e8d8f36E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  %i.bh = add i64 %.sroa.09.1.i.i.i.i.i, -1       ; 2 uses
  %i.bi = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bk = or disjoint i8 %i.bi, 48
  store i8 %i.bk, ptr %i.bj, align 1, !alias.scope !6801
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u32$GT$5write17hf6dbf6ee5e8d8f36E.exit.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u32$GT$5write17hf6dbf6ee5e8d8f36E.exit.i.i.i.i": ; preds = %bb.h, %bb.g
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %i.bd, %bb.g ] ; 2 uses
  %i.bl = sub i64 10, %.sroa.09.2.i.i.i.i.i       ; 5 uses
  %i.bm = icmp ult i64 %i.bl, 11
  tail call void @llvm.assume(i1 %i.bm)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6805)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !6806, !noalias !6807, !noundef !28 ; 3 uses
  %i.bp = load i64, ptr %.val10.i, align 8, !range !29, !alias.scope !6806, !noalias !6807, !noundef !28
  %i.bq = sub i64 %i.bp, %i.bo
  %i.br = icmp ugt i64 %i.bl, %i.bq
  br i1 %i.br, label %bb.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h175d227d4157ddddE.exit", !prof !30

bb.i:                                             ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u32$GT$5write17hf6dbf6ee5e8d8f36E.exit.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, i64 noundef %i.bo, i64 noundef %i.bl, i64 noundef 1, i64 noundef 1), !noalias !6807
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !6808, !noalias !6807
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h175d227d4157ddddE.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h175d227d4157ddddE.exit": ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u32$GT$5write17hf6dbf6ee5e8d8f36E.exit.i.i.i.i", %bb.i
  %i.bs = phi i64 [ %i.bo, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u32$GT$5write17hf6dbf6ee5e8d8f36E.exit.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.2.i.i.i.i.i
  %i.bu = icmp sgt i64 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !6808, !noalias !6807, !nonnull !28, !noundef !28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.bt, i64 %i.bl, i1 false), !noalias !6808
  %i.by = add nuw i64 %i.bs, %i.bl
  store i64 %i.by, ptr %i.bn, align 8, !alias.scope !6808, !noalias !6807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7e9aa9fabb12201fE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6894)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6894, !noalias !6895, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !42, !alias.scope !6894, !noalias !6895, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !6896 ; 6 uses
  br i1 %i.d, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6900)
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6901, !noalias !6902, !noundef !28 ; 3 uses
  %i.g = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !6901, !noalias !6902, !noundef !28
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.f, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6902
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !6903, !noalias !6902
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6903, !noalias !6902, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 44, ptr %i.m, align 1, !noalias !6904
  %i.n = add nuw i64 %i.i, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !6903, !noalias !6902
  %.val9.pre.i = load ptr, ptr %i.a, align 8, !noalias !6896
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit": ; preds = %bb.a, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"
  %.val9.i = phi ptr [ %.val.i, %bb.a ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i8 2, ptr %i.b, align 8, !alias.scope !6894, !noalias !6895
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @492, i64 noundef 12)
  %.val.i6 = load ptr, ptr %i.a, align 8, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6908)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i6, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6909, !noalias !6910, !noundef !28 ; 3 uses
  %i.q = load i64, ptr %.val.i6, align 8, !range !29, !alias.scope !6909, !noalias !6910, !noundef !28
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, i64 noundef %i.p, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6910
  %.pre.i.i.i.i.i.i.i7 = load i64, ptr %i.o, align 8, !alias.scope !6911, !noalias !6910
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  %i.s = phi i64 [ %i.p, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit" ], [ %.pre.i.i.i.i.i.i.i7, %bb.d ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i6, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !6911, !noalias !6910, !nonnull !28, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 58, ptr %i.w, align 1, !noalias !6911
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !6911, !noalias !6910
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6914)
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !6915, !noalias !6916, !nonnull !28, !align !35, !noundef !28 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6920)
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 9 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !6921, !noalias !6922, !noundef !28 ; 3 uses
  %i.aa = load i64, ptr %.val.i.i.i.i, align 8, !range !29, !alias.scope !6921, !noalias !6922, !noundef !28
  %i.ab = icmp eq i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i", !prof !30

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, i64 noundef %i.z, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6922
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !6923, !noalias !6922
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i": ; preds = %bb.e, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  %i.ac = phi i64 [ %i.z, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !6923, !noalias !6922, !nonnull !28, !noundef !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  store i8 123, ptr %i.ag, align 1, !noalias !6924
  %i.ah = add nuw i64 %i.ac, 1
  store i64 %i.ah, ptr %i.y, align 8, !alias.scope !6923, !noalias !6922
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @324, i64 noundef 3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6928)
  %i.ai = load i64, ptr %i.y, align 8, !alias.scope !6929, !noalias !6930, !noundef !28 ; 3 uses
  %i.aj = load i64, ptr %.val.i.i.i.i, align 8, !range !29, !alias.scope !6929, !noalias !6930, !noundef !28
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, i64 noundef %i.ai, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6930
  %.pre.i.i.i.i.i.i.i7.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !6931, !noalias !6930
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i"
  %i.al = phi i64 [ %i.ai, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i, %bb.f ] ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %i.ae, align 8, !alias.scope !6931, !noalias !6930, !nonnull !28, !noundef !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 58, ptr %i.ao, align 1, !noalias !6932
  %i.ap = add nuw i64 %i.al, 1
  store i64 %i.ap, ptr %i.y, align 8, !alias.scope !6931, !noalias !6930
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.8.val, i64 noundef %.16.val)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6936)
  %i.aq = load i64, ptr %i.y, align 8, !alias.scope !6937, !noalias !6938, !noundef !28 ; 3 uses
  %i.ar = load i64, ptr %.val.i.i.i.i, align 8, !range !29, !alias.scope !6937, !noalias !6938, !noundef !28
  %i.as = icmp eq i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.h, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h2757e8f9184ca9a6E.exit", !prof !30

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, i64 noundef %i.aq, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6938
  %.pre.i.i.i.i.i.i.i.i10.i.i = load i64, ptr %i.y, align 8, !alias.scope !6939, !noalias !6938
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h2757e8f9184ca9a6E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h2757e8f9184ca9a6E.exit": ; preds = %bb.g, %bb.h
  %i.at = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i10.i.i, %bb.h ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load ptr, ptr %i.ae, align 8, !alias.scope !6939, !noalias !6938, !nonnull !28, !noundef !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 125, ptr %i.aw, align 1, !noalias !6940
  %i.ax = add nuw i64 %i.at, 1
  store i64 %i.ax, ptr %i.y, align 8, !alias.scope !6939, !noalias !6938
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9b2a9c37623a8d40E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 12, 22) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6991)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !6991, !noalias !6992, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !42, !alias.scope !6991, !noalias !6992, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !6993 ; 6 uses
  br i1 %i.d, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6997)
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6998, !noalias !6999, !noundef !28 ; 3 uses
  %i.g = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !6998, !noalias !6999, !noundef !28
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.f, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !6999
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !7000, !noalias !6999
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !7000, !noalias !6999, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 44, ptr %i.m, align 1, !noalias !7001
  %i.n = add nuw i64 %i.i, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !7000, !noalias !6999
  %.val9.pre.i = load ptr, ptr %i.a, align 8, !noalias !6993
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit": ; preds = %bb.a, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"
  %.val9.i = phi ptr [ %.val.i, %bb.a ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i8 2, ptr %i.b, align 8, !alias.scope !6991, !noalias !6992
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7002)
  %.val.i4 = load ptr, ptr %i.a, align 8, !noalias !7002, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7006)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i4, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !7007, !noalias !7008, !noundef !28 ; 3 uses
  %i.q = load i64, ptr %.val.i4, align 8, !range !29, !alias.scope !7007, !noalias !7008, !noundef !28
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, i64 noundef %i.p, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7008
  %.pre.i.i.i.i.i.i.i5 = load i64, ptr %i.o, align 8, !alias.scope !7009, !noalias !7008
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  %i.s = phi i64 [ %i.p, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit" ], [ %.pre.i.i.i.i.i.i.i5, %bb.d ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7009, !noalias !7008, !nonnull !28, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 58, ptr %i.w, align 1, !noalias !7010
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !7009, !noalias !7008
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7012)
  %i.y = load i8, ptr %3, align 8, !range !45, !alias.scope !7013, !noalias !7012, !noundef !28
  %.not.i.i = icmp eq i8 %i.y, 6
  br i1 %.not.i.i, label %bb.e, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.i"

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7012, !noalias !7013, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7017)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !7018, !noalias !7019, !noundef !28 ; 3 uses
  %i.ab = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !7018, !noalias !7019, !noundef !28
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ult i64 %i.ac, 4
  br i1 %i.ad, label %bb.f, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.thread.i", !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.aa, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !7019
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !7020, !noalias !7019
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.thread.i"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.thread.i": ; preds = %bb.f, %bb.e
  %i.ae = phi i64 [ %i.aa, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !7020, !noalias !7019, !nonnull !28, !noundef !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  store i32 1819047278, ptr %i.ai, align 1, !noalias !7021
  %i.aj = add nuw i64 %i.ae, 4
  store i64 %i.aj, ptr %i.z, align 8, !alias.scope !7020, !noalias !7019
  br label %bb.g

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  %i.ak = tail call fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hcf298494b73328fcE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.g, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h7c88de191677cd44E.exit"

bb.g:                                             ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.i", %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.thread.i"
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h7c88de191677cd44E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17h7c88de191677cd44E.exit": ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.i", %bb.g
  %.sroa.0.1.i = phi ptr [ null, %bb.g ], [ %i.ak, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h3f6c72f7cfb91b40E.exit.i" ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17ha93bf474a9d43a57E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 3, 9) %2, i32 %.0.val, i32 %.4.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7089)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !7089, !noalias !7090, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !7089, !noalias !7090, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i = load ptr, ptr %i.b, align 8, !noalias !7091 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7095)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7096, !noalias !7097, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !7096, !noalias !7097, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7097
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !7098, !noalias !7097
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7098, !noalias !7097, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !7099
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !7098, !noalias !7097
  %.val9.pre.i = load ptr, ptr %i.b, align 8, !noalias !7091
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit": ; preds = %bb.a, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"
  %.val9.i = phi ptr [ %.val.i, %bb.a ], [ %.val9.pre.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !7089, !noalias !7090
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %.val.i6 = load ptr, ptr %i.b, align 8, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7103)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i6, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !7104, !noalias !7105, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i6, align 8, !range !29, !alias.scope !7104, !noalias !7105, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7105
  %.pre.i.i.i.i.i.i.i7 = load i64, ptr %i.p, align 8, !alias.scope !7106, !noalias !7105
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit" ], [ %.pre.i.i.i.i.i.i.i7, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i6, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !7106, !noalias !7105, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !7106
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !7106, !noalias !7105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7109)
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7110, !noalias !7111, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7115)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !7116, !noalias !7117, !noundef !28 ; 3 uses
  %i.ab = load i64, ptr %.val.i.i.i.i, align 8, !range !29, !alias.scope !7116, !noalias !7117, !noundef !28
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.e, label %bb.f, !prof !30

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7117
  %.pre.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !7118, !noalias !7117
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i
  %i.ad = phi i64 [ %i.aa, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.e ] ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !7118, !noalias !7117, !nonnull !28, !noundef !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store i8 123, ptr %i.ah, align 1, !noalias !7119
  %i.ai = add nuw i64 %i.ad, 1
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !7118, !noalias !7117
  store ptr %i.b, ptr %i.a, align 8, !noalias !7107
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.aj, align 8, !noalias !7107
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @405, i64 noundef 4, i32 %.0.val)
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @406, i64 noundef 9, i32 %.4.val)
  %i.ak = load ptr, ptr %i.a, align 8, !noalias !7107, !nonnull !28, !align !35, !noundef !28
  %i.al = load i8, ptr %i.aj, align 8, !range !42, !noalias !7107, !noundef !28
  %.val.i.i = load ptr, ptr %i.ak, align 8        ; 5 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hc67950812807e396E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7123)
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !7124, !noalias !7125, !noundef !28 ; 3 uses
  %i.ap = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !7124, !noalias !7125, !noundef !28
  %i.aq = icmp eq i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.h, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i, !prof !30

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.ao, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7125
  %.pre.i.i.i.i.i.i.i.i13.i.i = load i64, ptr %i.an, align 8, !alias.scope !7126, !noalias !7125
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ar = phi i64 [ %i.ao, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i13.i.i, %bb.h ] ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !7126, !noalias !7125, !nonnull !28, !noundef !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar
  store i8 125, ptr %i.av, align 1, !noalias !7126
  %i.aw = add nuw i64 %i.ar, 1
  store i64 %i.aw, ptr %i.an, align 8, !alias.scope !7126, !noalias !7125
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hc67950812807e396E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$15serialize_value17hc67950812807e396E.exit": ; preds = %bb.f, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7107
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hca87e7493e5c3631E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 4, 11) %2, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7158)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !7158, !noalias !7159, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !42, !alias.scope !7158, !noalias !7159, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !7160 ; 6 uses
  br i1 %i.d, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7164)
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7165, !noalias !7166, !noundef !28 ; 3 uses
  %i.g = load i64, ptr %.val.i, align 8, !range !29, !alias.scope !7165, !noalias !7166, !noundef !28
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.f, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !7166
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !7167, !noalias !7166
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !7167, !noalias !7166, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 44, ptr %i.m, align 1, !noalias !7168
  %i.n = add nuw i64 %i.i, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !7167, !noalias !7166
  %.val9.pre.i = load ptr, ptr %i.a, align 8, !noalias !7160
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit": ; preds = %bb.a, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"
end_hunk_1
begin_hunk_2_@"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_option17hdcaf8f47c301d72cE":bb.a
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E"(ptr noalias noundef align 8 dereferenceable(104) %i.n) #43
          to label %.body.i.i unwind label %bb.az, !noalias !9091

bb.al:                                            ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb53b624a57bd52f3E.exit.i.i.i.i", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17ha003a7c74725302bE.exit.i.i.i.i.i.i"
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.i.i.i:                                  ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hacbe7a8167eaec00E.exit.i.i.i.i.i.i.i.i", %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hacbe7a8167eaec00E.exit.thread.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i.i)
  %.sroa.0.0.copyload10.i.i.i = load ptr, ptr %i.l, align 8, !noalias !9149 ; 3 uses
  %.sroa.5.0.copyload14.i.i.i = load ptr, ptr %i.as, align 8, !noalias !9149 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !9149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9094
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i), !noalias !9091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9091
  %i.ef = icmp eq ptr %.sroa.0.0.copyload10.i.i.i, null
  br i1 %i.ef, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %.loopexit.i.i.i, %.thread22.i.i.i
  %.sroa.5.025.i.i.i = phi ptr [ %.sroa.8.0.ph.i.i.i.i, %.thread22.i.i.i ], [ %.sroa.5.0.copyload14.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !9150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9091
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17had382107fae52de8E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i.i.i.i" unwind label %bb.an, !noalias !9091

bb.an:                                            ; preds = %bb.am
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = load i8, ptr %i.ak, align 8, !range !45, !alias.scope !9151, !noalias !9091, !noundef !28
  %i.ei = icmp eq i8 %i.eh, 6
  br i1 %i.ei, label %.body.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ak)
          to label %.body.i.i unwind label %bb.ap, !noalias !9091

"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i.i.i.i": ; preds = %bb.am
  %i.ej = load i8, ptr %i.ak, align 8, !range !45, !alias.scope !9152, !noalias !9091, !noundef !28
  %i.ek = icmp eq i8 %i.ej, 6
  br i1 %i.ek, label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread10.i", label %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E.exit.sink.split.i.i.i"

"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread10.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9091
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %.sink.split.i

bb.ap:                                            ; preds = %bb.ao
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !9091
  unreachable

bb.aq:                                            ; preds = %.loopexit.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !9091
  store ptr %.sroa.0.0.copyload10.i.i.i, ptr %i.m, align 8, !noalias !9091
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.5.0.copyload14.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !9091
  %i.em = load i64, ptr %i.x, align 8, !noalias !9091, !noundef !28
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %bb.ar, label %bb.as, !prof !32

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i.i.i, i64 32, i1 false), !noalias !9086
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.eo = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h808291eb16efeed9E(i64 noundef %i.w, ptr noundef nonnull align 1 @275, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
          to label %bb.ay unwind label %bb.ax, !noalias !9091

bb.at:                                            ; preds = %bb.ay, %bb.ar
  %.sroa.8.2.i = phi ptr [ %.sroa.5.0.copyload14.i.i.i, %bb.ar ], [ %i.eo, %bb.ay ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.copyload10.i.i.i, %bb.ar ], [ null, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !9091
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17had382107fae52de8E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i" unwind label %bb.au, !noalias !9091

bb.au:                                            ; preds = %bb.at
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load i8, ptr %i.ak, align 8, !range !45, !alias.scope !9153, !noalias !9091, !noundef !28
  %i.er = icmp eq i8 %i.eq, 6
  br i1 %i.er, label %.body.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ak)
          to label %.body.i.i unwind label %bb.aw, !noalias !9091

"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i": ; preds = %bb.at
  %i.es = load i8, ptr %i.ak, align 8, !range !45, !alias.scope !9154, !noalias !9091, !noundef !28
  %i.et = icmp eq i8 %i.es, 6
  br i1 %i.et, label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.i", label %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E.exit.sink.split.i.i.i"

bb.aw:                                            ; preds = %bb.av
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !9091
  unreachable

bb.ax:                                            ; preds = %bb.as
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17h9181c0c7040241c0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.m), !noalias !9091
  br label %.body.i.i.i

bb.ay:                                            ; preds = %bb.as
  call fastcc void @"_ZN4core3ptr114drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$url..Url$C$alloc..vec..Vec$LT$lsp_types..TextEdit$GT$$RP$$GT$$GT$17h9181c0c7040241c0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.m), !noalias !9091
  br label %bb.at

"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E.exit.sink.split.i.i.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i.i.i.i"
  %.sroa.8.0.i = phi ptr [ %.sroa.5.025.i.i.i, %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i.i.i.i" ], [ %.sroa.8.2.i, %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i" ]
  %.sroa.0.0.i = phi ptr [ null, %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i.i.i.i" ], [ %.sroa.0.2.i, %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i" ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ak)
          to label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.i" unwind label %bb.bb, !noalias !9092

bb.az:                                            ; preds = %.body.i.i.i
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !9091
  unreachable

bb.ba:                                            ; preds = %bb.b
  %i.ex = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17hdfd4d1db8e02cda0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @277)
          to label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread.i" unwind label %bb.bb, !noalias !9088

bb.bb:                                            ; preds = %bb.ba, %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E.exit.sink.split.i.i.i", %bb.c
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bb, %bb.av, %bb.au, %bb.ao, %bb.an, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ey, %bb.bb ], [ %i.ep, %bb.au ], [ %i.eg, %bb.an ], [ %i.eg, %bb.ao ], [ %i.ep, %bb.av ], [ %.pn.i.i.i, %.body.i.i.i ]
  br i1 %i.t, label %.body, label %bb.bc

"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread.i": ; preds = %bb.ba
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %.sink.split.i

bb.bc:                                            ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p) #43
          to label %.body unwind label %bb.bd, !noalias !9088

bb.bd:                                            ; preds = %bb.bc
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !9088
  unreachable

"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.i": ; preds = %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E.exit.sink.split.i.i.i", %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i"
  %.sroa.8.1.i = phi ptr [ %.sroa.8.2.i, %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i" ], [ %.sroa.8.0.i, %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E.exit.sink.split.i.i.i" ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.2.i, %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h787512923fc7cfc4E.exit.i7.i.i.i" ], [ %.sroa.0.0.i, %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17ha1a4e3bcbcb84201E.exit.sink.split.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9091
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9086
  %i.fa = icmp eq ptr %.sroa.0.1.i, null
  br i1 %i.fa, label %bb.be, label %bb.bf

.sink.split.i:                                    ; preds = %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread.i", %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread10.i"
  %.sroa.8.39.ph.i = phi ptr [ %.sroa.5.025.i.i.i, %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread10.i" ], [ %i.ex, %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.thread.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9086
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i, %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.i"
  %.sroa.8.39.i = phi ptr [ %.sroa.8.1.i, %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.i" ], [ %.sroa.8.39.ph.i, %.sink.split.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.39.i) ]
  br label %bb.bi

bb.bf:                                            ; preds = %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$15deserialize_map17h1787587dca5b2cd1E.exit.i"
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.i, i64 32, i1 false), !noalias !9084
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i, ptr %i.fb, align 8, !alias.scope !9083, !noalias !9084
  br label %bb.bi

bb.bg:                                            ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 16, i1 false), !alias.scope !9155
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  ret void

bb.bi:                                            ; preds = %bb.bf, %bb.be
  %.sink = phi i64 [ 16, %bb.bf ], [ 8, %bb.be ]
  %.sroa.8.1.i.sink = phi ptr [ %.sroa.8.1.i, %bb.bf ], [ %.sroa.8.39.i, %bb.be ]
  %storemerge.i = phi i64 [ 0, %bb.bf ], [ 1, %bb.be ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  store ptr %.sroa.8.1.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !9083, !noalias !9084
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !9083, !noalias !9084
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bh

.body:                                            ; preds = %bb.bc, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17hcf298494b73328fcE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 4 uses
  %i.b = alloca [40 x i8], align 1                ; 9 uses
  %i.c = alloca [40 x i8], align 1                ; 8 uses
  %i.d = load i8, ptr %0, align 8, !range !59, !noundef !28
  switch i8 %i.d, label %default.unreachable117 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.aa
    i8 4, label %bb.ab
    i8 5, label %bb.ac
  ]

default.unreachable117:                           ; preds = %bb.g, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.val43 = load ptr, ptr %1, align 8, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9365)
  %i.e = getelementptr inbounds nuw i8, ptr %.val43, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !9366, !noalias !9367, !noundef !28 ; 3 uses
  %i.g = load i64, ptr %.val43, align 8, !range !29, !alias.scope !9366, !noalias !9367, !noundef !28
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %bb.c, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17hce8868394e5764cfE.exit", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val43, i64 noundef %i.f, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !9367
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !9368, !noalias !9367
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17hce8868394e5764cfE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_unit17hce8868394e5764cfE.exit": ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val43, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !9368, !noalias !9367, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i32 1819047278, ptr %i.n, align 1, !noalias !9368
  %i.o = add nuw i64 %i.j, 4
  store i64 %i.o, ptr %i.e, align 8, !alias.scope !9368, !noalias !9367
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !33, !noundef !28
  %i.r = trunc nuw i8 %i.q to i1
  %.val44 = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val44, i64 16 ; 5 uses
  br i1 %i.r, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9372)
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !9373, !noalias !9374, !noundef !28 ; 3 uses
  %i.u = load i64, ptr %.val44, align 8, !range !29, !alias.scope !9373, !noalias !9374, !noundef !28
  %i.v = sub i64 %i.u, %i.t
  %i.w = icmp ult i64 %i.v, 5
  br i1 %i.w, label %bb.e, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", !prof !30

bb.e:                                             ; preds = %.split2.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val44, i64 noundef %i.t, i64 noundef 5, i64 noundef 1, i64 noundef 1), !noalias !9374
  %.pre.i.i.i.i.i.i.i46 = load i64, ptr %i.s, align 8, !alias.scope !9375, !noalias !9374
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i": ; preds = %bb.e, %.split2.i.i
  %i.x = phi i64 [ %i.t, %.split2.i.i ], [ %.pre.i.i.i.i.i.i.i46, %bb.e ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.val44, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !9375, !noalias !9374, !nonnull !28, !noundef !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(5) @268, i64 5, i1 false), !noalias !9375
  %i.ac = add nuw i64 %i.x, 5
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit"

.split.i.i:                                       ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9379)
  %i.ad = load i64, ptr %i.s, align 8, !alias.scope !9380, !noalias !9381, !noundef !28 ; 3 uses
  %i.ae = load i64, ptr %.val44, align 8, !range !29, !alias.scope !9380, !noalias !9381, !noundef !28
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = icmp ult i64 %i.af, 4
  br i1 %i.ag, label %bb.f, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i", !prof !30

bb.f:                                             ; preds = %.split.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val44, i64 noundef %i.ad, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !9381
  %.pre.i.i.i.i.i4.i.i = load i64, ptr %i.s, align 8, !alias.scope !9382, !noalias !9381
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i": ; preds = %bb.f, %.split.i.i
  %i.ah = phi i64 [ %i.ad, %.split.i.i ], [ %.pre.i.i.i.i.i4.i.i, %bb.f ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val44, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !9382, !noalias !9381, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i32 1702195828, ptr %i.al, align 1, !noalias !9382
  %i.am = add nuw i64 %i.ah, 4
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_bool17h774529df6e53759aE.exit": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i", %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i"
  %.sink.i.i = phi i64 [ %i.am, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit5.i.i" ], [ %i.ac, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i" ]
  store i64 %.sink.i.i, ptr %i.s, align 8, !noalias !28
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17hbbc1956e8619af6aE.exit"

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val45 = load ptr, ptr %1, align 8             ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9383)
  %i.ao = load i64, ptr %i.an, align 8, !range !67, !alias.scope !9383, !noundef !28
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i64 %i.ao, label %default.unreachable117 [
    i64 0, label %bb.h
    i64 1, label %bb.n
    i64 2, label %bb.v
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !9383, !noundef !28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9384)
  %i.ar = icmp ugt i64 %i.aq, 9999
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.h
  %.sroa.09.0.lcssa.i.i.i.i = phi i64 [ 20, %bb.h ], [ %i.bb, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i = phi i64 [ %i.aq, %bb.h ], [ %i.au, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.as = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i, 99
  br i1 %i.as, label %bb.i, label %bb.j

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.sroa.0.129.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.h ] ; 3 uses
  %.sroa.09.028.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i ], [ 20, %bb.h ] ; 2 uses
  %i.at = urem i64 %.sroa.0.129.i.i.i.i, 10000
  %i.au = udiv i64 %.sroa.0.129.i.i.i.i, 10000    ; 2 uses
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.at to i16 ; 2 uses
  %i.av = udiv i16 %.lhs.trunc.i.i.i.i, 100
  %i.aw = shl nuw nsw i16 %i.av, 1
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = urem i16 %.lhs.trunc.i.i.i.i, 100
  %i.az = shl nuw nsw i16 %i.ay, 1
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = add i64 %.sroa.09.028.i.i.i.i, -4       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @849, i64 %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb
  %i.be = load i16, ptr %i.bc, align 1, !noalias !9385
  store i16 %i.be, ptr %i.bd, align 1, !alias.scope !9384, !noalias !9383
  %i.bf = getelementptr inbounds nuw i8, ptr @849, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.c, i64 %.sroa.09.028.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -2
  %i.bi = load i16, ptr %i.bf, align 1, !noalias !9385
  store i16 %i.bi, ptr %i.bh, align 1, !alias.scope !9384, !noalias !9383
  %i.bj = icmp ugt i64 %.sroa.0.129.i.i.i.i, 99999999
  br i1 %i.bj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %.lhs.trunc24.i.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i.i to i16 ; 2 uses
  %i.bk = urem i16 %.lhs.trunc24.i.i.i.i, 100
  %i.bl = shl nuw nsw i16 %i.bk, 1
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = udiv i16 %.lhs.trunc24.i.i.i.i, 100
  %.zext27.i.i.i.i = zext nneg i16 %i.bn to i64
  %i.bo = add i64 %.sroa.09.0.lcssa.i.i.i.i, -2   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr @849, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bo
  %i.br = load i16, ptr %i.bp, align 1, !noalias !9385
  store i16 %i.br, ptr %i.bq, align 1, !alias.scope !9384, !noalias !9383
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.09.1.i.i.i.i = phi i64 [ %i.bo, %bb.i ], [ %.sroa.09.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i = phi i64 [ %.zext27.i.i.i.i, %bb.i ], [ %.sroa.0.1.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bs = icmp samesign ult i64 %.sroa.0.2.i.i.i.i, 10
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = shl nuw nsw i64 %.sroa.0.2.i.i.i.i, 1
  %i.bu = add i64 %.sroa.09.1.i.i.i.i, -2         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr @849, i64 %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  %i.bx = load i16, ptr %i.bv, align 1, !noalias !9385
  store i16 %i.bx, ptr %i.bw, align 1, !alias.scope !9384, !noalias !9383
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i"

bb.l:                                             ; preds = %bb.j
  %i.by = add i64 %.sroa.09.1.i.i.i.i, -1         ; 2 uses
  %i.bz = trunc nuw nsw i64 %.sroa.0.2.i.i.i.i to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.by
  %i.cb = or disjoint i8 %i.bz, 48
  store i8 %i.cb, ptr %i.ca, align 1, !alias.scope !9384, !noalias !9383
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$u64$GT$5write17h47e48a1441d56637E.exit.i.i.i"
end_hunk_2
begin_hunk_3_@"_ZN11lsp_harness1_79_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_harness..Requests$GT$11deserialize17hf6f8046e168d4810E":bb.a
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !20805
  unreachable

common.resume.i:                                  ; preds = %bb.nq, %bb.nn, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i.i.i.i.i", %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i.i.i.i.i", %bb.mw, %bb.mq
  %common.resume.op.i = phi { ptr, i32 } [ %i.sa, %bb.mw ], [ %.pn.i45.i.i.i.i, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i.i.i.i.i" ], [ %i.th, %bb.nq ], [ %i.ro, %bb.mq ], [ %i.td, %bb.nn ], [ %.pn.i45.i.i.i.i, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i.i.i.i.i" ]
  resume { ptr, i32 } %common.resume.op.i

bb.nq:                                            ; preds = %bb.no
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17he592665e9c327a51E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.cs) #43
          to label %common.resume.i unwind label %bb.nr, !noalias !20807

bb.nr:                                            ; preds = %bb.nq
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !20807
  unreachable

"_ZN85_$LT$toml..de..deserializer..Deserializer$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct28_$u7b$$u7b$closure$u7d$$u7d$17hca3c45f24e29f6e4E.exit.i": ; preds = %bb.no
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.cs, i64 88, i1 false), !noalias !20523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !20806
  br label %"_ZN85_$LT$toml..de..deserializer..Deserializer$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h1049c017f14ee3c8E.exit"

bb.ns:                                            ; preds = %bb.nl, %.thread.i.i.i
  %.sroa.25495.6.i = phi i64 [ %.sroa.587.i.sroa.4.0.i.i.i.i, %.thread.i.i.i ], [ %.sroa.28.sroa.8.0.copyload.i, %bb.nl ]
  %.sroa.24.6.i = phi ptr [ %.sroa.587.i.sroa.0.0.i.i.i.i, %.thread.i.i.i ], [ %.sroa.28.sroa.7.0.copyload.i, %bb.nl ]
  %.sroa.21.6.i = phi i64 [ %.sroa.085.0.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.28.sroa.6.0.copyload.i, %bb.nl ]
  %.sroa.18474.6.i = phi i64 [ %.sroa.572.i.sroa.4.0.i.i.i.i, %.thread.i.i.i ], [ %.sroa.28.sroa.5.0.copyload.i, %bb.nl ]
  %.sroa.15.6.i = phi ptr [ %.sroa.572.i.sroa.0.0.i.i.i.i, %.thread.i.i.i ], [ %.sroa.15.5.i, %bb.nl ]
  %.sroa.11.6.i = phi i64 [ %.sroa.070.0.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.11.5.i, %bb.nl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i)
  store i64 2, ptr %0, align 8, !alias.scope !20522, !noalias !20523
  %.sroa.18.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.6.i, ptr %.sroa.18.0..sroa_idx12.i, align 8, !alias.scope !20522, !noalias !20523
  %.sroa.18.sroa.4.0..sroa.18.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.15.6.i, ptr %.sroa.18.sroa.4.0..sroa.18.0..sroa_idx12.sroa_idx.i, align 8, !alias.scope !20522, !noalias !20523
  %.sroa.18.sroa.5.0..sroa.18.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.18474.6.i, ptr %.sroa.18.sroa.5.0..sroa.18.0..sroa_idx12.sroa_idx.i, align 8, !alias.scope !20522, !noalias !20523
  %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.21.6.i, ptr %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx12.sroa_idx.i, align 8, !alias.scope !20522, !noalias !20523
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.24.6.i, ptr %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx12.sroa_idx.i, align 8, !alias.scope !20522, !noalias !20523
  %.sroa.18.sroa.8.0..sroa.18.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.25495.6.i, ptr %.sroa.18.sroa.8.0..sroa.18.0..sroa_idx12.sroa_idx.i, align 8, !alias.scope !20522, !noalias !20523
  %.sroa.25.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.25.0..sroa_idx21.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.25.i, i64 32, i1 false), !noalias !20523
  br label %"_ZN85_$LT$toml..de..deserializer..Deserializer$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h1049c017f14ee3c8E.exit"

"_ZN85_$LT$toml..de..deserializer..Deserializer$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h1049c017f14ee3c8E.exit": ; preds = %"_ZN85_$LT$toml..de..deserializer..Deserializer$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct28_$u7b$$u7b$closure$u7d$$u7d$17hca3c45f24e29f6e4E.exit.i", %bb.ns
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11lsp_harness6output8LspDebug9debug_str17h43c04ff35db25d4dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8
  %i.g = invoke fastcc noundef ptr @"_ZN66_$LT$lsp_types..Range$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17h778aef51f95fba62E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.not.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i2, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit", label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20824
  store ptr %i.g, ptr %i.b, align 8, !noalias !20824
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @847, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @344) #42
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #43
          to label %bb.q unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit": ; preds = %bb.c
  %.sroa.015.0.copyload = load i64, ptr %i.d, align 8 ; 5 uses
  %.sroa.618.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.7.0.copyload = load i64, ptr %i.f, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20825
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.618.0.copyload, i64 noundef %.sroa.7.0.copyload)
          to label %bb.j unwind label %bb.h, !noalias !20825

bb.h:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit"
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.l, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.618.0.copyload, i64 noundef %.sroa.015.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20826
  br label %.body

bb.j:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hcfaaa64130e664aeE.exit"
  %i.m = load i64, ptr %i.a, align 8, !range !43, !noalias !20825, !noundef !28
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20825
  br label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = load <2 x i64>, ptr %i.o, align 8, !noalias !20825
  %.sroa.832.24.copyload = load i64, ptr %i.o, align 8, !noalias !20825
  %i.q = ptrtoint ptr %.sroa.618.0.copyload to i64 ; 2 uses
  %i.r = inttoptr i64 %.sroa.7.0.copyload to ptr  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20825
  call void @llvm.experimental.noalias.scope.decl(metadata !20827)
  call void @llvm.experimental.noalias.scope.decl(metadata !20828)
  %.not.i = icmp eq i64 %.sroa.015.0.copyload, -9223372036854775808
  br i1 %.not.i, label %bb.p, label %bb.l, !prof !60

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20829
  store i64 %.sroa.015.0.copyload, ptr %i.c, align 8, !noalias !20827
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !20827
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !20827
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <2 x i64> %i.p, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !20827
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @843, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @846, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @345) #42
          to label %bb.o unwind label %bb.m, !noalias !20829

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20830)
  call void @llvm.experimental.noalias.scope.decl(metadata !20831), !noalias !20829
  %.val.i.i9 = load i64, ptr %i.c, align 8, !range !29, !alias.scope !20832, !noalias !20829, !noundef !28 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i9, 0
  br i1 %i.t, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !20832, !noalias !20829, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20833
  br label %.body

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %bb.k, %.thread
  %.sroa.6.sroa.0.045 = phi i64 [ %.sroa.015.0.copyload, %.thread ], [ %i.q, %bb.k ]
  %.sroa.6.sroa.6.044 = phi ptr [ %.sroa.618.0.copyload, %.thread ], [ %i.r, %bb.k ]
  %.sroa.6.sroa.7.043 = phi i64 [ %.sroa.7.0.copyload, %.thread ], [ %.sroa.832.24.copyload, %bb.k ]
  store i64 %.sroa.6.sroa.0.045, ptr %0, align 8, !alias.scope !20829
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.sroa.6.044, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8, !alias.scope !20829
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.7.043, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8, !alias.scope !20829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body:                                            ; preds = %bb.r, %bb.q, %bb.m, %bb.n, %bb.h, %bb.i
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %i.s, %bb.n ], [ %eh.lpad-body.ph, %bb.q ], [ %eh.lpad-body.ph, %bb.r ]
  resume { ptr, i32 } %eh.lpad-body35

bb.q:                                             ; preds = %bb.b, %bb.e
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.i, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20834)
  %.val.i = load i64, ptr %i.d, align 8, !range !29, !alias.scope !20834, !noundef !28 ; 2 uses
  %i.u = icmp eq i64 %.val.i, 0
  br i1 %i.u, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !20834, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20834
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN11lsp_harness7jsonrpc6Server10send_pause17h0993c8b3c236fb9dE(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !28
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !20852, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %i.e, align 8, !range !29, !alias.scope !20852, !noundef !28
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb044350e8e5602bdE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit": ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !20852, !nonnull !28, !noundef !28
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.g
  store i32 %i.d, ptr %i.l, align 4
  %i.m = add i64 %i.g, 1
  store i64 %i.m, ptr %i.f, align 8, !alias.scope !20852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = load i32, ptr %i.b, align 4, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !20853
  %i.o = tail call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 9) 1) #41, !noalias !20853 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42, !noalias !20854
  unreachable

bb.d:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..ExecuteCommand$GT$$GT$17h631640771b7e908fE"(ptr noalias noundef align 8 dereferenceable(112) %i.a) #43
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6f91030b3620dacaE.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.o, ptr noundef nonnull align 1 dereferenceable(5) @354, i64 5, i1 false), !noalias !20855
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @355, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @356, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 24, ptr %i.u, align 8
  store i64 5, ptr %i.a, align 8
  %.sroa.015.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.o, ptr %.sroa.015.sroa.4.0..sroa_idx, align 8
  %.sroa.015.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 5, ptr %.sroa.015.sroa.5.0..sroa_idx, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 -9223372036854775807, ptr %.sroa.718.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 %i.n, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val13 = load ptr, ptr %i.x, align 8
  %i.y = invoke fastcc noundef ptr @_ZN11lsp_harness7jsonrpc6Server4send17h0f2670fecb7a5d35E(ptr %.val, ptr %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.a)
          to label %"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..ExecuteCommand$GT$$GT$17h631640771b7e908fE.exit" unwind label %bb.d

common.resume:                                    ; preds = %bb.d
  resume { ptr, i32 } %i.q

"_ZN4core3ptr96drop_in_place$LT$lsp_harness..jsonrpc..SendRequest$LT$lsp_types..request..ExecuteCommand$GT$$GT$17h631640771b7e908fE.exit": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !20856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.y

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN11lsp_harness7jsonrpc6Server12replace_file17hf488ee301c2a4e91E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, i32 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 26 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [152 x i8], align 8               ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.o = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef 8) #41 ; 15 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d, !prof !30

bb.b:                                             ; preds = %bb.as, %bb.at, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i", %bb.ax, %bb.bq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.kj, %bb.bq ], [ %lpad.phi.i.i.i, %bb.as ], [ %lpad.phi.i.i.i, %bb.at ], [ %.pn.i.i, %bb.ax ], [ %.pn.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i" ]
  call fastcc void @"_ZN4core3ptr113drop_in_place$LT$lsp_harness..jsonrpc..SendNotification$LT$lsp_types..notification..DidChangeTextDocument$GT$$GT$17ha2f150cb4ce72dacE"(ptr noalias noundef align 8 dereferenceable(152) %i.n) #43, !noalias !21393
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit"

.thread34:                                        ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #42
          to label %bb.bu unwind label %.thread34

bb.d:                                             ; preds = %bb.a
  %i.r = icmp slt i64 %4, 0
  br i1 %i.r, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.d
  %i.s = icmp eq i64 %4, 0
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21394
  %i.t = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, 9) 1) #41, !noalias !21394 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.f
  unreachable

.thread:                                          ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 56, i64 noundef 8) #41
  br label %bb.bv

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.e
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !noalias !21395
  store i64 %4, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa.022.0..sroa_idx = getelementptr i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.0.sroa.4.0..sroa.022.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa.022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %4, ptr %.sroa.0.sroa.5.0..sroa.022.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val13 = load ptr, ptr %i.w, align 8           ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val14 = load ptr, ptr %i.x, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21393
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store ptr @355, ptr %i.y, align 8, !noalias !21393
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store i64 3, ptr %i.z, align 8, !noalias !21393
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr @362, ptr %i.aa, align 8, !noalias !21393
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  store i64 22, ptr %i.ab, align 8, !noalias !21393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i32 %2, ptr %.sroa.4.0..sroa_idx18, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 1, ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store ptr %i.o, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 1, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21398)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21399
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !21400
  %i.ac = tail call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #41, !noalias !21400 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #42
          to label %.noexc.i unwind label %bb.bq, !noalias !21393

.noexc.i:                                         ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i": ; preds = %bb.g
  store i64 128, ptr %i.h, align 8, !noalias !21399
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  store ptr %i.ac, ptr %i.ae, align 8, !noalias !21399
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21402)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !21403
  store ptr %i.h, ptr %i.g, align 8, !noalias !21403
  call void @llvm.experimental.noalias.scope.decl(metadata !21404)
  call void @llvm.experimental.noalias.scope.decl(metadata !21405)
  call void @llvm.experimental.noalias.scope.decl(metadata !21406)
  call void @llvm.experimental.noalias.scope.decl(metadata !21407)
  call void @llvm.experimental.noalias.scope.decl(metadata !21408)
  call void @llvm.experimental.noalias.scope.decl(metadata !21409)
  store i8 123, ptr %i.ac, align 1, !noalias !21410
  store i64 1, ptr %i.af, align 8, !alias.scope !21411, !noalias !21412
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @346, i64 noundef range(i64 6, 8) 7)
          to label %.noexc3.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc3.i.i.i:                                    ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !21413)
  call void @llvm.experimental.noalias.scope.decl(metadata !21414)
  call void @llvm.experimental.noalias.scope.decl(metadata !21415)
  call void @llvm.experimental.noalias.scope.decl(metadata !21416)
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !21417, !noalias !21418, !noundef !28 ; 3 uses
  %i.ah = load i64, ptr %i.h, align 8, !range !29, !alias.scope !21417, !noalias !21418, !noundef !28
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !30

bb.i:                                             ; preds = %.noexc3.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ag, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !21399

.noexc4.i.i.i:                                    ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !21419, !noalias !21418
  br label %bb.j

bb.j:                                             ; preds = %.noexc4.i.i.i, %.noexc3.i.i.i
  %i.aj = phi i64 [ %i.ag, %.noexc3.i.i.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, %.noexc4.i.i.i ] ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %i.ae, align 8, !alias.scope !21419, !noalias !21418, !nonnull !28, !noundef !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 58, ptr %i.am, align 1, !noalias !21420
  %i.an = add nuw i64 %i.aj, 1
  store i64 %i.an, ptr %i.af, align 8, !alias.scope !21419, !noalias !21418
  %.val11.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21405, !noalias !21421, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val11.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 3)
          to label %.noexc5.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc5.i.i.i:                                    ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !21422)
  call void @llvm.experimental.noalias.scope.decl(metadata !21423)
  call void @llvm.experimental.noalias.scope.decl(metadata !21424)
  call void @llvm.experimental.noalias.scope.decl(metadata !21425)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !21426, !noalias !21427, !noundef !28 ; 3 uses
  %i.aq = load i64, ptr %.val11.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !21426, !noalias !21427, !noundef !28
  %i.ar = icmp eq i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.k, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i", !prof !30

bb.k:                                             ; preds = %.noexc5.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val11.i.i.i.i.i.i.i.i, i64 noundef %i.ap, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !21399

.noexc6.i.i.i:                                    ; preds = %bb.k
  %.pre.i.i.i.i.i.i.i.i.i26.i.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !21428, !noalias !21427
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i": ; preds = %.noexc6.i.i.i, %.noexc5.i.i.i
  %i.as = phi i64 [ %i.ap, %.noexc5.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i26.i.i.i.i.i, %.noexc6.i.i.i ] ; 3 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.val11.i.i.i.i.i.i.i.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !21428, !noalias !21427, !nonnull !28, !noundef !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.as
  store i8 44, ptr %i.aw, align 1, !noalias !21429
  %i.ax = add nuw i64 %i.as, 1
  store i64 %i.ax, ptr %i.ao, align 8, !alias.scope !21428, !noalias !21427
  %.val9.pre.i.i.i20.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21405, !noalias !21430 ; 5 uses
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.pre.i.i.i20.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @347, i64 noundef range(i64 6, 8) 6)
          to label %.noexc7.i.i.i unwind label %.loopexit.split-lp.i.i.i

.noexc7.i.i.i:                                    ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !21431)
  call void @llvm.experimental.noalias.scope.decl(metadata !21432)
  call void @llvm.experimental.noalias.scope.decl(metadata !21433)
end_hunk_3
begin_hunk_4_@_ZN11lsp_harness7jsonrpc6Server16new_with_options17h320fa5d3e58007b4E:bb.a
  %i.ex = icmp eq i8 %.pre259.i, 1
  br i1 %i.ex, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %.noexc15.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.pre.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23392)
  call void @llvm.experimental.noalias.scope.decl(metadata !23393)
  call void @llvm.experimental.noalias.scope.decl(metadata !23394)
  call void @llvm.experimental.noalias.scope.decl(metadata !23395)
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.pre.i, i64 16 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !alias.scope !23396, !noalias !23397, !noundef !28 ; 3 uses
  %i.fa = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.pre.i, align 8, !range !29, !alias.scope !23396, !noalias !23397, !noundef !28
  %i.fb = icmp eq i64 %i.fa, %i.ez
  br i1 %i.fb, label %bb.ad, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i.i.pre.i, i64 noundef %i.ez, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc16.i.i.i.i.i unwind label %bb.ar, !noalias !23321

.noexc16.i.i.i.i.i:                               ; preds = %bb.ad
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !23398, !noalias !23397
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc16.i.i.i.i.i, %bb.ac
  %i.fc = phi i64 [ %i.ez, %bb.ac ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc16.i.i.i.i.i ] ; 3 uses
  %i.fd = icmp sgt i64 %i.fc, -1
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.pre.i, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !23398, !noalias !23397, !nonnull !28, !noundef !28
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fc
  store i8 44, ptr %i.fg, align 1, !noalias !23399
  %i.fh = add nuw i64 %i.fc, 1
  store i64 %i.fh, ptr %i.ey, align 8, !alias.scope !23398, !noalias !23397
  %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i, align 8, !noalias !23389
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc15.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.pre.i, %.noexc15.i.i.i.i.i ], [ %.val9.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  store i8 2, ptr %i.ew, align 8, !alias.scope !23387, !noalias !23388
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1162, i64 noundef 7)
          to label %.noexc17.i.i.i.i.i unwind label %bb.ar

.noexc17.i.i.i.i.i:                               ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i, align 8, !noalias !23400, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23401)
  call void @llvm.experimental.noalias.scope.decl(metadata !23402)
  call void @llvm.experimental.noalias.scope.decl(metadata !23403)
  call void @llvm.experimental.noalias.scope.decl(metadata !23404)
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !23405, !noalias !23406, !noundef !28 ; 3 uses
  %i.fk = load i64, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !23405, !noalias !23406, !noundef !28
  %i.fl = icmp eq i64 %i.fk, %i.fj
  br i1 %i.fl, label %bb.ae, label %bb.af, !prof !30

bb.ae:                                            ; preds = %.noexc17.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fj, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc18.i.i.i.i.i unwind label %bb.ar, !noalias !23321

.noexc18.i.i.i.i.i:                               ; preds = %bb.ae
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fi, align 8, !alias.scope !23407, !noalias !23406
  br label %bb.af

bb.af:                                            ; preds = %.noexc18.i.i.i.i.i, %.noexc17.i.i.i.i.i
  %i.fm = phi i64 [ %i.fj, %.noexc17.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc18.i.i.i.i.i ] ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, -1
  call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !23407, !noalias !23406, !nonnull !28, !noundef !28
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fm
  store i8 58, ptr %i.fq, align 1, !noalias !23408
  %i.fr = add nuw i64 %i.fm, 1
  store i64 %i.fr, ptr %i.fi, align 8, !alias.scope !23407, !noalias !23406
  %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i, align 8, !noalias !23400, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23409)
  call void @llvm.experimental.noalias.scope.decl(metadata !23410)
  call void @llvm.experimental.noalias.scope.decl(metadata !23411)
  call void @llvm.experimental.noalias.scope.decl(metadata !23412)
  %i.fs = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !23413, !noalias !23414, !noundef !28 ; 3 uses
  %i.fu = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !23413, !noalias !23414, !noundef !28
  %i.fv = sub i64 %i.fu, %i.ft
  %i.fw = icmp ult i64 %i.fv, 4
  br i1 %i.fw, label %bb.ag, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h45855daae8d0a047E.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.ag:                                            ; preds = %bb.af
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ft, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc20.i.i.i.i.i unwind label %bb.ar, !noalias !23321

.noexc20.i.i.i.i.i:                               ; preds = %bb.ag
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !23415, !noalias !23414
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h45855daae8d0a047E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core3ser12SerializeMap15serialize_entry17h45855daae8d0a047E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i.i.i, %bb.af
  %i.fx = phi i64 [ %i.ft, %bb.af ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i ] ; 3 uses
  %i.fy = icmp sgt i64 %i.fx, -1
  call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !23415, !noalias !23414, !nonnull !28, !noundef !28
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fx
  store i32 1819047278, ptr %i.gb, align 1, !noalias !23416
  %i.gc = add nuw i64 %i.fx, 4
  store i64 %i.gc, ptr %i.fs, align 8, !alias.scope !23415, !noalias !23414
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.at, i64 1176 ; 2 uses
  %.pre261.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !45, !alias.scope !23385, !noalias !23386
  %.not40.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.pre261.i, 6
  br i1 %.not40.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h45855daae8d0a047E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i54150.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i, align 8, !noalias !23417
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h45855daae8d0a047E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.gd = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9b2a9c37623a8d40E(ptr noalias noundef align 8 dereferenceable(16) %i.ag, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1163, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.phi.trans.insert.i)
          to label %.noexc21.i.i.i.i.i unwind label %bb.ar, !noalias !23321 ; 2 uses

.noexc21.i.i.i.i.i:                               ; preds = %bb.ah
  %.not41.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not41.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.at

bb.ai:                                            ; preds = %.noexc21.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !23418, !noalias !23419 ; 3 uses
  %.pre101.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ew, align 8, !range !42, !alias.scope !23418, !noalias !23419
  %i.ge = icmp eq i8 %.pre101.i.i.i.i.i.i.i.i.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !23420)
  call void @llvm.experimental.noalias.scope.decl(metadata !23421)
  %.val.i.i54.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !23422 ; 2 uses
  br i1 %i.ge, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i57.i.i.i.i.i.i.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i54151.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i54150.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i54.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 5 uses
  %i.gf = phi ptr [ %.pre.i, %.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i54151.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23423)
  call void @llvm.experimental.noalias.scope.decl(metadata !23424)
  call void @llvm.experimental.noalias.scope.decl(metadata !23425)
  call void @llvm.experimental.noalias.scope.decl(metadata !23426)
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i54151.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !23427, !noalias !23428, !noundef !28 ; 3 uses
  %i.gi = load i64, ptr %.val.i.i54151.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !23427, !noalias !23428, !noundef !28
  %i.gj = icmp eq i64 %i.gi, %i.gh
  br i1 %i.gj, label %bb.ak, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i55.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i54151.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.gh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22.i.i.i.i.i unwind label %bb.ar, !noalias !23321

.noexc22.i.i.i.i.i:                               ; preds = %bb.ak
  %.pre.i.i.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gg, align 8, !alias.scope !23429, !noalias !23428
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i55.i.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i55.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc22.i.i.i.i.i, %bb.aj
  %i.gk = phi i64 [ %i.gh, %bb.aj ], [ %.pre.i.i.i.i.i.i.i.i60.i.i.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i ] ; 3 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %.val.i.i54151.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !23429, !noalias !23428, !nonnull !28, !noundef !28
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gk
  store i8 44, ptr %i.go, align 1, !noalias !23430
  %i.gp = add nuw i64 %i.gk, 1
  store i64 %i.gp, ptr %i.gg, align 8, !alias.scope !23429, !noalias !23428
  %.val9.pre.i.i56.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gf, align 8, !noalias !23422
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i57.i.i.i.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i57.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i55.i.i.i.i.i.i.i.i.i.i.i", %bb.ai
  %i.gq = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %i.gf, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i55.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.val9.i.i58.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i54.i.i.i.i.i.i.i.i.i.i.i, %bb.ai ], [ %.val9.pre.i.i56.i.i.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i55.i.i.i.i.i.i.i.i.i.i.i" ]
  store i8 2, ptr %i.ew, align 8, !alias.scope !23418, !noalias !23419
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i58.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @488, i64 noundef 12)
          to label %.noexc23.i.i.i.i.i unwind label %bb.ar

.noexc23.i.i.i.i.i:                               ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i57.i.i.i.i.i.i.i.i.i.i.i"
  %.val.i4.i59.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gq, align 8, !noalias !23431, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23432)
  call void @llvm.experimental.noalias.scope.decl(metadata !23433)
  call void @llvm.experimental.noalias.scope.decl(metadata !23434)
  call void @llvm.experimental.noalias.scope.decl(metadata !23435)
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i4.i59.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !23436, !noalias !23437, !noundef !28 ; 3 uses
  %i.gt = load i64, ptr %.val.i4.i59.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !23436, !noalias !23437, !noundef !28
  %i.gu = icmp eq i64 %i.gt, %i.gs
  br i1 %i.gu, label %bb.al, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h4f2fce116e75914bE.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.al:                                            ; preds = %.noexc23.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i59.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.gs, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc24.i.i.i.i.i unwind label %bb.ar, !noalias !23321

.noexc24.i.i.i.i.i:                               ; preds = %bb.al
  %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gr, align 8, !alias.scope !23438, !noalias !23437
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h4f2fce116e75914bE.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_core3ser12SerializeMap15serialize_entry17h4f2fce116e75914bE.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc24.i.i.i.i.i, %.noexc23.i.i.i.i.i
  %i.gv = phi i64 [ %i.gs, %.noexc23.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc24.i.i.i.i.i ] ; 3 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.i4.i59.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !23438, !noalias !23437, !nonnull !28, !noundef !28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gv
  store i8 58, ptr %i.gz, align 1, !noalias !23439
  %i.ha = add nuw i64 %i.gv, 1
  store i64 %i.ha, ptr %i.gr, align 8, !alias.scope !23438, !noalias !23437
  %i.hb = invoke fastcc noundef align 8 ptr @"_ZN9lsp_types1_86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..ClientCapabilities$GT$9serialize17h2bd87c333e64325dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(936) %.sroa.855.0..sroa_idx.i, ptr noalias noundef align 8 dereferenceable(8) %i.gq)
          to label %.noexc25.i.i.i.i.i unwind label %bb.ar, !noalias !23321 ; 2 uses

.noexc25.i.i.i.i.i:                               ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h4f2fce116e75914bE.exit.i.i.i.i.i.i.i.i.i.i.i
  %.not42.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not42.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.at

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc25.i.i.i.i.i
  %.pre262.i = load ptr, ptr %i.ag, align 8, !noalias !23372
  %.val.i.i.i.i.i.i.i.i.i.i.pre.i = load ptr, ptr %.pre262.i, align 8, !noalias !23440 ; 5 uses
  %.pre263.i = load i8, ptr %i.ew, align 8, !range !42, !noalias !23372
  %i.hc = icmp eq i8 %.pre263.i, 0
  br i1 %i.hc, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.pre.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23441)
  call void @llvm.experimental.noalias.scope.decl(metadata !23442)
  call void @llvm.experimental.noalias.scope.decl(metadata !23443)
  call void @llvm.experimental.noalias.scope.decl(metadata !23444)
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.pre.i, i64 16 ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !23445, !noalias !23446, !noundef !28 ; 3 uses
  %i.hf = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.pre.i, align 8, !range !29, !alias.scope !23445, !noalias !23446, !noundef !28
  %i.hg = icmp eq i64 %i.hf, %i.he
  br i1 %i.hg, label %bb.an, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.pre.i, i64 noundef %i.he, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc60.i.i.i.i.i unwind label %bb.ar, !noalias !23321

.noexc60.i.i.i.i.i:                               ; preds = %bb.an
  %.pre.i.i.i.i.i.i.i99.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hd, align 8, !alias.scope !23447, !noalias !23446
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc60.i.i.i.i.i, %bb.am
  %i.hh = phi i64 [ %i.he, %bb.am ], [ %.pre.i.i.i.i.i.i.i99.i.i.i.i.i.i.i.i.i.i.i, %.noexc60.i.i.i.i.i ] ; 3 uses
  %i.hi = icmp sgt i64 %i.hh, -1
  call void @llvm.assume(i1 %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.pre.i, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !23447, !noalias !23446, !nonnull !28, !noundef !28
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hh
  store i8 125, ptr %i.hl, align 1, !noalias !23448
  %i.hm = add nuw i64 %i.hh, 1
  store i64 %i.hm, ptr %i.hd, align 8, !alias.scope !23447, !noalias !23446
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !23372
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 1)
          to label %.noexc61.i.i.i.i.i unwind label %bb.ar

.noexc61.i.i.i.i.i:                               ; preds = %bb.ao
  %i.hn = load ptr, ptr %i.ah, align 8, !noalias !23302, !nonnull !28, !align !35, !noundef !28
  %i.ho = load i8, ptr %i.cn, align 8, !range !42, !noalias !23302, !noundef !28
  %.val20.i.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !noalias !23321 ; 5 uses
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc61.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23449)
  call void @llvm.experimental.noalias.scope.decl(metadata !23450)
  call void @llvm.experimental.noalias.scope.decl(metadata !23451)
  call void @llvm.experimental.noalias.scope.decl(metadata !23452)
  %i.hq = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !23453, !noalias !23454, !noundef !28 ; 3 uses
  %i.hs = load i64, ptr %.val20.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !23453, !noalias !23454, !noundef !28
  %i.ht = icmp eq i64 %i.hs, %i.hr
  br i1 %i.ht, label %bb.aq, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, !prof !30

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i.i.i.i.i, i64 noundef %i.hr, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc62.i.i.i.i.i unwind label %bb.ar, !noalias !23321

.noexc62.i.i.i.i.i:                               ; preds = %bb.aq
  %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i = load i64, ptr %i.hq, align 8, !alias.scope !23455, !noalias !23454
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc62.i.i.i.i.i, %bb.ap
  %i.hu = phi i64 [ %i.hr, %bb.ap ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i.i.i.i.i, %.noexc62.i.i.i.i.i ] ; 3 uses
  %i.hv = icmp sgt i64 %i.hu, -1
  call void @llvm.assume(i1 %i.hv)
  %i.hw = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i.i, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !23455, !noalias !23454, !nonnull !28, !noundef !28
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hu
  store i8 125, ptr %i.hy, align 1, !noalias !23456
  %i.hz = add nuw i64 %i.hu, 1
  store i64 %i.hz, ptr %i.hq, align 8, !alias.scope !23455, !noalias !23454
  br label %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ao, %bb.ab, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i", %bb.u, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i.i.i.i.i", %bb.x, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i57.i.i.i.i.i.i.i.i.i.i.i", %bb.aq, %bb.an, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h4f2fce116e75914bE.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.pre.i = load i64, ptr %i.aj, align 8, !range !29, !alias.scope !23457, !noalias !23295 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23457)
  %i.ia = icmp eq i64 %.val.i.i.i.i.i.pre.i, 0
  br i1 %i.ia, label %.body.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !23457, !noalias !23295, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.pre.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !23458
  br label %.body.i.i.i

bb.at:                                            ; preds = %.noexc25.i.i.i.i.i, %.noexc21.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %.noexc25.i.i.i.i.i ], [ %i.gd, %.noexc21.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !23372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !23302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !23299
  call void @llvm.experimental.noalias.scope.decl(metadata !23459)
  %.val.i63.i.i.i.i.i = load i64, ptr %i.aj, align 8, !range !29, !alias.scope !23459, !noalias !23295, !noundef !28 ; 2 uses
  %i.ib = icmp eq i64 %.val.i63.i.i.i.i.i, 0
  br i1 %i.ib, label %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.thread.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val1.i64.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !23459, !noalias !23295, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i64.i.i.i.i.i, i64 noundef %.val.i63.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !23460
  br label %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.thread.i.i.i.i

_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.thread.i.i.i.i: ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !23295
  br label %bb.av

_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.i.i.i.i: ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i, %.noexc61.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !23302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !23299
  %.sroa.013.0.copyload.i.i.i.i = load i64, ptr %i.aj, align 8, !noalias !23461 ; 2 uses
  %.sroa.614.0.copyload.i.i.i.i = load ptr, ptr %i.cl, align 8, !noalias !23461 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = load i64, ptr %i.cm, align 8, !noalias !23461 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !23295
  %i.ic = icmp eq i64 %.sroa.013.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.ic, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.i.i.i.i, %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.thread.i.i.i.i
  %.sroa.614.019.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i, %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.thread.i.i.i.i ], [ %.sroa.614.0.copyload.i.i.i.i, %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019.i.i.i.i) ]
  %i.id = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019.i.i.i.i)
          to label %_ZN11lsp_harness7jsonrpc6Server25send_request_with_options17hd8f91e1cfa9a1624E.exit.thread.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !23290

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i": ; preds = %bb.be, %bb.bd, %bb.ax
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.if, %bb.ax ], [ %i.ir, %bb.bd ], [ %i.ir, %bb.be ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23462)
  call void @llvm.experimental.noalias.scope.decl(metadata !23463)
  %.val.i.i55.i.i.i.i = load i64, ptr %i.ao, align 8, !range !29, !alias.scope !23464, !noalias !23293, !noundef !28 ; 2 uses
  %i.ie = icmp eq i64 %.val.i.i55.i.i.i.i, 0
  br i1 %i.ie, label %.body.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"
  %.val1.i.i56.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !23464, !noalias !23293, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56.i.i.i.i, i64 noundef %.val.i.i55.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !23465
  br label %.body.i.i.i

bb.ax:                                            ; preds = %.invoke.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65.i.i.i.i", %bb.ba, %bb.az
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61.i.i.i.i"

bb.ay:                                            ; preds = %_ZN10serde_json3ser6to_vec17h6e0b5c7d4d7e0e6dE.exit.i.i.i.i
  store i64 %.sroa.013.0.copyload.i.i.i.i, ptr %i.ao, align 8, !noalias !23293
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !23293
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !23293
  %i.ig = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !23293 ; 2 uses
  %i.ih = icmp ult i64 %i.ig, 6
  call void @llvm.assume(i1 %i.ih)
  %i.ii = icmp samesign ugt i64 %i.ig, 3
  br i1 %i.ii, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %i.ij = phi i64 [ %.pre.i.i.i.i, %bb.bb ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !23293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !23293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !23293
  store i64 %i.ij, ptr %i.ak, align 8, !noalias !23293
  %i.ik = icmp sgt i64 %i.ij, -1
  call void @llvm.assume(i1 %i.ik)
  store ptr %i.ak, ptr %i.al, align 8, !noalias !23293
  %.sroa.442.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx.i.i.i.i, align 8, !noalias !23293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !23466
  store ptr @390, ptr %i.af, align 8, !noalias !23467
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !23467
  %.sroa.5.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.al, ptr %.sroa.5.0..sroa_idx9.i.i.i.i, align 8, !noalias !23467
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !noalias !23467
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 8, !noalias !23467
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.af)
          to label %bb.bc unwind label %bb.ax, !noalias !23290

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !23293
  store ptr %i.ao, ptr %i.an, align 8, !noalias !23293
  %.sroa.438.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx.i.i.i.i, align 8, !noalias !23293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !23468
  %i.il = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 4, ptr %i.il, align 8, !noalias !23468
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
end_hunk_4
begin_hunk_5_@_ZN11lsp_harness7jsonrpc6Server16new_with_options17h320fa5d3e58007b4E:bb.a
  %i.uh = icmp eq i8 %i.ug, 6
  br i1 %i.uh, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59", label %bb.id

bb.id:                                            ; preds = %.thread94
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %2)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59" unwind label %bb.hx

bb.ie:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit59"
  resume { ptr, i32 } %.pn37
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11lsp_harness7jsonrpc6Server3new17ha4d00c7defcb2c4fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(200) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 6, ptr %i.a, align 8
  call void @_ZN11lsp_harness7jsonrpc6Server16new_with_options17h320fa5d3e58007b4E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11lsp_harness7jsonrpc6Server4recv17h4e15249262e49441E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr %.64.val, ptr nofree readonly captures(none) %.72.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.598.i.i.i.i = alloca [56 x i8], align 8  ; 5 uses
  %.sroa.592.i.i.i.i = alloca [31 x i8], align 1  ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [64 x i8], align 8                ; 25 uses
  %i.r = alloca [32 x i8], align 8                ; 26 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [64 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 9 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %.sroa.632.sroa.5.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 12 uses
  %i.ad = alloca [128 x i8], align 8              ; 12 uses
  %i.ae = alloca [136 x i8], align 8              ; 9 uses
  %i.af = alloca [128 x i8], align 8              ; 12 uses
  %i.ag = alloca [136 x i8], align 8              ; 9 uses
  %.sroa.19.i.i.i = alloca [32 x i8], align 8     ; 6 uses
  %.sroa.18.i.i.i115 = alloca [112 x i8], align 8 ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11.i116 = alloca [112 x i8], align 8     ; 7 uses
  %i.ai = alloca [128 x i8], align 8              ; 8 uses
  %i.aj = alloca [56 x i8], align 8               ; 21 uses
  %i.ak = alloca [128 x i8], align 8              ; 19 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 10 uses
  %i.at = alloca [16 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 24 uses
  %i.ay = alloca [16 x i8], align 8               ; 6 uses
  %i.az = alloca [32 x i8], align 8               ; 9 uses
  %i.ba = alloca [16 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 10 uses
  %i.bg = alloca [80 x i8], align 8               ; 14 uses
  %i.bh = alloca [88 x i8], align 8               ; 12 uses
  %.sroa.34.i.i.i = alloca [7 x i8], align 1      ; 6 uses
  %.sroa.36.i.i.i = alloca [16 x i8], align 8     ; 6 uses
  %i.bi = alloca [80 x i8], align 8               ; 14 uses
  %i.bj = alloca [88 x i8], align 8               ; 12 uses
  %.sroa.184.i.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.20.i.i.i = alloca [16 x i8], align 8     ; 6 uses
  %.sroa.18.i.i.i = alloca [64 x i8], align 8     ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11.i = alloca [64 x i8], align 8         ; 5 uses
  %i.bl = alloca [80 x i8], align 8               ; 11 uses
  %i.bm = alloca [56 x i8], align 8               ; 20 uses
  %i.bn = alloca [56 x i8], align 8               ; 9 uses
  %i.bo = alloca [48 x i8], align 8               ; 4 uses
  %i.bp = alloca [48 x i8], align 8               ; 4 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [104 x i8], align 8              ; 15 uses
  %i.bs = alloca [48 x i8], align 8               ; 4 uses
  %.sroa.1029 = alloca [112 x i8], align 8        ; 6 uses
  %i.bt = alloca [80 x i8], align 8               ; 17 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 12 uses
  %i.bw = alloca [24 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i64 0, ptr %i.bw, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 7 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.64.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.72.val) ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.72.val, i64 128
  %i.by = load ptr, ptr %i.bx, align 8, !invariant.load !28, !nonnull !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 72 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 80 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer"

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge": ; preds = %bb.av, %bb.ay, %.preheader53.i
  %.sroa.7.0.ph.be = phi i64 [ %i.kk, %bb.ay ], [ 0, %.preheader53.i ], [ %i.kb, %bb.av ]
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer"

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer": ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge", %bb.a
  %.sroa.7.0.ph = phi i64 [ undef, %bb.a ], [ %.sroa.7.0.ph.be, %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge" ] ; 15 uses
  %.sroa.0.0.ph = phi i1 [ false, %bb.a ], [ true, %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge" ]
  br label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit"

"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit": ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.backedge", %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer"
  store i64 0, ptr %.sroa.545.0..sroa_idx, align 8
  %i.cj = invoke { i64, ptr } %i.by(ptr noundef nonnull align 1 %.64.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %bb.c unwind label %.loopexit111 ; 2 uses

.thread63:                                        ; preds = %.loopexit111, %.loopexit.split-lp, %bb.na, %bb.mz, %.body112, %bb.bs, %bb.bq, %bb.bp, %bb.bm, %bb.bl, %bb.bh
  %.pn75 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.na ], [ %eh.lpad-body113, %.body112 ], [ %lpad.thr_comm.split-lp, %bb.bh ], [ %i.lf, %bb.bq ], [ %i.la, %bb.bm ], [ %i.la, %bb.bl ], [ %i.lf, %bb.bp ], [ %eh.lpad-body113, %bb.bs ], [ %lpad.thr_comm, %bb.mz ], [ %lpad.loopexit, %.loopexit111 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24229)
  call void @llvm.experimental.noalias.scope.decl(metadata !24230)
  %.val.i.i = load i64, ptr %i.bw, align 8, !range !29, !alias.scope !24231, !noundef !28 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i, 0
  br i1 %i.ck, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", label %bb.b

bb.b:                                             ; preds = %.thread63
  %.val1.i.i = load ptr, ptr %.sroa.444.0..sroa_idx, align 8, !alias.scope !24231, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24231
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

.loopexit111:                                     ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread63

.loopexit.split-lp:                               ; preds = %.noexc, %.invoke, %bb.d, %.loopexit, %bb.h, %.loopexit.i, %bb.bf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread63

bb.c:                                             ; preds = %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit"
  %i.cl = extractvalue { i64, ptr } %i.cj, 0
  %i.cm = extractvalue { i64, ptr } %i.cj, 1      ; 2 uses
  %i.cn = trunc nuw i64 %i.cl to i1
  br i1 %i.cn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.co = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.cm)
          to label %bb.nb unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  %i.cp = icmp eq ptr %i.cm, null
  br i1 %i.cp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %.sroa.444.0..sroa_idx, align 8 ; 3 uses
  %.val79 = load i64, ptr %.sroa.545.0..sroa_idx, align 8, !noundef !28 ; 2 uses
  %.not.i = icmp eq i64 %.val79, 2
  br i1 %.not.i, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

bb.g:                                             ; preds = %bb.e, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  br i1 %.sroa.0.0.ph, label %bb.bc, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bs)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.cq = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hd1a9549722c5cff0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bs)
          to label %bb.bb unwind label %.loopexit.split-lp

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.cr = load i16, ptr %.val, align 1
  %i.cs = icmp ne i16 %i.cr, 2573
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.g, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread": ; preds = %bb.f, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  %i.cv = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h3636e70087827363E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val, i64 noundef %.val79) ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0      ; 4 uses
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !24232
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.br, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cw, i64 noundef %i.cx, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @379, i64 noundef 2)
          to label %.noexc84 unwind label %.loopexit111

.noexc84:                                         ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  call void @llvm.experimental.noalias.scope.decl(metadata !24233)
  %i.cy = load i64, ptr %i.br, align 8, !range !43, !alias.scope !24233, !noalias !24234, !noundef !28
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.r, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.noexc84
  %i.da = load i8, ptr %i.ca, align 2, !range !33, !alias.scope !24235, !noalias !24236, !noundef !28
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit.thread", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.bz, align 8, !alias.scope !24233, !noalias !24234 ; 16 uses
  %i.dc = load ptr, ptr %i.cc, align 8, !alias.scope !24235, !noalias !24236, !nonnull !28, !align !37, !noundef !28 ; 5 uses
  %i.dd = load i64, ptr %i.cd, align 8, !alias.scope !24235, !noalias !24236, !noundef !28 ; 16 uses
  %.promoted26.i.i = load i8, ptr %i.cb, align 8, !alias.scope !24235, !noalias !24236
  %i.de = trunc nuw i8 %.promoted26.i.i to i1     ; 2 uses
  %i.df = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.df, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %i.dd
  br i1 %.not.i.i.i.peel.i, label %bb.j, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.i
  %i.dg = icmp eq i64 %.promoted.i.i, %i.dd
  br i1 %i.dg, label %bb.k, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.promoted.i.i
  %i.di = load i8, ptr %i.dh, align 1, !alias.scope !24237, !noalias !24238, !noundef !28
  %i.dj = icmp sgt i8 %i.di, -65
  br i1 %i.dj, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.promoted.i.i ; 4 uses
  %i.dl = icmp samesign eq i64 %.promoted.i.i, %i.dd
  br i1 %i.dl, label %.loopexit119.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dm = load i8, ptr %i.dk, align 1, !noalias !24239, !noundef !28 ; 5 uses
  %i.dn = icmp sgt i8 %i.dm, -1
  br i1 %i.dn, label %bb.m, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i": ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dp = and i8 %i.dm, 31
  %i.dq = zext nneg i8 %i.dp to i32               ; 3 uses
  %i.dr = add nuw nsw i64 %.promoted.i.i, 1
  %i.ds = icmp samesign ne i64 %i.dr, %i.dd
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load i8, ptr %i.do, align 1, !noalias !24239, !noundef !28
  %i.du = shl nuw nsw i32 %i.dq, 6
  %i.dv = and i8 %i.dt, 63
  %i.dw = zext nneg i8 %i.dv to i32               ; 2 uses
  %i.dx = or disjoint i32 %i.du, %i.dw
  %i.dy = icmp samesign ugt i8 %i.dm, -33
  br i1 %i.dy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i", label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i"
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.ea = add nuw nsw i64 %.promoted.i.i, 2
  %i.eb = icmp samesign ne i64 %i.ea, %i.dd
  call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.dz, align 1, !noalias !24239, !noundef !28
  %i.ed = shl nuw nsw i32 %i.dw, 6
  %i.ee = and i8 %i.ec, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ed, %i.ef            ; 2 uses
  %i.eh = shl nuw nsw i32 %i.dq, 12
  %i.ei = or disjoint i32 %i.eg, %i.eh
  %i.ej = icmp samesign ugt i8 %i.dm, -17
  br i1 %i.ej, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i", label %bb.n

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i"
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dk, i64 3
  %i.el = add nuw nsw i64 %.promoted.i.i, 3
  %i.em = icmp samesign ne i64 %i.el, %i.dd
  call void @llvm.assume(i1 %i.em)
  %i.en = load i8, ptr %i.ek, align 1, !noalias !24239, !noundef !28
  %i.eo = shl nuw nsw i32 %i.dq, 18
  %i.ep = and i32 %i.eo, 1835008
  %i.eq = shl nuw nsw i32 %i.eg, 6
  %i.er = and i8 %i.en, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eq, %i.es
  %i.eu = or disjoint i32 %i.et, %i.ep
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ev = zext nneg i8 %i.dm to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i"
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ei, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.peel.i" ], [ %i.eu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.peel.i" ], [ %i.dx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.peel.i" ], [ %i.ev, %bb.m ] ; 4 uses
  %i.ew = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.ew)
  br i1 %i.de, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.ex, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ey = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.ey, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.ez, i64 3, i64 4
  br label %bb.s

bb.r:                                             ; preds = %.noexc84
  %i.fa = load i64, ptr %i.ce, align 8, !alias.scope !24233, !noalias !24234, !noundef !28 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, -1
  %i.fc = load ptr, ptr %i.cc, align 8, !alias.scope !24233, !noalias !24234, !nonnull !28, !align !37, !noundef !28 ; 6 uses
  %i.fd = load i64, ptr %i.cd, align 8, !alias.scope !24233, !noalias !24234, !noundef !28 ; 14 uses
  %i.fe = load ptr, ptr %i.cf, align 8, !alias.scope !24233, !noalias !24234, !nonnull !28, !align !37, !noundef !28 ; 4 uses
  %i.ff = load i64, ptr %i.cg, align 8, !alias.scope !24233, !noalias !24234, !noundef !28 ; 14 uses
  %i.fg = add i64 %i.ff, -1                       ; 4 uses
  br i1 %i.fb, label %bb.ai, label %bb.x

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.p ], [ %..i.i.peel.i, %bb.q ], [ 1, %bb.o ]
  %i.fh = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 19 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24240)
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i.i = icmp ult i64 %i.fh, %i.dd
  br i1 %.not.i.i.i.i, label %bb.u, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.t
  %i.fj = icmp eq i64 %i.fh, %i.dd
  br i1 %i.fj, label %bb.v, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !24237, !noalias !24241, !noundef !28
  %i.fm = icmp sgt i8 %i.fl, -65
  br i1 %i.fm, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %bb.u, %.split.i.i.i.i, %bb.s
  %i.fn = icmp samesign eq i64 %i.fh, %i.dd
  br i1 %i.fn, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fh
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !24242, !noundef !28 ; 3 uses
  %i.fq = icmp sgt i8 %i.fp, -1
  br i1 %i.fq, label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.i": ; preds = %bb.w
  %i.fr = add nuw nsw i64 %i.fh, 1
  %i.fs = icmp samesign ne i64 %i.fr, %i.dd
  call void @llvm.assume(i1 %i.fs)
  %i.ft = icmp samesign ugt i8 %i.fp, -33
  br i1 %i.ft, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.i", label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit12.i.i.i.i"
  %i.fu = add nuw nsw i64 %i.fh, 2
  %i.fv = icmp samesign ne i64 %i.fu, %i.dd
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ugt i8 %i.fp, -17
  br i1 %i.fw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.i", label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit16.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0714052947e1baadE.exit14.i.i.i.i"
  %i.fx = add nuw nsw i64 %i.fh, 3
  %i.fy = icmp samesign ne i64 %i.fx, %i.dd
  call void @llvm.assume(i1 %i.fy)
  br label %"_ZN4core3str21_$LT$impl$u20$str$GT$10split_once17hc64deb29adcea6daE.exit"

.loopexit.i:                                      ; preds = %bb.u, %.split.i.i.i.i, %bb.j, %.split.i.i.i.peel.i
  %.lcssa115.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.j ], [ %i.fh, %.split.i.i.i.i ], [ %i.fh, %bb.u ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dc, i64 noundef %i.dd, i64 noundef %.lcssa115.i, i64 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1025) #42
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %.loopexit.i
  unreachable

.loopexit119.i:                                   ; preds = %bb.k
end_hunk_5
begin_hunk_6_@_ZN11lsp_harness7jsonrpc6Server4recv17h4e15249262e49441E:bb.a
  %.pr.i = load i8, ptr %i.jk, align 1, !alias.scope !24255, !noalias !24256
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 1 ; 2 uses
  %i.jo = add i64 %i.jl, -1                       ; 2 uses
  %i.jp = icmp ult i64 %i.jl, 18
  br i1 %i.jp, label %.lr.ph.i.preheader, label %.preheader53.i

.preheader53.i:                                   ; preds = %bb.aw, %bb.au
  %.sroa.16.0.ph.i = phi i64 [ %i.jl, %bb.aw ], [ %i.jo, %bb.au ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.jk, %bb.aw ], [ %i.jn, %bb.au ]
  %.not.i933184 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i933184, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge", label %.lr.ph3188

bb.av:                                            ; preds = %bb.ax
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i3187, i64 1
  %i.jr = add i64 %.sroa.16.0.i3186, -1           ; 2 uses
  %.not.i93 = icmp eq i64 %i.jr, 0
  br i1 %.not.i93, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge", label %.lr.ph3188

bb.aw:                                            ; preds = %bb.at
  %i.js = icmp ult i64 %i.jl, 17
  br i1 %i.js, label %.lr.ph.i.preheader, label %.preheader53.i

.lr.ph3188:                                       ; preds = %.preheader53.i, %bb.av
  %.sroa.01.0.i3187 = phi ptr [ %i.jq, %bb.av ], [ %.sroa.01.0.ph.i, %.preheader53.i ] ; 2 uses
  %.sroa.16.0.i3186 = phi i64 [ %i.jr, %bb.av ], [ %.sroa.16.0.ph.i, %.preheader53.i ]
  %.sroa.017.0.i3185 = phi i64 [ %i.kb, %bb.av ], [ 0, %.preheader53.i ]
  %i.jt = load i8, ptr %.sroa.01.0.i3187, align 1, !alias.scope !24255, !noalias !24256, !noundef !28
  %i.ju = zext i8 %i.jt to i32
  %i.jv = add nsw i32 %i.ju, -48                  ; 2 uses
  %i.jw = icmp ult i32 %i.jv, 10
  br i1 %i.jw, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %.lr.ph3188
  %i.jx = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.i3185, i64 10) ; 2 uses
  %i.jy = extractvalue { i64, i1 } %i.jx, 0       ; 2 uses
  %i.jz = extractvalue { i64, i1 } %i.jx, 1
  %i.ka = zext nneg i32 %i.jv to i64
  %i.kb = add i64 %i.jy, %i.ka                    ; 3 uses
  %.not50.i = icmp ult i64 %i.kb, %i.jy
  %or.cond99 = select i1 %i.jz, i1 true, i1 %.not50.i
  br i1 %or.cond99, label %.loopexit, label %bb.av

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.ay
  %.sroa.01.162.i = phi ptr [ %i.ki, %bb.ay ], [ %.sroa.01.162.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.161.i = phi i64 [ %i.kh, %bb.ay ], [ %.sroa.16.161.i.ph, %.lr.ph.i.preheader ]
  %.sroa.017.160.i = phi i64 [ %i.kk, %bb.ay ], [ 0, %.lr.ph.i.preheader ]
  %i.kc = load i8, ptr %.sroa.01.162.i, align 1, !alias.scope !24255, !noalias !24256, !noundef !28
  %i.kd = zext i8 %i.kc to i32
  %i.ke = add nsw i32 %i.kd, -48                  ; 2 uses
  %i.kf = icmp ult i32 %i.ke, 10
  br i1 %i.kf, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %.lr.ph.i
  %i.kg = mul i64 %.sroa.017.160.i, 10
  %i.kh = add nsw i64 %.sroa.16.161.i, -1         ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.01.162.i, i64 1
  %i.kj = zext nneg i32 %i.ke to i64
  %i.kk = add i64 %i.kg, %i.kj                    ; 2 uses
  %.not51.i = icmp eq i64 %i.kh, 0
  br i1 %.not51.i, label %"_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17h7279a7f1accd3813E.exit.outer.backedge", label %.lr.ph.i

.loopexit:                                        ; preds = %bb.as, %bb.as, %bb.ar, %bb.ax, %.lr.ph3188, %.lr.ph.i
  %.sroa.4.0.ph = phi i8 [ 2, %bb.ax ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph3188 ], [ 0, %bb.ar ], [ 1, %bb.as ], [ 1, %bb.as ]
  %i.kl = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h84ef7a26cbe0b75cE"(i8 noundef %.sroa.4.0.ph)
          to label %bb.az unwind label %.loopexit.split-lp

bb.az:                                            ; preds = %.loopexit
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kl, ptr %i.km, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit": ; preds = %bb.my, %bb.mx, %.thread97, %bb.bb, %bb.nb, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !24257)
  call void @llvm.experimental.noalias.scope.decl(metadata !24258)
  %.val.i.i95 = load i64, ptr %i.bw, align 8, !range !29, !alias.scope !24259, !noundef !28 ; 2 uses
  %i.kn = icmp eq i64 %.val.i.i95, 0
  br i1 %i.kn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit97", label %bb.ba

bb.ba:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit"
  %.val1.i.i96 = load ptr, ptr %.sroa.444.0..sroa_idx, align 8, !alias.scope !24259, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i96, i64 noundef %.val.i.i95, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24259
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit97"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit97": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit", %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  br label %bb.mp

bb.bb:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.ko, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit"

bb.bc:                                            ; preds = %bb.g
  %i.kp = inttoptr i64 %.sroa.7.0.ph to ptr
  %i.kq = icmp slt i64 %.sroa.7.0.ph, 0
  br i1 %i.kq, label %bb.bf, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.bc
  %i.kr = icmp eq i64 %.sroa.7.0.ph, 0            ; 5 uses
  br i1 %i.kr, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24260
  %i.ks = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.7.0.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24260 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = ptrtoint ptr %i.ks to i64
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.bd ], [ 0, %bb.bc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.7.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @381) #42
          to label %.noexc98 unwind label %.loopexit.split-lp

.noexc98:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi i64 [ %i.ku, %bb.be ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ]
  %i.kv = inttoptr i64 %.sroa.10.0.i to ptr       ; 9 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.72.val, i64 64
  %i.kx = load ptr, ptr %i.kw, align 8, !invariant.load !28, !nonnull !28
  %i.ky = invoke noundef ptr %i.kx(ptr noundef nonnull align 1 %.64.val, ptr noalias noundef nonnull align 1 %i.kv, i64 noundef %.sroa.7.0.ph)
          to label %bb.bi unwind label %bb.mz     ; 2 uses

bb.bh:                                            ; preds = %"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17he697b7610e0a09cdE.exit.i"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread63

bb.bi:                                            ; preds = %bb.bg
  %.not67 = icmp eq ptr %i.ky, null
  br i1 %.not67, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kz = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ky)
          to label %bb.mx unwind label %bb.mz

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !24261
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kv, i64 noundef %.sroa.7.0.ph)
          to label %bb.bn unwind label %bb.bl, !noalias !24261

bb.bl:                                            ; preds = %bb.bk
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.kr, label %.thread63, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef %.sroa.7.0.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24262
  br label %.thread63

bb.bn:                                            ; preds = %bb.bk
  %i.lb = load i64, ptr %i.bq, align 8, !range !43, !noalias !24261, !noundef !28
  %i.lc = trunc nuw i64 %i.lb to i1
  br i1 %i.lc, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.le = load <2 x i64>, ptr %i.ld, align 8, !noalias !24261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !24261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !24263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !24264
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bo)
          to label %"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17he697b7610e0a09cdE.exit.i" unwind label %bb.bp, !noalias !24264

bb.bp:                                            ; preds = %bb.bo
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.kr, label %.thread63, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef %.sroa.7.0.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24265
  br label %.thread63

"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17he697b7610e0a09cdE.exit.i": ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i64 48, i1 false), !noalias !24264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !24264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !24264
  store ptr @382, ptr %i.bn, align 8, !noalias !24266
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 23, ptr %i.lg, align 8, !noalias !24266
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %.sroa.7.0.ph, ptr %i.lh, align 8, !noalias !24267
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.kv, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !24267
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store ptr %i.kp, ptr %.sroa.4.0..sroa_idx4.i, align 8, !noalias !24268
  %.sroa.1011.16..sroa.4.0..sroa_idx4.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store <2 x i64> %i.le, ptr %.sroa.1011.16..sroa.4.0..sroa_idx4.i.sroa_idx, align 8, !noalias !24268
  %i.li = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h49f9684de57ab835E"(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.bp)
          to label %.thread97 unwind label %bb.bh

.thread97:                                        ; preds = %"_ZN52_$LT$E$u20$as$u20$anyhow..context..ext..StdError$GT$11ext_context17he697b7610e0a09cdE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !24264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !24263
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.li, ptr %i.lj, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit"

bb.br:                                            ; preds = %bb.gq
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body112

.body112:                                         ; preds = %.body.i, %bb.gf, %bb.br
  %eh.lpad-body113 = phi { ptr, i32 } [ %i.lk, %bb.br ], [ %.pn.i, %bb.gf ], [ %.pn.i, %.body.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24269)
  call void @llvm.experimental.noalias.scope.decl(metadata !24270)
  %.val.i.i105 = load i64, ptr %i.bv, align 8, !range !29, !alias.scope !24271, !noundef !28 ; 2 uses
  %i.ll = icmp eq i64 %.val.i.i105, 0
  br i1 %i.ll, label %.thread63, label %bb.bs

bb.bs:                                            ; preds = %.body112
  %.val1.i.i106 = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !24271, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i106, i64 noundef %.val.i.i105, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24271
  br label %.thread63

bb.bt:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !24261
  store i64 %.sroa.7.0.ph, ptr %i.bv, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 7 uses
  store ptr %i.kv, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  store i64 %.sroa.7.0.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %i.lm = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8 ; 2 uses
  %i.ln = icmp ult i64 %i.lm, 6
  call void @llvm.assume(i1 %i.ln)
  %i.lo = icmp samesign ugt i64 %i.lm, 3
  br i1 %i.lo, label %bb.gq, label %bb.bu

bb.bu:                                            ; preds = %bb.gr, %bb.bt
  %i.lp = phi i64 [ %.pre1608, %bb.gr ], [ %.sroa.7.0.ph, %bb.bt ] ; 3 uses
  %i.lq = phi ptr [ %.pre, %bb.gr ], [ %i.kv, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.experimental.noalias.scope.decl(metadata !24272)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !24273
  %i.lr = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  store ptr %i.lq, ptr %i.lr, align 8, !noalias !24272
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  store i64 %i.lp, ptr %.sroa.431.0..sroa_idx, align 8, !noalias !24272
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 6 uses
  store i64 0, ptr %.sroa.532.0..sroa_idx, align 8, !noalias !24272
  store i64 0, ptr %i.bm, align 8, !noalias !24273
  %.sroa.4.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i109, align 8, !noalias !24273
  %.sroa.5.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i110, align 8, !noalias !24273
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 7 uses
  store i8 -128, ptr %i.ls, align 8, !noalias !24273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !24273
  call void @llvm.experimental.noalias.scope.decl(metadata !24274)
  call void @llvm.experimental.noalias.scope.decl(metadata !24275)
  call void @llvm.experimental.noalias.scope.decl(metadata !24276)
  %.not = icmp eq i64 %i.lp, 0
  br i1 %.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bu, %bb.bv
  %i.lt = phi i64 [ %i.lw, %bb.bv ], [ 0, %bb.bu ] ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !noalias !24277, !noundef !28 ; 2 uses
  switch i8 %i.lv, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.i.i.i" [
    i8 32, label %bb.bv
    i8 10, label %bb.bv
    i8 9, label %bb.bv
    i8 13, label %bb.bv
  ]

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.lw = add i64 %i.lt, 1                        ; 3 uses
  store i64 %i.lw, ptr %.sroa.532.0..sroa_idx, align 8, !alias.scope !24278, !noalias !24279
  %exitcond.not.i.i.i.i = icmp eq i64 %i.lw, %i.lp
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.i.i)
  switch i8 %i.lv, label %bb.bw [
    i8 91, label %bb.bx
    i8 123, label %bb.dl
  ], !prof !49

.loopexit.i.i.i:                                  ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !24280
  store i64 5, ptr %i.bk, align 8, !noalias !24280
  %i.lx = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bm, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bk)
          to label %"_ZN11lsp_harness7jsonrpc1_92_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_harness..jsonrpc..Notification$GT$11deserialize17hfd36a2f0249a6095E.exit.thread.i" unwind label %bb.gg, !noalias !24273

bb.bw:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.i.i.i"
  %i.ly = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h3f8ff25a67c92acaE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1074)
          to label %.noexc10.i unwind label %bb.gg, !noalias !24273

bb.bx:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.i.i.i"
  store i8 127, ptr %i.ls, align 8, !alias.scope !24281, !noalias !24282
  %i.lz = add i64 %i.lt, 1
  store i64 %i.lz, ptr %.sroa.532.0..sroa_idx, align 8, !alias.scope !24283, !noalias !24282
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.184.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !24280
  store ptr %i.bm, ptr %i.bf, align 8, !noalias !24284
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 1, ptr %i.ma, align 8, !noalias !24284
  call void @llvm.experimental.noalias.scope.decl(metadata !24285)
  call void @llvm.experimental.noalias.scope.decl(metadata !24286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !24287
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h2b14084a8c275dd4E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %.noexc12.i unwind label %bb.gg, !noalias !24273

.noexc12.i:                                       ; preds = %bb.bx
  %i.mb = load i8, ptr %i.be, align 8, !range !33, !noalias !24287, !noundef !28
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.noexc12.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !noalias !24287, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !24287
  br label %"_ZN184_$LT$lsp_harness..jsonrpc.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_harness..jsonrpc..Notification$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17ha98d26c464989854E.exit.i.i.i"

bb.bz:                                            ; preds = %.noexc12.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !range !33, !noalias !24287, !noundef !28
  %i.mh = trunc nuw i8 %i.mg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !24287
  br i1 %i.mh, label %bb.ca, label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !24287
  %i.mi = load ptr, ptr %i.bf, align 8, !alias.scope !24288, !noalias !24289, !nonnull !28, !align !35, !noundef !28
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6d6d071b87afe6b5E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bd, ptr noalias noundef align 8 dereferenceable(56) %i.mi)
          to label %.noexc13.i unwind label %bb.gg, !noalias !24273

.noexc13.i:                                       ; preds = %bb.ca
  %i.mj = load i64, ptr %i.bd, align 8, !range !34, !noalias !24287, !noundef !28 ; 6 uses
  %i.mk = icmp eq i64 %i.mj, -9223372036854775808
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !noalias !24290 ; 4 uses
  br i1 %i.mk, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !24287
  br label %"_ZN184_$LT$lsp_harness..jsonrpc.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_harness..jsonrpc..Notification$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_seq17ha98d26c464989854E.exit.i.i.i"

bb.cc:                                            ; preds = %.noexc13.i
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.12.0.copyload.i.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !24290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !24287
  call void @llvm.experimental.noalias.scope.decl(metadata !24291)
  call void @llvm.experimental.noalias.scope.decl(metadata !24292)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !24293
  invoke fastcc void @"_ZN80_$LT$serde_json..de..SeqAccess$LT$R$GT$$u20$as$u20$serde_core..de..SeqAccess$GT$17next_element_seed16has_next_element17h2b14084a8c275dd4E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %.noexc.i.i.i.i unwind label %bb.cj, !noalias !24294

.noexc.i.i.i.i:                                   ; preds = %bb.cc
  %i.mn = load i8, ptr %i.bc, align 8, !range !33, !noalias !24293, !noundef !28
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.noexc.i.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !noalias !24293, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !24293
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit69.i.i.i.i"

bb.ce:                                            ; preds = %.noexc.i.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.ms = load i8, ptr %i.mr, align 1, !range !33, !noalias !24293, !noundef !28
  %i.mt = trunc nuw i8 %i.ms to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !24293
  br i1 %i.mt, label %bb.cf, label %bb.cp

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !24293
  %i.mu = load ptr, ptr %i.bf, align 8, !alias.scope !24295, !noalias !24296, !nonnull !28, !align !35, !noundef !28
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h6d6d071b87afe6b5E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef align 8 dereferenceable(56) %i.mu)
          to label %.noexc60.i.i.i.i unwind label %bb.cj, !noalias !24294

.noexc60.i.i.i.i:                                 ; preds = %bb.cf
  %i.mv = load i64, ptr %i.bb, align 8, !range !34, !noalias !24293, !noundef !28 ; 6 uses
  %i.mw = icmp eq i64 %i.mv, -9223372036854775808
  %i.mx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !noalias !24297 ; 4 uses
  br i1 %i.mw, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %.noexc60.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !24293
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit69.i.i.i.i"

bb.ch:                                            ; preds = %bb.bz
end_hunk_6
begin_hunk_7_@_ZN11lsp_harness7jsonrpc6Server4recv17h4e15249262e49441E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !24424
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i116)
  br label %bb.mj

bb.mc:                                            ; preds = %bb.lz
  %i.ahr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !24424
  unreachable

bb.md:                                            ; preds = %bb.gs
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.bt, i64 80, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.me

bb.me:                                            ; preds = %bb.mk, %bb.md
  call void @llvm.experimental.noalias.scope.decl(metadata !24569)
  call void @llvm.experimental.noalias.scope.decl(metadata !24570)
  %.val.i.i212 = load i64, ptr %i.bv, align 8, !range !29, !alias.scope !24571, !noundef !28 ; 2 uses
  %i.ahs = icmp eq i64 %.val.i.i212, 0
  br i1 %i.ahs, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit215", label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %.val1.i.i213 = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !24571, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i213, i64 noundef %.val.i.i212, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24571
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit215"

bb.mg:                                            ; preds = %bb.mj
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %.body210

.body210:                                         ; preds = %.body.i121, %bb.lt, %bb.mg
  %eh.lpad-body211 = phi { ptr, i32 } [ %i.aht, %bb.mg ], [ %.pn.i122, %bb.lt ], [ %.pn.i122, %.body.i121 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24572)
  call void @llvm.experimental.noalias.scope.decl(metadata !24573)
  %.val.i.i216 = load i64, ptr %i.bv, align 8, !range !29, !alias.scope !24574, !noundef !28 ; 2 uses
  %i.ahu = icmp eq i64 %.val.i.i216, 0
  br i1 %i.ahu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit219", label %bb.mh

bb.mh:                                            ; preds = %.body210
  %.val1.i.i217 = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !24574, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i217, i64 noundef %.val.i.i216, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24574
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit219"

bb.mi:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h08623ed771633d51E.exit21.sink.split.i", %.loopexit.i153
  %.sroa.628.2 = phi ptr [ %.sroa.12.2.i.i.i150, %.loopexit.i153 ], [ %.sroa.628.0, %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h08623ed771633d51E.exit21.sink.split.i" ] ; 2 uses
  %.sroa.027.2 = phi i64 [ %.sroa.09.2.i.i.i151, %.loopexit.i153 ], [ %.sroa.027.0, %"_ZN4core3ptr82drop_in_place$LT$serde_json..de..Deserializer$LT$serde_json..read..StrRead$GT$$GT$17h08623ed771633d51E.exit21.sink.split.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !24424
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i116)
  %i.ahv = icmp eq i64 %.sroa.027.2, -9223372036854775808
  br i1 %i.ahv, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi, %.thread88
  %.sroa.628.291 = phi ptr [ %.sroa.628.1, %.thread88 ], [ %.sroa.628.2, %bb.mi ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.628.291) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1029)
  %i.ahw = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.628.291)
          to label %bb.mq unwind label %bb.mg

bb.mk:                                            ; preds = %bb.mi
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.640.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.1029, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1029)
  store i64 %.sroa.027.2, ptr %0, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.628.2, ptr %.sroa.539.0..sroa_idx, align 8
  br label %bb.me

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit219": ; preds = %bb.mh, %.body210
  call void @llvm.experimental.noalias.scope.decl(metadata !24575)
  call void @llvm.experimental.noalias.scope.decl(metadata !24576)
  %.val.i.i220 = load i64, ptr %i.bw, align 8, !range !29, !alias.scope !24577, !noundef !28 ; 2 uses
  %i.ahx = icmp eq i64 %.val.i.i220, 0
  br i1 %i.ahx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit223", label %bb.ml

bb.ml:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit219"
  %.val1.i.i221 = load ptr, ptr %.sroa.444.0..sroa_idx, align 8, !alias.scope !24577, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i221, i64 noundef %.val.i.i220, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24577
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit223"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit215": ; preds = %bb.mf, %bb.me
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.experimental.noalias.scope.decl(metadata !24578)
  call void @llvm.experimental.noalias.scope.decl(metadata !24579)
  %.val.i.i224 = load i64, ptr %i.bw, align 8, !range !29, !alias.scope !24580, !noundef !28 ; 2 uses
  %i.ahy = icmp eq i64 %.val.i.i224, 0
  br i1 %i.ahy, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit227", label %bb.mm

bb.mm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit215"
  %.val1.i.i225 = load ptr, ptr %.sroa.444.0..sroa_idx, align 8, !alias.scope !24580, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i225, i64 noundef %.val.i.i224, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24580
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit227"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit223": ; preds = %bb.ml, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit219"
  %i.ahz = load i64, ptr %i.bt, align 8, !range !34, !noundef !28
  %.not72 = icmp eq i64 %i.ahz, -9223372036854775808
  br i1 %.not72, label %bb.mw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit227": ; preds = %bb.mm, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit215"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.aia = load i64, ptr %i.bt, align 8, !range !34, !noundef !28
  %i.aib = icmp eq i64 %i.aia, -9223372036854775808
  br i1 %i.aib, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit227"
  call fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$lsp_harness..jsonrpc..Notification$C$serde_json..error..Error$GT$$GT$17h4dc2d4acd733d37fE"(ptr noalias noundef align 8 dereferenceable(80) %i.bt)
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit227"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mu, %bb.mo, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit97"
  ret void

bb.mq:                                            ; preds = %bb.mj
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ahw, ptr %i.aic, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !24581)
  call void @llvm.experimental.noalias.scope.decl(metadata !24582)
  %.val.i.i228 = load i64, ptr %i.bv, align 8, !range !29, !alias.scope !24583, !noundef !28 ; 2 uses
  %i.aid = icmp eq i64 %.val.i.i228, 0
  br i1 %i.aid, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit231", label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %.val1.i.i229 = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !alias.scope !24583, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i229, i64 noundef %.val.i.i228, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24583
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit231"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit231": ; preds = %bb.mr, %bb.mq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.experimental.noalias.scope.decl(metadata !24584)
  call void @llvm.experimental.noalias.scope.decl(metadata !24585)
  %.val.i.i232 = load i64, ptr %i.bw, align 8, !range !29, !alias.scope !24586, !noundef !28 ; 2 uses
  %i.aie = icmp eq i64 %.val.i.i232, 0
  br i1 %i.aie, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit235", label %bb.ms

bb.ms:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit231"
  %.val1.i.i233 = load ptr, ptr %.sroa.444.0..sroa_idx, align 8, !alias.scope !24586, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i233, i64 noundef %.val.i.i232, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24586
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit235"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit235": ; preds = %bb.ms, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit231"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.aif = load i64, ptr %i.bt, align 8, !range !34, !noundef !28
  %i.aig = icmp eq i64 %i.aif, -9223372036854775808
  br i1 %i.aig, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit235"
  call fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$lsp_harness..jsonrpc..Notification$C$serde_json..error..Error$GT$$GT$17h4dc2d4acd733d37fE"(ptr noalias noundef align 8 dereferenceable(80) %i.bt)
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit235"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  br label %bb.mp

bb.mv:                                            ; preds = %bb.mw
  %i.aih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit": ; preds = %bb.b, %.thread63, %bb.mw, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit223"
  %.pn75.pn = phi { ptr, i32 } [ %eh.lpad-body211, %bb.mw ], [ %eh.lpad-body211, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit223" ], [ %.pn75, %.thread63 ], [ %.pn75, %bb.b ]
  resume { ptr, i32 } %.pn75.pn

bb.mw:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit223"
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$lsp_harness..jsonrpc..Notification$C$serde_json..error..Error$GT$$GT$17h4dc2d4acd733d37fE"(ptr noalias noundef align 8 dereferenceable(80) %i.bt) #43
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit" unwind label %bb.mv

bb.mx:                                            ; preds = %bb.bj
  %i.aii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kz, ptr %i.aii, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br i1 %i.kr, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit", label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef %.sroa.7.0.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24587
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit"

bb.mz:                                            ; preds = %bb.bj, %bb.bg
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.kr, label %.thread63, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kv, i64 noundef %.sroa.7.0.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24588
  br label %.thread63

bb.nb:                                            ; preds = %bb.d
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.aij, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb988938bd244ec3E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN11lsp_harness7jsonrpc6Server4send17h0f2670fecb7a5d35E(ptr %.48.val, ptr nofree readonly captures(none) %.56.val, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 16 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !24848
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !24849
  %i.m = tail call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #41, !noalias !24849 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #42, !noalias !24848
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i": ; preds = %bb.a
  store i64 128, ptr %i.g, align 8, !noalias !24848
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.m, ptr %i.o, align 8, !noalias !24848
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24852
  store ptr %i.g, ptr %i.f, align 8, !noalias !24852
  call void @llvm.experimental.noalias.scope.decl(metadata !24853)
  call void @llvm.experimental.noalias.scope.decl(metadata !24854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24855
  call void @llvm.experimental.noalias.scope.decl(metadata !24856)
  call void @llvm.experimental.noalias.scope.decl(metadata !24857)
  call void @llvm.experimental.noalias.scope.decl(metadata !24858)
  call void @llvm.experimental.noalias.scope.decl(metadata !24859)
  store i8 123, ptr %i.m, align 1, !noalias !24860
  store i64 1, ptr %i.p, align 8, !alias.scope !24861, !noalias !24862
  store ptr %i.f, ptr %i.e, align 8, !noalias !24855
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !24863, !noalias !24864 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val17.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !24863, !noalias !24864
  call void @llvm.experimental.noalias.scope.decl(metadata !24865)
  call void @llvm.experimental.noalias.scope.decl(metadata !24866)
  store i8 2, ptr %i.q, align 8, !alias.scope !24867, !noalias !24868
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull align 8 dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @346, i64 noundef range(i64 6, 8) 7)
          to label %.noexc3.i unwind label %bb.t

.noexc3.i:                                        ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i"
  %.val.i6.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24869, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24870)
  call void @llvm.experimental.noalias.scope.decl(metadata !24871)
  call void @llvm.experimental.noalias.scope.decl(metadata !24872)
  call void @llvm.experimental.noalias.scope.decl(metadata !24873)
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !24874, !noalias !24875, !noundef !28 ; 3 uses
  %i.v = load i64, ptr %.val.i6.i.i.i.i.i, align 8, !range !29, !alias.scope !24874, !noalias !24875, !noundef !28
  %i.w = icmp eq i64 %i.v, %i.u
  br i1 %i.w, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.noexc3.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i, i64 noundef %i.u, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i unwind label %bb.t, !noalias !24848

.noexc4.i:                                        ; preds = %bb.c
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !24876, !noalias !24875
  br label %bb.d

bb.d:                                             ; preds = %.noexc4.i, %.noexc3.i
  %i.x = phi i64 [ %i.u, %.noexc3.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i, %.noexc4.i ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !24876, !noalias !24875, !nonnull !28, !noundef !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  store i8 58, ptr %i.ab, align 1, !noalias !24877
  %i.ac = add nuw i64 %i.x, 1
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !24876, !noalias !24875
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24869, !nonnull !28, !align !35, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val11.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val17.i.i.i)
          to label %.noexc5.i unwind label %bb.t

.noexc5.i:                                        ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val18.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !24863, !noalias !24864 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val19.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !24863, !noalias !24864
  %.val.i.i.i22.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24878, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24879)
  call void @llvm.experimental.noalias.scope.decl(metadata !24880)
  call void @llvm.experimental.noalias.scope.decl(metadata !24881)
  call void @llvm.experimental.noalias.scope.decl(metadata !24882)
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i.i.i, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !24883, !noalias !24884, !noundef !28 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i.i22.i.i.i, align 8, !range !29, !alias.scope !24883, !noalias !24884, !noundef !28
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i", !prof !30

bb.e:                                             ; preds = %.noexc5.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i22.i.i.i, i64 noundef %i.ag, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.t, !noalias !24848

.noexc6.i:                                        ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i.i.i30.i.i.i = load i64, ptr %i.af, align 8, !alias.scope !24885, !noalias !24884
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i": ; preds = %.noexc6.i, %.noexc5.i
  %i.aj = phi i64 [ %i.ag, %.noexc5.i ], [ %.pre.i.i.i.i.i.i.i.i.i30.i.i.i, %.noexc6.i ] ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !24885, !noalias !24884, !nonnull !28, !noundef !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  store i8 44, ptr %i.an, align 1, !noalias !24886
  %i.ao = add nuw i64 %i.aj, 1
  store i64 %i.ao, ptr %i.af, align 8, !alias.scope !24885, !noalias !24884
  %.val9.pre.i.i.i24.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24878
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.pre.i.i.i24.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @347, i64 noundef range(i64 6, 8) 6)
          to label %.noexc7.i unwind label %bb.t

.noexc7.i:                                        ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i"
  %.val.i6.i.i27.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24887, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24888)
  call void @llvm.experimental.noalias.scope.decl(metadata !24889)
  call void @llvm.experimental.noalias.scope.decl(metadata !24890)
  call void @llvm.experimental.noalias.scope.decl(metadata !24891)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i6.i.i27.i.i.i, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !24892, !noalias !24893, !noundef !28 ; 3 uses
  %i.ar = load i64, ptr %.val.i6.i.i27.i.i.i, align 8, !range !29, !alias.scope !24892, !noalias !24893, !noundef !28
  %i.as = icmp eq i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %.noexc7.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i27.i.i.i, i64 noundef %i.aq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.t, !noalias !24848

.noexc8.i:                                        ; preds = %bb.f
  %.pre.i.i.i.i.i.i.i7.i.i29.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !24894, !noalias !24893
  br label %bb.g

bb.g:                                             ; preds = %.noexc8.i, %.noexc7.i
  %i.at = phi i64 [ %i.aq, %.noexc7.i ], [ %.pre.i.i.i.i.i.i.i7.i.i29.i.i.i, %.noexc8.i ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i6.i.i27.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !24894, !noalias !24893, !nonnull !28, !noundef !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.at
  store i8 58, ptr %i.ax, align 1, !noalias !24895
  %i.ay = add nuw i64 %i.at, 1
  store i64 %i.ay, ptr %i.ap, align 8, !alias.scope !24894, !noalias !24893
  %.val11.i.i.i28.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24887, !nonnull !28, !align !35, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i.i.i) ]
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val11.i.i.i28.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val18.i.i.i, i64 noundef %.val19.i.i.i)
          to label %.noexc9.i unwind label %bb.t

.noexc9.i:                                        ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !24896)
  call void @llvm.experimental.noalias.scope.decl(metadata !24897)
  call void @llvm.experimental.noalias.scope.decl(metadata !24898)
  call void @llvm.experimental.noalias.scope.decl(metadata !24899)
  call void @llvm.experimental.noalias.scope.decl(metadata !24900)
  %.val.i.i.i32.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24901, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24902)
  call void @llvm.experimental.noalias.scope.decl(metadata !24903)
  call void @llvm.experimental.noalias.scope.decl(metadata !24904)
  call void @llvm.experimental.noalias.scope.decl(metadata !24905)
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i32.i.i.i, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !24906, !noalias !24907, !noundef !28 ; 3 uses
  %i.bb = load i64, ptr %.val.i.i.i32.i.i.i, align 8, !range !29, !alias.scope !24906, !noalias !24907, !noundef !28
  %i.bc = icmp eq i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.h, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i", !prof !30

bb.h:                                             ; preds = %.noexc9.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i32.i.i.i, i64 noundef %i.ba, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc10.i unwind label %bb.t, !noalias !24848

.noexc10.i:                                       ; preds = %bb.h
  %.pre.i.i.i.i.i.i.i.i.i37.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !24908, !noalias !24907
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i": ; preds = %.noexc10.i, %.noexc9.i
  %i.bd = phi i64 [ %i.ba, %.noexc9.i ], [ %.pre.i.i.i.i.i.i.i.i.i37.i.i.i, %.noexc10.i ] ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i32.i.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !24908, !noalias !24907, !nonnull !28, !noundef !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  store i8 44, ptr %i.bh, align 1, !noalias !24909
  %i.bi = add nuw i64 %i.bd, 1
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !24908, !noalias !24907
  %.val9.pre.i.i.i34.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24901
  store i8 2, ptr %i.q, align 8, !alias.scope !24910, !noalias !24911
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.pre.i.i.i34.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @348, i64 noundef 6)
          to label %.noexc11.i unwind label %bb.t

.noexc11.i:                                       ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !24912)
  %.val.i4.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24854, !noalias !24913, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24914)
  call void @llvm.experimental.noalias.scope.decl(metadata !24915)
  call void @llvm.experimental.noalias.scope.decl(metadata !24916)
  call void @llvm.experimental.noalias.scope.decl(metadata !24917)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i, i64 16 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !24918, !noalias !24919, !noundef !28 ; 3 uses
  %i.bl = load i64, ptr %.val.i4.i.i.i.i.i, align 8, !range !29, !alias.scope !24918, !noalias !24919, !noundef !28
  %i.bm = icmp eq i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.i, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i, !prof !30

bb.i:                                             ; preds = %.noexc11.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i, i64 noundef %i.bk, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc12.i unwind label %bb.t, !noalias !24848

.noexc12.i:                                       ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i5.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !24920, !noalias !24919
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i: ; preds = %.noexc12.i, %.noexc11.i
  %i.bn = phi i64 [ %i.bk, %.noexc11.i ], [ %.pre.i.i.i.i.i.i.i5.i.i.i.i.i, %.noexc12.i ] ; 3 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !24920, !noalias !24919, !nonnull !28, !noundef !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bn
  store i8 58, ptr %i.br, align 1, !noalias !24921
  %i.bs = add nuw i64 %i.bn, 1
  store i64 %i.bs, ptr %i.bj, align 8, !alias.scope !24920, !noalias !24919
  call void @llvm.experimental.noalias.scope.decl(metadata !24922)
  call void @llvm.experimental.noalias.scope.decl(metadata !24923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24924
  call void @llvm.experimental.noalias.scope.decl(metadata !24925)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !24926, !noalias !24927, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24928)
  call void @llvm.experimental.noalias.scope.decl(metadata !24929)
  call void @llvm.experimental.noalias.scope.decl(metadata !24930)
  call void @llvm.experimental.noalias.scope.decl(metadata !24931)
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !24932, !noalias !24933, !noundef !28 ; 3 uses
  %i.bv = load i64, ptr %.val.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !24932, !noalias !24933, !noundef !28
  %i.bw = icmp eq i64 %i.bv, %i.bu
  br i1 %i.bw, label %bb.j, label %bb.k, !prof !30

bb.j:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc13.i unwind label %bb.t, !noalias !24848

.noexc13.i:                                       ; preds = %bb.j
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !24934, !noalias !24933
  br label %bb.k

bb.k:                                             ; preds = %.noexc13.i, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i
  %i.bx = phi i64 [ %i.bu, %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc13.i ] ; 3 uses
  %i.by = icmp sgt i64 %i.bx, -1
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !24934, !noalias !24933, !nonnull !28, !noundef !28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bx
  store i8 123, ptr %i.cb, align 1, !noalias !24935
  %i.cc = add nuw i64 %i.bx, 1
  store i64 %i.cc, ptr %i.bt, align 8, !alias.scope !24934, !noalias !24933
  store ptr %i.f, ptr %i.d, align 8, !noalias !24924
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store i8 1, ptr %i.cd, align 8, !noalias !24924
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !24936, !noalias !24937
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val15.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !24936, !noalias !24937
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17hca87e7493e5c3631E(ptr noalias noundef align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @398, i64 noundef 7, ptr %.val14.i.i.i.i.i.i.i, i64 %.val15.i.i.i.i.i.i.i)
          to label %.noexc14.i unwind label %bb.t

.noexc14.i:                                       ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !24938)
  call void @llvm.experimental.noalias.scope.decl(metadata !24939)
  %i.ch = load ptr, ptr %i.d, align 8, !alias.scope !24940, !noalias !24941, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  %i.ci = load i8, ptr %i.cd, align 8, !range !42, !alias.scope !24940, !noalias !24941, !noundef !28
  %i.cj = icmp eq i8 %i.ci, 1
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !24942 ; 6 uses
  br i1 %i.cj, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %.noexc14.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24943)
  call void @llvm.experimental.noalias.scope.decl(metadata !24944)
  call void @llvm.experimental.noalias.scope.decl(metadata !24945)
  call void @llvm.experimental.noalias.scope.decl(metadata !24946)
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !24947, !noalias !24948, !noundef !28 ; 3 uses
  %i.cm = load i64, ptr %.val.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !24947, !noalias !24948, !noundef !28
  %i.cn = icmp eq i64 %i.cm, %i.cl
  br i1 %i.cn, label %bb.m, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.cl, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc15.i unwind label %bb.t, !noalias !24848

.noexc15.i:                                       ; preds = %bb.m
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !24949, !noalias !24948
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc15.i, %bb.l
  %i.co = phi i64 [ %i.cl, %bb.l ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc15.i ] ; 3 uses
  %i.cp = icmp sgt i64 %i.co, -1
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !24949, !noalias !24948, !nonnull !28, !noundef !28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  store i8 44, ptr %i.cs, align 1, !noalias !24950
  %i.ct = add nuw i64 %i.co, 1
  store i64 %i.ct, ptr %i.ck, align 8, !alias.scope !24949, !noalias !24948
  %.val9.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !24942
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i", %.noexc14.i
  %.val9.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i, %.noexc14.i ], [ %.val9.pre.i.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i" ]
  store i8 2, ptr %i.cd, align 8, !alias.scope !24940, !noalias !24941
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @399, i64 noundef 9)
          to label %.noexc16.i unwind label %bb.t

.noexc16.i:                                       ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i"
  %.val.i4.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !24951, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24952)
  call void @llvm.experimental.noalias.scope.decl(metadata !24953)
  call void @llvm.experimental.noalias.scope.decl(metadata !24954)
  call void @llvm.experimental.noalias.scope.decl(metadata !24955)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !24956, !noalias !24957, !noundef !28 ; 3 uses
  %i.cw = load i64, ptr %.val.i4.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !24956, !noalias !24957, !noundef !28
  %i.cx = icmp eq i64 %i.cw, %i.cv
  br i1 %i.cx, label %bb.n, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10bf954709f4ce16E.exit.i.i.i.i.i.i.i, !prof !30

bb.n:                                             ; preds = %.noexc16.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i.i.i.i.i.i.i, i64 noundef %i.cv, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.t, !noalias !24848

.noexc17.i:                                       ; preds = %bb.n
  %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !24958, !noalias !24957
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10bf954709f4ce16E.exit.i.i.i.i.i.i.i

_ZN10serde_core3ser12SerializeMap15serialize_entry17h10bf954709f4ce16E.exit.i.i.i.i.i.i.i: ; preds = %.noexc17.i, %.noexc16.i
  %i.cy = phi i64 [ %i.cv, %.noexc16.i ], [ %.pre.i.i.i.i.i.i.i5.i.i.i.i.i.i.i.i, %.noexc17.i ] ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i4.i.i.i.i.i.i.i.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !24958, !noalias !24957, !nonnull !28, !noundef !28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  store i8 58, ptr %i.dc, align 1, !noalias !24959
  %i.dd = add nuw i64 %i.cy, 1
  store i64 %i.dd, ptr %i.cu, align 8, !alias.scope !24958, !noalias !24957
  %i.de = invoke fastcc noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_seq17h3121c50c8bb62f3bE(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %.noexc18.i unwind label %bb.t, !noalias !24960 ; 2 uses

.noexc18.i:                                       ; preds = %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10bf954709f4ce16E.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.v

bb.o:                                             ; preds = %.noexc18.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !range !40, !alias.scope !24961, !noalias !24962, !noundef !28
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dg, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i", label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i"

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i": ; preds = %bb.o
  invoke fastcc void @"_ZN105_$LT$serde..private..ser..FlatMapSerializeStruct$LT$M$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5287490787fa0134E"(ptr nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @557, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.df)
          to label %.noexc19.i unwind label %bb.t

.noexc19.i:                                       ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i"
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !noalias !24924
  %.pre18.i.i.i.i.i.i.i = load i8, ptr %i.cd, align 8, !range !42, !noalias !24924
  %i.dh = icmp eq i8 %.pre18.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %bb.q, label %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i"

"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i": ; preds = %.noexc19.i, %bb.o
  %.val26.in.i.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i.i.i.i.i, %.noexc19.i ], [ %i.ch, %bb.o ]
  %.val26.i.i.i.i.i.i.i = load ptr, ptr %.val26.in.i.i.i.i.i.i.i, align 8, !noalias !24963, !nonnull !28, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24964)
  call void @llvm.experimental.noalias.scope.decl(metadata !24965)
  call void @llvm.experimental.noalias.scope.decl(metadata !24966)
  call void @llvm.experimental.noalias.scope.decl(metadata !24967)
  %i.di = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !24968, !noalias !24969, !noundef !28 ; 3 uses
  %i.dk = load i64, ptr %.val26.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !24968, !noalias !24969, !noundef !28
  %i.dl = icmp eq i64 %i.dk, %i.dj
  br i1 %i.dl, label %bb.p, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i, !prof !30

bb.p:                                             ; preds = %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val26.i.i.i.i.i.i.i, i64 noundef %i.dj, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc20.i unwind label %bb.t, !noalias !24848

.noexc20.i:                                       ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i16.i.i.i.i.i.i.i = load i64, ptr %i.di, align 8, !alias.scope !24970, !noalias !24969
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i"
  %i.dm = phi i64 [ %i.dj, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.thread.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i16.i.i.i.i.i.i.i, %.noexc20.i ] ; 3 uses
  %i.dn = icmp sgt i64 %i.dm, -1
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.val26.i.i.i.i.i.i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !24970, !noalias !24969, !nonnull !28, !noundef !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dm
  store i8 125, ptr %i.dq, align 1, !noalias !24971
  %i.dr = add nuw i64 %i.dm, 1
  store i64 %i.dr, ptr %i.di, align 8, !alias.scope !24970, !noalias !24969
  br label %bb.q

bb.q:                                             ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i, %.noexc19.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24924
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val21.i.i.i = load i32, ptr %i.ds, align 8, !alias.scope !24863, !noalias !24864
  invoke fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h7c262af64a311798E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @349, i64 noundef 2, i32 %.val21.i.i.i)
          to label %.noexc21.i unwind label %bb.t

.noexc21.i:                                       ; preds = %bb.q
  %i.dt = load ptr, ptr %i.e, align 8, !noalias !24855, !nonnull !28, !align !35, !noundef !28
  %i.du = load i8, ptr %i.q, align 8, !range !42, !noalias !24855, !noundef !28
  %.val20.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !24972 ; 5 uses
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit, label %bb.r

bb.r:                                             ; preds = %.noexc21.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val20.i.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !24973)
  call void @llvm.experimental.noalias.scope.decl(metadata !24974)
  call void @llvm.experimental.noalias.scope.decl(metadata !24975)
  call void @llvm.experimental.noalias.scope.decl(metadata !24976)
  %i.dw = getelementptr inbounds nuw i8, ptr %.val20.i.i.i, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !24977, !noalias !24978, !noundef !28 ; 3 uses
  %i.dy = load i64, ptr %.val20.i.i.i, align 8, !range !29, !alias.scope !24977, !noalias !24978, !noundef !28
  %i.dz = icmp eq i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.s, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i, !prof !30

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val20.i.i.i, i64 noundef %i.dx, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc22.i unwind label %bb.t, !noalias !24848

.noexc22.i:                                       ; preds = %bb.s
  %.pre.i.i.i.i.i.i.i.i38.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !24979, !noalias !24978
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i: ; preds = %.noexc22.i, %bb.r
  %i.ea = phi i64 [ %i.dx, %bb.r ], [ %.pre.i.i.i.i.i.i.i.i38.i.i.i, %.noexc22.i ] ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %.val20.i.i.i, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !24979, !noalias !24978, !nonnull !28, !noundef !28
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ea
  store i8 125, ptr %i.ee, align 1, !noalias !24980
  %i.ef = add nuw i64 %i.ea, 1
  store i64 %i.ef, ptr %i.dw, align 8, !alias.scope !24979, !noalias !24978
  br label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit

bb.t:                                             ; preds = %bb.k, %bb.q, %"_ZN9lsp_types8progress1_100_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..progress..WorkDoneProgressParams$GT$9serialize17h2a2ada663eed00dcE.exit.i.i.i.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i", %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i25.i.i.i", %bb.g, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i35.i.i.i", %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i", %bb.s, %bb.p, %_ZN10serde_core3ser12SerializeMap15serialize_entry17h10bf954709f4ce16E.exit.i.i.i.i.i.i.i, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24981)
  %.val.i.i = load i64, ptr %i.g, align 8, !range !29, !alias.scope !24981, !noalias !24848, !noundef !28 ; 2 uses
  %i.eh = icmp eq i64 %.val.i.i, 0
  br i1 %i.eh, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !24981, !noalias !24848, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24982
  br label %common.resume

bb.v:                                             ; preds = %.noexc18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24852
  call void @llvm.experimental.noalias.scope.decl(metadata !24983)
  %.val.i23.i = load i64, ptr %i.g, align 8, !range !29, !alias.scope !24983, !noalias !24848, !noundef !28 ; 2 uses
  %i.ei = icmp eq i64 %.val.i23.i, 0
  br i1 %i.ei, label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i24.i = load ptr, ptr %i.o, align 8, !alias.scope !24983, !noalias !24848, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i24.i, i64 noundef %.val.i23.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24984
  br label %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61", %bb.y, %bb.t, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.eg, %bb.u ], [ %.pn, %bb.y ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61" ]
  resume { ptr, i32 } %common.resume.op

_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24848
  br label %bb.x

_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit: ; preds = %.noexc21.i, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24852
  %.sroa.013.0.copyload = load i64, ptr %i.g, align 8, !noalias !24847 ; 2 uses
  %.sroa.614.0.copyload = load ptr, ptr %i.o, align 8, !noalias !24847 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %i.p, align 8, !noalias !24847 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24848
  %i.ej = icmp eq i64 %.sroa.013.0.copyload, -9223372036854775808
  br i1 %i.ej, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit, %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread
  %.sroa.614.019 = phi ptr [ %i.de, %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit.thread ], [ %.sroa.614.0.copyload, %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.614.019) ]
  %i.ek = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %.sroa.614.019)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61": ; preds = %bb.ag, %bb.af, %bb.z
  %.pn = phi { ptr, i32 } [ %i.em, %bb.z ], [ %i.fa, %bb.af ], [ %i.fa, %bb.ag ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24985)
  call void @llvm.experimental.noalias.scope.decl(metadata !24986)
  %.val.i.i55 = load i64, ptr %i.l, align 8, !range !29, !alias.scope !24987, !noundef !28 ; 2 uses
  %i.el = icmp eq i64 %.val.i.i55, 0
  br i1 %i.el, label %common.resume, label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61"
  %.val1.i.i56 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24987, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i56, i64 noundef %.val.i.i55, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24987
  br label %common.resume

bb.z:                                             ; preds = %.invoke, %bb.ac, %bb.ab, %bb.am, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65"
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61"

bb.aa:                                            ; preds = %_ZN10serde_json3ser6to_vec17h9882b5bb9a49c066E.exit
  store i64 %.sroa.013.0.copyload, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  store ptr %.sroa.614.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.en = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8 ; 2 uses
  %i.eo = icmp ult i64 %i.en, 6
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ugt i64 %i.en, 3
  br i1 %i.ep, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %i.eq = phi i64 [ %.pre, %bb.ad ], [ %.sroa.9.0.copyload, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.eq, ptr %i.h, align 8
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  store ptr %i.h, ptr %i.i, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !24988
  store ptr @390, ptr %i.c, align 8, !noalias !24989
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx, align 8, !noalias !24989
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx9, align 8, !noalias !24989
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx, align 8, !noalias !24989
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx, align 8, !noalias !24989
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.ae unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.438.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24990
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 4, ptr %i.es, align 8, !noalias !24990
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @385, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !24990
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 20, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !24990
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @387, ptr %i.et, align 8, !noalias !24990
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !24990
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.k, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !24990
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !24990
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !24990
  store i64 0, ptr %i.b, align 8, !noalias !24990
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @385, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !24990
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 20, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !24990
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.eu, align 8, !noalias !24990
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @352, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !24990
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 30, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !24990
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ev, align 8, !noalias !24990
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 302, ptr %i.ew, align 4, !noalias !24990
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ab

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !24988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.06.0.copyload = load i64, ptr %i.j, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.48.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.56.val) ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.56.val, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !invariant.load !28, !nonnull !28 ; 2 uses
  %i.ez = invoke noundef ptr %i.ey(ptr noundef nonnull align 1 %.48.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.11.0.copyload)
          to label %bb.ah unwind label %bb.af     ; 2 uses

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fb = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.fb, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24991
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit61"

bb.ah:                                            ; preds = %bb.ae
  %.not = icmp eq ptr %i.ez, null
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fc = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.ez)
          to label %bb.ar unwind label %bb.af     ; 2 uses

bb.aj:                                            ; preds = %bb.ah
  %i.fd = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.fd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24992
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65": ; preds = %bb.ak, %bb.aj
  %i.fe = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !28, !noundef !28
  %i.ff = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !28
  %i.fg = invoke noundef ptr %i.ey(ptr noundef nonnull align 1 %.48.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fe, i64 noundef %i.ff)
          to label %bb.al unwind label %bb.z      ; 2 uses

bb.al:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit65"
  %.not48 = icmp eq ptr %i.fg, null
  br i1 %.not48, label %bb.am, label %.invoke

bb.am:                                            ; preds = %bb.al
  %i.fh = getelementptr inbounds nuw i8, ptr %.56.val, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !invariant.load !28, !nonnull !28
  %i.fj = invoke noundef ptr %i.fi(ptr noundef nonnull align 1 %.48.val)
          to label %bb.an unwind label %bb.z      ; 2 uses

bb.an:                                            ; preds = %bb.am
  %.not50 = icmp eq ptr %i.fj, null
  br i1 %.not50, label %bb.ao, label %.invoke

.invoke:                                          ; preds = %bb.an, %bb.al
  %i.fk = phi ptr [ %i.fg, %bb.al ], [ %i.fj, %bb.an ]
  %i.fl = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %i.fk)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77" unwind label %bb.z

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !24993)
  call void @llvm.experimental.noalias.scope.decl(metadata !24994)
  %.val.i.i66 = load i64, ptr %i.l, align 8, !range !29, !alias.scope !24995, !noundef !28 ; 2 uses
  %i.fm = icmp eq i64 %.val.i.i66, 0
  br i1 %i.fm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i67 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24995, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67, i64 noundef %.val.i.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24995
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73": ; preds = %bb.ap, %bb.ao, %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77", %bb.aq
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.aq ], [ %i.ek, %bb.x ], [ %.sroa.0.1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77" ], [ null, %bb.ao ], [ null, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret ptr %.sroa.0.0

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77": ; preds = %.invoke, %bb.ar, %bb.as
  %.sroa.0.1 = phi ptr [ %i.fc, %bb.ar ], [ %i.fl, %.invoke ], [ %i.fc, %bb.as ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24996)
  call void @llvm.experimental.noalias.scope.decl(metadata !24997)
  %.val.i.i70 = load i64, ptr %i.l, align 8, !range !29, !alias.scope !24998, !noundef !28 ; 2 uses
  %i.fn = icmp eq i64 %.val.i.i70, 0
  br i1 %i.fn, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73", label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77"
  %.val1.i.i71 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24998, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i71, i64 noundef %.val.i.i70, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24998
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit73"

bb.ar:                                            ; preds = %bb.ai
  %i.fo = icmp eq i64 %.sroa.06.0.copyload, 0
  br i1 %i.fo, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77", label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %.sroa.06.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !24999
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit77"
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11lsp_harness7jsonrpc6Server8goto_def17h9394786cb4e4a1c6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -9223372036854775807, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 -9223372036854775807, ptr %i.c, align 8
  call fastcc void @_ZN11lsp_harness7jsonrpc6Server12send_request17h809029bcf4505f99E(ptr noalias noundef align 8 captures(address) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_ZN11lsp_harness7jsonrpc6Server9send_file17h7202c2f29dc839fbE(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 31 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [176 x i8], align 8               ; 17 uses
  %.sroa.010.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.512.0.copyload = load ptr, ptr %.sroa.512.0..sroa_idx, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25345
  %i.m = tail call noundef dereferenceable_or_null(6) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, 9) 1) #41, !noalias !25345 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", %bb.e
  %.pn = phi { ptr, i32 } [ %i.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit" ], [ %i.p, %bb.e ] ; 2 uses
  %i.o = icmp eq i64 %.sroa.010.0.copyload, 0
  br i1 %i.o, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.512.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.512.0.copyload, i64 noundef %.sroa.010.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !25346
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.m, ptr noundef nonnull align 1 dereferenceable(6) @391, i64 6, i1 false), !noalias !25347
  %i.q = icmp slt i64 %3, 0
  br i1 %i.q, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !44

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.f
  %i.r = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25348
  %i.s = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 9) 1) #41, !noalias !25348 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1033) #42
          to label %.noexc7 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

.noexc7:                                          ; preds = %bb.h
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit": ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !25349
  br label %bb.c

bb.i:                                             ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.s, %bb.g ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !25350
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !25351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.09.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, i64 72, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.v, align 8             ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load ptr, ptr %i.w, align 8            ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store ptr @355, ptr %i.x, align 8, !noalias !25351
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  store i64 3, ptr %i.y, align 8, !noalias !25351
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr @365, ptr %i.z, align 8, !noalias !25351
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  store i64 20, ptr %i.aa, align 8, !noalias !25351
  store i64 %.sroa.010.0.copyload, ptr %i.l, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.512.0.copyload, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i64 6, ptr %.sroa.09.sroa.6.0..sroa_idx, align 8
  %.sroa.09.sroa.6.sroa.4.0..sroa.09.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store ptr %i.m, ptr %.sroa.09.sroa.6.sroa.4.0..sroa.09.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.6.sroa.5.0..sroa.09.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i64 6, ptr %.sroa.09.sroa.6.sroa.5.0..sroa.09.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %3, ptr %.sroa.09.sroa.7.0..sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.4.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store ptr %.sroa.10.0.i.i, ptr %.sroa.09.sroa.7.sroa.4.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.09.sroa.7.sroa.5.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i64 %3, ptr %.sroa.09.sroa.7.sroa.5.0..sroa.09.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !25353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25355
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25356
  %i.ab = tail call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #41, !noalias !25356 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #42
          to label %.noexc.i unwind label %bb.ax, !noalias !25351

.noexc.i:                                         ; preds = %bb.j
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i": ; preds = %bb.i
  store i64 128, ptr %i.f, align 8, !noalias !25355
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 11 uses
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !25355
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 24 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25358)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25359
  store ptr %i.f, ptr %i.e, align 8, !noalias !25359
  call void @llvm.experimental.noalias.scope.decl(metadata !25360)
  call void @llvm.experimental.noalias.scope.decl(metadata !25361)
  call void @llvm.experimental.noalias.scope.decl(metadata !25362)
  call void @llvm.experimental.noalias.scope.decl(metadata !25363)
  call void @llvm.experimental.noalias.scope.decl(metadata !25364)
  call void @llvm.experimental.noalias.scope.decl(metadata !25365)
  store i8 123, ptr %i.ab, align 1, !noalias !25366
  store i64 1, ptr %i.ae, align 8, !alias.scope !25367, !noalias !25368
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @346, i64 noundef range(i64 6, 8) 7)
          to label %.noexc3.i.i.i unwind label %bb.ab

.noexc3.i.i.i:                                    ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !25369)
  call void @llvm.experimental.noalias.scope.decl(metadata !25370)
  call void @llvm.experimental.noalias.scope.decl(metadata !25371)
  call void @llvm.experimental.noalias.scope.decl(metadata !25372)
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !25373, !noalias !25374, !noundef !28 ; 3 uses
  %i.ag = load i64, ptr %i.f, align 8, !range !29, !alias.scope !25373, !noalias !25374, !noundef !28
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !30

bb.k:                                             ; preds = %.noexc3.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.af, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i.i.i unwind label %bb.ab, !noalias !25355

.noexc4.i.i.i:                                    ; preds = %bb.k
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !25375, !noalias !25374
  br label %bb.l

bb.l:                                             ; preds = %.noexc4.i.i.i, %.noexc3.i.i.i
  %i.ai = phi i64 [ %i.af, %.noexc3.i.i.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i, %.noexc4.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %i.ad, align 8, !alias.scope !25375, !noalias !25374, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 58, ptr %i.al, align 1, !noalias !25376
  %i.am = add nuw i64 %i.ai, 1
  store i64 %i.am, ptr %i.ae, align 8, !alias.scope !25375, !noalias !25374
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @355, i64 noundef 3)
          to label %.noexc5.i.i.i unwind label %bb.ab

.noexc5.i.i.i:                                    ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !25377)
  call void @llvm.experimental.noalias.scope.decl(metadata !25378)
  call void @llvm.experimental.noalias.scope.decl(metadata !25379)
  call void @llvm.experimental.noalias.scope.decl(metadata !25380)
  %i.an = load i64, ptr %i.ae, align 8, !alias.scope !25381, !noalias !25382, !noundef !28 ; 3 uses
  %i.ao = load i64, ptr %i.f, align 8, !range !29, !alias.scope !25381, !noalias !25382, !noundef !28
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.m, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i", !prof !30

bb.m:                                             ; preds = %.noexc5.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc6.i.i.i unwind label %bb.ab, !noalias !25355

.noexc6.i.i.i:                                    ; preds = %bb.m
  %.pre.i.i.i.i.i.i.i.i.i26.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !25383, !noalias !25382
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i21.i.i.i.i.i": ; preds = %.noexc6.i.i.i, %.noexc5.i.i.i
  %i.aq = phi i64 [ %i.an, %.noexc5.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i26.i.i.i.i.i, %.noexc6.i.i.i ] ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  call void @llvm.assume(i1 %i.ar)
  %i.as = load ptr, ptr %i.ad, align 8, !alias.scope !25383, !noalias !25382, !nonnull !28, !noundef !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 44, ptr %i.at, align 1, !noalias !25384
  %i.au = add nuw i64 %i.aq, 1
end_hunk_7
begin_hunk_8_@"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17ha3a87f33f6dad506E":bb.a
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @967, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @442, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @966)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$anyhow..context..Quoted$LT$C$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hda04cb8d06c81d42E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br i1 %i.d, label %bb.c, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hdc83aebc8e7c489fE", ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36733
  store ptr @0, ptr %i.a, align 8, !noalias !36734
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36734
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36734
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !36734
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36734
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1021, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !36735, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit"
  %i.f = call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$10write_char17h44b6dc644adef020E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i32 noundef 34)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit", %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ], [ true, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hb34aa6d29dda0d1aE.exit" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$assert_cmd..cargo..NotFoundError$u20$as$u20$core..fmt..Debug$GT$3fmt17h345398676082839dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @969, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @803, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @968)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN69_$LT$lsp_types..Location$u20$as$u20$lsp_harness..output..LspDebug$GT$5debug17h9ea4e88270541208E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !28, !noundef !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !28
  store ptr %i.h, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  call fastcc void @_ZN11lsp_harness6output8LspDebug9debug_str17h43c04ff35db25d4dE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hddac863775644774E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.m, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36756
  store ptr @970, ptr %i.c, align 8, !noalias !36757
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !36757
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !36757
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !36757
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !36757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36758
  store ptr %1, ptr %i.b, align 8, !noalias !36758
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr null, ptr %i.n, align 8, !noalias !36758
  %i.o = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @776, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !36759

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !alias.scope !36760, !noalias !36758, !noundef !28
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %.body unwind label %bb.j, !noalias !36761

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.n, align 8, !noalias !36758, !noundef !28 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null            ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %bb.h, label %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i, !prof !30

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i unwind label %bb.l

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36758
  store ptr @774, ptr %i.a, align 8, !noalias !36758
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !36758
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.u, align 8, !noalias !36758
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !36758
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.w, align 8, !noalias !36758
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @775) #42
          to label %bb.i unwind label %bb.b, !noalias !36761

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36761
  unreachable

_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i = phi ptr [ %i.s, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !36762)
  call void @llvm.experimental.noalias.scope.decl(metadata !36763)
  %.val.i.i10 = load i64, ptr %i.e, align 8, !range !29, !alias.scope !36764, !noundef !28 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i10, 0
  br i1 %i.y, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit12", label %bb.n

bb.k:                                             ; preds = %bb.m, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.p, %bb.c ], [ %i.p, %bb.b ]
  call void @llvm.experimental.noalias.scope.decl(metadata !36765)
  call void @llvm.experimental.noalias.scope.decl(metadata !36766)
  %.val.i.i = load i64, ptr %i.e, align 8, !range !29, !alias.scope !36767, !noundef !28 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i, 0
  br i1 %i.aa, label %bb.k, label %bb.m

bb.m:                                             ; preds = %.body
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !36767, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36767
  br label %bb.k

bb.n:                                             ; preds = %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i11 = load ptr, ptr %i.ac, align 8, !alias.scope !36764, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i11, i64 noundef %.val.i.i10, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36764
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit12"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit12": ; preds = %_ZN3std2io17default_write_fmt17hae749fb490f6f0b5E.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %.sroa.0.0.i.i.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN6anyhow4kind5Adhoc3new17h0351cfcee6145591E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hab94eb97c1770d21E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hab94eb97c1770d21E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h2d6e91a3c4b97d0eE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !36772)
  call void @llvm.experimental.noalias.scope.decl(metadata !36773)
  %.val.i.i = load i64, ptr %0, align 8, !range !29, !alias.scope !36774, !noundef !28 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !36774, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36774
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h07d5251f8a4beed3E(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @975, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h0d7c100638903d4dE(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @977, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17h2ff8dd384c2ae4d0E(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @979, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17haff5d5b5b971dfabE(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @981, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17hb805604d5766d91fE(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @983, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_ZN6anyhow5error10object_ref17hd1251fb7d5691548E(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @985, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN6anyhow5error11object_drop17h19c808858a169c70E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.a)
          to label %"_ZN4core3ptr109drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$$GT$17he25a801babfb31d5E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  resume { ptr, i32 } %i.b

"_ZN4core3ptr109drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$$GT$17he25a801babfb31d5E.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN6anyhow5error11object_drop17h823ff1556b3fc81cE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN4core3ptr77drop_in_place$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$17h5d5d281272d3db92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$$GT$17h3c5f802d1dd795c9E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  resume { ptr, i32 } %i.a

"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$$GT$17h3c5f802d1dd795c9E.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN6anyhow5error11object_drop17h866769d7f870a84eE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36789)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36792)
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !range !29, !alias.scope !36793, !noundef !28 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !36793, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36793
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36796)
  %.val.i.i.i1.i.i = load i64, ptr %i.f, align 8, !range !29, !alias.scope !36797, !noundef !28 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i1.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr136drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$$GT$17h6a5c9c1975935072E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i.i2.i.i = load ptr, ptr %i.h, align 8, !alias.scope !36797, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i.i, i64 noundef %.val.i.i.i1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36797
  br label %"_ZN4core3ptr136drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$$GT$17h6a5c9c1975935072E.exit"

bb.f:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #41
  resume { ptr, i32 } %i.b

"_ZN4core3ptr136drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$$GT$17h6a5c9c1975935072E.exit": ; preds = %bb.d, %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #41
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN6anyhow5error11object_drop17h944227c0c0423829E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c) #43
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr99drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$$GT$17h6c81eab999f379daE.exit" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !36800
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.b, %bb.b ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr99drop_in_place$LT$alloc..boxed..Box$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$$GT$17h6c81eab999f379daE.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  ret void
}

end_hunk_8
begin_hunk_9_@_ZN6anyhow5error23object_reallocate_boxed17h9c12ab8055965a5fE:bb.a
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.d, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 112, i64 noundef 8) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hb997db4c3847d97eE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36866
  %i.b = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36866 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.e, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36867
  br label %.body

.body:                                            ; preds = %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #43
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx6, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx8, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #41
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @983, 1
  ret { ptr, ptr } %i.j

bb.h:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.d, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hcae1fa55df183579E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !range !81, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef dereferenceable_or_null(1) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #41 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.d, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 1) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef align 8 dereferenceable(48) %i.f) #43
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.a
  store i8 %i.b, ptr %i.c, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @975, 1
  ret { ptr, ptr } %i.j

bb.g:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.e, %bb.c ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_ZN6anyhow5error23object_reallocate_boxed17hcc516074798d95d4E(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.d = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #41 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #43
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

.body:                                            ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef align 8 dereferenceable(48) %i.h) #43
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef align 8 dereferenceable(48) %i.i)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @981, 1
  ret { ptr, ptr } %i.l

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.i:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %.body ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 64, i64 noundef 8) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h792e733ac900a247E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hab94eb97c1770d21E.exit" unwind label %bb.b

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$20construct_from_adhoc17hab94eb97c1770d21E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h2d6e91a3c4b97d0eE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !36872)
  call void @llvm.experimental.noalias.scope.decl(metadata !36873)
  %.val.i.i = load i64, ptr %0, align 8, !range !29, !alias.scope !36874, !noundef !28 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !36874, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !36874
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h2d6e91a3c4b97d0eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1001, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36877
  %i.d = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36877 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h883f4af211805eb0E.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 80) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr111drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..MessageError$LT$alloc..string..String$GT$$GT$$GT$17he00ac7ddd3286cb7E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h883f4af211805eb0E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h49f9684de57ab835E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1002, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36880
  %i.d = tail call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 112, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36880 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4d2bbd56069403eeE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 112) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr126drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..error..ContextError$LT$$RF$str$C$alloc..string..FromUtf8Error$GT$$GT$$GT$17h01fd8ca56814ff78E"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h4d2bbd56069403eeE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h8fa325f6bdf1c0fdE"(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @999, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36883
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36883 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51f9ef00d7433390E.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$anyhow..error..ErrorImpl$LT$std..io..error..Error$GT$$GT$17h6944831fee13711dE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h51f9ef00d7433390E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha74da4a90167bd44E"(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @998, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36886
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36886 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd485a30939b747ccE.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr77drop_in_place$LT$anyhow..error..ErrorImpl$LT$serde_json..error..Error$GT$$GT$17h5d5d281272d3db92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd485a30939b747ccE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hc76a2bb4fa3be0b7E"(i8 noundef range(i8 0, 5) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1000, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36889
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36889 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h00aa16f054e7b363E.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr84drop_in_place$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$17h35b1c780731b3f55E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core3ptr84drop_in_place$LT$anyhow..error..ErrorImpl$LT$core..num..error..ParseIntError$GT$$GT$17h35b1c780731b3f55E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h00aa16f054e7b363E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hd1a9549722c5cff0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1003, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @380, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 24, ptr %i.d, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !36892
  %i.e = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !36892 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9da02cf51673f893E.exit", !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 72) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$std..backtrace..Backtrace$GT$$GT$17h02b415c971360a1dE"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.b)
          to label %"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17h23f8663a7f177538E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

"_ZN4core3ptr97drop_in_place$LT$anyhow..error..ErrorImpl$LT$anyhow..wrapper..DisplayError$LT$$RF$str$GT$$GT$$GT$17h23f8663a7f177538E.exit": ; preds = %bb.c
  resume { ptr, i32 } %i.g

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9da02cf51673f893E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8072883e216f0184E"(ptr noundef nonnull %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h275c623054df4a2bE.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h275c623054df4a2bE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h8fa325f6bdf1c0fdE"(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h84ef7a26cbe0b75cE"(i8 noundef range(i8 0, 5) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
  %i.b = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hc76a2bb4fa3be0b7E"(i8 noundef range(i8 0, 5) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hee33797341eabdd8E"(ptr noalias noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h256ac404889d5562E.exit" unwind label %bb.c

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$18construct_from_std17h256ac404889d5562E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17ha74da4a90167bd44E"(ptr noalias noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.d

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %bb.b unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context87_$LT$impl$u20$core..fmt..Debug$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h362e7a6fffcaec68E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @850, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @639, i64 noundef 7, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1004)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @420, i64 noundef 6, ptr noundef nonnull align 1 %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @846)
  %i.f = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN6anyhow7context89_$LT$impl$u20$core..error..Error$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$6source17h4f0b34807ac46902E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @1006, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN6anyhow7context89_$LT$impl$u20$core..fmt..Display$u20$for$u20$anyhow..error..ContextError$LT$C$C$E$GT$$GT$3fmt17h3d0858a06ec6bb43E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36896)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !36896, !noalias !36897, !nonnull !28, !align !37, !noundef !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !36896, !noalias !36897, !noundef !28
  %i.d = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !36896
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h3da05c564f8530e4E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d3380b57dd269f6E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9bce76b698fd0505E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hac06fd121e0b102eE"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb14fa18a29c99703E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN70_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb199ee837bae0263E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN6anyhow3fmt42_$LT$impl$u20$anyhow..error..ErrorImpl$GT$5debug17hbf3aaac788b25dafE"(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$lsp_harness..jsonrpc..Server$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39071a175fa167e9E"(ptr noalias noundef align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [128 x i8], align 8               ; 19 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [128 x i8], align 8               ; 19 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 10 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [128 x i8], align 8               ; 11 uses
  %i.z = alloca [128 x i8], align 8               ; 12 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %i.ab = alloca [128 x i8], align 8              ; 10 uses
  %i.ac = alloca [64 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !37235
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !37238
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !37239, !noalias !37240, !noundef !28
  %i.ah = add i32 %i.ag, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !alias.scope !37239, !noalias !37240
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val32.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !37239, !noalias !37240 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val33.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !37239, !noalias !37240 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !37241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !37242
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !37243
  %i.ak = tail call noundef dereferenceable_or_null(128) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef range(i64 1, 9) 1) #41, !noalias !37243 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #42, !noalias !37242
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i": ; preds = %bb.a
  store i64 128, ptr %i.q, align 8, !noalias !37242
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store ptr %i.ak, ptr %i.am, align 8, !noalias !37242
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !37245
  store ptr %i.q, ptr %i.p, align 8, !noalias !37245
  call void @llvm.experimental.noalias.scope.decl(metadata !37246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !37247
  call void @llvm.experimental.noalias.scope.decl(metadata !37248)
  call void @llvm.experimental.noalias.scope.decl(metadata !37249)
  call void @llvm.experimental.noalias.scope.decl(metadata !37250)
  call void @llvm.experimental.noalias.scope.decl(metadata !37251)
  store i8 123, ptr %i.ak, align 1, !noalias !37252
  store i64 1, ptr %i.an, align 8, !alias.scope !37253, !noalias !37254
  store ptr %i.p, ptr %i.o, align 8, !noalias !37247
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  invoke fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @346, i64 noundef range(i64 6, 8) 7)
          to label %.noexc3.i.i.i.i.i unwind label %bb.i

.noexc3.i.i.i.i.i:                                ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf5149a4291ac7aa1E.exit.i.i.i.i.i"
  %.val.i6.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !37246, !noalias !37255, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37256)
  call void @llvm.experimental.noalias.scope.decl(metadata !37257)
  call void @llvm.experimental.noalias.scope.decl(metadata !37258)
  call void @llvm.experimental.noalias.scope.decl(metadata !37259)
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i6.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !37260, !noalias !37261, !noundef !28 ; 3 uses
  %i.ar = load i64, ptr %.val.i6.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !37260, !noalias !37261, !noundef !28
  %i.as = icmp eq i64 %i.ar, %i.aq
  br i1 %i.as, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.noexc3.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i.i.i.i.i.i.i.i.i, i64 noundef %i.aq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc4.i.i.i.i.i unwind label %bb.i, !noalias !37242

.noexc4.i.i.i.i.i:                                ; preds = %bb.c
  %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !37262, !noalias !37261
  br label %bb.d

bb.d:                                             ; preds = %.noexc4.i.i.i.i.i, %.noexc3.i.i.i.i.i
  %i.at = phi i64 [ %i.aq, %.noexc3.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i7.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
end_hunk_9
begin_hunk_10_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5145220c1c40709dE":bb.a
  %i.ew = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -2 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr @849, i64 %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ey
  %i.fb = load i16, ptr %i.ez, align 1, !noalias !59422
  store i16 %i.fb, ptr %i.fa, align 1, !alias.scope !59421, !noalias !59420
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.fc = add i64 %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.fd = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fc
  %i.ff = or disjoint i8 %i.fd, 48
  store i8 %i.ff, ptr %i.fe, align 1, !alias.scope !59421, !noalias !59420
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %bb.y ], [ %i.ey, %bb.x ] ; 2 uses
  br i1 %i.dt, label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fg = add i64 %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fg
  store i8 45, ptr %i.fh, align 1, !alias.scope !59421, !noalias !59420
  br label %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.aa, %bb.z
  %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %i.fg, %bb.aa ] ; 2 uses
  %i.fi = sub i64 11, %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.fj = icmp ult i64 %i.fi, 12
  tail call void @llvm.assume(i1 %i.fj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59426)
  %i.fk = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59427, !noalias !59428, !noundef !28
  %i.fl = sub i64 %i.fk, %i.ds
  %i.fm = icmp ugt i64 %i.fi, %i.fl
  br i1 %i.fm, label %bb.ab, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.ab:                                            ; preds = %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.ds, i64 noundef %i.fi, i64 noundef 1, i64 noundef 1), !noalias !59428
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59429, !noalias !59428
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ab, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fn = phi i64 [ %i.ds, %"_ZN4itoa55_$LT$impl$u20$itoa..private..Sealed$u20$for$u20$i32$GT$5write17h60888a2bbedeb6fbE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = icmp sgt i64 %i.fn, -1
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = load ptr, ptr %i.cl, align 8, !alias.scope !59429, !noalias !59428, !nonnull !28, !noundef !28
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull readonly align 1 %i.fo, i64 %i.fi, i1 false), !noalias !59430
  %i.fs = add nuw i64 %i.fn, %i.fi                ; 5 uses
  store i64 %i.fs, ptr %i.cf, align 8, !alias.scope !59429, !noalias !59428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !59420
  %i.ft = icmp eq ptr %i.dk, %i.cx
  br i1 %i.ft, label %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17ha2791a584dc3ae14E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.fu = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59431, !noalias !59432, !noundef !28
  %i.fv = icmp eq i64 %i.fu, %i.fs
  br i1 %i.fv, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.ac, !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.de, %bb.s ], [ %i.fs, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %.lcssa21.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59433
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !59433
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %_ZN4core4iter6traits8iterator8Iterator12try_for_each17hd68f19dcfc464901E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.de, %bb.s ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.fw = icmp sgt i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.fw)
  %i.fx = load ptr, ptr %i.cl, align 8, !noalias !59433, !nonnull !28, !noundef !28
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 93, ptr %i.fy, align 1, !noalias !59433
  %i.fz = add nuw i64 %.sink25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  store i64 %i.fz, ptr %i.cf, align 8, !noalias !59433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59437)
  %i.ga = load i64, ptr %.val9.i5.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59438, !noalias !59439, !noundef !28
  %i.gb = icmp eq i64 %i.ga, %i.fz
  br i1 %i.gb, label %bb.ad, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i", !prof !30

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i, i64 noundef %i.fz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59439
  %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !alias.scope !59440, !noalias !59439
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.gc = phi i64 [ %i.fz, %bb.ac ], [ %.pre.i.i.i.i.i.i.i.i10.i.i.i.i.i.i.i.i.i.i.i, %bb.ad ] ; 3 uses
  %i.gd = icmp sgt i64 %i.gc, -1
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = load ptr, ptr %i.cl, align 8, !alias.scope !59440, !noalias !59439, !nonnull !28, !noundef !28
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 125, ptr %i.gf, align 1, !noalias !59441
  %i.gg = add nuw i64 %i.gc, 1
  store i64 %i.gg, ptr %i.cf, align 8, !alias.scope !59440, !noalias !59439
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h76f73321ad414e56E.exit.i.i.i.i.i", %bb.j
  br i1 %.not49.i.i.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1148, i64 noundef 14, i8 %i.af)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %.not50.i.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1149, i64 noundef 22, i8 %i.ai)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.not51.i.i.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1107, i64 noundef 11, i8 %i.al)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gh = load ptr, ptr %i.b, align 8, !noalias !59332, !nonnull !28, !align !35, !noundef !28
  %i.gi = load i8, ptr %i.bf, align 8, !range !42, !noalias !59332, !noundef !28
  %.val.i.i.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !59442 ; 5 uses
  %i.gj = icmp eq i8 %i.gi, 0
  br i1 %i.gj, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hc806ffabd7f9d211E.exit.i.i.i", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59446)
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !59447, !noalias !59448, !noundef !28 ; 3 uses
  %i.gm = load i64, ptr %.val.i.i.i.i.i, align 8, !range !29, !alias.scope !59447, !noalias !59448, !noundef !28
  %i.gn = icmp eq i64 %i.gm, %i.gl
  br i1 %i.gn, label %bb.am, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i63.i.i.i.i.i, !prof !30

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i64 noundef %i.gl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59448
  %.pre.i.i.i.i.i.i.i.i64.i.i.i.i.i = load i64, ptr %i.gk, align 8, !alias.scope !59449, !noalias !59448
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i63.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i63.i.i.i.i.i: ; preds = %bb.am, %bb.al
  %i.go = phi i64 [ %i.gl, %bb.al ], [ %.pre.i.i.i.i.i.i.i.i64.i.i.i.i.i, %bb.am ] ; 3 uses
  %i.gp = icmp sgt i64 %i.go, -1
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !59449, !noalias !59448, !nonnull !28, !noundef !28
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.go
  store i8 125, ptr %i.gs, align 1, !noalias !59450
  %i.gt = add nuw i64 %i.go, 1
  store i64 %i.gt, ptr %i.gk, align 8, !alias.scope !59449, !noalias !59448
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hc806ffabd7f9d211E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hc806ffabd7f9d211E.exit.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i63.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !59332
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h12b847f2424f0830E.exit

bb.an:                                            ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !59325, !noalias !59451, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59455)
  %i.gu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !59456, !noalias !59457, !noundef !28 ; 3 uses
  %i.gw = load i64, ptr %.val.i.i.i, align 8, !range !29, !alias.scope !59456, !noalias !59457, !noundef !28
  %i.gx = sub i64 %i.gw, %i.gv
  %i.gy = icmp ult i64 %i.gx, 4
  br i1 %i.gy, label %bb.ao, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.gv, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !59457
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gu, align 8, !alias.scope !59458, !noalias !59457
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i": ; preds = %bb.ao, %bb.an
  %i.gz = phi i64 [ %i.gv, %bb.an ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.ao ] ; 3 uses
  %i.ha = icmp sgt i64 %i.gz, -1
  tail call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !59458, !noalias !59457, !nonnull !28, !noundef !28
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gz
  store i32 1819047278, ptr %i.hd, align 1, !noalias !59459
  %i.he = add nuw i64 %i.gz, 4
  store i64 %i.he, ptr %i.gu, align 8, !alias.scope !59458, !noalias !59457
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h12b847f2424f0830E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h12b847f2424f0830E.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hc806ffabd7f9d211E.exit.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h52414fd0b8c82780E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59817)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !59818, !noalias !59819, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !59818, !noalias !59819, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !59820 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59824)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !59825, !noalias !59826, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !59825, !noalias !59826, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59826
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !59827, !noalias !59826
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !59827, !noalias !59826, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !59828
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !59827, !noalias !59826
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !59820
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !59818, !noalias !59819
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1209, i64 noundef 10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59829)
  %.val.i4.i = load ptr, ptr %i.b, align 8, !noalias !59830, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59834)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !59835, !noalias !59836, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !59835, !noalias !59836, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59836
  %.pre.i.i.i.i.i.i.i5.i = load i64, ptr %i.p, align 8, !alias.scope !59837, !noalias !59836
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i5.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !59837, !noalias !59836, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !59838
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !59837, !noalias !59836
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59840)
  %i.z = load i64, ptr %1, align 8, !range !40, !alias.scope !59841, !noalias !59842, !noundef !28 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.as, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59846)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !59847
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !42, !alias.scope !59848, !noalias !59849, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i = icmp ne i8 %i.ab, 2           ; 2 uses
  %..i.i.i.i.i = zext i1 %.not.i.i.i.i.i to i64
  %.not69.i.i.i.i.i = icmp ne i64 %i.z, -9223372036854775808 ; 2 uses
  %.sroa.05.0.i.i.i.i.i = zext i1 %.not69.i.i.i.i.i to i64
  %i.ac = add nuw nsw i64 %..i.i.i.i.i, %.sroa.05.0.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.ae = load i8, ptr %i.ad, align 1, !range !42, !alias.scope !59848, !noalias !59849, !noundef !28 ; 2 uses
  %.not70.i.i.i.i.i = icmp ne i8 %i.ae, 2         ; 2 uses
  %.sroa.06.0.i.i.i.i.i = zext i1 %.not70.i.i.i.i.i to i64
  %i.af = add nuw nsw i64 %i.ac, %.sroa.06.0.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ah = load i8, ptr %i.ag, align 2, !range !42, !alias.scope !59848, !noalias !59849, !noundef !28 ; 2 uses
  %.not71.i.i.i.i.i = icmp ne i8 %i.ah, 2         ; 2 uses
  %.sroa.07.0.i.i.i.i.i = zext i1 %.not71.i.i.i.i.i to i64
  %i.ai = add nuw nsw i64 %i.af, %.sroa.07.0.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.ak = load i8, ptr %i.aj, align 1, !range !42, !alias.scope !59848, !noalias !59849, !noundef !28 ; 2 uses
  %.not72.i.i.i.i.i = icmp ne i8 %i.ak, 2         ; 2 uses
  %.sroa.08.0.i.i.i.i.i = zext i1 %.not72.i.i.i.i.i to i64
  %i.al = add nuw nsw i64 %i.ai, %.sroa.08.0.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !range !34, !alias.scope !59848, !noalias !59849, !noundef !28
  %.not73.i.i.i.i.i = icmp ne i64 %i.an, -9223372036854775808 ; 2 uses
  %.sroa.09.0.i.i.i.i.i = zext i1 %.not73.i.i.i.i.i to i64
  %i.ao = add nuw nsw i64 %i.al, %.sroa.09.0.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aq = load i8, ptr %i.ap, align 4, !range !42, !alias.scope !59848, !noalias !59849, !noundef !28 ; 2 uses
  %.not74.i.i.i.i.i = icmp ne i8 %i.aq, 2         ; 2 uses
  %.sroa.010.0.i.i.i.i.i = zext i1 %.not74.i.i.i.i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59851)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !59852, !noalias !59853, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59857)
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !59858, !noalias !59859, !noundef !28 ; 3 uses
  %i.at = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59858, !noalias !59859, !noundef !28
  %i.au = icmp eq i64 %i.at, %i.as
  br i1 %i.au, label %bb.f, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59860
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !59861, !noalias !59860
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.av = phi i64 [ %i.as, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.aw = icmp sgt i64 %i.av, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !59861, !noalias !59860, !nonnull !28, !noundef !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.av
  store i8 123, ptr %i.az, align 1, !noalias !59862
  %i.ba = add nuw i64 %i.av, 1                    ; 4 uses
  store i64 %i.ba, ptr %i.ar, align 8, !alias.scope !59861, !noalias !59860
  %i.bb = or i64 %i.ao, %.sroa.010.0.i.i.i.i.i
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59866)
  %i.bd = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !59867, !noalias !59868, !noundef !28
  %i.be = icmp eq i64 %i.bd, %i.ba
  br i1 %i.be, label %bb.h, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.ba, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !59868
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !59869, !noalias !59868
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.bf = phi i64 [ %i.ba, %bb.g ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = load ptr, ptr %i.ax, align 8, !alias.scope !59869, !noalias !59868, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 125, ptr %i.bi, align 1, !noalias !59870
  %i.bj = add nuw i64 %i.bf, 1
  store i64 %i.bj, ptr %i.ar, align 8, !alias.scope !59869, !noalias !59868
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i = phi i8 [ 0, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i ], [ 1, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i ]
  store ptr %i.b, ptr %i.a, align 8, !noalias !59847
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store i8 %.sink.i.i.i.i.i.i.i, ptr %i.bk, align 8, !noalias !59847
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1093, i64 noundef 19, i8 %i.ab)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  br i1 %.not69.i.i.i.i.i, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59875)
  %i.bl = load ptr, ptr %i.a, align 8, !alias.scope !59876, !noalias !59877, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.bm = load i8, ptr %i.bk, align 8, !range !42, !alias.scope !59876, !noalias !59877, !noundef !28
  %i.bn = icmp eq i8 %i.bm, 1
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !noalias !59878 ; 6 uses
  br i1 %i.bn, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_10
begin_hunk_11_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h7d227409c0e75b7fE":bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !61549, !noalias !61550
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 7, 23) %2)
  %.val.i5.i = load ptr, ptr %i.b, align 8, !noalias !61560, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61564)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !61565, !noalias !61566, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i5.i, align 8, !range !29, !alias.scope !61565, !noalias !61566, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61566
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.p, align 8, !alias.scope !61567, !noalias !61566
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !61567, !noalias !61566, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !61568
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !61567, !noalias !61566
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61569)
  %.not.i.i.i = icmp eq i8 %.0.val, 3
  br i1 %.not.i.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61572
  %.not.i.i.i.i.i = icmp eq i8 %.0.val, 2
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i.i.i, label %.split13.i.i.i.i.i

.split13.i.i.i.i.i:                               ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61574)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !61575, !noalias !61576, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61580)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !61581, !noalias !61582, !noundef !28 ; 3 uses
  %i.ab = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !61581, !noalias !61582, !noundef !28
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %bb.i, !prof !30

bb.f:                                             ; preds = %.split13.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61582
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !61583, !noalias !61582
  br label %bb.i

.split.i.i.i.i.i:                                 ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61585)
  %.val.i.i16.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !61586, !noalias !61587, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61591)
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i16.i.i.i.i.i, i64 16 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !61592, !noalias !61593, !noundef !28 ; 3 uses
  %i.af = load i64, ptr %.val.i.i16.i.i.i.i.i, align 8, !range !29, !alias.scope !61592, !noalias !61593, !noundef !28
  %i.ag = icmp eq i64 %i.af, %i.ae
  br i1 %i.ag, label %bb.g, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i, !prof !30

bb.g:                                             ; preds = %.split.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i16.i.i.i.i.i, i64 noundef %i.ae, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61593
  %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !61594, !noalias !61593
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.split.i.i.i.i.i
  %i.ah = phi i64 [ %i.ae, %.split.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i17.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i16.i.i.i.i.i, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !61594, !noalias !61593, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 123, ptr %i.al, align 1, !noalias !61595
  %i.am = add nuw i64 %i.ah, 1                    ; 4 uses
  store i64 %i.am, ptr %i.ad, align 8, !alias.scope !61594, !noalias !61593
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61599)
  %i.an = load i64, ptr %.val.i.i16.i.i.i.i.i, align 8, !range !29, !alias.scope !61600, !noalias !61601, !noundef !28
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %bb.h, label %.thread4.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i16.i.i.i.i.i, i64 noundef %i.am, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61601
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !61602, !noalias !61601
  br label %.thread4.i.i.i.i.i

.thread4.i.i.i.i.i:                               ; preds = %bb.h, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  %i.ap = phi i64 [ %i.am, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.aj, align 8, !alias.scope !61602, !noalias !61601, !nonnull !28, !noundef !28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 125, ptr %i.as, align 1, !noalias !61603
  %i.at = add nuw i64 %i.ap, 1
  store i64 %i.at, ptr %i.ad, align 8, !alias.scope !61602, !noalias !61601
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h5e2359f5741aa084E.exit.i.i.i"

bb.i:                                             ; preds = %bb.f, %.split13.i.i.i.i.i
  %i.au = phi i64 [ %i.aa, %.split13.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !61583, !noalias !61582, !nonnull !28, !noundef !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  store i8 123, ptr %i.ay, align 1, !noalias !61604
  %i.az = add nuw i64 %i.au, 1
  store i64 %i.az, ptr %i.z, align 8, !alias.scope !61583, !noalias !61582
  store ptr %i.b, ptr %i.a, align 8, !noalias !61572
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.ba, align 8, !noalias !61572
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1093, i64 noundef 19, i8 %.0.val)
  %.pr.i.i.i.i.i = load i8, ptr %i.ba, align 8, !noalias !61572
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !61572, !nonnull !28, !align !35, !noundef !28
  %.val.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !noalias !61560 ; 5 uses
  %i.bc = icmp eq i8 %.pr.i.i.i.i.i, 0
  br i1 %i.bc, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h5e2359f5741aa084E.exit.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61608)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !61609, !noalias !61610, !noundef !28 ; 3 uses
  %i.bf = load i64, ptr %.val.i.i.i.i.i, align 8, !range !29, !alias.scope !61609, !noalias !61610, !noundef !28
  %i.bg = icmp eq i64 %i.bf, %i.be
  br i1 %i.bg, label %bb.k, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i64 noundef %i.be, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61610
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !61611, !noalias !61610
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.bh = phi i64 [ %i.be, %bb.j ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i, %bb.k ] ; 3 uses
  %i.bi = icmp sgt i64 %i.bh, -1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !61611, !noalias !61610, !nonnull !28, !noundef !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh
  store i8 125, ptr %i.bl, align 1, !noalias !61612
  %i.bm = add nuw i64 %i.bh, 1
  store i64 %i.bm, ptr %i.bd, align 8, !alias.scope !61611, !noalias !61610
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h5e2359f5741aa084E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h5e2359f5741aa084E.exit.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, %bb.i, %.thread4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61572
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h3f0ea0003678eb98E.exit

bb.l:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !61569, !noalias !61560, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61616)
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !61617, !noalias !61618, !noundef !28 ; 3 uses
  %i.bp = load i64, ptr %.val.i.i.i, align 8, !range !29, !alias.scope !61617, !noalias !61618, !noundef !28
  %i.bq = sub i64 %i.bp, %i.bo
  %i.br = icmp ult i64 %i.bq, 4
  br i1 %i.br, label %bb.m, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.bo, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !61618
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !61619, !noalias !61618
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i": ; preds = %bb.m, %bb.l
  %i.bs = phi i64 [ %i.bo, %bb.l ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 3 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !61619, !noalias !61618, !nonnull !28, !noundef !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs
  store i32 1819047278, ptr %i.bw, align 1, !noalias !61620
  %i.bx = add nuw i64 %i.bs, 4
  store i64 %i.bx, ptr %i.bn, align 8, !alias.scope !61619, !noalias !61618
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h3f0ea0003678eb98E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h3f0ea0003678eb98E.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17h5e2359f5741aa084E.exit.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h8725bcecdb54237dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 11, 13) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61676)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !61677, !noalias !61678, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !42, !alias.scope !61677, !noalias !61678, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !61679 ; 6 uses
  br i1 %i.d, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61683)
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !61684, !noalias !61685, !noundef !28 ; 3 uses
  %i.g = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !61684, !noalias !61685, !noundef !28
  %i.h = icmp eq i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.f, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61685
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !61686, !noalias !61685
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !61686, !noalias !61685, !nonnull !28, !noundef !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 44, ptr %i.m, align 1, !noalias !61687
  %i.n = add nuw i64 %i.i, 1
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !61686, !noalias !61685
  %.val9.pre.i.i = load ptr, ptr %i.a, align 8, !noalias !61679
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.b, align 8, !alias.scope !61677, !noalias !61678
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 11, 13) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61688)
  %.val.i4.i = load ptr, ptr %i.a, align 8, !noalias !61689, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61693)
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !61694, !noalias !61695, !noundef !28 ; 3 uses
  %i.q = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !61694, !noalias !61695, !noundef !28
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.p, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61695
  %.pre.i.i.i.i.i.i.i6.i = load i64, ptr %i.o, align 8, !alias.scope !61696, !noalias !61695
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.s = phi i64 [ %i.p, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i6.i, %bb.d ] ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !61696, !noalias !61695, !nonnull !28, !noundef !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  store i8 58, ptr %i.w, align 1, !noalias !61697
  %i.x = add nuw i64 %i.s, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !61696, !noalias !61695
  %.val9.i5.i = load ptr, ptr %i.a, align 8, !noalias !61689 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61698)
  %i.y = load i64, ptr %3, align 8, !range !34, !alias.scope !61699, !noalias !61700, !noundef !28
  %.not.i.i.i = icmp eq i64 %i.y, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.e, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.i.i"

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61704)
  %i.z = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !61705, !noalias !61706, !noundef !28 ; 3 uses
  %i.ab = load i64, ptr %.val9.i5.i, align 8, !range !29, !alias.scope !61705, !noalias !61706, !noundef !28
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = icmp ult i64 %i.ac, 4
  br i1 %i.ad, label %bb.f, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.thread.i.i", !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i, i64 noundef %i.aa, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !61706
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !61707, !noalias !61706
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.thread.i.i"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.thread.i.i": ; preds = %bb.f, %bb.e
  %i.ae = phi i64 [ %i.aa, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.val9.i5.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !61707, !noalias !61706, !nonnull !28, !noundef !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  store i32 1819047278, ptr %i.ai, align 1, !noalias !61708
  %i.aj = add nuw i64 %i.ae, 4
  store i64 %i.aj, ptr %i.z, align 8, !alias.scope !61707, !noalias !61706
  br label %bb.g

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.i.i": ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val2.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !61699, !noalias !61700, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !61699, !noalias !61700, !noundef !28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i5.i) ]
  %i.am = tail call fastcc noalias noundef align 8 ptr @"_ZN10serde_core3ser5impls81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$9serialize17hfe868f72dde48a15E"(ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i, ptr nonnull %.val9.i5.i), !noalias !61709 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.g, label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h3c9a530ea3e27679E.exit

bb.g:                                             ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.i.i", %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.thread.i.i"
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h3c9a530ea3e27679E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h3c9a530ea3e27679E.exit: ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.i.i", %bb.g
  %.sroa.0.1.i.i = phi ptr [ null, %bb.g ], [ %i.am, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h99006314ad4f0572E.exit.i.i" ]
  ret ptr %.sroa.0.1.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h9e0d93dd6a93113dE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 10, 15) %2, i8 %.0.val, i8 %.1.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61813)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !61814, !noalias !61815, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !61814, !noalias !61815, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !61816 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61820)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !61821, !noalias !61822, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !61821, !noalias !61822, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61822
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !61823, !noalias !61822
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !61823, !noalias !61822, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !61824
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !61823, !noalias !61822
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !61816
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !61814, !noalias !61815
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef range(i64 10, 15) %2)
  %.val.i6.i = load ptr, ptr %i.b, align 8, !noalias !61825, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61829)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !61830, !noalias !61831, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i6.i, align 8, !range !29, !alias.scope !61830, !noalias !61831, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61831
  %.pre.i.i.i.i.i.i.i7.i = load i64, ptr %i.p, align 8, !alias.scope !61832, !noalias !61831
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i7.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !61832, !noalias !61831, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !61833
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !61832, !noalias !61831
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61834)
end_hunk_11
begin_hunk_12_@"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hbce61912ee96e517E":bb.a
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !61986, !noalias !61985, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !61987
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !61986, !noalias !61985
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !61979
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !61977, !noalias !61978
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1210, i64 noundef 12)
  %.val.i6.i = load ptr, ptr %i.b, align 8, !noalias !61975, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61991)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !61992, !noalias !61993, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i6.i, align 8, !range !29, !alias.scope !61992, !noalias !61993, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !61993
  %.pre.i.i.i.i.i.i.i7.i = load i64, ptr %i.p, align 8, !alias.scope !61994, !noalias !61993
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i7.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i6.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !61994, !noalias !61993, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !61995
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !61994, !noalias !61993
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61996)
  %.not.i.i.i = icmp eq i8 %.0.val, 3
  br i1 %.not.i.i.i, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61999
  %.not.i.i.i.i.i = icmp eq i8 %.0.val, 2         ; 2 uses
  %.not19.i.i.i.i.i = icmp eq i8 %.1.val, 2       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62001)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !62002, !noalias !62003, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62007)
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !62008, !noalias !62009, !noundef !28 ; 3 uses
  %i.ab = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !62008, !noalias !62009, !noundef !28
  %i.ac = icmp eq i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62009
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !62010, !noalias !62009
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ad = phi i64 [ %i.aa, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !62010, !noalias !62009, !nonnull !28, !noundef !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store i8 123, ptr %i.ah, align 1, !noalias !62011
  %i.ai = add nuw i64 %i.ad, 1                    ; 4 uses
  store i64 %i.ai, ptr %i.z, align 8, !alias.scope !62010, !noalias !62009
  %.not2.i.i.i.i.i = and i1 %.not.i.i.i.i.i, %.not19.i.i.i.i.i
  br i1 %.not2.i.i.i.i.i, label %bb.g, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62015)
  %i.aj = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !62016, !noalias !62017, !noundef !28
  %i.ak = icmp eq i64 %i.aj, %i.ai
  br i1 %i.ak, label %bb.h, label %.thread8.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.ai, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62017
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !62018, !noalias !62017
  br label %.thread8.i.i.i.i.i

.thread8.i.i.i.i.i:                               ; preds = %bb.h, %bb.g
  %i.al = phi i64 [ %i.ai, %bb.g ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.am = icmp sgt i64 %i.al, -1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load ptr, ptr %i.af, align 8, !alias.scope !62018, !noalias !62017, !nonnull !28, !noundef !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 125, ptr %i.ao, align 1, !noalias !62019
  %i.ap = add nuw i64 %i.al, 1
  store i64 %i.ap, ptr %i.z, align 8, !alias.scope !62018, !noalias !62017
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd5715924b40b5257E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  store ptr %i.b, ptr %i.a, align 8, !noalias !61999
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.aq, align 8, !noalias !61999
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1093, i64 noundef 19, i8 %.0.val)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  br i1 %.not19.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1111, i64 noundef 14, i8 %.1.val)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pr.i.i.i.i.i = load i8, ptr %i.aq, align 8, !noalias !61999
  %i.ar = load ptr, ptr %i.a, align 8, !noalias !61999, !nonnull !28, !align !35, !noundef !28
  %.val.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !noalias !61975 ; 5 uses
  %i.as = icmp eq i8 %.pr.i.i.i.i.i, 0
  br i1 %i.as, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd5715924b40b5257E.exit.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62023)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !62024, !noalias !62025, !noundef !28 ; 3 uses
  %i.av = load i64, ptr %.val.i.i.i.i.i, align 8, !range !29, !alias.scope !62024, !noalias !62025, !noundef !28
  %i.aw = icmp eq i64 %i.av, %i.au
  br i1 %i.aw, label %bb.n, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i24.i.i.i.i.i, !prof !30

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i, i64 noundef %i.au, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62025
  %.pre.i.i.i.i.i.i.i.i25.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !62026, !noalias !62025
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i24.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i24.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.ax = phi i64 [ %i.au, %bb.m ], [ %.pre.i.i.i.i.i.i.i.i25.i.i.i.i.i, %bb.n ] ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !62026, !noalias !62025, !nonnull !28, !noundef !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax
  store i8 125, ptr %i.bb, align 1, !noalias !62027
  %i.bc = add nuw i64 %i.ax, 1
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !62026, !noalias !62025
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd5715924b40b5257E.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd5715924b40b5257E.exit.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i24.i.i.i.i.i, %bb.l, %.thread8.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61999
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h844b217b95cae474E.exit

bb.o:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !61996, !noalias !61975, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62031)
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !62032, !noalias !62033, !noundef !28 ; 3 uses
  %i.bf = load i64, ptr %.val.i.i.i, align 8, !range !29, !alias.scope !62032, !noalias !62033, !noundef !28
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = icmp ult i64 %i.bg, 4
  br i1 %i.bh, label %bb.p, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i", !prof !30

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i, i64 noundef %i.be, i64 noundef 4, i64 noundef 1, i64 noundef 1), !noalias !62033
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !62034, !noalias !62033
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i": ; preds = %bb.p, %bb.o
  %i.bi = phi i64 [ %i.be, %bb.o ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !62034, !noalias !62033, !nonnull !28, !noundef !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  store i32 1819047278, ptr %i.bm, align 1, !noalias !62035
  %i.bn = add nuw i64 %i.bi, 4
  store i64 %i.bn, ptr %i.bd, align 8, !alias.scope !62034, !noalias !62033
  br label %_ZN10serde_core3ser12SerializeMap15serialize_entry17h844b217b95cae474E.exit

_ZN10serde_core3ser12SerializeMap15serialize_entry17h844b217b95cae474E.exit: ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_some17hd5715924b40b5257E.exit.i.i.i", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$14serialize_none17h5a51276ae0ab8e9eE.exit.i.i.i"
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hd27a190834708ba2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62242)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !62243, !noalias !62244, !nonnull !28, !align !35, !noundef !28 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !42, !alias.scope !62243, !noalias !62244, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !62245 ; 6 uses
  br i1 %i.e, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62249)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !62250, !noalias !62251, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !62250, !noalias !62251, !noundef !28
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", !prof !30

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.g, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62251
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !62252, !noalias !62251
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i": ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i.i.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !62252, !noalias !62251, !nonnull !28, !noundef !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 44, ptr %i.n, align 1, !noalias !62253
  %i.o = add nuw i64 %i.j, 1
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !62252, !noalias !62251
  %.val9.pre.i.i = load ptr, ptr %i.b, align 8, !noalias !62245
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i", %bb.a
  %.val9.i.i = phi ptr [ %.val.i.i, %bb.a ], [ %.val9.pre.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i" ]
  store i8 2, ptr %i.c, align 8, !alias.scope !62243, !noalias !62244
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1193, i64 noundef 9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62254)
  %.val.i4.i = load ptr, ptr %i.b, align 8, !noalias !62255, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62259)
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !62260, !noalias !62261, !noundef !28 ; 3 uses
  %i.r = load i64, ptr %.val.i4.i, align 8, !range !29, !alias.scope !62260, !noalias !62261, !noundef !28
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.d, label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i, !prof !30

bb.d:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62261
  %.pre.i.i.i.i.i.i.i5.i = load i64, ptr %i.p, align 8, !alias.scope !62262, !noalias !62261
  br label %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i

_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i: ; preds = %bb.d, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i"
  %i.t = phi i64 [ %i.q, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i" ], [ %.pre.i.i.i.i.i.i.i5.i, %bb.d ] ; 3 uses
  %i.u = icmp sgt i64 %i.t, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !62262, !noalias !62261, !nonnull !28, !noundef !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 58, ptr %i.x, align 1, !noalias !62263
  %i.y = add nuw i64 %i.t, 1
  store i64 %i.y, ptr %i.p, align 8, !alias.scope !62262, !noalias !62261
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62265)
  %i.z = load i64, ptr %1, align 8, !range !40, !alias.scope !62266, !noalias !62267, !noundef !28 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.u, label %bb.e

bb.e:                                             ; preds = %_ZN10serde_json3ser9Formatter18begin_object_value17h6d3bc186cdc16551E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !62272
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !42, !alias.scope !62273, !noalias !62274, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 2           ; 2 uses
  %.not19.i.i.i.i.i = icmp eq i64 %i.z, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62276)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !62277, !noalias !62278, !nonnull !28, !align !35, !noundef !28 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62282)
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !62283, !noalias !62284, !noundef !28 ; 3 uses
  %i.ae = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !62283, !noalias !62284, !noundef !28
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.f, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i, !prof !30

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.ad, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62284
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !62285, !noalias !62284
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ag = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ] ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !62285, !noalias !62284, !nonnull !28, !noundef !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 123, ptr %i.ak, align 1, !noalias !62286
  %i.al = add nuw i64 %i.ag, 1                    ; 4 uses
  store i64 %i.al, ptr %i.ac, align 8, !alias.scope !62285, !noalias !62284
  %.not29.i.i.i.i.i = and i1 %.not19.i.i.i.i.i, %.not.i.i.i.i.i
  br i1 %.not29.i.i.i.i.i, label %bb.g, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"

bb.g:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62290)
  %i.am = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !62291, !noalias !62292, !noundef !28
  %i.an = icmp eq i64 %i.am, %i.al
  br i1 %i.an, label %bb.h, label %.thread56.i.i.i.i.i, !prof !30

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i, i64 noundef %i.al, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62292
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !62293, !noalias !62292
  br label %.thread56.i.i.i.i.i

.thread56.i.i.i.i.i:                              ; preds = %bb.h, %bb.g
  %i.ao = phi i64 [ %i.al, %bb.g ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load ptr, ptr %i.ai, align 8, !alias.scope !62293, !noalias !62292, !nonnull !28, !noundef !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 125, ptr %i.ar, align 1, !noalias !62294
  %i.as = add nuw i64 %i.ao, 1
  store i64 %i.as, ptr %i.ac, align 8, !alias.scope !62293, !noalias !62292
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17h2f219e56c22df7f9E.exit.thread3.i.i"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i
  store ptr %i.b, ptr %i.a, align 8, !noalias !62272
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 1, ptr %i.at, align 8, !noalias !62272
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1093, i64 noundef 19, i8 %i.ab)
  %.pre.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !62272 ; 4 uses
  %.pre30.pre.i.i.i.i.i = load i8, ptr %i.at, align 8, !range !42, !noalias !62272 ; 2 uses
  %.val.pre33.pre.i.i.i.i.i = load ptr, ptr %.pre.pre.i.i.i.i.i, align 8, !noalias !62295 ; 7 uses
  br i1 %.not19.i.i.i.i.i, label %bb.s, label %bb.j

.thread.i.i.i.i:                                  ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i"
  br i1 %.not19.i.i.i.i.i, label %.thread14.i.i.i.i, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62297)
  %i.au = icmp eq i8 %.pre30.pre.i.i.i.i.i, 1
  br i1 %i.au, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.pre33.pre.i.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62301)
  %i.av = getelementptr inbounds nuw i8, ptr %.val.pre33.pre.i.i.i.i.i, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !62302, !noalias !62303, !noundef !28 ; 3 uses
  %i.ax = load i64, ptr %.val.pre33.pre.i.i.i.i.i, align 8, !range !29, !alias.scope !62302, !noalias !62303, !noundef !28
  %i.ay = icmp eq i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.l, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i", !prof !30

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.pre33.pre.i.i.i.i.i, i64 noundef %i.aw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !62303
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !62304, !noalias !62303
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.l, %bb.k
  %i.az = phi i64 [ %i.aw, %bb.k ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ] ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.pre33.pre.i.i.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !62304, !noalias !62303, !nonnull !28, !noundef !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  store i8 44, ptr %i.bd, align 1, !noalias !62305
  %i.be = add nuw i64 %i.az, 1
  store i64 %i.be, ptr %i.av, align 8, !alias.scope !62304, !noalias !62303
  %.val9.pre.i.i.i.i.i.i.i.i = load ptr, ptr %.pre.pre.i.i.i.i.i, align 8, !noalias !62306
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i", %bb.j, %.thread.i.i.i.i
  %.pre.i813.i.i.i.i = phi ptr [ %.pre.pre.i.i.i.i.i, %bb.j ], [ %.pre.pre.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.b, %.thread.i.i.i.i ] ; 3 uses
  %.val9.i.i.i.i.i.i.i.i = phi ptr [ %.val.pre33.pre.i.i.i.i.i, %bb.j ], [ %.val9.pre.i.i.i.i.i.i.i.i, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i" ], [ %.val.i.i.i.i.i.i.i, %.thread.i.i.i.i ]
end_hunk_12
begin_hunk_13_@"_ZN9lsp_types1_81_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..MarkedString$GT$11deserialize17h48d27be65b47ed02E":bb.a
  %i.gf = load ptr, ptr %.sroa.592.0..sroa_idx.i.i.i, align 8, !noalias !68179 ; 2 uses
  br i1 %i.ge, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hbe56fa37858df212E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68179
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i"

bb.bt:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hbe56fa37858df212E.exit.i.i.i"
  %.sroa.693.0.copyload.i.i.i = load i64, ptr %.sroa.693.0..sroa_idx.i.i.i, align 8, !noalias !68179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68179
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i": ; preds = %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sroa.19159.1.i.i.i = phi i64 [ %.sroa.19159.0296.i.i.i, %bb.bt ], [ %.sroa.696.0.copyload.i.i.i, %bb.bw ], [ %.sroa.19159.0296.i.i.i, %bb.bq ], [ %.sroa.19159.0296.i.i.i, %bb.bn ], [ %.sroa.19159.0296.i.i.i, %bb.bm ], [ %.sroa.19159.0296.i.i.i, %bb.bl ], [ %.sroa.19159.0296.i.i.i, %bb.bk ], [ %.sroa.19159.0296.i.i.i, %bb.bj ], [ %.sroa.19159.0296.i.i.i, %bb.bi ], [ %.sroa.19159.0296.i.i.i, %bb.bh ], [ %.sroa.19159.0296.i.i.i, %bb.bg ], [ %.sroa.19159.0296.i.i.i, %bb.bf ], [ %.sroa.19159.0296.i.i.i, %bb.be ], [ %.sroa.19159.0296.i.i.i, %bb.bd ], [ %.sroa.19159.0296.i.i.i, %bb.bc ], [ %.sroa.19159.0296.i.i.i, %bb.bb ], [ %.sroa.19159.0296.i.i.i, %bb.ba ], [ %.sroa.19159.0296.i.i.i, %bb.az ], [ %.sroa.19159.0296.i.i.i, %bb.ay ], [ %.sroa.19159.0296.i.i.i, %bb.ax ], [ %.sroa.19159.0296.i.i.i, %bb.aw ], [ %.sroa.19159.0296.i.i.i, %bb.av ], [ %.sroa.19159.0296.i.i.i, %bb.au ], [ %.sroa.19159.0296.i.i.i, %bb.at ], [ %.sroa.19159.0296.i.i.i, %bb.as ], [ %.sroa.19159.0296.i.i.i, %bb.ar ], [ %.sroa.19159.0296.i.i.i, %bb.aq ], [ %.sroa.19159.0296.i.i.i, %bb.ap ], [ %.sroa.19159.0296.i.i.i, %bb.ao ], [ %.sroa.19159.0296.i.i.i, %bb.an ], [ %.sroa.19159.0296.i.i.i, %bb.am ], [ %.sroa.19159.0296.i.i.i, %bb.al ], [ %.sroa.19159.0296.i.i.i, %bb.ak ], [ %.sroa.19159.0296.i.i.i, %bb.aj ], [ %.sroa.19159.0296.i.i.i, %bb.ai ], [ %.sroa.19159.0296.i.i.i, %bb.ah ], [ %.sroa.19159.0296.i.i.i, %bb.ag ] ; 2 uses
  %.sroa.13.1.i.i.i = phi ptr [ %.sroa.13.0297.i.i.i, %bb.bt ], [ %i.gl, %bb.bw ], [ %.sroa.13.0297.i.i.i, %bb.bq ], [ %.sroa.13.0297.i.i.i, %bb.bn ], [ %.sroa.13.0297.i.i.i, %bb.bm ], [ %.sroa.13.0297.i.i.i, %bb.bl ], [ %.sroa.13.0297.i.i.i, %bb.bk ], [ %.sroa.13.0297.i.i.i, %bb.bj ], [ %.sroa.13.0297.i.i.i, %bb.bi ], [ %.sroa.13.0297.i.i.i, %bb.bh ], [ %.sroa.13.0297.i.i.i, %bb.bg ], [ %.sroa.13.0297.i.i.i, %bb.bf ], [ %.sroa.13.0297.i.i.i, %bb.be ], [ %.sroa.13.0297.i.i.i, %bb.bd ], [ %.sroa.13.0297.i.i.i, %bb.bc ], [ %.sroa.13.0297.i.i.i, %bb.bb ], [ %.sroa.13.0297.i.i.i, %bb.ba ], [ %.sroa.13.0297.i.i.i, %bb.az ], [ %.sroa.13.0297.i.i.i, %bb.ay ], [ %.sroa.13.0297.i.i.i, %bb.ax ], [ %.sroa.13.0297.i.i.i, %bb.aw ], [ %.sroa.13.0297.i.i.i, %bb.av ], [ %.sroa.13.0297.i.i.i, %bb.au ], [ %.sroa.13.0297.i.i.i, %bb.at ], [ %.sroa.13.0297.i.i.i, %bb.as ], [ %.sroa.13.0297.i.i.i, %bb.ar ], [ %.sroa.13.0297.i.i.i, %bb.aq ], [ %.sroa.13.0297.i.i.i, %bb.ap ], [ %.sroa.13.0297.i.i.i, %bb.ao ], [ %.sroa.13.0297.i.i.i, %bb.an ], [ %.sroa.13.0297.i.i.i, %bb.am ], [ %.sroa.13.0297.i.i.i, %bb.al ], [ %.sroa.13.0297.i.i.i, %bb.ak ], [ %.sroa.13.0297.i.i.i, %bb.aj ], [ %.sroa.13.0297.i.i.i, %bb.ai ], [ %.sroa.13.0297.i.i.i, %bb.ah ], [ %.sroa.13.0297.i.i.i, %bb.ag ] ; 3 uses
  %.sroa.0152.1.i.i.i = phi i64 [ %.sroa.0152.0299.i.i.i, %bb.bt ], [ %i.gj, %bb.bw ], [ %.sroa.0152.0299.i.i.i, %bb.bq ], [ %.sroa.0152.0299.i.i.i, %bb.bn ], [ %.sroa.0152.0299.i.i.i, %bb.bm ], [ %.sroa.0152.0299.i.i.i, %bb.bl ], [ %.sroa.0152.0299.i.i.i, %bb.bk ], [ %.sroa.0152.0299.i.i.i, %bb.bj ], [ %.sroa.0152.0299.i.i.i, %bb.bi ], [ %.sroa.0152.0299.i.i.i, %bb.bh ], [ %.sroa.0152.0299.i.i.i, %bb.bg ], [ %.sroa.0152.0299.i.i.i, %bb.bf ], [ %.sroa.0152.0299.i.i.i, %bb.be ], [ %.sroa.0152.0299.i.i.i, %bb.bd ], [ %.sroa.0152.0299.i.i.i, %bb.bc ], [ %.sroa.0152.0299.i.i.i, %bb.bb ], [ %.sroa.0152.0299.i.i.i, %bb.ba ], [ %.sroa.0152.0299.i.i.i, %bb.az ], [ %.sroa.0152.0299.i.i.i, %bb.ay ], [ %.sroa.0152.0299.i.i.i, %bb.ax ], [ %.sroa.0152.0299.i.i.i, %bb.aw ], [ %.sroa.0152.0299.i.i.i, %bb.av ], [ %.sroa.0152.0299.i.i.i, %bb.au ], [ %.sroa.0152.0299.i.i.i, %bb.at ], [ %.sroa.0152.0299.i.i.i, %bb.as ], [ %.sroa.0152.0299.i.i.i, %bb.ar ], [ %.sroa.0152.0299.i.i.i, %bb.aq ], [ %.sroa.0152.0299.i.i.i, %bb.ap ], [ %.sroa.0152.0299.i.i.i, %bb.ao ], [ %.sroa.0152.0299.i.i.i, %bb.an ], [ %.sroa.0152.0299.i.i.i, %bb.am ], [ %.sroa.0152.0299.i.i.i, %bb.al ], [ %.sroa.0152.0299.i.i.i, %bb.ak ], [ %.sroa.0152.0299.i.i.i, %bb.aj ], [ %.sroa.0152.0299.i.i.i, %bb.ai ], [ %.sroa.0152.0299.i.i.i, %bb.ah ], [ %.sroa.0152.0299.i.i.i, %bb.ag ] ; 4 uses
  %.sroa.19.1.i.i.i = phi i64 [ %.sroa.693.0.copyload.i.i.i, %bb.bt ], [ %.sroa.19.0301.i.i.i, %bb.bw ], [ %.sroa.19.0301.i.i.i, %bb.bq ], [ %.sroa.19.0301.i.i.i, %bb.bn ], [ %.sroa.19.0301.i.i.i, %bb.bm ], [ %.sroa.19.0301.i.i.i, %bb.bl ], [ %.sroa.19.0301.i.i.i, %bb.bk ], [ %.sroa.19.0301.i.i.i, %bb.bj ], [ %.sroa.19.0301.i.i.i, %bb.bi ], [ %.sroa.19.0301.i.i.i, %bb.bh ], [ %.sroa.19.0301.i.i.i, %bb.bg ], [ %.sroa.19.0301.i.i.i, %bb.bf ], [ %.sroa.19.0301.i.i.i, %bb.be ], [ %.sroa.19.0301.i.i.i, %bb.bd ], [ %.sroa.19.0301.i.i.i, %bb.bc ], [ %.sroa.19.0301.i.i.i, %bb.bb ], [ %.sroa.19.0301.i.i.i, %bb.ba ], [ %.sroa.19.0301.i.i.i, %bb.az ], [ %.sroa.19.0301.i.i.i, %bb.ay ], [ %.sroa.19.0301.i.i.i, %bb.ax ], [ %.sroa.19.0301.i.i.i, %bb.aw ], [ %.sroa.19.0301.i.i.i, %bb.av ], [ %.sroa.19.0301.i.i.i, %bb.au ], [ %.sroa.19.0301.i.i.i, %bb.at ], [ %.sroa.19.0301.i.i.i, %bb.as ], [ %.sroa.19.0301.i.i.i, %bb.ar ], [ %.sroa.19.0301.i.i.i, %bb.aq ], [ %.sroa.19.0301.i.i.i, %bb.ap ], [ %.sroa.19.0301.i.i.i, %bb.ao ], [ %.sroa.19.0301.i.i.i, %bb.an ], [ %.sroa.19.0301.i.i.i, %bb.am ], [ %.sroa.19.0301.i.i.i, %bb.al ], [ %.sroa.19.0301.i.i.i, %bb.ak ], [ %.sroa.19.0301.i.i.i, %bb.aj ], [ %.sroa.19.0301.i.i.i, %bb.ai ], [ %.sroa.19.0301.i.i.i, %bb.ah ], [ %.sroa.19.0301.i.i.i, %bb.ag ] ; 2 uses
  %.sroa.14.1.i.i.i = phi ptr [ %i.gf, %bb.bt ], [ %.sroa.14.0302.i.i.i, %bb.bw ], [ %.sroa.14.0302.i.i.i, %bb.bq ], [ %.sroa.14.0302.i.i.i, %bb.bn ], [ %.sroa.14.0302.i.i.i, %bb.bm ], [ %.sroa.14.0302.i.i.i, %bb.bl ], [ %.sroa.14.0302.i.i.i, %bb.bk ], [ %.sroa.14.0302.i.i.i, %bb.bj ], [ %.sroa.14.0302.i.i.i, %bb.bi ], [ %.sroa.14.0302.i.i.i, %bb.bh ], [ %.sroa.14.0302.i.i.i, %bb.bg ], [ %.sroa.14.0302.i.i.i, %bb.bf ], [ %.sroa.14.0302.i.i.i, %bb.be ], [ %.sroa.14.0302.i.i.i, %bb.bd ], [ %.sroa.14.0302.i.i.i, %bb.bc ], [ %.sroa.14.0302.i.i.i, %bb.bb ], [ %.sroa.14.0302.i.i.i, %bb.ba ], [ %.sroa.14.0302.i.i.i, %bb.az ], [ %.sroa.14.0302.i.i.i, %bb.ay ], [ %.sroa.14.0302.i.i.i, %bb.ax ], [ %.sroa.14.0302.i.i.i, %bb.aw ], [ %.sroa.14.0302.i.i.i, %bb.av ], [ %.sroa.14.0302.i.i.i, %bb.au ], [ %.sroa.14.0302.i.i.i, %bb.at ], [ %.sroa.14.0302.i.i.i, %bb.as ], [ %.sroa.14.0302.i.i.i, %bb.ar ], [ %.sroa.14.0302.i.i.i, %bb.aq ], [ %.sroa.14.0302.i.i.i, %bb.ap ], [ %.sroa.14.0302.i.i.i, %bb.ao ], [ %.sroa.14.0302.i.i.i, %bb.an ], [ %.sroa.14.0302.i.i.i, %bb.am ], [ %.sroa.14.0302.i.i.i, %bb.al ], [ %.sroa.14.0302.i.i.i, %bb.ak ], [ %.sroa.14.0302.i.i.i, %bb.aj ], [ %.sroa.14.0302.i.i.i, %bb.ai ], [ %.sroa.14.0302.i.i.i, %bb.ah ], [ %.sroa.14.0302.i.i.i, %bb.ag ] ; 5 uses
  %.sroa.0147.1.i.i.i = phi i64 [ %i.gd, %bb.bt ], [ %.sroa.0147.0304.i.i.i, %bb.bw ], [ %.sroa.0147.0304.i.i.i, %bb.bq ], [ %.sroa.0147.0304.i.i.i, %bb.bn ], [ %.sroa.0147.0304.i.i.i, %bb.bm ], [ %.sroa.0147.0304.i.i.i, %bb.bl ], [ %.sroa.0147.0304.i.i.i, %bb.bk ], [ %.sroa.0147.0304.i.i.i, %bb.bj ], [ %.sroa.0147.0304.i.i.i, %bb.bi ], [ %.sroa.0147.0304.i.i.i, %bb.bh ], [ %.sroa.0147.0304.i.i.i, %bb.bg ], [ %.sroa.0147.0304.i.i.i, %bb.bf ], [ %.sroa.0147.0304.i.i.i, %bb.be ], [ %.sroa.0147.0304.i.i.i, %bb.bd ], [ %.sroa.0147.0304.i.i.i, %bb.bc ], [ %.sroa.0147.0304.i.i.i, %bb.bb ], [ %.sroa.0147.0304.i.i.i, %bb.ba ], [ %.sroa.0147.0304.i.i.i, %bb.az ], [ %.sroa.0147.0304.i.i.i, %bb.ay ], [ %.sroa.0147.0304.i.i.i, %bb.ax ], [ %.sroa.0147.0304.i.i.i, %bb.aw ], [ %.sroa.0147.0304.i.i.i, %bb.av ], [ %.sroa.0147.0304.i.i.i, %bb.au ], [ %.sroa.0147.0304.i.i.i, %bb.at ], [ %.sroa.0147.0304.i.i.i, %bb.as ], [ %.sroa.0147.0304.i.i.i, %bb.ar ], [ %.sroa.0147.0304.i.i.i, %bb.aq ], [ %.sroa.0147.0304.i.i.i, %bb.ap ], [ %.sroa.0147.0304.i.i.i, %bb.ao ], [ %.sroa.0147.0304.i.i.i, %bb.an ], [ %.sroa.0147.0304.i.i.i, %bb.am ], [ %.sroa.0147.0304.i.i.i, %bb.al ], [ %.sroa.0147.0304.i.i.i, %bb.ak ], [ %.sroa.0147.0304.i.i.i, %bb.aj ], [ %.sroa.0147.0304.i.i.i, %bb.ai ], [ %.sroa.0147.0304.i.i.i, %bb.ah ], [ %.sroa.0147.0304.i.i.i, %bb.ag ] ; 7 uses
  %i.gg = icmp eq ptr %i.bf, %i.bc
  br i1 %i.gg, label %.thread199.i.i.i, label %bb.ad

bb.bu:                                            ; preds = %.thread197.i.i.i
  %i.gh = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hfda0d3f207ece94dE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @443, i64 noundef 5)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" unwind label %.loopexit.split-lp.i.i.i, !noalias !68179 ; 2 uses

_ZN10serde_core2de9MapAccess10next_value17h0aadee1e65ba4762E.exit.i123.i.i.i: ; preds = %.thread197.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !68179
  invoke fastcc void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h7ffec36fb2e7c8a8E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hbe56fa37858df212E.exit126.i.i.i" unwind label %.loopexit.i.i.i, !noalias !68178

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i": ; preds = %bb.bu
  %i.gi = icmp eq i64 %.sroa.0152.0299.i.i.i, 0
  br i1 %i.gi, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i", label %bb.cc

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hbe56fa37858df212E.exit126.i.i.i": ; preds = %_ZN10serde_core2de9MapAccess10next_value17h0aadee1e65ba4762E.exit.i123.i.i.i
  %i.gj = load i64, ptr %i.b, align 8, !range !34, !noalias !68179, !noundef !28 ; 2 uses
  %i.gk = icmp eq i64 %i.gj, -9223372036854775808
  %i.gl = load ptr, ptr %.sroa.595.0..sroa_idx.i.i.i, align 8, !noalias !68179 ; 2 uses
  br i1 %i.gk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hbe56fa37858df212E.exit126.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68179
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i"

bb.bw:                                            ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17hbe56fa37858df212E.exit126.i.i.i"
  %.sroa.696.0.copyload.i.i.i = load i64, ptr %.sroa.696.0..sroa_idx.i.i.i, align 8, !noalias !68179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !68179
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i"

.thread199.thread.i.i.i:                          ; preds = %.thread199.i.i.i, %bb.ac
  %.sroa.14.0.lcssa370.i.i.i = phi ptr [ %.sroa.14.1.i.i.i, %.thread199.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %.sroa.0152.0.lcssa369.i.i.i = phi i64 [ %.sroa.0152.1.i.i.i, %.thread199.i.i.i ], [ -9223372036854775808, %bb.ac ] ; 2 uses
  %.sroa.13.0.lcssa368.i.i.i = phi ptr [ %.sroa.13.1.i.i.i, %.thread199.i.i.i ], [ undef, %bb.ac ] ; 2 uses
  %i.gm = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17hb6d12940aab86563E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @451, i64 noundef 8)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" unwind label %.loopexit.split-lp.i.i.i, !noalias !68179

bb.bx:                                            ; preds = %.thread199.i.i.i
  %.not105.i.i.i = icmp eq i64 %.sroa.0152.1.i.i.i, -9223372036854775808
  br i1 %.not105.i.i.i, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx
  %i.gn = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17hb6d12940aab86563E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @443, i64 noundef 5)
          to label %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit131.i.i.i" unwind label %bb.bz, !noalias !68179 ; 2 uses

bb.bz:                                            ; preds = %bb.by
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = icmp eq i64 %.sroa.0147.1.i.i.i, 0
  br i1 %i.gp, label %.body, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.1.i.i.i, i64 noundef %.sroa.0147.1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !68180
  br label %.body

"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit131.i.i.i": ; preds = %bb.by
  %i.gq = icmp eq i64 %.sroa.0147.1.i.i.i, 0
  br i1 %i.gq, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit131.i.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.1.i.i.i, i64 noundef %.sroa.0147.1.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !68181
  br label %bb.ch

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i": ; preds = %.thread199.thread.i.i.i, %bb.bs, %bb.br, %bb.bo
  %.sink.i.i.i = phi ptr [ %i.gc, %bb.br ], [ %i.ga, %bb.bo ], [ %i.gf, %bb.bs ], [ %i.gm, %.thread199.thread.i.i.i ] ; 3 uses
  %.sroa.13.0284.i.i.i = phi ptr [ %.sroa.13.0297.i.i.i, %bb.br ], [ %.sroa.13.0297.i.i.i, %bb.bo ], [ %.sroa.13.0297.i.i.i, %bb.bs ], [ %.sroa.13.0.lcssa368.i.i.i, %.thread199.thread.i.i.i ]
  %.sroa.0152.0272.i.i.i = phi i64 [ %.sroa.0152.0299.i.i.i, %bb.br ], [ %.sroa.0152.0299.i.i.i, %bb.bo ], [ %.sroa.0152.0299.i.i.i, %bb.bs ], [ %.sroa.0152.0.lcssa369.i.i.i, %.thread199.thread.i.i.i ] ; 2 uses
  %.sroa.14.0249.i.i.i = phi ptr [ %.sroa.14.0302.i.i.i, %bb.br ], [ %.sroa.14.0302.i.i.i, %bb.bo ], [ %.sroa.14.0302.i.i.i, %bb.bs ], [ %.sroa.14.0.lcssa370.i.i.i, %.thread199.thread.i.i.i ] ; 3 uses
  %.sroa.0147.0237.i.i.i = phi i64 [ %.sroa.0147.0304.i.i.i, %bb.br ], [ %.sroa.0147.0304.i.i.i, %bb.bo ], [ -9223372036854775808, %bb.bs ], [ -9223372036854775808, %.thread199.thread.i.i.i ] ; 3 uses
  switch i64 %.sroa.0152.0272.i.i.i, label %bb.cc [
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i"
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i"
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i": ; preds = %bb.cc, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i", %bb.bv, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i"
  %.sroa.8.0.i.i = phi ptr [ %.sroa.8.1.i.i, %bb.cc ], [ %.sink.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sink.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %i.gl, %bb.bv ], [ %i.gh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ] ; 3 uses
  %.sroa.14.0247.i.i.i = phi ptr [ %.sroa.14.0248.i.i.i, %bb.cc ], [ %.sroa.14.0249.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.14.0249.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.14.0302.i.i.i, %bb.bv ], [ %.sroa.14.0302.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ] ; 2 uses
  %.sroa.0147.0235.i.i.i = phi i64 [ %.sroa.0147.0236.i.i.i, %bb.cc ], [ %.sroa.0147.0237.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.0147.0237.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.0147.0304.i.i.i, %bb.bv ], [ %.sroa.0147.0304.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ] ; 2 uses
  switch i64 %.sroa.0147.0235.i.i.i, label %bb.cd [
    i64 -9223372036854775808, label %bb.ch
    i64 0, label %bb.ch
  ]

bb.cc:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i"
  %.sroa.8.1.i.i = phi ptr [ %.sink.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %i.gh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ]
  %.sroa.13.0283.i.i.i = phi ptr [ %.sroa.13.0284.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.13.0297.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ] ; 2 uses
  %.sroa.0152.0273.i.i.i = phi i64 [ %.sroa.0152.0272.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.0152.0299.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ]
  %.sroa.14.0248.i.i.i = phi ptr [ %.sroa.14.0249.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.14.0302.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ]
  %.sroa.0147.0236.i.i.i = phi i64 [ %.sroa.0147.0237.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.i.i.i" ], [ %.sroa.0147.0304.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit134.thread204.i.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0283.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0283.i.i.i, i64 noundef %.sroa.0152.0273.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !68182
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i"

.thread.i.i.i:                                    ; preds = %bb.ce, %bb.bp, %bb.bp
  switch i64 %.sroa.0147.0233.i.i.i, label %bb.cf [
    i64 -9223372036854775808, label %.body
    i64 0, label %.body
  ]

bb.cd:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0247.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0247.i.i.i, i64 noundef %.sroa.0147.0235.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !68183
  br label %bb.ch

bb.ce:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0285.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0285.i.i.i, i64 noundef %.sroa.0152.0270.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !68184
  br label %.thread.i.i.i

bb.cf:                                            ; preds = %.thread.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0250.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0250.i.i.i, i64 noundef %.sroa.0147.0233.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !68185
  br label %.body

"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit.thread62": ; preds = %bb.ab, %bb.m, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i", %bb.p, %bb.v, %bb.u
  %.sroa.10.0.ph = phi ptr [ %.sink75.i.i.i, %bb.v ], [ %.sink75.i.i.i, %bb.u ], [ %i.ag, %bb.m ], [ %i.av, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i.i.i" ], [ %i.am, %bb.p ], [ %i.av, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !68156
  br label %bb.ch

"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit": ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !68156
  br label %bb.cg

bb.cg:                                            ; preds = %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit", %bb.bx
  %.sroa.0.160 = phi i64 [ %i.ad, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit" ], [ %.sroa.0147.1.i.i.i, %bb.bx ]
  %.sroa.10.159 = phi ptr [ %i.ag, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit" ], [ %.sroa.14.1.i.i.i, %bb.bx ]
  %.sroa.16.158 = phi i64 [ %.sroa.1044.0.copyload.i.i.i, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit" ], [ %.sroa.19.1.i.i.i, %bb.bx ]
  %.sroa.17.157 = phi i64 [ %i.ai, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit" ], [ %.sroa.0152.1.i.i.i, %bb.bx ]
  %.sroa.18.156 = phi ptr [ %i.al, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit" ], [ %.sroa.13.1.i.i.i, %bb.bx ]
  %.sroa.19.155 = phi i64 [ %.sroa.1047.0.copyload.i.i.i, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit" ], [ %.sroa.19159.1.i.i.i, %bb.bx ]
  store i64 %.sroa.0.160, ptr %i.h, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.10.159, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.16.158, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.17.157, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sroa.18.156, ptr %.sroa.739.0..sroa_idx, align 8
  %.sroa.840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %.sroa.19.155, ptr %.sroa.840.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.g

bb.ch:                                            ; preds = %bb.cb, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i", %bb.cd, %bb.j, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit131.i.i.i", %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit.thread62"
  %.sroa.10.147 = phi ptr [ %.sroa.10.0.ph, %"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17h60bb1b1e62060e87E.exit.thread62" ], [ %.sroa.8.0.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i" ], [ %.sroa.8.0.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit137.i.i.i" ], [ %i.gn, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit131.i.i.i" ], [ %i.gn, %bb.cb ], [ %i.x, %bb.j ], [ %.sroa.8.0.i.i, %bb.cd ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.10.147, ptr %i.gr, align 8
  store i64 -9223372036854775807, ptr %i.h, align 8
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$core..result..Result$LT$lsp_types..MarkedString$C$serde_json..error..Error$GT$$GT$17hf8844d1500319d66E"(ptr noalias noundef align 8 dereferenceable(48) %i.h)
          to label %bb.ci unwind label %bb.d

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.gs = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h84bd4f43ac49638fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1156, i64 noundef 60)
          to label %bb.cj unwind label %bb.d

bb.cj:                                            ; preds = %bb.ci
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gs, ptr %i.gt, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.l)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.b, %bb.g, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.cl:                                            ; preds = %.body
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.cm:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN9lsp_types1_86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..ClientCapabilities$GT$9serialize17h2bd87c333e64325dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(936) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 9 uses
  %i.q = alloca [16 x i8], align 8                ; 14 uses
  %i.r = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.t = load i64, ptr %i.s, align 8, !range !50, !noundef !28 ; 3 uses
  %.not = icmp ne i64 %i.t, -9223372036854775806  ; 3 uses
  %. = zext i1 %.not to i64
  %i.u = load i64, ptr %0, align 8, !range !40, !noundef !28
  %.not48 = icmp ne i64 %i.u, -9223372036854775807 ; 2 uses
  %.sroa.04.0 = zext i1 %.not48 to i64
  %i.v = add nuw nsw i64 %.sroa.04.0, %.
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.x = load i8, ptr %i.w, align 8, !range !69, !noundef !28 ; 3 uses
  %.not49 = icmp ne i8 %i.x, 3                    ; 2 uses
  %.sroa.05.0 = zext i1 %.not49 to i64
  %i.y = add nuw nsw i64 %i.v, %.sroa.05.0
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.aa = load i64, ptr %i.z, align 8, !range !40, !noundef !28 ; 2 uses
  %.not50 = icmp ne i64 %i.aa, -9223372036854775807 ; 2 uses
  %.sroa.06.0 = zext i1 %.not50 to i64
  %i.ab = add nuw nsw i64 %i.y, %.sroa.06.0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !45, !noundef !28
  %.not51 = icmp ne i8 %i.ad, 6                   ; 2 uses
  %.sroa.07.0 = zext i1 %.not51 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70500)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !70501, !noalias !70502, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70506)
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !70507, !noalias !70508, !noundef !28 ; 3 uses
  %i.ag = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !70507, !noalias !70508, !noundef !28
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.af, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !70508
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !70509, !noalias !70508
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.ai = phi i64 [ %i.af, %bb.a ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !70509, !noalias !70508, !nonnull !28, !noundef !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  store i8 123, ptr %i.am, align 1, !noalias !70510
  %i.an = add nuw i64 %i.ai, 1                    ; 4 uses
  store i64 %i.an, ptr %i.ae, align 8, !alias.scope !70509, !noalias !70508
  %i.ao = or i64 %i.ab, %.sroa.07.0
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.c, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70514)
  %i.aq = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !70515, !noalias !70516, !noundef !28
  %i.ar = icmp eq i64 %i.aq, %i.an
  br i1 %i.ar, label %bb.d, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.thread", !prof !30

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !70516
  %.pre.i.i.i.i.i.i11.i.i = load i64, ptr %i.ae, align 8, !alias.scope !70517, !noalias !70516
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.thread"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit": ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i
  store ptr %1, ptr %i.r, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store i8 1, ptr %i.as, align 8
  br i1 %.not, label %bb.e, label %bb.gk

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.thread": ; preds = %bb.c, %bb.d
  %i.at = phi i64 [ %i.an, %bb.c ], [ %.pre.i.i.i.i.i.i11.i.i, %bb.d ] ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load ptr, ptr %i.ak, align 8, !alias.scope !70517, !noalias !70516, !nonnull !28, !noundef !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 125, ptr %i.aw, align 1, !noalias !70518
  %i.ax = add nuw i64 %i.at, 1
  store i64 %i.ax, ptr %i.ae, align 8, !alias.scope !70517, !noalias !70516
  store ptr %1, ptr %i.r, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  store i8 0, ptr %i.ay, align 8
  br i1 %.not, label %bb.f, label %bb.gk

bb.e:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70523)
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i"

bb.f:                                             ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.thread"
  %.val.i.i.i185 = load ptr, ptr %1, align 8, !noalias !70524, !nonnull !28, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70528)
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i185, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !70529, !noalias !70530, !noundef !28 ; 3 uses
  %i.bb = load i64, ptr %.val.i.i.i185, align 8, !range !29, !alias.scope !70529, !noalias !70530, !noundef !28
  %i.bc = icmp eq i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.g, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i", !prof !30

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i185, i64 noundef %i.ba, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !70530
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !70531, !noalias !70530
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i": ; preds = %bb.g, %bb.f
  %i.bd = phi i64 [ %i.ba, %bb.f ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i185, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !70531, !noalias !70530, !nonnull !28, !noundef !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd
  store i8 44, ptr %i.bh, align 1, !noalias !70532
  %i.bi = add nuw i64 %i.bd, 1
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !70531, !noalias !70530
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i": ; preds = %bb.e, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i"
  %i.bj = phi ptr [ %i.as, %bb.e ], [ %i.ay, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i" ] ; 2 uses
  %.val9.i.i.i = load ptr, ptr %1, align 8, !noalias !70533
  store i8 2, ptr %i.bj, align 8, !alias.scope !70534, !noalias !70535
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @539, i64 noundef 9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70536)
  %.val.i4.i.i = load ptr, ptr %1, align 8, !noalias !70537, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70541)
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i4.i.i, i64 16 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !70542, !noalias !70543, !noundef !28 ; 3 uses
  %i.bm = load i64, ptr %.val.i4.i.i, align 8, !range !29, !alias.scope !70542, !noalias !70543, !noundef !28
  %i.bn = icmp eq i64 %i.bm, %i.bl
  br i1 %i.bn, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i, i64 noundef %i.bl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !70543
  %.pre.i.i.i.i.i.i.i5.i.i = load i64, ptr %i.bk, align 8, !alias.scope !70544, !noalias !70543
  br label %bb.i

bb.i:                                             ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i", %bb.h
  %i.bo = phi i64 [ %i.bl, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i" ], [ %.pre.i.i.i.i.i.i.i5.i.i, %bb.h ] ; 3 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i4.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !70544, !noalias !70543, !nonnull !28, !noundef !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bo
  store i8 58, ptr %i.bs, align 1, !noalias !70545
  %i.bt = add nuw i64 %i.bo, 1
  store i64 %i.bt, ptr %i.bk, align 8, !alias.scope !70544, !noalias !70543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !70552
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 874
  %i.bv = load i8, ptr %i.bu, align 2, !range !42, !alias.scope !70553, !noalias !70554, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne i8 %i.bv, 2         ; 2 uses
  %..i.i.i.i.i.i = zext i1 %.not.i.i.i.i.i.i to i64
  %.not132.i.i.i.i.i.i = icmp ne i64 %i.t, -9223372036854775807 ; 2 uses
  %.sroa.05.0.i.i.i.i.i.i = zext i1 %.not132.i.i.i.i.i.i to i64
  %i.bw = add nuw nsw i64 %..i.i.i.i.i.i, %.sroa.05.0.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 877
  %i.by = load i8, ptr %i.bx, align 1, !range !69, !alias.scope !70553, !noalias !70554, !noundef !28 ; 2 uses
  %.not133.i.i.i.i.i.i = icmp ne i8 %i.by, 3      ; 2 uses
  %.sroa.06.0.i.i.i.i.i.i = zext i1 %.not133.i.i.i.i.i.i to i64
  %i.bz = add nuw nsw i64 %i.bw, %.sroa.06.0.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cb = load i8, ptr %i.ca, align 8, !range !69, !alias.scope !70553, !noalias !70554, !noundef !28 ; 3 uses
  %.not134.i.i.i.i.i.i = icmp ne i8 %i.cb, 3      ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i = zext i1 %.not134.i.i.i.i.i.i to i64
end_hunk_13
begin_hunk_14_@"_ZN9lsp_types1_86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..ClientCapabilities$GT$9serialize17h2bd87c333e64325dE":bb.a
  tail call void @llvm.assume(i1 %i.afh), !noalias !70550
  %i.afi = getelementptr inbounds nuw i8, ptr %.val.i.i16.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.afj = load ptr, ptr %i.afi, align 8, !alias.scope !71300, !noalias !71299, !nonnull !28, !noundef !28
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afg
  store i8 123, ptr %i.afk, align 1, !noalias !71301
  %i.afl = add nuw i64 %i.afg, 1                  ; 4 uses
  store i64 %i.afl, ptr %i.afc, align 8, !alias.scope !71300, !noalias !71299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71302), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71303), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71304), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71305), !noalias !70550
  %i.afm = load i64, ptr %.val.i.i16.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71306, !noalias !71307, !noundef !28
  %i.afn = icmp eq i64 %i.afm, %i.afl
  br i1 %i.afn, label %bb.ge, label %.thread4.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.ge:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i16.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.afl, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71307
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.afc, align 8, !alias.scope !71308, !noalias !71307
  br label %.thread4.i.i.i.i.i.i.i.i.i.i.i

.thread4.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ge, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afo = phi i64 [ %i.afl, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ge ] ; 3 uses
  %i.afp = icmp sgt i64 %i.afo, -1
  tail call void @llvm.assume(i1 %i.afp), !noalias !70550
  %i.afq = load ptr, ptr %i.afi, align 8, !alias.scope !71308, !noalias !71307, !nonnull !28, !noundef !28
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 %i.afo
  store i8 125, ptr %i.afr, align 1, !noalias !71309
  %i.afs = add nuw i64 %i.afo, 1
  store i64 %i.afs, ptr %i.afc, align 8, !alias.scope !71308, !noalias !71307
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcd33bbe6b5a8e96dE.exit.i.i.i.i.i"

bb.gf:                                            ; preds = %bb.gc, %.split13.i.i.i.i.i.i.i.i.i.i.i
  %i.aft = phi i64 [ %i.aez, %.split13.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gc ] ; 3 uses
  %i.afu = icmp sgt i64 %i.aft, -1
  tail call void @llvm.assume(i1 %i.afu), !noalias !70550
  %i.afv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.afw = load ptr, ptr %i.afv, align 8, !alias.scope !71289, !noalias !71288, !nonnull !28, !noundef !28
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.aft
  store i8 123, ptr %i.afx, align 1, !noalias !71310
  %i.afy = add nuw i64 %i.aft, 1
  store i64 %i.afy, ptr %i.aey, align 8, !alias.scope !71289, !noalias !71288
  store ptr %.pre76.pre79.pre83.pre87.pre.pre.i.i.i.i.i, ptr %i.j, align 8, !noalias !71278
  %i.afz = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i8 1, ptr %i.afz, align 8, !noalias !71278
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1102, i64 noundef 14, i8 %i.df)
  %.pr.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.afz, align 8, !noalias !71278
  %i.aga = load ptr, ptr %i.j, align 8, !noalias !71278, !nonnull !28, !align !35, !noundef !28
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aga, align 8, !noalias !71266 ; 5 uses
  %i.agb = icmp eq i8 %.pr.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.agb, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcd33bbe6b5a8e96dE.exit.i.i.i.i.i", label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i.i.i) ], !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71311), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71312), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71313), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71314), !noalias !70550
  %i.agc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.agd = load i64, ptr %i.agc, align 8, !alias.scope !71315, !noalias !71316, !noundef !28 ; 3 uses
  %i.age = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71315, !noalias !71316, !noundef !28
  %i.agf = icmp eq i64 %i.age, %i.agd
  br i1 %i.agf, label %bb.gh, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.gh:                                            ; preds = %bb.gg
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.agd, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71316
  %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agc, align 8, !alias.scope !71317, !noalias !71316
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gh, %bb.gg
  %i.agg = phi i64 [ %i.agd, %bb.gg ], [ %.pre.i.i.i.i.i.i.i.i19.i.i.i.i.i.i.i.i.i.i.i, %bb.gh ] ; 3 uses
  %i.agh = icmp sgt i64 %i.agg, -1
  tail call void @llvm.assume(i1 %i.agh), !noalias !70550
  %i.agi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !alias.scope !71317, !noalias !71316, !nonnull !28, !noundef !28
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agg
  store i8 125, ptr %i.agk, align 1, !noalias !71318
  %i.agl = add nuw i64 %i.agg, 1
  store i64 %i.agl, ptr %i.agc, align 8, !alias.scope !71317, !noalias !71316
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcd33bbe6b5a8e96dE.exit.i.i.i.i.i"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcd33bbe6b5a8e96dE.exit.i.i.i.i.i": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gf, %.thread4.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !71278
  br label %.thread281.i.i.i.i.i

bb.gi:                                            ; preds = %bb.fw
  %i.agm = icmp eq i8 %.pre78.pre81.i.i.i.i.i, 0
  br i1 %i.agm, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit.thread", label %.thread281.i.i.i.i.i

.thread281.i.i.i.i.i:                             ; preds = %bb.gi, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hcd33bbe6b5a8e96dE.exit.i.i.i.i.i", %.thread274.i.i.i.i.i
  %.val.i283.i.i.i.i.i = load ptr, ptr %.pre76.pre79.pre83.pre87.pre.pre.i.i.i.i.i, align 8, !noalias !70777, !nonnull !28, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71319), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71320), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71321), !noalias !70550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71322), !noalias !70550
  %i.agn = getelementptr inbounds nuw i8, ptr %.val.i283.i.i.i.i.i, i64 16 ; 3 uses
  %i.ago = load i64, ptr %i.agn, align 8, !alias.scope !71323, !noalias !71324, !noundef !28 ; 3 uses
  %i.agp = load i64, ptr %.val.i283.i.i.i.i.i, align 8, !range !29, !alias.scope !71323, !noalias !71324, !noundef !28
  %i.agq = icmp eq i64 %i.agp, %i.ago
  br i1 %i.agq, label %bb.gj, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i, !prof !30

bb.gj:                                            ; preds = %.thread281.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i283.i.i.i.i.i, i64 noundef %i.ago, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71324
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.agn, align 8, !alias.scope !71325, !noalias !71324
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i: ; preds = %bb.gj, %.thread281.i.i.i.i.i
  %i.agr = phi i64 [ %i.ago, %.thread281.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gj ] ; 3 uses
  %i.ags = icmp sgt i64 %i.agr, -1
  tail call void @llvm.assume(i1 %i.ags), !noalias !70550
  %i.agt = getelementptr inbounds nuw i8, ptr %.val.i283.i.i.i.i.i, i64 8
  %i.agu = load ptr, ptr %i.agt, align 8, !alias.scope !71325, !noalias !71324, !nonnull !28, !noundef !28
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.agr
  store i8 125, ptr %i.agv, align 1, !noalias !71326
  %i.agw = add nuw i64 %i.agr, 1
  store i64 %i.agw, ptr %i.agn, align 8, !alias.scope !71325, !noalias !71324
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit.thread"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit.thread": ; preds = %bb.gi, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !70552
  br label %bb.gk

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit": ; preds = %bb.bg, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5f9e8b3709a8126bE.exit.i.i.i.i.i.i", %bb.cy
  %.sroa.0.0.i.i.i.ph.i.i.i = phi ptr [ %i.mc, %bb.bg ], [ %i.sp, %bb.cy ], [ %.sroa.0.0.i.i.i.ph.i.i.i.i.i.i.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h5f9e8b3709a8126bE.exit.i.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !70552
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit"

bb.gk:                                            ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit", %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.thread", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit.thread"
  %i.agx = phi ptr [ %i.bj, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit.thread" ], [ %i.ay, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.thread" ], [ %i.as, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit" ] ; 7 uses
  br i1 %.not48, label %bb.gl, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit.thread"

bb.gl:                                            ; preds = %bb.gk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71329)
  %i.agy = load ptr, ptr %i.r, align 8, !alias.scope !71330, !noalias !71331, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.agz = load i8, ptr %i.agx, align 8, !range !42, !alias.scope !71330, !noalias !71331, !noundef !28
  %i.aha = icmp eq i8 %i.agz, 1
  %.val.i.i.i66 = load ptr, ptr %i.agy, align 8, !noalias !71332 ; 6 uses
  br i1 %i.aha, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i69", label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i66) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71336)
  %i.ahb = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 16 ; 3 uses
  %i.ahc = load i64, ptr %i.ahb, align 8, !alias.scope !71337, !noalias !71338, !noundef !28 ; 3 uses
  %i.ahd = load i64, ptr %.val.i.i.i66, align 8, !range !29, !alias.scope !71337, !noalias !71338, !noundef !28
  %i.ahe = icmp eq i64 %i.ahd, %i.ahc
  br i1 %i.ahe, label %bb.gn, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i67", !prof !30

bb.gn:                                            ; preds = %bb.gm
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i66, i64 noundef %i.ahc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71338
  %.pre.i.i.i.i.i.i.i.i.i78 = load i64, ptr %i.ahb, align 8, !alias.scope !71339, !noalias !71338
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i67"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i67": ; preds = %bb.gn, %bb.gm
  %i.ahf = phi i64 [ %i.ahc, %bb.gm ], [ %.pre.i.i.i.i.i.i.i.i.i78, %bb.gn ] ; 3 uses
  %i.ahg = icmp sgt i64 %i.ahf, -1
  tail call void @llvm.assume(i1 %i.ahg)
  %i.ahh = getelementptr inbounds nuw i8, ptr %.val.i.i.i66, i64 8
  %i.ahi = load ptr, ptr %i.ahh, align 8, !alias.scope !71339, !noalias !71338, !nonnull !28, !noundef !28
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahf
  store i8 44, ptr %i.ahj, align 1, !noalias !71340
  %i.ahk = add nuw i64 %i.ahf, 1
  store i64 %i.ahk, ptr %i.ahb, align 8, !alias.scope !71339, !noalias !71338
  %.val9.pre.i.i.i68 = load ptr, ptr %i.agy, align 8, !noalias !71332
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i69"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i69": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i67", %bb.gl
  %.val9.i.i.i70 = phi ptr [ %.val.i.i.i66, %bb.gl ], [ %.val9.pre.i.i.i68, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i67" ]
  store i8 2, ptr %i.agx, align 8, !alias.scope !71330, !noalias !71331
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i70, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @492, i64 noundef 12)
  %.val.i4.i.i71 = load ptr, ptr %i.agy, align 8, !noalias !71341, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71345)
  %i.ahl = getelementptr inbounds nuw i8, ptr %.val.i4.i.i71, i64 16 ; 3 uses
  %i.ahm = load i64, ptr %i.ahl, align 8, !alias.scope !71346, !noalias !71347, !noundef !28 ; 3 uses
  %i.ahn = load i64, ptr %.val.i4.i.i71, align 8, !range !29, !alias.scope !71346, !noalias !71347, !noundef !28
  %i.aho = icmp eq i64 %i.ahn, %i.ahm
  br i1 %i.aho, label %bb.go, label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hdfcec1628aff8186E.exit.i.i.i", !prof !30

bb.go:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i69"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i71, i64 noundef %i.ahm, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71347
  %.pre.i.i.i.i.i.i.i5.i.i77 = load i64, ptr %i.ahl, align 8, !alias.scope !71348, !noalias !71347
  br label %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hdfcec1628aff8186E.exit.i.i.i"

"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hdfcec1628aff8186E.exit.i.i.i": ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i69", %bb.go
  %i.ahp = phi i64 [ %i.ahm, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i69" ], [ %.pre.i.i.i.i.i.i.i5.i.i77, %bb.go ] ; 3 uses
  %i.ahq = icmp sgt i64 %i.ahp, -1
  tail call void @llvm.assume(i1 %i.ahq)
  %i.ahr = getelementptr inbounds nuw i8, ptr %.val.i4.i.i71, i64 8
  %i.ahs = load ptr, ptr %i.ahr, align 8, !alias.scope !71348, !noalias !71347, !nonnull !28, !noundef !28
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahp
  store i8 58, ptr %i.aht, align 1, !noalias !71349
  %i.ahu = add nuw i64 %i.ahp, 1
  store i64 %i.ahu, ptr %i.ahl, align 8, !alias.scope !71348, !noalias !71347
  %i.ahv = tail call fastcc noundef align 8 ptr @"_ZN9lsp_types1_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentClientCapabilities$GT$9serialize17h29ee3bea61d8554fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(584) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agy), !noalias !71350 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ahv, null
  br i1 %.not.i.i.i, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit.thread", label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit.thread": ; preds = %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hdfcec1628aff8186E.exit.i.i.i", %bb.gk
  br i1 %.not49, label %bb.gp, label %bb.id

bb.gp:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71355)
  %i.ahw = load ptr, ptr %i.r, align 8, !alias.scope !71356, !noalias !71357, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.ahx = load i8, ptr %i.agx, align 8, !range !42, !alias.scope !71356, !noalias !71357, !noundef !28
  %i.ahy = icmp eq i8 %i.ahx, 1
  %.val.i.i.i79 = load ptr, ptr %i.ahw, align 8, !noalias !71358 ; 6 uses
  br i1 %i.ahy, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i82", label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i79) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71362)
  %i.ahz = getelementptr inbounds nuw i8, ptr %.val.i.i.i79, i64 16 ; 3 uses
  %i.aia = load i64, ptr %i.ahz, align 8, !alias.scope !71363, !noalias !71364, !noundef !28 ; 3 uses
  %i.aib = load i64, ptr %.val.i.i.i79, align 8, !range !29, !alias.scope !71363, !noalias !71364, !noundef !28
  %i.aic = icmp eq i64 %i.aib, %i.aia
  br i1 %i.aic, label %bb.gr, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i80", !prof !30

bb.gr:                                            ; preds = %bb.gq
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i79, i64 noundef %i.aia, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71364
  %.pre.i.i.i.i.i.i.i.i.i133 = load i64, ptr %i.ahz, align 8, !alias.scope !71365, !noalias !71364
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i80"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i80": ; preds = %bb.gr, %bb.gq
  %i.aid = phi i64 [ %i.aia, %bb.gq ], [ %.pre.i.i.i.i.i.i.i.i.i133, %bb.gr ] ; 3 uses
  %i.aie = icmp sgt i64 %i.aid, -1
  tail call void @llvm.assume(i1 %i.aie)
  %i.aif = getelementptr inbounds nuw i8, ptr %.val.i.i.i79, i64 8
  %i.aig = load ptr, ptr %i.aif, align 8, !alias.scope !71365, !noalias !71364, !nonnull !28, !noundef !28
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 %i.aid
  store i8 44, ptr %i.aih, align 1, !noalias !71366
  %i.aii = add nuw i64 %i.aid, 1
  store i64 %i.aii, ptr %i.ahz, align 8, !alias.scope !71365, !noalias !71364
  %.val9.pre.i.i.i81 = load ptr, ptr %i.ahw, align 8, !noalias !71358
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i82"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i82": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i80", %bb.gp
  %.val9.i.i.i83 = phi ptr [ %.val.i.i.i79, %bb.gp ], [ %.val9.pre.i.i.i81, %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i80" ]
  store i8 2, ptr %i.agx, align 8, !alias.scope !71356, !noalias !71357
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i.i.i83, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1166, i64 noundef 6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71367)
  %.val.i4.i.i84 = load ptr, ptr %i.ahw, align 8, !noalias !71368, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71372)
  %i.aij = getelementptr inbounds nuw i8, ptr %.val.i4.i.i84, i64 16 ; 3 uses
  %i.aik = load i64, ptr %i.aij, align 8, !alias.scope !71373, !noalias !71374, !noundef !28 ; 3 uses
  %i.ail = load i64, ptr %.val.i4.i.i84, align 8, !range !29, !alias.scope !71373, !noalias !71374, !noundef !28
  %i.aim = icmp eq i64 %i.ail, %i.aik
  br i1 %i.aim, label %bb.gs, label %bb.gt, !prof !30

bb.gs:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i82"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i84, i64 noundef %i.aik, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71374
  %.pre.i.i.i.i.i.i.i5.i.i132 = load i64, ptr %i.aij, align 8, !alias.scope !71375, !noalias !71374
  br label %bb.gt

bb.gt:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i82", %bb.gs
  %i.ain = phi i64 [ %i.aik, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i82" ], [ %.pre.i.i.i.i.i.i.i5.i.i132, %bb.gs ] ; 3 uses
  %i.aio = icmp sgt i64 %i.ain, -1
  tail call void @llvm.assume(i1 %i.aio)
  %i.aip = getelementptr inbounds nuw i8, ptr %.val.i4.i.i84, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !alias.scope !71375, !noalias !71374, !nonnull !28, !noundef !28
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 %i.ain
  store i8 58, ptr %i.air, align 1, !noalias !71376
  %i.ais = add nuw i64 %i.ain, 1
  store i64 %i.ais, ptr %i.aij, align 8, !alias.scope !71375, !noalias !71374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !71383
  %.not.i.i.i.i.i.i87 = icmp ne i8 %i.x, 2        ; 2 uses
  %..i.i.i.i.i.i88 = zext i1 %.not.i.i.i.i.i.i87 to i64
  %i.ait = getelementptr inbounds nuw i8, ptr %0, i64 930
  %i.aiu = load i8, ptr %i.ait, align 2, !range !81, !alias.scope !71384, !noalias !71385, !noundef !28 ; 4 uses
  %.not26.i.i.i.i.i.i = icmp ne i8 %i.aiu, 4      ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i = zext i1 %.not26.i.i.i.i.i.i to i64
  %i.aiv = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i, %..i.i.i.i.i.i88
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 929
  %i.aix = load i8, ptr %i.aiw, align 1, !range !42, !alias.scope !71384, !noalias !71385, !noundef !28 ; 2 uses
  %.not27.i.i.i.i.i.i = icmp ne i8 %i.aix, 2      ; 2 uses
  %.sroa.05.0.i.i.i.i.i.i89 = zext i1 %.not27.i.i.i.i.i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71387)
  %.val.i.i.i.i.i.i.i.i90 = load ptr, ptr %i.ahw, align 8, !alias.scope !71388, !noalias !71389, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71393)
  %i.aiy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i90, i64 16 ; 5 uses
  %i.aiz = load i64, ptr %i.aiy, align 8, !alias.scope !71394, !noalias !71395, !noundef !28 ; 3 uses
  %i.aja = load i64, ptr %.val.i.i.i.i.i.i.i.i90, align 8, !range !29, !alias.scope !71394, !noalias !71395, !noundef !28
  %i.ajb = icmp eq i64 %i.aja, %i.aiz
  br i1 %i.ajb, label %bb.gu, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i91, !prof !30

bb.gu:                                            ; preds = %bb.gt
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i90, i64 noundef %i.aiz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71396
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i129 = load i64, ptr %i.aiy, align 8, !alias.scope !71397, !noalias !71396
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i91

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i91: ; preds = %bb.gu, %bb.gt
  %i.ajc = phi i64 [ %i.aiz, %bb.gt ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i129, %bb.gu ] ; 3 uses
  %i.ajd = icmp sgt i64 %i.ajc, -1
  tail call void @llvm.assume(i1 %i.ajd)
  %i.aje = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i90, i64 8 ; 2 uses
  %i.ajf = load ptr, ptr %i.aje, align 8, !alias.scope !71397, !noalias !71396, !nonnull !28, !noundef !28
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 %i.ajc
  store i8 123, ptr %i.ajg, align 1, !noalias !71398
  %i.ajh = add nuw i64 %i.ajc, 1                  ; 4 uses
  store i64 %i.ajh, ptr %i.aiy, align 8, !alias.scope !71397, !noalias !71396
  %i.aji = or i64 %i.aiv, %.sroa.05.0.i.i.i.i.i.i89
  %i.ajj = icmp eq i64 %i.aji, 0
  br i1 %i.ajj, label %bb.gv, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i.i92"

bb.gv:                                            ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71402)
  %i.ajk = load i64, ptr %.val.i.i.i.i.i.i.i.i90, align 8, !range !29, !alias.scope !71403, !noalias !71404, !noundef !28
  %i.ajl = icmp eq i64 %i.ajk, %i.ajh
  br i1 %i.ajl, label %bb.gw, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i127, !prof !30

bb.gw:                                            ; preds = %bb.gv
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i90, i64 noundef %i.ajh, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71404
  %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i128 = load i64, ptr %i.aiy, align 8, !alias.scope !71405, !noalias !71404
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i127

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i127: ; preds = %bb.gw, %bb.gv
  %i.ajm = phi i64 [ %i.ajh, %bb.gv ], [ %.pre.i.i.i.i.i.i11.i.i.i.i.i.i.i.i128, %bb.gw ] ; 3 uses
  %i.ajn = icmp sgt i64 %i.ajm, -1
  tail call void @llvm.assume(i1 %i.ajn)
  %i.ajo = load ptr, ptr %i.aje, align 8, !alias.scope !71405, !noalias !71404, !nonnull !28, !noundef !28
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 %i.ajm
  store i8 125, ptr %i.ajp, align 1, !noalias !71406
  %i.ajq = add nuw i64 %i.ajm, 1
  store i64 %i.ajq, ptr %i.aiy, align 8, !alias.scope !71405, !noalias !71404
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i.i92"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i.i92": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i127, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i91
  %.sink.i.i.i.i.i.i.i.i93 = phi i8 [ 0, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i.i.i.i.i.i.i127 ], [ 1, %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i.i.i.i.i.i.i91 ] ; 2 uses
  store ptr %i.ahw, ptr %i.f, align 8, !noalias !71383
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i8 %.sink.i.i.i.i.i.i.i.i93, ptr %i.ajr, align 8, !noalias !71383
  br i1 %.not.i.i.i.i.i.i87, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i.i92"
  call fastcc void @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1dc3500615032f06E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @505, i64 noundef 16, i8 %i.x)
  %.pre.pre.pre.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !71383
  %.pre56.pre.pre.i.i.i.i.i.i = load i8, ptr %i.ajr, align 8, !range !42, !noalias !71383
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i.i92"
  %.pre56.pre.i.i.i.i.i.i = phi i8 [ %.sink.i.i.i.i.i.i.i.i93, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i.i92" ], [ %.pre56.pre.pre.i.i.i.i.i.i, %bb.gx ] ; 2 uses
  %.pre.pre.i.i.i.i.i.i = phi ptr [ %i.ahw, %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit.i.i.i.i.i.i92" ], [ %.pre.pre.pre.i.i.i.i.i.i, %bb.gx ] ; 13 uses
  br i1 %.not26.i.i.i.i.i.i, label %bb.gz, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h0af888e41d1836e0E.exit.i.i.i.i.i.i"

bb.gz:                                            ; preds = %bb.gy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71409)
  %i.ajs = icmp eq i8 %.pre56.pre.i.i.i.i.i.i, 1
  %.val.i.i.i.i.i.i.i.i.i95 = load ptr, ptr %.pre.pre.i.i.i.i.i.i, align 8, !noalias !71410 ; 6 uses
  br i1 %i.ajs, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i.i.i.i.i.i.i98", label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i95) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71414)
  %i.ajt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i95, i64 16 ; 3 uses
  %i.aju = load i64, ptr %i.ajt, align 8, !alias.scope !71415, !noalias !71416, !noundef !28 ; 3 uses
  %i.ajv = load i64, ptr %.val.i.i.i.i.i.i.i.i.i95, align 8, !range !29, !alias.scope !71415, !noalias !71416, !noundef !28
  %i.ajw = icmp eq i64 %i.ajv, %i.aju
  br i1 %i.ajw, label %bb.hb, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i96", !prof !30

bb.hb:                                            ; preds = %bb.ha
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.i.i95, i64 noundef %i.aju, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71416
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i126 = load i64, ptr %i.ajt, align 8, !alias.scope !71417, !noalias !71416
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i96"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i.i.i.i.i.i.i96": ; preds = %bb.hb, %bb.ha
  %i.ajx = phi i64 [ %i.aju, %bb.ha ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i126, %bb.hb ] ; 3 uses
  %i.ajy = icmp sgt i64 %i.ajx, -1
end_hunk_14
begin_hunk_15_@"_ZN9lsp_types1_86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..ClientCapabilities$GT$9serialize17h2bd87c333e64325dE":bb.a
  %i.ayd = load i64, ptr %.val.i.i.i82.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71812, !noalias !71813, !noundef !28
  %i.aye = icmp eq i64 %i.ayd, %i.ayc
  br i1 %i.aye, label %bb.jy, label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i83.i.i.i.i.i.i", !prof !30

bb.jy:                                            ; preds = %bb.jx
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i.i82.i.i.i.i.i.i, i64 noundef %i.ayc, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71813
  %.pre.i.i.i.i.i.i.i.i.i94.i.i.i.i.i.i = load i64, ptr %i.ayb, align 8, !alias.scope !71814, !noalias !71813
  br label %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i83.i.i.i.i.i.i"

"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i83.i.i.i.i.i.i": ; preds = %bb.jy, %bb.jx
  %i.ayf = phi i64 [ %i.ayc, %bb.jx ], [ %.pre.i.i.i.i.i.i.i.i.i94.i.i.i.i.i.i, %bb.jy ] ; 3 uses
  %i.ayg = icmp sgt i64 %i.ayf, -1
  tail call void @llvm.assume(i1 %i.ayg)
  %i.ayh = getelementptr inbounds nuw i8, ptr %.val.i.i.i82.i.i.i.i.i.i, i64 8
  %i.ayi = load ptr, ptr %i.ayh, align 8, !alias.scope !71814, !noalias !71813, !nonnull !28, !noundef !28
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayi, i64 %i.ayf
  store i8 44, ptr %i.ayj, align 1, !noalias !71815
  %i.ayk = add nuw i64 %i.ayf, 1
  store i64 %i.ayk, ptr %i.ayb, align 8, !alias.scope !71814, !noalias !71813
  br label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i85.i.i.i.i.i.i"

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i85.i.i.i.i.i.i": ; preds = %"_ZN3std2io5impls58_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$W$GT$9write_all17h4ab301283a333dfdE.exit.i.i.i.i83.i.i.i.i.i.i", %.thread188.i.i.i.i.i.i
  %.val.i.i.i82194.i.i.i.i.i.i = load ptr, ptr %i.aps, align 8, !alias.scope !71624, !noalias !71816
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val.i.i.i82194.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1178, i64 noundef 17)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71817)
  %.val.i4.i.i87.i.i.i.i.i.i = load ptr, ptr %i.aps, align 8, !alias.scope !71624, !noalias !71818, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71822)
  %i.ayl = getelementptr inbounds nuw i8, ptr %.val.i4.i.i87.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.aym = load i64, ptr %i.ayl, align 8, !alias.scope !71823, !noalias !71824, !noundef !28 ; 3 uses
  %i.ayn = load i64, ptr %.val.i4.i.i87.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71823, !noalias !71824, !noundef !28
  %i.ayo = icmp eq i64 %i.ayn, %i.aym
  br i1 %i.ayo, label %bb.jz, label %bb.ka, !prof !30

bb.jz:                                            ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i85.i.i.i.i.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4.i.i87.i.i.i.i.i.i, i64 noundef %i.aym, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71824
  %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i153 = load i64, ptr %i.ayl, align 8, !alias.scope !71825, !noalias !71824
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i85.i.i.i.i.i.i"
  %i.ayp = phi i64 [ %i.aym, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$13serialize_key17h989e5e6ed8aefeb7E.exit.i.i85.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i6.i.i.i.i.i.i.i.i153, %bb.jz ] ; 3 uses
  %i.ayq = icmp sgt i64 %i.ayp, -1
  tail call void @llvm.assume(i1 %i.ayq)
  %i.ayr = getelementptr inbounds nuw i8, ptr %.val.i4.i.i87.i.i.i.i.i.i, i64 8
  %i.ays = load ptr, ptr %i.ayr, align 8, !alias.scope !71825, !noalias !71824, !nonnull !28, !noundef !28
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 %i.ayp
  store i8 58, ptr %i.ayt, align 1, !noalias !71826
  %i.ayu = add nuw i64 %i.ayp, 1
  store i64 %i.ayu, ptr %i.ayl, align 8, !alias.scope !71825, !noalias !71824
  %.val9.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.aps, align 8, !alias.scope !71624, !noalias !71818, !nonnull !28, !noundef !28 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71827)
  %i.ayv = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ayv, align 8, !alias.scope !71828, !noalias !71829, !nonnull !28, !noundef !28 ; 4 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %0, i64 752
  %.val3.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ayw, align 8, !alias.scope !71828, !noalias !71829, !noundef !28 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.val3.i.i.i.i.i.i.i.i.i.i, 24
  %i.ayx = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71830)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71833)
  %i.ayy = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i, i64 16 ; 9 uses
  %i.ayz = load i64, ptr %i.ayy, align 8, !alias.scope !71834, !noalias !71835, !noundef !28 ; 3 uses
  %i.aza = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71834, !noalias !71835, !noundef !28
  %i.azb = icmp eq i64 %i.aza, %i.ayz
  br i1 %i.azb, label %bb.kb, label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !30

bb.kb:                                            ; preds = %bb.ka
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.ayz, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71835
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i = load i64, ptr %i.ayy, align 8, !alias.scope !71836, !noalias !71835
  br label %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kb, %bb.ka
  %i.azc = phi i64 [ %i.ayz, %bb.ka ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i91.i.i.i.i.i.i, %bb.kb ] ; 3 uses
  %i.azd = icmp sgt i64 %i.azc, -1
  tail call void @llvm.assume(i1 %i.azd)
  %i.aze = getelementptr inbounds nuw i8, ptr %.val9.i5.i.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %i.azf = load ptr, ptr %i.aze, align 8, !alias.scope !71836, !noalias !71835, !nonnull !28, !noundef !28
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azf, i64 %i.azc
  store i8 91, ptr %i.azg, align 1, !noalias !71837
  %i.azh = add nuw i64 %i.azc, 1                  ; 4 uses
  store i64 %i.azh, ptr %i.ayy, align 8, !alias.scope !71836, !noalias !71835
  %i.azi = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.azi, label %bb.kc, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kc:                                            ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azj = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71838, !noalias !71839, !noundef !28
  %i.azk = icmp eq i64 %i.azj, %i.azh
  br i1 %i.azk, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.thread132.i.i.i.i.i.i, !prof !30

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN10serde_json3ser9Formatter11begin_array17hf03f0e5cad3cbeb7E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azl = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val8.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.azl, align 8, !noalias !71840, !nonnull !28, !noundef !28
  %i.azm = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 16
  %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.azm, align 8, !noalias !71840
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val9.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.azn = icmp eq i64 %.val3.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.azn, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.peel.next.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 24
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4edfc71e951edd7dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.peel.next.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azp = phi ptr [ %i.azq, %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4edfc71e951edd7dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.azo, %.peel.next.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 24 ; 2 uses
  %i.azr = getelementptr i8, ptr %i.azp, i64 8
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.azr, align 8, !noalias !71840 ; 2 uses
  %i.azs = getelementptr i8, ptr %i.azp, i64 16
  %.val9.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i = load i64, ptr %i.azs, align 8, !noalias !71840
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71842)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71844)
  %i.azt = load i64, ptr %i.ayy, align 8, !alias.scope !71845, !noalias !71846, !noundef !28 ; 3 uses
  %i.azu = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71845, !noalias !71846, !noundef !28
  %i.azv = icmp eq i64 %i.azu, %i.azt
  br i1 %i.azv, label %bb.kd, label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4edfc71e951edd7dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !prof !30

bb.kd:                                            ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %i.azt, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71846
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ayy, align 8, !alias.scope !71847, !noalias !71846
  br label %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4edfc71e951edd7dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4edfc71e951edd7dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.kd, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.azw = phi i64 [ %i.azt, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kd ] ; 3 uses
  %i.azx = icmp sgt i64 %i.azw, -1
  tail call void @llvm.assume(i1 %i.azx)
  %i.azy = load ptr, ptr %i.aze, align 8, !alias.scope !71847, !noalias !71846, !nonnull !28, !noundef !28
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 %i.azw
  store i8 44, ptr %i.azz, align 1, !noalias !71848
  %i.baa = add nuw i64 %i.azw, 1
  store i64 %i.baa, ptr %i.ayy, align 8, !alias.scope !71847, !noalias !71846
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  tail call fastcc void @"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17hf58c26c162f17e29E"(ptr nonnull %.val9.i5.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val9.i.i.i.i.i.i.i.i.i90.i.i.i.i.i.i)
  %i.bab = icmp eq ptr %i.azq, %i.ayx
  br i1 %i.bab, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !70456

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %"_ZN4core4iter6traits8iterator8Iterator12try_for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17h4edfc71e951edd7dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bac = load i64, ptr %i.ayy, align 8, !alias.scope !71849, !noalias !71850, !noundef !28 ; 3 uses
  %i.bad = load i64, ptr %.val9.i5.i.i.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71849, !noalias !71850, !noundef !28
  %i.bae = icmp eq i64 %i.bad, %i.bac
  br i1 %i.bae, label %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", label %.thread132.i.i.i.i.i.i, !prof !30

"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kc
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i152 = phi i64 [ %i.azh, %bb.kc ], [ %i.bac, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val9.i5.i.i.i.i.i.i.i.i, i64 noundef %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i152, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71851
  %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ayy, align 8, !noalias !71851
  br label %.thread132.i.i.i.i.i.i

.thread132.i.i.i.i.i.i:                           ; preds = %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kc
  %.sink29.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bac, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.azh, %bb.kc ], [ %.pre.i.i.i.i.i.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeSeq$GT$3end17h918aa763fb13009fE.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.baf = icmp sgt i64 %.sink29.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.baf)
  %i.bag = load ptr, ptr %i.aze, align 8, !noalias !71851, !nonnull !28, !noundef !28
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 %.sink29.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 93, ptr %i.bah, align 1, !noalias !71851
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw i64 %.sink29.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  store i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ayy, align 8, !noalias !71851
  br label %.thread195.i.i.i.i.i.i

bb.ke:                                            ; preds = %bb.jw
  %i.bai = icmp eq i8 %.sroa.9.2.i.i.i.i.i.i, 0
  br i1 %i.bai, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h43cdcb1e12291d8fE.exit.thread", label %.thread195.i.i.i.i.i.i

.thread195.i.i.i.i.i.i:                           ; preds = %bb.ke, %.thread132.i.i.i.i.i.i, %.thread188.i.i.i.i.i.i
  %.val135.i.i.i.i.i.i = load ptr, ptr %i.aps, align 8, !alias.scope !71624, !noalias !71852, !nonnull !28, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71856)
  %i.baj = getelementptr inbounds nuw i8, ptr %.val135.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.bak = load i64, ptr %i.baj, align 8, !alias.scope !71857, !noalias !71858, !noundef !28 ; 3 uses
  %i.bal = load i64, ptr %.val135.i.i.i.i.i.i, align 8, !range !29, !alias.scope !71857, !noalias !71858, !noundef !28
  %i.bam = icmp eq i64 %i.bal, %i.bak
  br i1 %i.bam, label %bb.kf, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i95.i.i.i.i.i.i, !prof !30

bb.kf:                                            ; preds = %.thread195.i.i.i.i.i.i
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val135.i.i.i.i.i.i, i64 noundef %i.bak, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71858
  %.pre.i.i.i.i.i.i.i.i96.i.i.i.i.i.i = load i64, ptr %i.baj, align 8, !alias.scope !71859, !noalias !71858
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i95.i.i.i.i.i.i

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i95.i.i.i.i.i.i: ; preds = %bb.kf, %.thread195.i.i.i.i.i.i
  %i.ban = phi i64 [ %i.bak, %.thread195.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i96.i.i.i.i.i.i, %bb.kf ] ; 3 uses
  %i.bao = icmp sgt i64 %i.ban, -1
  tail call void @llvm.assume(i1 %i.bao)
  %i.bap = getelementptr inbounds nuw i8, ptr %.val135.i.i.i.i.i.i, i64 8
  %i.baq = load ptr, ptr %i.bap, align 8, !alias.scope !71859, !noalias !71858, !nonnull !28, !noundef !28
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 %i.ban
  store i8 125, ptr %i.bar, align 1, !noalias !71860
  %i.bas = add nuw i64 %i.ban, 1
  store i64 %i.bas, ptr %i.baj, align 8, !alias.scope !71859, !noalias !71858
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h43cdcb1e12291d8fE.exit.thread"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h43cdcb1e12291d8fE.exit.thread": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i95.i.i.i.i.i.i, %bb.ke, %bb.id
  br i1 %.not51, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h43cdcb1e12291d8fE.exit.thread"
  %i.bat = call fastcc noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9b2a9c37623a8d40E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @547, i64 noundef 12, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac) ; 2 uses
  %.not64 = icmp eq ptr %i.bat, null
  br i1 %.not64, label %bb.kh, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit"

bb.kh:                                            ; preds = %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17h43cdcb1e12291d8fE.exit.thread", %bb.kg
  %i.bau = load ptr, ptr %i.r, align 8, !nonnull !28, !align !35, !noundef !28
  %i.bav = load i8, ptr %i.agx, align 8, !range !42, !noundef !28
  %.val = load ptr, ptr %i.bau, align 8           ; 5 uses
  %i.baw = icmp eq i8 %i.bav, 0
  br i1 %i.baw, label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit", label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71864)
  %i.bax = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.bay = load i64, ptr %i.bax, align 8, !alias.scope !71865, !noalias !71866, !noundef !28 ; 3 uses
  %i.baz = load i64, ptr %.val, align 8, !range !29, !alias.scope !71865, !noalias !71866, !noundef !28
  %i.bba = icmp eq i64 %i.baz, %i.bay
  br i1 %i.bba, label %bb.kj, label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i179, !prof !30

bb.kj:                                            ; preds = %bb.ki
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.bay, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !71866
  %.pre.i.i.i.i.i.i.i.i180 = load i64, ptr %i.bax, align 8, !alias.scope !71867, !noalias !71866
  br label %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i179

_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i179: ; preds = %bb.kj, %bb.ki
  %i.bbb = phi i64 [ %i.bay, %bb.ki ], [ %.pre.i.i.i.i.i.i.i.i180, %bb.kj ] ; 3 uses
  %i.bbc = icmp sgt i64 %i.bbb, -1
  tail call void @llvm.assume(i1 %i.bbc)
  %i.bbd = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bbe = load ptr, ptr %i.bbd, align 8, !alias.scope !71867, !noalias !71866, !nonnull !28, !noundef !28
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bbb
  store i8 125, ptr %i.bbf, align 1, !noalias !71867
  %i.bbg = add nuw i64 %i.bbb, 1
  store i64 %i.bbg, ptr %i.bax, align 8, !alias.scope !71867, !noalias !71866
  br label %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit"

"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17he1c772983012d6b4E.exit": ; preds = %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i179, %bb.kh, %bb.kg, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit", %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hdfcec1628aff8186E.exit.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc2e20c2ba825114bE.exit.i.i.i.i.i.i", %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb9edfe9a39e138c5E.exit.i.i.i.i.i.i"
  %.sroa.0.0 = phi ptr [ %i.axq, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hb9edfe9a39e138c5E.exit.i.i.i.i.i.i" ], [ %i.bat, %bb.kg ], [ %i.ahv, %"_ZN10serde_core3ser5impls86_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$9serialize17hdfcec1628aff8186E.exit.i.i.i" ], [ %.sroa.0.0.i.i.i.ph.i.i.i, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc752c7aa2bbe4931E.exit" ], [ %i.aux, %"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17hc2e20c2ba825114bE.exit.i.i.i.i.i.i" ], [ null, %bb.kh ], [ null, %_ZN10serde_json3ser9Formatter10end_object17h325f3d47e1b1e2e2E.exit.i.i179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN9lsp_types1_98_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$lsp_types..TextDocumentClientCapabilities$GT$9serialize17h29ee3bea61d8554fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(584) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 1                ; 9 uses
  %i.h = alloca [40 x i8], align 1                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 16 uses
  %i.j = alloca [16 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.n = load i8, ptr %i.m, align 4, !range !69, !noundef !28 ; 3 uses
  %.not = icmp ne i8 %i.n, 3                      ; 3 uses
  %. = zext i1 %.not to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !50, !noundef !28 ; 3 uses
  %.not276 = icmp ne i64 %i.p, -9223372036854775806 ; 2 uses
  %.sroa.05.0 = zext i1 %.not276 to i64
  %i.q = add nuw nsw i64 %.sroa.05.0, %.
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !40, !noundef !28 ; 2 uses
  %.not277 = icmp ne i64 %i.s, -9223372036854775807 ; 2 uses
  %.sroa.06.0 = zext i1 %.not277 to i64
  %i.t = add nuw nsw i64 %i.q, %.sroa.06.0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !50, !noundef !28 ; 3 uses
  %.not278 = icmp ne i64 %i.v, -9223372036854775806 ; 2 uses
  %.sroa.07.0 = zext i1 %.not278 to i64
  %i.w = add nuw nsw i64 %i.t, %.sroa.07.0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.y = load i8, ptr %i.x, align 4, !range !69, !noundef !28 ; 2 uses
  %.not279 = icmp ne i8 %i.y, 3                   ; 2 uses
  %.sroa.08.0 = zext i1 %.not279 to i64
  %i.z = add nuw nsw i64 %i.w, %.sroa.08.0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 565
  %i.ab = load i8, ptr %i.aa, align 1, !range !69, !noundef !28 ; 2 uses
  %.not280 = icmp ne i8 %i.ab, 3                  ; 2 uses
  %.sroa.09.0 = zext i1 %.not280 to i64
  %i.ac = add nuw nsw i64 %i.z, %.sroa.09.0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !40, !noundef !28 ; 2 uses
  %.not281 = icmp ne i64 %i.ae, -9223372036854775807 ; 2 uses
  %.sroa.010.0 = zext i1 %.not281 to i64
  %i.af = add nuw nsw i64 %i.ac, %.sroa.010.0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 566
  %i.ah = load i8, ptr %i.ag, align 2, !range !69, !noundef !28 ; 2 uses
  %.not282 = icmp ne i8 %i.ah, 3                  ; 2 uses
  %.sroa.011.0 = zext i1 %.not282 to i64
  %i.ai = add nuw nsw i64 %i.af, %.sroa.011.0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 567
  %i.ak = load i8, ptr %i.aj, align 1, !range !69, !noundef !28 ; 2 uses
  %.not283 = icmp ne i8 %i.ak, 3                  ; 2 uses
  %.sroa.012.0 = zext i1 %.not283 to i64
  %i.al = add nuw nsw i64 %i.ai, %.sroa.012.0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.an = load i8, ptr %i.am, align 8, !range !69, !noundef !28 ; 2 uses
  %.not284 = icmp ne i8 %i.an, 3                  ; 2 uses
  %.sroa.013.0 = zext i1 %.not284 to i64
  %i.ao = add nuw nsw i64 %i.al, %.sroa.013.0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.aq = load i8, ptr %i.ap, align 8, !range !69, !noundef !28 ; 2 uses
  %.not285 = icmp ne i8 %i.aq, 3                  ; 2 uses
  %.sroa.014.0 = zext i1 %.not285 to i64
  %i.ar = add nuw nsw i64 %i.ao, %.sroa.014.0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 554
  %i.at = load i8, ptr %i.as, align 2, !range !69, !noundef !28 ; 2 uses
  %.not286 = icmp ne i8 %i.at, 3                  ; 2 uses
  %.sroa.015.0 = zext i1 %.not286 to i64
  %i.au = add nuw nsw i64 %i.ar, %.sroa.015.0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.aw = load i8, ptr %i.av, align 4, !range !69, !noundef !28 ; 2 uses
  %.not287 = icmp ne i8 %i.aw, 3                  ; 2 uses
  %.sroa.016.0 = zext i1 %.not287 to i64
  %i.ax = add nuw nsw i64 %i.au, %.sroa.016.0
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 558
  %i.az = load i8, ptr %i.ay, align 2, !range !69, !noundef !28 ; 2 uses
  %.not288 = icmp ne i8 %i.az, 3                  ; 2 uses
  %.sroa.017.0 = zext i1 %.not288 to i64
  %i.ba = add nuw nsw i64 %i.ax, %.sroa.017.0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !40, !noundef !28
  %.not289 = icmp ne i64 %i.bc, -9223372036854775807 ; 2 uses
  %.sroa.018.0 = zext i1 %.not289 to i64
  %i.bd = add nuw nsw i64 %i.ba, %.sroa.018.0
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 569
  %i.bf = load i8, ptr %i.be, align 1, !range !69, !noundef !28 ; 2 uses
  %.not290 = icmp ne i8 %i.bf, 3                  ; 2 uses
  %.sroa.019.0 = zext i1 %.not290 to i64
  %i.bg = add nuw nsw i64 %i.bd, %.sroa.019.0
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bi = load i8, ptr %i.bh, align 8, !range !69, !noundef !28 ; 2 uses
  %.not291 = icmp ne i8 %i.bi, 3                  ; 2 uses
  %.sroa.020.0 = zext i1 %.not291 to i64
  %i.bj = add nuw nsw i64 %i.bg, %.sroa.020.0
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 570
  %i.bl = load i8, ptr %i.bk, align 2, !range !69, !noundef !28 ; 2 uses
  %.not292 = icmp ne i8 %i.bl, 3                  ; 2 uses
  %.sroa.021.0 = zext i1 %.not292 to i64
  %i.bm = add nuw nsw i64 %i.bj, %.sroa.021.0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !range !82, !noundef !28
  %.not293 = icmp ne i32 %i.bo, 2                 ; 2 uses
  %.sroa.022.0 = zext i1 %.not293 to i64
  %i.bp = add nuw nsw i64 %i.bm, %.sroa.022.0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !40, !noundef !28
  %.not294 = icmp ne i64 %i.br, -9223372036854775807 ; 2 uses
  %.sroa.023.0 = zext i1 %.not294 to i64
  %i.bs = add nuw nsw i64 %i.bp, %.sroa.023.0
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !range !50, !noundef !28
  %.not295 = icmp ne i64 %i.bu, -9223372036854775806 ; 2 uses
  %.sroa.024.0 = zext i1 %.not295 to i64
  %i.bv = add nuw nsw i64 %i.bs, %.sroa.024.0
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 571
  %i.bx = load i8, ptr %i.bw, align 1, !range !69, !noundef !28 ; 2 uses
  %.not296 = icmp ne i8 %i.bx, 3                  ; 2 uses
  %.sroa.025.0 = zext i1 %.not296 to i64
  %i.by = add nuw nsw i64 %i.bv, %.sroa.025.0
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.ca = load i8, ptr %i.bz, align 4, !range !69, !noundef !28 ; 2 uses
  %.not297 = icmp ne i8 %i.ca, 3                  ; 2 uses
  %.sroa.026.0 = zext i1 %.not297 to i64
  %i.cb = add nuw nsw i64 %i.by, %.sroa.026.0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.cd = load i8, ptr %i.cc, align 1, !range !69, !noundef !28 ; 2 uses
  %.not298 = icmp ne i8 %i.cd, 3                  ; 2 uses
  %.sroa.027.0 = zext i1 %.not298 to i64
  %i.ce = add nuw nsw i64 %i.cb, %.sroa.027.0
  %i.cf = load i64, ptr %0, align 8, !range !34, !noundef !28
  %.not299 = icmp ne i64 %i.cf, -9223372036854775808 ; 2 uses
  %.sroa.028.0 = zext i1 %.not299 to i64
  %i.cg = add nuw nsw i64 %i.ce, %.sroa.028.0
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 574
  %i.ci = load i8, ptr %i.ch, align 2, !range !69, !noundef !28 ; 2 uses
  %.not300 = icmp ne i8 %i.ci, 3                  ; 2 uses
  %.sroa.029.0 = zext i1 %.not300 to i64
  %i.cj = add nuw nsw i64 %i.cg, %.sroa.029.0
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 575
  %i.cl = load i8, ptr %i.ck, align 1, !range !69, !noundef !28 ; 2 uses
  %.not301 = icmp ne i8 %i.cl, 3                  ; 2 uses
  %.sroa.030.0 = zext i1 %.not301 to i64
  %i.cm = add nuw nsw i64 %i.cj, %.sroa.030.0
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.co = load i8, ptr %i.cn, align 8, !range !69, !noundef !28 ; 2 uses
  %.not302 = icmp ne i8 %i.co, 3                  ; 2 uses
  %.sroa.031.0 = zext i1 %.not302 to i64
  %i.cp = add nuw nsw i64 %i.cm, %.sroa.031.0
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !range !40, !noundef !28
  %.not303 = icmp ne i64 %i.cr, -9223372036854775807 ; 2 uses
  %.sroa.032.0 = zext i1 %.not303 to i64
  %i.cs = add nuw nsw i64 %i.cp, %.sroa.032.0
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 562
  %i.cu = load i8, ptr %i.ct, align 2, !range !69, !noundef !28 ; 2 uses
  %.not304 = icmp ne i8 %i.cu, 3                  ; 2 uses
  %.sroa.033.0 = zext i1 %.not304 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73514)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !73515, !noalias !73516, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73520)
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !73521, !noalias !73522, !noundef !28 ; 3 uses
  %i.cx = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !73521, !noalias !73522, !noundef !28
  %i.cy = icmp eq i64 %i.cx, %i.cw
  br i1 %i.cy, label %bb.b, label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, i64 noundef %i.cw, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !73522
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !73523, !noalias !73522
  br label %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i

_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i: ; preds = %bb.b, %bb.a
  %i.cz = phi i64 [ %i.cw, %bb.a ], [ %.pre.i.i.i.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.da = icmp sgt i64 %i.cz, -1
  tail call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !73523, !noalias !73522, !nonnull !28, !noundef !28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cz
  store i8 123, ptr %i.dd, align 1, !noalias !73524
  %i.de = add nuw i64 %i.cz, 1                    ; 4 uses
  store i64 %i.de, ptr %i.cv, align 8, !alias.scope !73523, !noalias !73522
  %i.df = or i64 %i.cs, %.sroa.033.0
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.c, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$16serialize_struct17hc8bdd57f0e3297a3E.exit"

bb.c:                                             ; preds = %_ZN10serde_json3ser9Formatter12begin_object17hddb70660d5368bc0E.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73528)
  %i.dh = load i64, ptr %.val.i.i, align 8, !range !29, !alias.scope !73529, !noalias !73530, !noundef !28
  %i.di = icmp eq i64 %i.dh, %i.de
end_hunk_15
