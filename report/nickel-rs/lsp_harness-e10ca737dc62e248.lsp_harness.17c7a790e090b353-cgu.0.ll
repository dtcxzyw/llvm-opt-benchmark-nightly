Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN10serde_core2de9MapAccess10next_value17hd04ccf25b8825801E:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5990)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !5990, !noalias !5989, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5992), !noalias !5993
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5994, !noalias !5995, !noundef !28 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !5996, !noalias !5997 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5994, !noalias !5995, !nonnull !28, !align !37, !noundef !28
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5998), !noalias !5993
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5999), !noalias !5993
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !6000, !noundef !28
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !62

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !6001, !noalias !5997
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6002
  store i64 3, ptr %i.a, align 8, !noalias !6002
  %i.n = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !5993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6002
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6002
  store i64 6, ptr %i.b, align 8, !noalias !6002
  %i.o = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !5993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6002
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8, !alias.scope !5989, !noalias !5990
  store i8 6, ptr %0, align 8, !alias.scope !5989, !noalias !5990
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb5fa0667a6a3918bE.exit"

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !6003, !noalias !5993
  tail call fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h530892dafbc2a314E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c), !noalias !5990, !inline_history !5988
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb5fa0667a6a3918bE.exit"

"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hb5fa0667a6a3918bE.exit": ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_ZN10serde_core2de9MapAccess10next_value17hf5c4de7fdf35f4deE(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6146)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !6147, !noalias !6148, !noundef !28 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !6149, !noalias !6150 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !6147, !noalias !6148, !nonnull !28, !align !37, !noundef !28 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6152)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !6153, !noundef !28
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !62

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !6154, !noalias !6150
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6145
  store i64 3, ptr %i.o, align 8, !noalias !6145
  %i.aa = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6145
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6145
  store i64 6, ptr %i.p, align 8, !noalias !6145
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6145
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !6155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6159)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 8 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !6160
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit153.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eo, %bb.bg ] ; 11 uses
  %.promoted.i194.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bg ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.en, %bb.bg ] ; 7 uses
  %.sroa.01.0193.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bg ] ; 3 uses
  %.sroa.8.0192.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.030.0186.i.i.i.i.i, %bb.bg ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6161)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i194.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !6162, !noundef !28 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !6163, !noalias !6164
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit153.i.i.i.i.i, label %bb.f

.loopexit153.i.i.i.i.i:                           ; preds = %bb.bg, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6160
  store i64 5, ptr %i.n, align 8, !noalias !6160
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ah, label %bb.ag, !prof !63

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !6165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6166)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6168)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.j, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !6169, !noundef !28
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !6170, !noalias !6171
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit256.i.i.i.i.i, !prof !54

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6173)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !6174, !noundef !28
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !6175, !noalias !6171
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit256.i.i.i.i.i, !prof !54

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6177)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !6178, !noundef !28
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !6179, !noalias !6171
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit256.i.i.i.i.i, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i.i.i.i": ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6180
  store i64 5, ptr %i.f, align 8, !noalias !6180
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !6181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6180
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

.loopexit256.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6180
  store i64 9, ptr %i.e, align 8, !noalias !6180
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !6181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6180
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !6182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6183)
  %umax.i69.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6185)
  %exitcond.not.i71.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i71.not.i.i.i.i.i, label %bb.p, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i"

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !6186, !noundef !28
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !6187, !noalias !6188
  %.not.i72.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i72.i.i.i.i.i, label %bb.q, label %.loopexit249.i.i.i.i.i, !prof !54

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6190)
  %exitcond.not.i71.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i69.i.i.i.i.i
  br i1 %exitcond.not.i71.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !6191, !noundef !28
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !6192, !noalias !6188
  %.not.i72.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i72.1.i.i.i.i.i, label %bb.s, label %.loopexit249.i.i.i.i.i, !prof !54

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6194)
  %exitcond.not.i71.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i69.i.i.i.i.i
  br i1 %exitcond.not.i71.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !6195, !noundef !28
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !6196, !noalias !6188
  %.not.i72.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i72.2.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit249.i.i.i.i.i, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i74.i.i.i.i.i": ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6197
  store i64 5, ptr %i.d, align 8, !noalias !6197
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !6198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6197
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

.loopexit249.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6197
  store i64 9, ptr %i.c, align 8, !noalias !6197
  %i.bl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !6198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6197
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !6199
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6200)
  %umax.i77.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6202)
  %exitcond.not.i79.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i79.not.i.i.i.i.i, label %bb.v, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i"

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !6203, !noundef !28
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !6204, !noalias !6205
  %.not.i80.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i80.i.i.i.i.i, label %bb.w, label %.loopexit242.i.i.i.i.i, !prof !54

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6207)
  %exitcond.not.i79.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.1.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !6208, !noundef !28
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !6209, !noalias !6205
  %.not.i80.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i80.1.i.i.i.i.i, label %bb.y, label %.loopexit242.i.i.i.i.i, !prof !54

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6211)
  %exitcond.not.i79.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.2.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !6212, !noundef !28
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !6213, !noalias !6205
  %.not.i80.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i80.2.i.i.i.i.i, label %bb.aa, label %.loopexit242.i.i.i.i.i, !prof !54

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6215)
  %exitcond.not.i79.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i77.i.i.i.i.i
  br i1 %exitcond.not.i79.3.i.i.i.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !6216, !noundef !28
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !6217, !noalias !6205
  %.not.i80.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i80.3.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %.loopexit242.i.i.i.i.i, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i82.i.i.i.i.i": ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6218
  store i64 5, ptr %i.b, align 8, !noalias !6218
  %i.bz = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6218
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

.loopexit242.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6218
  store i64 9, ptr %i.a, align 8, !noalias !6218
  %i.ca = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !6219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6218
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !6220
  %i.cc = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h19b501e31d5649feE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not57.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not57.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !6221
  %i.ce = tail call noundef align 8 ptr @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h81eca9ab2bccb71bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6222)
  %i.cf = zext i1 %.sroa.01.0193.i.i.i.i.i to i64 ; 2 uses
  %i.cg = load i64, ptr %i.ad, align 8, !alias.scope !6223, !noundef !28 ; 3 uses
  %i.ch = load i64, ptr %.0.val, align 8, !range !29, !alias.scope !6223, !noundef !28
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.af, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd72c7ca08004e24bE.exit.i.i.i.i.i.i", !prof !30

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hbfe87a90490e90eaE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val, i64 noundef %i.cg, i64 noundef %i.cf, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !6224
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd72c7ca08004e24bE.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd72c7ca08004e24bE.exit.i.i.i.i.i.i": ; preds = %bb.af, %bb.ae
  %i.ck = phi i64 [ %i.cg, %bb.ae ], [ %.pre.i.i.i.i.i.i, %bb.af ] ; 3 uses
  br i1 %.sroa.01.0193.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd72c7ca08004e24bE.exit.i.i.i.i.i.i"
  %i.cl = load ptr, ptr %i.af, align 8, !alias.scope !6224, !nonnull !28, !noundef !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.sroa.8.0192.i.i.i.i.i, ptr %i.cm, align 1, !noalias !6225
  %i.cn = add i64 %i.ck, 1
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i.i.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd72c7ca08004e24bE.exit.i.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ck, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hd72c7ca08004e24bE.exit.i.i.i.i.i.i" ]
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !6224, !noalias !6226
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !6227, !noundef !28
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !6227
  br label %bb.ak

bb.ag:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6160
  store i64 10, ptr %i.m, align 8, !noalias !6160
  %i.cq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6160
  br label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

bb.ah:                                            ; preds = %bb.h
  %i.cr = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h19b501e31d5649feE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not61.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not61.i.i.i.i.i, label %.loopexit150.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit"

.loopexit150.i.i.i.i.i:                           ; preds = %bb.ah, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.01.0193.i.i.i.i.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.loopexit150.i.i.i.i.i
  %i.cs = load i64, ptr %i.ad, align 8, !alias.scope !6160, !noundef !28 ; 2 uses
  %.not62.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not62.i.i.i.i.i, label %"_ZN80_$LT$serde_json..de..MapAccess$LT$R$GT$$u20$as$u20$serde_core..de..MapAccess$GT$15next_value_seed17hfb487ece50f80a8dE.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = add i64 %i.cs, -1                       ; 3 uses
  store i64 %i.ct, ptr %i.ad, align 8, !alias.scope !6160
  %i.cu = load i64, ptr %.0.val, align 8, !range !29, !alias.scope !6160, !noundef !28
  %i.cv = icmp ult i64 %i.ct, %i.cu
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = load ptr, ptr %i.af, align 8, !alias.scope !6160, !nonnull !28, !noundef !28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit150.i.i.i.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i.i.i.i"
  %.sroa.054.1.i.i.i.i.i = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i.i.i.i" ], [ true, %.loopexit150.i.i.i.i.i ], [ true, %bb.aj ]
  %.sroa.055.1.i.i.i.i.i = phi i8 [ %i.ak, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i.i.i.i" ], [ %.sroa.8.0192.i.i.i.i.i, %.loopexit150.i.i.i.i.i ], [ %i.cy, %bb.aj ] ; 2 uses
  %i.cz = load i64, ptr %i.r, align 8, !alias.scope !6228, !noalias !6229, !noundef !28 ; 6 uses
  %.promoted.i84185.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !6230, !noalias !6231 ; 2 uses
  %i.da = icmp ult i64 %.promoted.i84185.i.i.i.i.i, %i.cz
  br i1 %i.da, label %.lr.ph.i89.lr.ph.i.i.i.i.i, label %.loopexit145.i.i.i.i.i

.lr.ph.i89.lr.ph.i.i.i.i.i:                       ; preds = %bb.ak
  %i.db = load ptr, ptr %i.u, align 8, !alias.scope !6228, !noalias !6229, !nonnull !28, !align !37, !noundef !28 ; 3 uses
  br label %.lr.ph.i89.i.i.i.i.i

.lr.ph.i89.i.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i89.lr.ph.i.i.i.i.i
  %.promoted.i84188.i.i.i.i.i = phi i64 [ %.promoted.i84185.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.av ]
  %.sroa.028.0187.i.i.i.i.i = phi i1 [ %.sroa.054.1.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ true, %bb.av ] ; 2 uses
  %.sroa.030.0186.i.i.i.i.i = phi i8 [ %.sroa.055.1.i.i.i.i.i, %.lr.ph.i89.lr.ph.i.i.i.i.i ], [ %i.ds, %bb.av ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6232)
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i89.i.i.i.i.i
  %i.dc = phi i64 [ %.promoted.i84188.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.df, %bb.am ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6234)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !6235, !noundef !28
  switch i8 %i.de, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 44, label %bb.aq
    i8 93, label %bb.ar
    i8 125, label %bb.as
  ]

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

end_hunk_0
begin_hunk_1_@"_ZN10serde_json2de21Deserializer$LT$R$GT$14parse_exponent17hd9e72c572acbf533E":bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14": ; preds = %bb.f, %bb.s
  %.sroa.06.032 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !7552, !noundef !28
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14", %bb.s, %bb.f
  %.sroa.06.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.06.032, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14" ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14"
  %i.ag = add nuw i64 %i.ac, 1                    ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !7553
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.06.032, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14.thread"
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14.thread"
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.06.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.011.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7554)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.021.i = tail call i32 @llvm.abs.i32(i32 %.sroa.011.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.021.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.023.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.011.0, %bb.j ] ; 2 uses
  %.sroa.04.022.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.022.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.011.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.021.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN10serde_json2de5POW1017hb565df7df204af31E, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !7555, !noundef !28 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.023.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.022.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.023.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7555
  store i64 14, ptr %i.a, align 8, !noalias !7555
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !7554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7555
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !7554, !noalias !7556
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h1ec9a060a8769b20E.exit"

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.022.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.013.0.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.013.0.i, ptr %i.az, align 8, !alias.scope !7554, !noalias !7556
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h1ec9a060a8769b20E.exit"

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !30

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7555
  store i64 14, ptr %i.b, align 8, !noalias !7555
  %i.be = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !7554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7555
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !7554, !noalias !7556
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h1ec9a060a8769b20E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h1ec9a060a8769b20E.exit": ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !7554, !noalias !7556
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.t, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14f64_from_parts17h1ec9a060a8769b20E.exit"
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.06.032, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !48

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.06.032, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14.thread", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17h86ed3e6f99442062E.exit14"

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$23parse_exponent_overflow17h5d5889b1f9ef4964E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h3f8ff25a67c92acaE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7619)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !7620, !noalias !7621, !noundef !28 ; 17 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !7620, !noalias !7621, !noundef !28 ; 10 uses
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %.thread40

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !7620, !noalias !7621, !nonnull !28, !align !37, !noundef !28 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  %i.aa = load i8, ptr %i.z, align 1, !noalias !7622, !noundef !28 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !7623

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread40, !prof !54

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.s, align 8, !alias.scope !7624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7625)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7627)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.v
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !7628, !noundef !28
  %i.af = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !7629, !noalias !7630
  %.not.i = icmp eq i8 %i.ae, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !54

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7632)
  %exitcond.not.i.1 = icmp eq i64 %i.v, %i.af
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !7633, !noundef !28
  %i.ai = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !7634, !noalias !7630
  %.not.i.1 = icmp eq i8 %i.ah, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !54

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7636)
  %exitcond.not.i.2 = icmp eq i64 %i.ai, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !7637, !noundef !28
  %i.al = add i64 %i.t, 4
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !7638, !noalias !7630
  %.not.i.2 = icmp eq i8 %i.ak, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit", label %bb.j, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7639
  store i64 5, ptr %i.f, align 8, !noalias !7639
  %i.am = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !7640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7639
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7639
  store i64 9, ptr %i.e, align 8, !noalias !7639
  %i.an = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !7640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7639
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !7641
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7642)
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ao)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7644)
  %exitcond.not.i22.not = icmp ult i64 %i.ao, %i.v
  br i1 %exitcond.not.i22.not, label %bb.l, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25"

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !7645, !noundef !28
  %i.ar = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !7646, !noalias !7647
  %.not.i23 = icmp eq i8 %i.aq, 114
  br i1 %.not.i23, label %bb.m, label %bb.q, !prof !54

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7649)
  %exitcond.not.i22.1 = icmp eq i64 %i.v, %i.ar
  br i1 %exitcond.not.i22.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !7650, !noundef !28
  %i.au = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !7651, !noalias !7647
  %.not.i23.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i23.1, label %bb.o, label %bb.q, !prof !54

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7653)
  %exitcond.not.i22.2 = icmp eq i64 %i.au, %umax.i20
  br i1 %exitcond.not.i22.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !7654, !noundef !28
  %i.ax = add i64 %i.t, 4
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !7655, !noalias !7647
  %.not.i23.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i23.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit26", label %bb.q, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7656
  store i64 5, ptr %i.d, align 8, !noalias !7656
  %i.ay = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !7657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7656
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7656
  store i64 9, ptr %i.c, align 8, !noalias !7656
  %i.az = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !7657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7656
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.t, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !7658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7659)
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7661)
  %exitcond.not.i30.not = icmp ult i64 %i.ba, %i.v
  br i1 %exitcond.not.i30.not, label %bb.s, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33"

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !7662, !noundef !28
  %i.bd = add nuw i64 %i.t, 2                     ; 3 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !7663, !noalias !7664
  %.not.i31 = icmp eq i8 %i.bc, 97
  br i1 %.not.i31, label %bb.t, label %bb.z, !prof !54

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7666)
  %exitcond.not.i30.1 = icmp eq i64 %i.v, %i.bd
  br i1 %exitcond.not.i30.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !7667, !noundef !28
  %i.bg = add i64 %i.t, 3                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !7668, !noalias !7664
  %.not.i31.1 = icmp eq i8 %i.bf, 108
  br i1 %.not.i31.1, label %bb.v, label %bb.z, !prof !54

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7670)
  %exitcond.not.i30.2 = icmp eq i64 %i.bg, %umax.i28
  br i1 %exitcond.not.i30.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !7671, !noundef !28
  %i.bj = add i64 %i.t, 4                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !7672, !noalias !7664
  %.not.i31.2 = icmp eq i8 %i.bi, 115
  br i1 %.not.i31.2, label %bb.x, label %bb.z, !prof !54

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7674)
  %exitcond.not.i30.3 = icmp eq i64 %i.bj, %umax.i28
  br i1 %exitcond.not.i30.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !7675, !noundef !28
  %i.bm = add i64 %i.t, 5
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !7676, !noalias !7664
  %.not.i31.3 = icmp eq i8 %i.bl, 101
  br i1 %.not.i31.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit34", label %bb.z, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7677
  store i64 5, ptr %i.b, align 8, !noalias !7677
  %i.bn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !7678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7677
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7677
  store i64 9, ptr %i.a, align 8, !noalias !7677
  %i.bo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !7678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7677
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bp = add nuw i64 %i.t, 1
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !7679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hf4344784d14f6419E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.bq = load i64, ptr %i.o, align 8, !range !66, !noundef !28
  %i.br = icmp eq i64 %i.bq, 3
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !32

bb.ab:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.t, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !7680
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bu = load i64, ptr %i.k, align 8, !range !67, !noundef !28
  %i.bv = icmp eq i64 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !28, !noundef !28 ; 2 uses
  br i1 %i.bv, label %bb.ah, label %bb.ai, !prof !32

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.by = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.bz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.ca = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread40, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit34", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit26", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cr, %bb.al ], [ %i.cm, %.thread40 ], [ %i.ca, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit" ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit26" ], [ %i.cf, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit34" ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ai ], [ %i.by, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.cb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17he18a1524465b20d9E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit26": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cc, align 1
  store i8 0, ptr %i.q, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit34": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ce, align 1
  store i8 0, ptr %i.p, align 8
  %i.cf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.ci = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h59fb10017c333febE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bx, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.ck, align 8
  store i8 5, ptr %i.j, align 8
  %i.cl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17h8cb6c8df489d33b0E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread40:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cm = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hf4344784d14f6419E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.cn = load i64, ptr %i.m, align 8, !range !66, !noundef !28
  %i.co = icmp eq i64 %i.cn, 3
  br i1 %i.co, label %bb.ak, label %bb.al, !prof !32

bb.ak:                                            ; preds = %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cr = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17h59fb10017c333febE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.thread": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33", %bb.z, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25", %bb.q, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cb, %bb.ae ], [ %i.cq, %bb.ak ], [ %i.bx, %bb.ah ], [ %i.az, %bb.q ], [ %i.an, %bb.j ], [ %i.ch, %bb.af ], [ %i.am, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i" ], [ %i.ay, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i25" ], [ %i.bn, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i33" ], [ %i.bo, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_1
begin_hunk_2_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h7cd437f38d857efeE":bb.a
  switch i64 %.sroa.0.0166464.i.i.i.i.i.i, label %bb.cv [
    i64 -9223372036854775808, label %common.resume.i.i.i.i.i
    i64 0, label %common.resume.i.i.i.i.i
  ]

bb.cr:                                            ; preds = %bb.co
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i.i.i.i.i"

"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i": ; preds = %bb.co, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit.i.i.i.i.i.i", %.thread.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi ptr [ %.sroa.11162.0.ph.sink.i.i.i.i.i.i, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit.i.i.i.i.i.i" ], [ %.sroa.11162.0.ph.sink.i.i.i.i.i.i, %bb.co ], [ %i.hz, %.thread.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0166466584.i.i.i.i.i.i = phi i64 [ %.sroa.0.0166466.i.i.i.i.i.i, %"_ZN117_$LT$serde..private..de..missing_field..MissingFieldDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h864f7194cb04f308E.exit.i.i.i.i.i.i" ], [ %.sroa.0.0166466.i.i.i.i.i.i, %bb.co ], [ %.sroa.0.0166.i.i.i.i.i.i.ph963, %.thread.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44745
  switch i64 %.sroa.0.0166466584.i.i.i.i.i.i, label %bb.cs [
    i64 -9223372036854775808, label %"_ZN175_$LT$lsp_server..msg.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ebea33884646b3dE.exit.i.i.i.i.i"
    i64 0, label %"_ZN175_$LT$lsp_server..msg.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ebea33884646b3dE.exit.i.i.i.i.i"
  ]

bb.cs:                                            ; preds = %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i.i.i.i.i.i.ph962) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0.i.i.i.i.i.i.ph962, i64 noundef %.sroa.0.0166466584.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !44799
  br label %"_ZN175_$LT$lsp_server..msg.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ebea33884646b3dE.exit.i.i.i.i.i"

.thread171.i.i.i.i.i.i:                           ; preds = %.thread174.i.i.i.i.i.i, %bb.bk
  %.sroa.0.0166465.i.i.i.i.i.i = phi i64 [ %.sroa.0.0166.i.i.i.i.i.i.ph963, %.thread174.i.i.i.i.i.i ], [ %.sroa.0.0166467.i.i.i.i.i.i, %bb.bk ] ; 2 uses
  %i.ie = phi i8 [ %.ph, %.thread174.i.i.i.i.i.i ], [ %i.gb, %bb.bk ]
  %.pn170.i.i.i.i.i.i = phi { ptr, i32 } [ %i.hm, %.thread174.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i, %bb.bk ] ; 2 uses
  %i.if = icmp eq i8 %i.ie, 6
  br i1 %i.if, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i.i.i.i.i", label %bb.ct

bb.ct:                                            ; preds = %.thread171.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.o)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i.i.i.i.i" unwind label %bb.cu, !noalias !44749

bb.cu:                                            ; preds = %bb.ct
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !44749
  unreachable

bb.cv:                                            ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17h79d9528608d63f86E.exit.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i.i.i.i.i.i.ph962) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.0.i.i.i.i.i.i.ph962, i64 noundef %.sroa.0.0166464.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !44800
  br label %common.resume.i.i.i.i.i

"_ZN175_$LT$lsp_server..msg.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ebea33884646b3dE.exit.i.i.i.i.i": ; preds = %bb.cs, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i", %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i", %bb.cq
  %.sroa.12.09.i.i.i.i.i = phi i8 [ undef, %bb.cs ], [ undef, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ undef, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ %.sroa.081.0.i.i.i.i.i.i, %bb.cq ]
  %.sroa.11.0.i.i.i.i.i = phi i64 [ undef, %bb.cs ], [ undef, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ undef, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ %.sroa.19.0.i.i.i.i.i.i.ph961, %bb.cq ]
  %.sroa.8.1.i.i.i.i.i = phi ptr [ %.sroa.8.0.i.i.i.i.i, %bb.cs ], [ %.sroa.8.0.i.i.i.i.i, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ %.sroa.8.0.i.i.i.i.i, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ %.sroa.13.0.i.i.i.i.i.i.ph962, %bb.cq ]
  %.sroa.05.1.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.cs ], [ -9223372036854775808, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ -9223372036854775808, %"_ZN4core3ptr101drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$$GT$17h03d5d8aedd62ecc5E.exit150.i.i.i.i.i.i" ], [ %.sroa.0.0166.i.i.i.i.i.i.ph963, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44704
  %i.ih = load i8, ptr %i.bb, align 8, !alias.scope !44706, !noalias !44705, !noundef !28
  %i.ii = add i8 %i.ih, 1
  store i8 %i.ii, ptr %i.bb, align 8, !alias.scope !44706, !noalias !44705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !44704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !44704
  store i64 %.sroa.05.1.i.i.i.i.i, ptr %i.x, align 8, !noalias !44704
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.8.1.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44704
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.11.0.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44704
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i8 %.sroa.12.09.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44704
  %.sroa.136.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.136.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.583.i.i.i.i.i.i, i64 31, i1 false), !noalias !44704
  %.sroa.147.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 %.sroa.7.0.i.i.i.i.i.i.ph971, ptr %.sroa.147.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44704
  %i.ij = invoke fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17h4b6e6c32a52ca471E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.cx unwind label %bb.cw, !noalias !44705 ; 11 uses

bb.cw:                                            ; preds = %"_ZN175_$LT$lsp_server..msg.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ebea33884646b3dE.exit.i.i.i.i.i"
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr106drop_in_place$LT$core..result..Result$LT$lsp_server..msg..ResponseError$C$serde_json..error..Error$GT$$GT$17h8061098e8f76a17bE"(ptr noalias noundef align 8 dereferenceable(64) %i.x) #43
          to label %common.resume.i.i.i.i.i unwind label %bb.ao, !noalias !44705

bb.cx:                                            ; preds = %"_ZN175_$LT$lsp_server..msg.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17h8ebea33884646b3dE.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false), !noalias !44704
  %i.il = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store ptr %i.ij, ptr %i.il, align 8, !noalias !44704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !44704
  %i.im = load i64, ptr %i.y, align 8, !range !34, !noalias !44704, !noundef !28 ; 4 uses
  %i.in = icmp eq i64 %i.im, -9223372036854775808
  br i1 %i.in, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not.i.i.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %.sroa.225.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.225.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.225.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44704
  %.sroa.326.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.326.0..sroa_idx.i.i.i.i.i, i64 48, i1 false), !noalias !44704
  br label %.thread23.i.i.i.i.i

bb.da:                                            ; preds = %bb.cx
  %i.io = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !44704, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %.not30.i.i.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not30.i.i.i.i.i, label %.thread23.i.i.i.i.i, label %bb.de

bb.db:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !44801)
  call void @llvm.experimental.noalias.scope.decl(metadata !44802)
  call void @llvm.experimental.noalias.scope.decl(metadata !44803)
  %i.iq = icmp eq i64 %i.im, 0
  br i1 %i.iq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i53.i.i.i.i.i", label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ir = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.val1.i.i.i52.i.i.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !44804, !noalias !44704, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i52.i.i.i.i.i, i64 noundef %i.im, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !44805
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i53.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i53.i.i.i.i.i": ; preds = %bb.dc, %bb.db
  %i.is = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.it = load i8, ptr %i.is, align 8, !range !45, !alias.scope !44806, !noalias !44704, !noundef !28
  %i.iu = icmp eq i8 %i.it, 6
  br i1 %i.iu, label %.thread23.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i53.i.i.i.i.i"
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.is), !noalias !44705
  br label %.thread23.i.i.i.i.i

.thread23.i.i.i.i.i:                              ; preds = %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i", %bb.dd, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i53.i.i.i.i.i", %bb.da, %bb.cz
  %.sroa.09.329.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.da ], [ -9223372036854775808, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i" ], [ %i.im, %bb.cz ], [ -9223372036854775808, %bb.dd ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i53.i.i.i.i.i" ]
  %.sroa.12.328.i.i.i.i.i = phi ptr [ %i.ip, %bb.da ], [ %i.ip, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i" ], [ %.sroa.225.0.copyload.i.i.i.i.i, %bb.cz ], [ %i.ij, %bb.dd ], [ %i.ij, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit.i53.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !44704
  br label %bb.at

bb.de:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !44807)
  call void @llvm.experimental.noalias.scope.decl(metadata !44808)
  %i.iv = load i64, ptr %i.ij, align 8, !range !84, !alias.scope !44809, !noalias !44810, !noundef !28
  switch i64 %i.iv, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i" [
    i64 0, label %bb.df
    i64 1, label %bb.dg
  ]

bb.df:                                            ; preds = %bb.de
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %.val1.i.i.i.i57.i.i.i.i.i = load i64, ptr %i.iw, align 8, !alias.scope !44809, !noalias !44810, !noundef !28 ; 2 uses
  %i.ix = icmp eq i64 %.val1.i.i.i.i57.i.i.i.i.i, 0
  br i1 %i.ix, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i58.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i58.i.i.i.i.i": ; preds = %bb.df
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.val.i.i.i.i59.i.i.i.i.i = load ptr, ptr %i.iy, align 8, !alias.scope !44809, !noalias !44810, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i59.i.i.i.i.i, i64 noundef %.val1.i.i.i.i57.i.i.i.i.i, i64 noundef 1) #41, !noalias !44811
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i"

bb.dg:                                            ; preds = %bb.de
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.iz)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i" unwind label %bb.dh, !noalias !44810

bb.dh:                                            ; preds = %bb.dg
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ij, i64 noundef 40, i64 noundef 8) #41, !noalias !44810
  br label %common.resume.i.i.i.i.i

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h63bc229213a9dfc7E.exit60.i.i.i.i.i": ; preds = %bb.dg, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i58.i.i.i.i.i", %bb.df, %bb.de
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ij, i64 noundef 40, i64 noundef 8) #41, !noalias !44810
  br label %.thread23.i.i.i.i.i

"_ZN10lsp_server3msg1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$11deserialize17h1aafe1dacf3c50abE.exit.thread6.i.i.i": ; preds = %bb.at, %bb.f
  %.sroa.12.5.i.i.i.i.i = phi ptr [ %.sroa.12.2.i.i.i.i.i, %bb.at ], [ %i.aw, %bb.f ]
  %i.jb = call fastcc noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17he18a1524465b20d9E(ptr noalias noundef nonnull align 8 %.sroa.12.5.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !noalias !44705
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  br label %"_ZN10lsp_server3msg1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$11deserialize17h1aafe1dacf3c50abE.exit.thread.i.i.i"

"_ZN10lsp_server3msg1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$11deserialize17h1aafe1dacf3c50abE.exit.thread.i.i.i": ; preds = %"_ZN10lsp_server3msg1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$11deserialize17h1aafe1dacf3c50abE.exit.thread6.i.i.i", %bb.af, %.loopexit.i.i.i.i.i
  %.sroa.8.15.i.i.i = phi ptr [ %i.jb, %"_ZN10lsp_server3msg1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$11deserialize17h1aafe1dacf3c50abE.exit.thread6.i.i.i" ], [ %i.av, %.loopexit.i.i.i.i.i ], [ %.sink.i.i.i.i.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.6.i.i.i.i.i.i)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.15.i.i.i, ptr %i.jc, align 8, !alias.scope !44812, !noalias !44813
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !44812, !noalias !44813
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17hbcfe9245c72086a5E.exit"

bb.di:                                            ; preds = %bb.at
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18.i.i.i.i.i, i64 48, i1 false), !noalias !44813
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.583.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.6.i.i.i.i.i.i)
  store i64 %.sroa.09.2.i.i.i.i.i, ptr %0, align 8, !alias.scope !44812, !noalias !44813
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.2.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !44812, !noalias !44813
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17hbcfe9245c72086a5E.exit"

bb.dj:                                            ; preds = %bb.b
  %i.jd = add i64 %i.ak, 1                        ; 4 uses
  store i64 %i.jd, ptr %i.ae, align 8, !alias.scope !44814, !noalias !44815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44816)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.jd) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44818)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.jd, %i.ag
  br i1 %exitcond.not.i9.not.i.i, label %bb.dk, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"

bb.dk:                                            ; preds = %bb.dj
  %i.je = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !noalias !44819, !noundef !28
  %i.jg = add i64 %i.ak, 2                        ; 3 uses
  store i64 %i.jg, ptr %i.ae, align 8, !alias.scope !44820, !noalias !44821
  %.not.i.i.i = icmp eq i8 %i.jf, 117
  br i1 %.not.i.i.i, label %bb.dl, label %bb.dp, !prof !54

bb.dl:                                            ; preds = %bb.dk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44823)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.jg, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !noalias !44824, !noundef !28
  %i.jj = add i64 %i.ak, 3                        ; 3 uses
  store i64 %i.jj, ptr %i.ae, align 8, !alias.scope !44825, !noalias !44821
  %.not.i.1.i.i = icmp eq i8 %i.ji, 108
  br i1 %.not.i.1.i.i, label %bb.dn, label %bb.dp, !prof !54

bb.dn:                                            ; preds = %bb.dm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44827)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.jj, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !noalias !44828, !noundef !28
  %i.jm = add i64 %i.ak, 4
  store i64 %i.jm, ptr %i.ae, align 8, !alias.scope !44829, !noalias !44821
  %.not.i.2.i.i = icmp eq i8 %i.jl, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i", label %bb.dp, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i": ; preds = %bb.dn, %bb.dl, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44830
  store i64 5, ptr %i.c, align 8, !noalias !44830
  %i.jn = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !44831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44830
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do, %bb.dm, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44830
  store i64 9, ptr %i.b, align 8, !noalias !44830
  %i.jo = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !44831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44830
  br label %bb.dq

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i": ; preds = %bb.do
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !44832, !noalias !44833
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17hbcfe9245c72086a5E.exit"

bb.dq:                                            ; preds = %bb.dp, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.jn, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i" ], [ %i.jo, %bb.dp ]
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.jp, align 8, !alias.scope !44815, !noalias !44833
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !44815, !noalias !44833
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17hbcfe9245c72086a5E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17hbcfe9245c72086a5E.exit": ; preds = %"_ZN10lsp_server3msg1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_server..msg..ResponseError$GT$11deserialize17h1aafe1dacf3c50abE.exit.thread.i.i.i", %bb.di, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i", %bb.dq
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8142ea0c1387884dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [64 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [56 x i8], align 8                ; 12 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 10 uses
  %i.u = alloca [64 x i8], align 8                ; 10 uses
  %.sroa.3.i.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.5.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.754.i.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 8 uses
  %.sroa.11.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [56 x i8], align 8                ; 7 uses
  %i.x = alloca [56 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 9 uses
  %i.z = alloca [32 x i8], align 8                ; 14 uses
  %.sroa.11.i.i.i.i = alloca [40 x i8], align 8   ; 6 uses
  %i.aa = alloca [56 x i8], align 8               ; 6 uses
  %i.ab = alloca [56 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44954)
  %i.ae = load i8, ptr %1, align 8, !range !59, !alias.scope !44955, !noalias !44956, !noundef !28
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.ct, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !44958
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !44959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !44959
  call fastcc void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117h586f13134f219628E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %1), !noalias !44956
  %i.ah = load i8, ptr %i.ac, align 8, !range !38, !noalias !44959, !noundef !28 ; 3 uses
  %i.ai = icmp eq i8 %i.ah, 22
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !44959, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !44959
  br label %.noexc2.i.i

bb.c:                                             ; preds = %.noexc.i.i
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.510.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !44959
  %.sroa.611.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.611.0.copyload.i.i.i.i = load ptr, ptr %.sroa.611.0..sroa_idx.i.i.i.i, align 8, !noalias !44959
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.68.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !44959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !44959
  store i8 %i.ah, ptr %i.ad, align 8, !noalias !44959
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.611.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !44959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !44959
  %i.al = icmp eq i8 %i.ah, 0
  br i1 %i.al, label %bb.f, label %bb.d, !prof !32

bb.d:                                             ; preds = %bb.c
  %i.am = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h0ad7ba5e0b52770aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
          to label %bb.g unwind label %bb.e, !noalias !44959

bb.e:                                             ; preds = %bb.cq, %.thread46.i.i.i.i, %bb.cn, %bb.ac, %bb.h, %bb.g, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.body.i.i.i.i.i, %bb.e
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.an, %bb.e ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.ad) #43
          to label %.body.i.i unwind label %bb.cs, !noalias !44959

bb.f:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !range !33, !alias.scope !44960, !noalias !44961, !noundef !28
  %.sroa.413.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store i8 %i.ao, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !noalias !44959
  %.sroa.8.0.copyload6.i.i.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !noalias !44962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !44959
  br label %.noexc3.i.i

bb.g:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.am, ptr %i.ap, align 8, !noalias !44959
  store i64 -9223372036854775805, ptr %i.ab, align 8, !noalias !44959
  invoke fastcc void @"_ZN4core3ptr161drop_in_place$LT$core..result..Result$LT$lsp_types..OneOf$LT$bool$C$lsp_types..inline_value..InlineValueServerCapabilities$GT$$C$serde_json..error..Error$GT$$GT$17h6d9b7c136902e27eE"(ptr noalias noundef align 8 dereferenceable(56) %i.ab)
          to label %bb.h unwind label %bb.e, !noalias !44959

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !44959
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !44963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !44963
  invoke void @_ZN5serde7private2de7content13content_clone17h95c514468b2113a9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc18.i.i.i.i unwind label %bb.e, !noalias !44959

.noexc18.i.i.i.i:                                 ; preds = %bb.h
  %i.aq = load i8, ptr %i.y, align 8, !range !38, !noalias !44963, !noundef !28 ; 3 uses
  %i.ar = icmp eq i8 %i.aq, 22
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc18.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !44963, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !44963
  br label %.thread46.i.i.i.i

bb.j:                                             ; preds = %.noexc18.i.i.i.i
  %.sroa.510.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
end_hunk_2
begin_hunk_3_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9b247241753544c9E":bb.a
  switch i64 %i.s, label %bb.k [
    i64 0, label %bb.h
    i64 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i.i.i.i1.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !46817, !noalias !46818, !noundef !28 ; 2 uses
  %i.u = icmp eq i64 %.val1.i.i.i.i.i1.i.i.i, 0
  br i1 %i.u, label %bb.k, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i2.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i2.i.i.i": ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i.i.i3.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !46817, !noalias !46818, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i3.i.i.i, i64 noundef %.val1.i.i.i.i.i1.i.i.i, i64 noundef 1) #41, !noalias !46819
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.w)
          to label %bb.k unwind label %bb.j, !noalias !46818

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 40, i64 noundef 8) #41, !noalias !46818
  br label %.body.i.i.i

bb.k:                                             ; preds = %bb.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i2.i.i.i", %bb.h, %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 40, i64 noundef 8) #41, !noalias !46818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46813
  invoke fastcc void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h7ffec36fb2e7c8a8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.l unwind label %bb.d, !noalias !46813

bb.l:                                             ; preds = %bb.k
  %i.y = load i64, ptr %i.a, align 8, !range !34, !noalias !46813, !noundef !28 ; 2 uses
  %i.z = icmp eq i64 %i.y, -9223372036854775808
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !46813 ; 8 uses
  br i1 %i.z, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.343.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.343.0.copyload.i.i.i.i = load i64, ptr %.sroa.343.0..sroa_idx.i.i.i.i, align 8, !noalias !46813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46813
  br label %.noexc3.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46813
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ], !noalias !46815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46820), !noalias !46815
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46821), !noalias !46815
  %i.ac = load i64, ptr %i.ab, align 8, !range !84, !alias.scope !46822, !noalias !46823, !noundef !28
  switch i64 %i.ac, label %bb.r [
    i64 0, label %bb.o
    i64 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !46822, !noalias !46823, !noundef !28 ; 2 uses
  %i.ae = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.r, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !46822, !noalias !46823, !nonnull !28, !noundef !28
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i, i64 noundef 1) #41, !noalias !46824
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h018e918931649ff7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ag)
          to label %bb.r unwind label %bb.q, !noalias !46823

bb.q:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 40, i64 noundef 8) #41, !noalias !46823
  br label %.body.i.i.i

bb.r:                                             ; preds = %bb.p, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i", %bb.o, %bb.n
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 40, i64 noundef 8) #41, !noalias !46823
  %i.ai = invoke fastcc noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h84bd4f43ac49638fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1159, i64 noundef 62)
          to label %bb.s unwind label %bb.d, !noalias !46813

bb.s:                                             ; preds = %bb.r
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.d), !noalias !46825
  br label %.noexc2.i.i

bb.t:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !46813
  unreachable

.noexc2.i.i:                                      ; preds = %bb.s, %bb.b
  %.sroa.8.1.ph.i.i.i = phi ptr [ %i.j, %bb.b ], [ %i.ai, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46813
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1.ph.i.i.i, ptr %i.ak, align 8, !alias.scope !46826, !noalias !46827
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !46826, !noalias !46827
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h36c323ac52fcdb0cE.exit"

.noexc3.i.i:                                      ; preds = %bb.m, %bb.f
  %.sroa.13.0.i.i.i = phi i64 [ %.sroa.343.0.copyload.i.i.i.i, %bb.m ], [ undef, %bb.f ]
  %.sroa.8.0.i.i.i = phi ptr [ %i.ab, %bb.m ], [ %i.p, %bb.f ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.y, %bb.m ], [ -9223372036854775808, %bb.f ]
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17h10e52ff9e93f0b3eE"(ptr noalias noundef align 8 dereferenceable(32) %i.d), !noalias !46825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46813
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8, !alias.scope !46826, !noalias !46827
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !46826, !noalias !46827
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !46826, !noalias !46827
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h36c323ac52fcdb0cE.exit"

bb.u:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !46828, !noalias !46810
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1), !noalias !46811
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h36c323ac52fcdb0cE.exit"

.body.i.i:                                        ; preds = %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h36c323ac52fcdb0cE.exit": ; preds = %.noexc2.i.i, %.noexc3.i.i, %bb.u
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h9ba59907e48ae9c4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46871)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !46872, !noalias !46873, !noundef !28 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !46874, !noalias !46875 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.thread.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !46872, !noalias !46873, !nonnull !28, !align !37, !noundef !28 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46877)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !46878, !noundef !28
  switch i8 %i.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.thread.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !46879, !noalias !46875
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.thread.i.i": ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46881
  call fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h530892dafbc2a314E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !46882, !inline_history !46849
  %i.n = load i8, ptr %i.c, align 8, !range !45, !noalias !46881, !noundef !28
  %i.o = icmp eq i8 %i.n, 6
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.thread.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !46881, !nonnull !28, !align !35, !noundef !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !46882, !noalias !46883
  store i8 7, ptr %0, align 8, !alias.scope !46882, !noalias !46883
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h931c73b4be011900E.exit.i.i"

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit.thread.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !46883
  br label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h931c73b4be011900E.exit.i.i"

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h931c73b4be011900E.exit.i.i": ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46881
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h18ba7365661bbd79E.exit"

bb.f:                                             ; preds = %bb.b
  %i.s = add i64 %i.j, 1                          ; 4 uses
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !46884, !noalias !46885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46886)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46888)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.f
  br i1 %exitcond.not.i9.not.i.i, label %bb.g, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !46889, !noundef !28
  %i.v = add i64 %i.j, 2                          ; 3 uses
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !46890, !noalias !46891
  %.not.i.i.i = icmp eq i8 %i.u, 117
  br i1 %.not.i.i.i, label %bb.h, label %bb.l, !prof !54

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46893)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !46894, !noundef !28
  %i.y = add i64 %i.j, 3                          ; 3 uses
  store i64 %i.y, ptr %i.d, align 8, !alias.scope !46895, !noalias !46891
  %.not.i.1.i.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.1.i.i, label %bb.j, label %bb.l, !prof !54

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46897)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !46898, !noundef !28
  %i.ab = add i64 %i.j, 4
  store i64 %i.ab, ptr %i.d, align 8, !alias.scope !46899, !noalias !46891
  %.not.i.2.i.i = icmp eq i8 %i.aa, 108
  br i1 %.not.i.2.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i", label %bb.l, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i": ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46900
  store i64 5, ptr %i.b, align 8, !noalias !46900
  %i.ac = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !46901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46900
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46900
  store i64 9, ptr %i.a, align 8, !noalias !46900
  %i.ad = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !46901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46900
  br label %bb.m

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i": ; preds = %bb.k
  store i8 6, ptr %0, align 8, !alias.scope !46902, !noalias !46903
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h18ba7365661bbd79E.exit"

bb.m:                                             ; preds = %bb.l, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i"
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.ac, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i.i.i" ], [ %i.ad, %bb.l ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ae, align 8, !alias.scope !46885, !noalias !46903
  store i8 7, ptr %0, align 8, !alias.scope !46885, !noalias !46903
  br label %"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h18ba7365661bbd79E.exit"

"_ZN10serde_core2de5impls87_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$core..option..Option$LT$T$GT$$GT$11deserialize17h18ba7365661bbd79E.exit": ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17h931c73b4be011900E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h333160da977bc5dcE.exit.i.i", %bb.m
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha22b846c3aa7e8ddE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 11 uses
  %i.i = alloca [104 x i8], align 8               ; 13 uses
  %i.j = alloca [32 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 11 uses
  %i.l = alloca [32 x i8], align 8                ; 12 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.17.i.i.i = alloca [32 x i8], align 8     ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47105)
  %i.r = load i8, ptr %1, align 8, !range !59, !alias.scope !47106, !noalias !47107, !noundef !28
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.cp, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !47108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !47107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47110)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !47113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !47113
  %i.t = load i8, ptr %i.q, align 8, !range !59, !alias.scope !47114, !noalias !47115, !noundef !28 ; 3 uses
  switch i8 %i.t, label %bb.c [
    i8 4, label %bb.d
    i8 5, label %bb.ag
  ], !prof !49

bb.c:                                             ; preds = %bb.b
  %i.u = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17hdfd4d1db8e02cda0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @294)
          to label %bb.cj unwind label %bb.ci, !noalias !47115

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !47107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47116)
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !47116, !noalias !47117, !noundef !28 ; 2 uses
  %i.y = icmp ult i64 %i.x, 288230376151711744
  tail call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !47118
  invoke void @_ZN10serde_json5value2de15SeqDeserializer3new17h83c00a78209f13a7E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc.i.i.i.i.i unwind label %bb.ci, !noalias !47119

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !47118
  call void @llvm.experimental.noalias.scope.decl(metadata !47120)
  call void @llvm.experimental.noalias.scope.decl(metadata !47121)
  call void @llvm.experimental.noalias.scope.decl(metadata !47122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !47123
  call void @llvm.experimental.noalias.scope.decl(metadata !47124)
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !47125, !noalias !47126, !nonnull !28, !noundef !28 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !47125, !noalias !47126, !nonnull !28, !noundef !28 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.p, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !alias.scope !47125, !noalias !47126
  %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ac, align 8, !noalias !47127 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.e

bb.e:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !47128
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !47128
  call void @llvm.experimental.noalias.scope.decl(metadata !47129)
  call void @llvm.experimental.noalias.scope.decl(metadata !47130)
  call void @llvm.experimental.noalias.scope.decl(metadata !47131)
  %i.af = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.af, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.f, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17hdfd4d1db8e02cda0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i" unwind label %bb.g, !noalias !47132

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread64.i.i.i.i.i.i.i" unwind label %bb.y, !noalias !47118

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l) #43
          to label %.body.i.i.i.i.i.i unwind label %bb.h, !noalias !47132

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !47132
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !47133, !noalias !47128 ; 8 uses
  %.sroa.7.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !47133, !noalias !47128 ; 8 uses
  %i.ak = icmp eq i64 %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %i.ak, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread64.i.i.i.i.i.i.i", label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.i.i.i.i.i.i.i"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread64.i.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.019.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i" ], [ %i.ag, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.019.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !47123
  br label %bb.i

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i"
  %.sroa.9.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.9.0.copyload11.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !47133, !noalias !47128
end_hunk_3
begin_hunk_4_@"_ZN97_$LT$toml..de..deserializer..value..ValueDeserializer$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17he8c0283e00b0ad6eE":bb.a
  br label %bb.i

bb.cu:                                            ; preds = %bb.cr, %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.n, i64 88, i1 false), !alias.scope !65129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.i

.body:                                            ; preds = %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i", %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i", %.loopexit, %.loopexit.split-lp, %bb.cp, %bb.cj, %bb.ce, %bb.be, %.body142, %bb.at, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.bz, %.body142 ], [ %i.cf, %bb.be ], [ %i.dt, %bb.cp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.do, %bb.cj ], [ %i.dk, %bb.ce ], [ %i.bm, %bb.at ], [ %i.bh, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body151, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i" ], [ %eh.lpad-body151, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i" ] ; 14 uses
  %.sroa.026.1 = phi i1 [ true, %.body142 ], [ true, %bb.be ], [ false, %bb.cp ], [ %.sroa.026.0.ph, %.loopexit.split-lp ], [ false, %bb.cj ], [ false, %bb.ce ], [ true, %bb.at ], [ true, %bb.aj ], [ true, %.loopexit ], [ false, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i" ], [ false, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i" ]
  %.sroa.025.1 = phi i1 [ false, %.body142 ], [ false, %bb.be ], [ true, %bb.cp ], [ %.sroa.025.0.ph, %.loopexit.split-lp ], [ true, %bb.cj ], [ true, %bb.ce ], [ true, %bb.at ], [ true, %bb.aj ], [ true, %.loopexit ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i" ]
  %.sroa.024.3 = phi i1 [ true, %.body142 ], [ true, %bb.be ], [ true, %bb.cp ], [ true, %.loopexit.split-lp ], [ true, %bb.cj ], [ true, %bb.ce ], [ true, %bb.at ], [ %.sroa.024.2, %bb.aj ], [ true, %.loopexit ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i" ]
  %.sroa.023.3 = phi i1 [ true, %.body142 ], [ true, %bb.be ], [ true, %bb.cp ], [ true, %.loopexit.split-lp ], [ true, %bb.cj ], [ true, %bb.ce ], [ true, %bb.at ], [ %.sroa.023.2, %bb.aj ], [ true, %.loopexit ], [ true, %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8bf50e43af11f30eE.exit.i.i" ], [ true, %"_ZN4core3ptr192drop_in_place$LT$toml..map..IntoIter$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hddbcda465bba8ea2E.exit.i" ]
  switch i8 %i.z, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit" [
    i8 0, label %bb.cv
    i8 1, label %bb.cw
    i8 2, label %bb.cx
    i8 5, label %bb.cy
    i8 6, label %bb.cz
  ]

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit": ; preds = %bb.de, %bb.dc, %bb.ab, %bb.k, %bb.ac, %bb.l, %bb.df, %bb.dd, %bb.db, %bb.da, %bb.dh, %bb.dg, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %.body
  %.pn607 = phi { ptr, i32 } [ %.pn, %bb.dd ], [ %.pn, %bb.db ], [ %i.ai, %bb.l ], [ %.pn, %bb.dh ], [ %.pn, %bb.dg ], [ %.pn, %bb.cz ], [ %.pn, %bb.cy ], [ %.pn, %bb.cx ], [ %.pn, %bb.cw ], [ %.pn, %bb.cv ], [ %.pn, %.body ], [ %.pn, %bb.df ], [ %.pn, %bb.da ], [ %i.az, %bb.ab ], [ %.pn, %bb.dc ], [ %i.ai, %bb.k ], [ %.pn, %bb.de ], [ %i.az, %bb.ac ]
  resume { ptr, i32 } %.pn607

bb.cv:                                            ; preds = %.body
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !range !34, !noundef !28 ; 3 uses
  %.not = icmp eq i64 %i.dx, -9223372036854775808
  br i1 %.not, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", label %bb.da

bb.cw:                                            ; preds = %.body
  br i1 %.sroa.023.3, label %bb.dc, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.cx:                                            ; preds = %.body
  br i1 %.sroa.024.3, label %bb.de, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.cy:                                            ; preds = %.body
  br i1 %.sroa.025.1, label %bb.dg, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.cz:                                            ; preds = %.body
  br i1 %.sroa.026.1, label %bb.dh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.da:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !65130)
  call void @llvm.experimental.noalias.scope.decl(metadata !65131)
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit", label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !65132, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !65132
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.dc:                                            ; preds = %bb.cw
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48 = load i64, ptr %i.ea, align 8, !range !34, !noundef !28 ; 2 uses
  %switch628 = icmp sgt i64 %.val48, 0
  br i1 %switch628, label %bb.dd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.dd:                                            ; preds = %bb.dc
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val49 = load ptr, ptr %i.eb, align 8, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef %.val48, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !65133
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.de:                                            ; preds = %bb.cx
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val54 = load i64, ptr %i.ec, align 8, !range !34, !noundef !28 ; 2 uses
  %switch629 = icmp sgt i64 %.val54, 0
  br i1 %switch629, label %bb.df, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.df:                                            ; preds = %bb.de
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val55 = load ptr, ptr %i.ed, align 8, !nonnull !28, !noundef !28
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55, i64 noundef %.val54, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !65134
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit"

bb.dg:                                            ; preds = %bb.cy
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$toml..de..parser..dearray..DeArray$GT$17h307008763061f3b9E"(ptr noalias noundef align 8 dereferenceable(32) %i.ee) #43
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit" unwind label %bb.aa

bb.dh:                                            ; preds = %bb.cz
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @"_ZN4core3ptr187drop_in_place$LT$toml..map..Map$LT$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17h55f1ce17c9a38d65E"(ptr noalias noundef align 8 dereferenceable(32) %i.ef) #43
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c0850ed224dc6b9E.exit" unwind label %bb.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h530892dafbc2a314E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.13174.sroa.6 = alloca [32 x i8], align 8 ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [16 x i8], align 8                ; 9 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.9153 = alloca [16 x i8], align 8         ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.36 = alloca [6 x i8], align 2            ; 13 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65397)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !65398, !noalias !65399, !noundef !28 ; 8 uses
  %.promoted.i = load i64, ptr %i.am, align 8, !alias.scope !65397, !noalias !65400 ; 2 uses
  %i.ap = icmp ult i64 %.promoted.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit275

.lr.ph.i:                                         ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !65398, !noalias !65399, !nonnull !28, !align !37, !noundef !28 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.as = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.av, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65402)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !65403, !noundef !28 ; 3 uses
  switch i8 %i.au, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.av = add i64 %i.as, 1                        ; 3 uses
  store i64 %i.av, ptr %i.am, align 8, !alias.scope !65404, !noalias !65400
  %exitcond.not.i = icmp eq i64 %i.av, %i.ao
  br i1 %exitcond.not.i, label %.loopexit275, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36)
  switch i8 %i.au, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit275:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 5, ptr %i.al, align 8
  %i.aw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hc04c2a94b194b4cdE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ah

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.ay = add i8 %i.au, -48
  %or.cond8 = icmp ult i8 %i.ay, 10
  br i1 %or.cond8, label %bb.es, label %bb.er, !prof !63

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.az = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.az, ptr %i.am, align 8, !alias.scope !65405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65406)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.az) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65408)
  %exitcond.not.i71.not = icmp ult i64 %i.az, %i.ao
  br i1 %exitcond.not.i71.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !65409, !noundef !28
  %i.bc = add i64 %i.as, 2                        ; 3 uses
  store i64 %i.bc, ptr %i.am, align 8, !alias.scope !65410, !noalias !65411
  %.not.i = icmp eq i8 %i.bb, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !54

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65413)
  %exitcond.not.i71.1 = icmp eq i64 %i.bc, %umax.i
  br i1 %exitcond.not.i71.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !65414, !noundef !28
  %i.bf = add i64 %i.as, 3                        ; 3 uses
  store i64 %i.bf, ptr %i.am, align 8, !alias.scope !65415, !noalias !65411
  %.not.i.1 = icmp eq i8 %i.be, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !54

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65417)
  %exitcond.not.i71.2 = icmp eq i64 %i.bf, %umax.i
  br i1 %exitcond.not.i71.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !65418, !noundef !28
  %i.bi = add i64 %i.as, 4
  store i64 %i.bi, ptr %i.am, align 8, !alias.scope !65419, !noalias !65411
  %.not.i.2 = icmp eq i8 %i.bh, 108
  br i1 %.not.i.2, label %bb.ag, label %bb.k, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !65420
  store i64 5, ptr %i.aa, align 8, !noalias !65420
  %i.bj = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa), !noalias !65421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !65420
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !65420
  store i64 9, ptr %i.z, align 8, !noalias !65420
  %i.bk = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z), !noalias !65421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !65420
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.bl = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.bl, ptr %i.am, align 8, !alias.scope !65422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65423)
  %umax.i73 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.bl) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65425)
  %exitcond.not.i75.not = icmp ult i64 %i.bl, %i.ao
  br i1 %exitcond.not.i75.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78"

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !65426, !noundef !28
  %i.bo = add i64 %i.as, 2                        ; 3 uses
  store i64 %i.bo, ptr %i.am, align 8, !alias.scope !65427, !noalias !65428
  %.not.i76 = icmp eq i8 %i.bn, 114
  br i1 %.not.i76, label %bb.n, label %bb.r, !prof !54

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65430)
  %exitcond.not.i75.1 = icmp eq i64 %i.bo, %umax.i73
  br i1 %exitcond.not.i75.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !65431, !noundef !28
  %i.br = add i64 %i.as, 3                        ; 3 uses
  store i64 %i.br, ptr %i.am, align 8, !alias.scope !65432, !noalias !65428
  %.not.i76.1 = icmp eq i8 %i.bq, 117
  br i1 %.not.i76.1, label %bb.p, label %bb.r, !prof !54

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65434)
  %exitcond.not.i75.2 = icmp eq i64 %i.br, %umax.i73
  br i1 %exitcond.not.i75.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !65435, !noundef !28
  %i.bu = add i64 %i.as, 4
  store i64 %i.bu, ptr %i.am, align 8, !alias.scope !65436, !noalias !65428
  %.not.i76.2 = icmp eq i8 %i.bt, 101
  br i1 %.not.i76.2, label %bb.ak, label %bb.r, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !65437
  store i64 5, ptr %i.y, align 8, !noalias !65437
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y), !noalias !65438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !65437
  br label %bb.aj

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !65437
  store i64 9, ptr %i.x, align 8, !noalias !65437
  %i.bw = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x), !noalias !65438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !65437
  br label %bb.aj

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.bx = add i64 %i.as, 1                        ; 4 uses
  store i64 %i.bx, ptr %i.am, align 8, !alias.scope !65439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65440)
  %umax.i81 = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.bx) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65442)
  %exitcond.not.i83.not = icmp ult i64 %i.bx, %i.ao
  br i1 %exitcond.not.i83.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86"

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noalias !65443, !noundef !28
  %i.ca = add i64 %i.as, 2                        ; 3 uses
  store i64 %i.ca, ptr %i.am, align 8, !alias.scope !65444, !noalias !65445
  %.not.i84 = icmp eq i8 %i.bz, 97
  br i1 %.not.i84, label %bb.u, label %bb.aa, !prof !54

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65447)
  %exitcond.not.i83.1 = icmp eq i64 %i.ca, %umax.i81
  br i1 %exitcond.not.i83.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !65448, !noundef !28
  %i.cd = add i64 %i.as, 3                        ; 3 uses
  store i64 %i.cd, ptr %i.am, align 8, !alias.scope !65449, !noalias !65445
  %.not.i84.1 = icmp eq i8 %i.cc, 108
  br i1 %.not.i84.1, label %bb.w, label %bb.aa, !prof !54

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65451)
  %exitcond.not.i83.2 = icmp eq i64 %i.cd, %umax.i81
  br i1 %exitcond.not.i83.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noalias !65452, !noundef !28
  %i.cg = add i64 %i.as, 4                        ; 3 uses
  store i64 %i.cg, ptr %i.am, align 8, !alias.scope !65453, !noalias !65445
  %.not.i84.2 = icmp eq i8 %i.cf, 115
  br i1 %.not.i84.2, label %bb.y, label %bb.aa, !prof !54

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65455)
  %exitcond.not.i83.3 = icmp eq i64 %i.cg, %umax.i81
  br i1 %exitcond.not.i83.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !65456, !noundef !28
  %i.cj = add i64 %i.as, 5
  store i64 %i.cj, ptr %i.am, align 8, !alias.scope !65457, !noalias !65445
  %.not.i84.3 = icmp eq i8 %i.ci, 101
  br i1 %.not.i84.3, label %bb.am, label %bb.aa, !prof !54

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !65458
  store i64 5, ptr %i.w, align 8, !noalias !65458
  %i.ck = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w), !noalias !65459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !65458
  br label %bb.al

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !65458
  store i64 9, ptr %i.v, align 8, !noalias !65458
  %i.cl = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h2d9bd0aad52ef8feE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.v), !noalias !65459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !65458
  br label %bb.al

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.cm = add i64 %i.as, 1
  store i64 %i.cm, ptr %i.am, align 8, !alias.scope !65460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hf4344784d14f6419E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false)
  %i.cn = load i64, ptr %i.ak, align 8, !range !66, !noundef !28 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br i1 %i.co, label %bb.an, label %bb.ao

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.cq = add i64 %i.as, 1
  store i64 %i.cq, ptr %i.am, align 8, !alias.scope !65461
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h6b1e41533d5d0d0bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.cs = load i64, ptr %i.ai, align 8, !range !67, !noundef !28 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8            ; 4 uses
  br i1 %i.ct, label %bb.at, label %bb.au

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cx = load i8, ptr %i.cw, align 8, !noundef !28
  %i.cy = add i8 %i.cx, -1                        ; 2 uses
  store i8 %i.cy, ptr %i.cw, align 8
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.be, label %bb.bf, !prof !30

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17hb1f79f6725aa62c5E.exit"
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.db = load i8, ptr %i.da, align 8, !noundef !28
  %i.dc = add i8 %i.db, -1                        ; 2 uses
  store i8 %i.dc, ptr %i.da, align 8
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.cm, label %bb.cn, !prof !30

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.bj, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i" ], [ %i.bk, %bb.k ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.de, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.j
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.eq, %.loopexit275, %bb.ai, %bb.ey, %bb.bd, %bb.bc, %bb.as, %bb.am, %bb.ak, %bb.ag
  ret void

bb.ai:                                            ; preds = %bb.et, %bb.cm, %bb.be, %bb.at, %bb.an, %bb.al, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78"
  %.sroa.0.1.i77.ph = phi ptr [ %i.bv, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i78" ], [ %i.bw, %bb.r ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i77.ph, ptr %i.df, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.q
  store i8 1, ptr %0, align 8
  %.sroa.34.0..sroa_idx459 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.34.0..sroa_idx459, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36)
  br label %bb.ah

bb.al:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86"
  %.sroa.0.1.i85.ph = phi ptr [ %i.ck, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h0c5c6c6f1f9e30e4E.exit.i86" ], [ %i.cl, %bb.aa ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i85.ph, ptr %i.dg, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  store i8 1, ptr %0, align 8
  %.sroa.34.0..sroa_idx461 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.34.0..sroa_idx461, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36)
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %i.dh = load ptr, ptr %i.cp, align 8, !nonnull !28, !align !35, !noundef !28
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8
  store i8 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.ai

bb.ao:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.cp, align 8 ; 3 uses
  switch i64 %i.cn, label %default.unreachable657 [
    i64 0, label %bb.ap
    i64 1, label %bb.as
    i64 2, label %bb.ar
  ]

default.unreachable657:                           ; preds = %bb.eu, %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dj = bitcast i64 %.sroa.2.0.copyload to double
  %i.dk = tail call double @llvm.fabs.f64(double %i.dj)
  %i.dl = fcmp ueq double %i.dk, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !65462
  br i1 %i.dl, label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h8a1adf266c1b8214E.exit.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 0, ptr %i.u, align 8, !noalias !65462
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.u), !noalias !65463
  br label %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h8a1adf266c1b8214E.exit.i"

"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h8a1adf266c1b8214E.exit.i": ; preds = %bb.aq, %bb.ap
  %.sroa.08.014.i.i = phi i64 [ 2, %bb.aq ], [ 3, %bb.ap ]
  %.sroa.0.0.i.i = phi i8 [ 2, %bb.aq ], [ 0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !65462
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %.lobit.i.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ar, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h8a1adf266c1b8214E.exit.i"
  %.sink = phi i8 [ 2, %bb.ar ], [ %.sroa.0.0.i.i, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h8a1adf266c1b8214E.exit.i" ], [ 2, %bb.ao ]
  %.lobit.i.i.i.sink = phi i64 [ %.lobit.i.i.i, %bb.ar ], [ %.sroa.08.014.i.i, %"_ZN175_$LT$serde_json..value..de..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$serde_json..value..Value$GT$..deserialize..ValueVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_f6417h8a1adf266c1b8214E.exit.i" ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
end_hunk_4
