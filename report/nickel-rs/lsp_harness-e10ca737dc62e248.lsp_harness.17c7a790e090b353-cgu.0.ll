Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/lsp_harness-e10ca737dc62e248.lsp_harness.17c7a790e090b353-cgu.0?download=true
inline.NumInlined: 14236
inline.NumDeleted: 7074
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN10serde_core2de5impls82_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$11deserialize17h5691a3cf740436a6E":bb.a
._crit_edge.thread.i:                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.lr.ph.i.i.i"
  store ptr %i.ax, ptr %i.z, align 8, !alias.scope !5125, !noalias !5130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i)
  br label %bb.cl

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i": ; preds = %bb.ch
  %i.ay = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %.sroa.0.0.copyload4.i.i.i.i.i.i = load i8, ptr %i.az, align 8, !noalias !5129 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i"
  %.sroa.0.0.copyload4.i.i.i.i.i154.i = phi i8 [ %.sroa.0.0.copyload4.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i" ], [ %.sroa.0.0.copyload4.i.i.i.i.i152.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.az = phi ptr [ %i.ay, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i" ], [ %i.ax, %.lr.ph.i.preheader ] ; 21 uses
  %i.ba = phi ptr [ %i.az, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i" ], [ %.val.i.i.i.i, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %.sroa.0.0.copyload4.i.i.i.i.i154.i, ptr %i.o, align 8, !noalias !5132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx5.i.i.i.i.i.i, i64 31, i1 false), !noalias !5132
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !5133)
  call void @llvm.experimental.noalias.scope.decl(metadata !5134)
  call void @llvm.experimental.noalias.scope.decl(metadata !5135)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5136
  switch i8 %.sroa.0.0.copyload4.i.i.i.i.i154.i, label %bb.e [
    i8 4, label %bb.f
    i8 5, label %bb.z
  ], !prof !49

bb.e:                                             ; preds = %.lr.ph.i
  %i.bb = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17hdfd4d1db8e02cda0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162)
          to label %bb.bv unwind label %.body.i.i.i.i.i.i.i.i.i, !noalias !5137

bb.f:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 1 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !5132
  call void @llvm.experimental.noalias.scope.decl(metadata !5138)
  call void @llvm.experimental.noalias.scope.decl(metadata !5139)
  %i.bd = load i64, ptr %i.ar, align 8, !alias.scope !5139, !noalias !5140, !noundef !28 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 288230376151711744
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5141
  invoke void @_ZN10serde_json5value2de15SeqDeserializer3new17h83c00a78209f13a7E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.bz, !noalias !5140

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !5142)
  call void @llvm.experimental.noalias.scope.decl(metadata !5143)
  call void @llvm.experimental.noalias.scope.decl(metadata !5144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5145
  call void @llvm.experimental.noalias.scope.decl(metadata !5146)
  %i.bf = load ptr, ptr %i.as, align 8, !alias.scope !5147, !noalias !5148, !nonnull !28, !noundef !28 ; 3 uses
  %i.bg = load ptr, ptr %i.at, align 8, !alias.scope !5147, !noalias !5148, !nonnull !28, !noundef !28 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, %i.bf
  br i1 %i.bh, label %bb.n, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 3 uses
  store ptr %i.bi, ptr %i.at, align 8, !alias.scope !5147, !noalias !5148
  %.sroa.0.0.copyload6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bg, align 8, !noalias !5149 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.g

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %.sroa.0.0.copyload6.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !5150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !5150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5150
  invoke fastcc void @"_ZN9lsp_types1_74_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..Range$GT$11deserialize17h80332159a7083d19E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.k)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.q, !noalias !5141

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.g
  %i.bj = load i32, ptr %i.j, align 8, !range !51, !noalias !5150, !noundef !28
  %i.bk = trunc nuw i32 %i.bj to i1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.bl = load ptr, ptr %i.aw, align 8, !noalias !5150, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5145
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.8.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 4, !noalias !5151
  %.sroa.14.8.copyload.i.i.i.i.i6.i.i.i.i.i.i = load i32, ptr %.sroa.14.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !5132
  %.sroa.14.8.copyload.i.i.i.i.i7.i.i.i.i.i.i = load i32, ptr %.sroa.14.8..sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !5132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5145
  call void @llvm.experimental.noalias.scope.decl(metadata !5152)
  call void @llvm.experimental.noalias.scope.decl(metadata !5153)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5154
  call void @llvm.experimental.noalias.scope.decl(metadata !5155)
  %i.bm = icmp eq ptr %i.bi, %i.bf
  br i1 %i.bm, label %bb.p, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i35.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i35.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  store ptr %i.bn, ptr %i.at, align 8, !alias.scope !5156, !noalias !5157
  %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.bi, align 8, !noalias !5158 ; 3 uses
  %.not.i.i.i36.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %.not.i.i.i36.i.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i35.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 33
  store i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.i, align 8, !noalias !5159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx.i.i.i37.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 31, i1 false), !noalias !5159
  call void @llvm.experimental.noalias.scope.decl(metadata !5160)
  call void @llvm.experimental.noalias.scope.decl(metadata !5161)
  call void @llvm.experimental.noalias.scope.decl(metadata !5162)
  %i.bo = icmp eq i8 %.sroa.0.0.copyload4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.bo, label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.k, !prof !32

bb.k:                                             ; preds = %bb.j
  %i.bp = invoke fastcc noundef nonnull align 8 ptr @"_ZN10serde_json5value2de42_$LT$impl$u20$serde_json..value..Value$GT$12invalid_type17hdfd4d1db8e02cda0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
          to label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.l, !noalias !5163

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.k
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread58.i.i.i.i.i.i.i.i.i.i.i" unwind label %bb.q, !noalias !5141

bb.l:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.az, ptr %i.z, align 8, !alias.scope !5125, !noalias !5130
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i) #43
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !5163

bb.m:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !5163
  unreachable

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.j
  %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !5164, !noalias !5159 ; 7 uses
  %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5164, !noalias !5159 ; 7 uses
  %i.bs = icmp eq i64 %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %i.bs, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread58.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread58.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.7.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.bp, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5154
  br label %bb.o

"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.9.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx10.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5164, !noalias !5159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5154
  %i.bt = icmp eq i64 %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775807
  br i1 %i.bt, label %bb.o, label %bb.t

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5145
  br label %.invoke.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.i.i.i.i.i.i.i.i.i.i.i", %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread58.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.741.062.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.thread58.i.i.i.i.i.i.i.i.i.i.i" ], [ %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.741.062.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i"

bb.p:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7c96ad16e7f85605E.exit.i.i.i35.i.i.i.i.i.i.i.i.i.i.i", %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5154
  br label %.invoke.i.i.i.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.p, %bb.n
  %i.bu = phi i64 [ 1, %bb.p ], [ 0, %bb.n ]
  %i.bv = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h808291eb16efeed9E(i64 noundef %i.bu, ptr noundef nonnull align 1 @411, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
          to label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i" unwind label %bb.q, !noalias !5141

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.s, %bb.r, %bb.q, %bb.l
  %.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.l ], [ %i.bw, %bb.q ], [ %i.bx, %bb.r ], [ %i.bx, %bb.s ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..SeqDeserializer$GT$17h7416d391dd09e54cE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %.body.i.i.i unwind label %bb.y, !noalias !5141

bb.q:                                             ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hcb346af92f02a5e5E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.az, ptr %i.z, align 8, !alias.scope !5125, !noalias !5130
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.v
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.az, ptr %i.z, align 8, !alias.scope !5125, !noalias !5130
  %i.by = icmp eq i64 %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.by, label %.body.i.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5165
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..SeqAccess$GT$12next_element17h524b97765f123de0E.exit.i.i.i.i.i.i.i.i.i.i.i"
  %i.bz = icmp eq ptr %i.bf, %i.bn
  br i1 %i.bz, label %bb.u, label %bb.v, !prof !32

bb.u:                                             ; preds = %bb.t
  store ptr %.sroa.10.8.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.22.i.i.i.i.i.i, align 8, !alias.scope !5166, !noalias !5132
  store i32 %.sroa.14.8.copyload.i.i.i.i.i6.i.i.i.i.i.i, ptr %.sroa.22.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !5132
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i"

bb.v:                                             ; preds = %bb.t
  %i.ca = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h808291eb16efeed9E(i64 noundef %i.bd, ptr noundef nonnull align 1 @273, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
          to label %bb.w unwind label %bb.r, !noalias !5141 ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cb = icmp eq i64 %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cb, label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5167
  br label %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.x, %bb.w, %bb.u, %.invoke.i.i.i.i.i.i.i.i.i.i, %bb.o, %bb.h
  %.sroa.26.4.i.i.i.i.i.i = phi i32 [ undef, %bb.x ], [ %.sroa.14.8.copyload.i.i.i.i.i7.i.i.i.i.i.i, %bb.u ], [ undef, %bb.w ], [ undef, %.invoke.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.o ], [ undef, %bb.h ]
  %.sroa.20.4.i.i.i.i.i.i = phi i64 [ undef, %bb.x ], [ %.sroa.9.0.copyload11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ undef, %bb.w ], [ undef, %.invoke.i.i.i.i.i.i.i.i.i.i ], [ undef, %bb.o ], [ undef, %bb.h ]
  %.sroa.12.4.i.i.i.i.i.i = phi ptr [ %i.ca, %bb.x ], [ %.sroa.7.0.copyload9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.ca, %bb.w ], [ %i.bv, %.invoke.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.741.062.i.i.i.i.i.i.i.i.i.i.i, %bb.o ], [ %i.bl, %bb.h ]
  %.sroa.08.4.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.x ], [ %.sroa.06.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ -9223372036854775808, %bb.w ], [ -9223372036854775808, %.invoke.i.i.i.i.i.i.i.i.i.i ], [ -9223372036854775808, %bb.o ], [ -9223372036854775808, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..SeqDeserializer$GT$17h7416d391dd09e54cE"(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %.thread.i.i.i.i.i.i.i.i.i unwind label %bb.bz, !noalias !5140

bb.y:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40, !noalias !5141
  unreachable

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %"_ZN4core3ptr40drop_in_place$LT$lsp_types..TextEdit$GT$17h4b1d1e831c9f902bE.exit13.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5141
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h0374a917bc2764aaE.exit.i.i.i.i.i.i"

bb.z:                                             ; preds = %.lr.ph.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 1 dereferenceable(24) %i.cd, i64 24, i1 false), !noalias !5132
  call void @llvm.experimental.noalias.scope.decl(metadata !5168)
  call void @llvm.experimental.noalias.scope.decl(metadata !5169)
  %i.ce = load i64, ptr %i.al, align 8, !alias.scope !5169, !noalias !5140, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5170
  invoke void @_ZN10serde_json5value2de15MapDeserializer3new17h703c7fc72d5eadc5E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc9.i.i.i.i.i.i.i.i.i unwind label %bb.bz, !noalias !5140

.noexc9.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !5171)
  br label %.outer

.outer:                                           ; preds = %bb.bd, %.noexc9.i.i.i.i.i.i.i.i.i
  %.sroa.19.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.11.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ], [ undef, %.noexc9.i.i.i.i.i.i.i.i.i ]
  %.sroa.13.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.7148.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ], [ undef, %.noexc9.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.0147.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ], [ -9223372036854775808, %.noexc9.i.i.i.i.i.i.i.i.i ] ; 18 uses
  %.sroa.7.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i32 [ %.sroa.7.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.ph621, %bb.bd ], [ undef, %.noexc9.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.7.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.ph622, %bb.bd ], [ undef, %.noexc9.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i32 [ %.sroa.7.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph623, %bb.bd ], [ undef, %.noexc9.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph624, %bb.bd ], [ 0, %.noexc9.i.i.i.i.i.i.i.i.i ]
  br label %.outer620

.outer620:                                        ; preds = %.outer, %bb.au
  %.sroa.7.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.ph621 = phi i32 [ %.sroa.7.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.ph, %.outer ], [ %.sroa.695.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %.sroa.7.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.ph622 = phi ptr [ %.sroa.7.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.ph, %.outer ], [ %.sroa.594.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %.sroa.7.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph623 = phi i32 [ %.sroa.7.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph, %.outer ], [ %.sroa.093.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %bb.au ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph624 = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.ph, %.outer ], [ 1, %bb.au ] ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.outer620, %.thread158.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5172)
  call void @llvm.experimental.noalias.scope.decl(metadata !5173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5174
  invoke fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h9336b172e13d9c1fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i.i.loopexit.split-lp, !noalias !5175

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aa
  %i.cf = load ptr, ptr %i.e, align 8, !noalias !5174, !noundef !28 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hacbe7a8167eaec00E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hacbe7a8167eaec00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hacbe7a8167eaec00E.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5174
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.thread.i.i.i.i.i.i.i.i.i.i.i"

"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hacbe7a8167eaec00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5174 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 360
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !noalias !5174 ; 9 uses
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5174 ; 10 uses
  %.sroa.518.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %.sroa.518.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.518.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5174
  %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i7.i.i.i.i.i.i.i.i.i, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.thread.i.i.i.i.i.i.i.i.i.i.i", label %bb.ab

bb.ab:                                            ; preds = %"_ZN116_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hacbe7a8167eaec00E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.cf, i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 32, i1 false), !noalias !5176
  %i.cj = load i8, ptr %i.am, align 8, !range !45, !alias.scope !5177, !noalias !5178, !noundef !28
  %i.ck = icmp eq i8 %i.cj, 6
  br i1 %i.ck, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17hd30bb28c59a03f14E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.am)
          to label %bb.ad unwind label %bb.al, !noalias !5179

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !5179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  switch i64 %.sroa.518.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %spec.select.i.i.i.i.i.i.i.i.i.si.unfold.false.jt2.i.i.i.i.i.i.i.i.i.i.i [
    i64 5, label %bb.ae
    i64 7, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cl = load i32, ptr %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.cm = xor i32 %i.cl, 1735287154
  %i.cn = getelementptr i8, ptr %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = xor i32 %i.cp, 101
  %i.cr = or i32 %i.cm, %i.cq
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ag, label %spec.select.i.i.i.i.i.i.i.i.i.si.unfold.false.jt2.i.i.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cv = load i32, ptr %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1
  %i.cw = xor i32 %i.cv, 1417110894
  %i.cx = getelementptr i8, ptr %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3
  %i.cy = load i32, ptr %i.cx, align 1
  %i.cz = xor i32 %i.cy, 1954047316
  %i.da = or i32 %i.cw, %i.cz
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ah, label %spec.select.i.i.i.i.i.i.i.i.i.si.unfold.false.jt2.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.de = icmp eq i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.jt0.i.i.i.i.i.i.i.i.i.i.i", label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.df = icmp eq i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.df, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.jt1.i.i.i.i.i.i.i.i.i.i.i", label %bb.aj

spec.select.i.i.i.i.i.i.i.i.i.si.unfold.false.jt2.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dg = icmp eq i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dg, label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.jt2.i.i.i.i.i.i.i.i.i.i.i", label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5180
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.jt0.i.i.i.i.i.i.i.i.i.i.i"

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5180
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.jt1.i.i.i.i.i.i.i.i.i.i.i"

bb.ak:                                            ; preds = %spec.select.i.i.i.i.i.i.i.i.i.si.unfold.false.jt2.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5180
  br label %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$8next_key17hf4e2ab79631ba174E.exit.jt2.i.i.i.i.i.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.ac
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.az, ptr %i.z, align 8, !alias.scope !5125, !noalias !5130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !5179
  %i.di = icmp eq i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.di, label %.body.i.i.i.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.417.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.016.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !5181
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i.i.loopexit.split-lp, %bb.am, %bb.al
  %.sroa.0138.0373.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %bb.am ], [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %bb.al ], [ %.sroa.0138.0374.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i.i.loopexit.split-lp ], [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 2 uses
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dh, %bb.am ], [ %i.dh, %bb.al ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i.i.loopexit.split-lp ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.i ] ; 3 uses
  switch i64 %.sroa.0138.0373.i.i.i.i.i.i.i.i.i.i.i, label %.body.i5.i.i.i.i.i.i.i.i.i.sink.split [
    i64 -9223372036854775808, label %.body.i5.i.i.i.i.i.i.i.i.i
    i64 0, label %.body.i5.i.i.i.i.i.i.i.i.i
  ]

.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.i.i.loopexit.split-lp: ; preds = %bb.an, %bb.aa, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.az, ptr %i.z, align 8, !alias.scope !5125, !noalias !5130
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

.loopexit.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.i: ; preds = %bb.as
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.az, ptr %i.z, align 8, !alias.scope !5125, !noalias !5130
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.bh, %bb.bf, %bb.bc, %bb.az, %bb.av, %bb.ap, %bb.ao
  %.sroa.0138.0374.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %bb.ap ], [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %bb.av ], [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %bb.ao ], [ -9223372036854775808, %bb.az ], [ -9223372036854775808, %bb.bc ], [ %.sroa.0138.0.i.i.i.i.i.i.i.i.i.i.i.ph, %bb.bf ], [ -9223372036854775808, %bb.bh ]
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN11lsp_harness7jsonrpc6Server12send_request17h809029bcf4505f99E:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !21803)
  %i.lc = load i8, ptr %i.kx, align 8, !range !31, !alias.scope !21804, !noalias !21805, !noundef !28
  switch i8 %i.lc, label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb60f217698eba3daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 16, label %bb.cw
    i8 17, label %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb60f217698eba3daE.exit2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
    i8 18, label %bb.cw
  ]

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb60f217698eba3daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21806
  invoke fastcc void @"_ZN9lsp_types1_74_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..Range$GT$11deserialize17h9d69e041c97a727fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.kx)
          to label %.noexc6.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21788

.noexc6.i.i.i.i.i.i.i:                            ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb60f217698eba3daE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.ld = load i32, ptr %i.m, align 8, !range !51, !noalias !21806, !noundef !28 ; 2 uses
  %i.le = trunc nuw i32 %i.ld to i1               ; 2 uses
  %i.lf = load ptr, ptr %i.km, align 8, !noalias !21807, !nonnull !28, !align !35
  %.sroa.13.8.copyload4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kn, align 4, !noalias !21807
  %.sroa.18.8.copyload6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.18.8..sroa_idx5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !21807
  %.sroa.18.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.le, i64 undef, i64 %.sroa.18.8.copyload6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.le, ptr %i.lf, ptr %.sroa.13.8.copyload4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21806
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb60f217698eba3daE.exit2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.cu
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !21804, !noalias !21805, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21808
  invoke fastcc void @"_ZN9lsp_types1_74_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..Range$GT$11deserialize17h9d69e041c97a727fE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lh)
          to label %.noexc7.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21788

.noexc7.i.i.i.i.i.i.i:                            ; preds = %"_ZN89_$LT$serde_core..de..impls..OptionVisitor$LT$T$GT$$u20$as$u20$serde_core..de..Visitor$GT$10visit_some17hb60f217698eba3daE.exit2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.li = load i32, ptr %i.l, align 8, !range !51, !noalias !21808, !noundef !28 ; 2 uses
  %i.lj = trunc nuw i32 %i.li to i1               ; 2 uses
  %i.lk = load ptr, ptr %i.kk, align 8, !noalias !21807, !nonnull !28, !align !35
  %.sroa.13.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kl, align 4, !noalias !21807
  %.sroa.18.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.18.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !21807
  %.sroa.18.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.lj, i64 undef, i64 %.sroa.18.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.13.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.lj, ptr %i.lk, ptr %.sroa.13.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21808
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc7.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i
  %.sroa.18.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.18.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i ], [ %.sroa.18.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i ]
  %.sroa.13.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i ], [ %.sroa.13.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ld, %.noexc6.i.i.i.i.i.i.i ], [ %i.li, %.noexc7.i.i.i.i.i.i.i ]
  %i.ll = trunc nuw i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ll, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  br label %.noexc9.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.cu, %bb.cu
  %.sroa.12.0.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.18.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.cu ], [ undef, %bb.cu ]
  %.sroa.881.0.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.13.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.cu ], [ undef, %bb.cu ]
  %.sroa.5.0.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 1, %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8afda0d06a152b77E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.cu ], [ 0, %bb.cu ]
  %i.lm = icmp eq i64 %i.kz, 1
  br i1 %i.lm, label %.invoke.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kx, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !21809
  invoke fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hebef0c9422b63711E"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lb)
          to label %.noexc8.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21788

.noexc8.i.i.i.i.i.i.i:                            ; preds = %bb.cx
  %i.lo = load i64, ptr %i.k, align 8, !range !34, !noalias !21809, !noundef !28 ; 10 uses
  %i.lp = icmp eq i64 %i.lo, -9223372036854775808
  %i.lq = load ptr, ptr %i.ko, align 8, !noalias !21810 ; 10 uses
  br i1 %i.lp, label %bb.cy, label %bb.cz

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.cw, %bb.ct
  %i.lr = phi i64 [ 0, %bb.ct ], [ 1, %bb.cw ]
  %i.ls = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h808291eb16efeed9E(i64 noundef %i.lr, ptr noundef nonnull align 1 @441, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
          to label %.noexc9.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !21788

bb.cy:                                            ; preds = %.noexc8.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21809
  br label %.noexc9.i.i.i.i.i.i.i

bb.cz:                                            ; preds = %.noexc8.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1086.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1086.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !21811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !21809
  %i.lt = icmp eq i64 %i.kz, 2
  br i1 %i.lt, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !21812
  invoke fastcc void @"_ZN9lsp_types1_74_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..Range$GT$11deserialize17h9d69e041c97a727fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ln)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.db, !noalias !21813

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.da
  %i.lv = load i32, ptr %i.j, align 8, !range !51, !noalias !21812, !noundef !28
  %i.lw = trunc nuw i32 %i.lv to i1
  br i1 %i.lw, label %bb.dd, label %bb.de

bb.db:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.df, %bb.da
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ly = icmp eq i64 %i.lo, 0
  br i1 %i.ly, label %.body.i.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21814
  br label %.body.i.i.i.i.i.i.i

bb.dd:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.lz = load ptr, ptr %i.ks, align 8, !noalias !21812, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21812
  br label %bb.dh

bb.de:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1089.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kp, align 4, !noalias !21815
  %.sroa.14.8.copyload.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.14.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !21816
  %.sroa.14.8.copyload.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.14.8..sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !21816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !21812
  %i.ma = icmp eq i64 %i.kz, 3
  br i1 %i.ma, label %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !21817
  invoke fastcc void @"_ZN9lsp_types1_74_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..Range$GT$11deserialize17h9d69e041c97a727fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lu)
          to label %.noexc75.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.db, !noalias !21813

.noexc75.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.df
  %i.mb = load i32, ptr %i.i, align 8, !range !51, !noalias !21817, !noundef !28
  %i.mc = trunc nuw i32 %i.mb to i1
  br i1 %i.mc, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %.noexc75.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.md = load ptr, ptr %i.kr, align 8, !noalias !21817, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21817
  br label %bb.dh

.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.de, %bb.cz
  %i.me = phi i64 [ 2, %bb.cz ], [ 3, %bb.de ]
  %i.mf = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h808291eb16efeed9E(i64 noundef %i.me, ptr noundef nonnull align 1 @441, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
          to label %bb.dh unwind label %bb.db, !noalias !21811

bb.dh:                                            ; preds = %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dg, %bb.dd
  %.sink148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.md, %bb.dg ], [ %i.mf, %.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lz, %bb.dd ] ; 2 uses
  %i.mg = icmp eq i64 %i.lo, 0
  br i1 %i.mg, label %.noexc9.i.i.i.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21818
  br label %.noexc9.i.i.i.i.i.i.i

.noexc9.i.i.i.i.i.i.i:                            ; preds = %bb.di, %bb.dh, %bb.cy, %.invoke.i.i.i.i.i.i.i, %bb.cv
  %.sroa.714.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.lq, %bb.cy ], [ %i.ls, %.invoke.i.i.i.i.i.i.i ], [ %.sroa.13.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cv ], [ %.sink148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.di ], [ %.sink148.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1086.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %_ZN5serde7private2de7content21visit_content_seq_ref17h7b6f59b152028004E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %.noexc75.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1092.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kq, align 4, !noalias !21819
  %.sroa.1493.8.copyload.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.1493.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !21816
  %.sroa.1493.8.copyload.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.1493.8..sroa_idx.i.i.i.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !21816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !21817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.1086.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !21820
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1086.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.mh = icmp eq i64 %i.kz, 4
  br i1 %i.mh, label %bb.dp, label %bb.dk, !prof !32

bb.dk:                                            ; preds = %bb.dj
  %i.mi = add i64 %i.kz, 576460752303423484
  %i.mj = and i64 %i.mi, 576460752303423487
  %i.mk = add nuw nsw i64 %i.mj, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !21821
  store i64 4, ptr %i.h, align 8, !noalias !21821
  %i.ml = invoke fastcc noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h808291eb16efeed9E(i64 noundef %i.mk, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @913)
          to label %bb.dn unwind label %bb.dl, !noalias !21820 ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = icmp eq i64 %i.lo, 0
  br i1 %i.mn, label %.body.i.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21822
  br label %.body.i.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !21821
  %i.mo = icmp eq i64 %i.lo, 0
  br i1 %i.mo, label %_ZN5serde7private2de7content21visit_content_seq_ref17h7b6f59b152028004E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lq, i64 noundef %i.lo, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !21823
  br label %_ZN5serde7private2de7content21visit_content_seq_ref17h7b6f59b152028004E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.dp:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.18.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.9.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 72, i1 false), !noalias !21824
  store ptr %.sroa.1089.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.21.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !21825, !noalias !21816
  store i32 %.sroa.14.8.copyload.i.i.i.i.i4.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.21.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !21816
  store ptr %.sroa.1092.8.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.27.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !21825, !noalias !21816
  store i32 %.sroa.1493.8.copyload.i.i.i.i.i6.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.27.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !21816
  br label %_ZN5serde7private2de7content21visit_content_seq_ref17h7b6f59b152028004E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5serde7private2de7content21visit_content_seq_ref17h7b6f59b152028004E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dp, %bb.do, %bb.dn, %.noexc9.i.i.i.i.i.i.i
  %.sroa.37.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.12.0.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.do ]
  %.sroa.35.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.881.0.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.do ]
  %.sroa.33.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.5.0.ph.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.do ]
  %.sroa.31.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.1493.8.copyload.i.i.i.i.i7.i.i.i.i.i.i.i.i.i.i, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.do ]
  %.sroa.25.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ undef, %.noexc9.i.i.i.i.i.i.i ], [ %.sroa.14.8.copyload.i.i.i.i.i5.i.i.i.i.i.i.i.i.i.i, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.do ]
  %.sroa.11.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.714.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc9.i.i.i.i.i.i.i ], [ %i.lq, %bb.dp ], [ %i.ml, %bb.dn ], [ %i.ml, %bb.do ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ -9223372036854775808, %.noexc9.i.i.i.i.i.i.i ], [ %i.lo, %bb.dp ], [ -9223372036854775808, %bb.dn ], [ -9223372036854775808, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hfc56217eeba35caaE.exit.i.i.i.i.i.i.i.i.i.i"

bb.dq:                                            ; preds = %bb.cs
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.092.i.i.i.i.i.i, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !alias.scope !21796, !noalias !21797, !nonnull !28, !noundef !28 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.092.i.i.i.i.i.i, i64 24
  %i.ms = load i64, ptr %i.mr, align 8, !alias.scope !21796, !noalias !21797, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21826)
  call void @llvm.experimental.noalias.scope.decl(metadata !21827)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ms, 6
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.mu = icmp eq i64 %i.ms, 0
  br i1 %i.mu, label %.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.dq, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.0.0522.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 2, %bb.dq ] ; 5 uses
  %.sroa.07.0521.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.07.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.dq ] ; 7 uses
  %.sroa.09.0520.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.09.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.dq ] ; 7 uses
  %.sroa.8.sroa.0.0519.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 4 uses
  %.sroa.8.sroa.5.0518.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 4 uses
  %.sroa.7.sroa.0.0517.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 6 uses
  %.sroa.7.sroa.5.0516.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 6 uses
  %.sroa.7.sroa.6.0515.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.7.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 6 uses
  %.sroa.711.sroa.0.0514.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.711.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 6 uses
  %.sroa.711.sroa.5.0513.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.711.sroa.5.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 6 uses
  %.sroa.711.sroa.6.0512.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.711.sroa.6.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 6 uses
  %.sroa.0235.0511.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0235.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ -9223372036854775808, %bb.dq ] ; 15 uses
  %.sroa.14.0510.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.14.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ undef, %bb.dq ] ; 10 uses
  %i.mv = phi ptr [ %i.mw, %"_ZN59_$LT$$RF$mut$u20$A$u20$as$u20$serde_core..de..MapAccess$GT$10next_value17h015f9c992cdf249cE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.mq, %bb.dq ] ; 15 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 64 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21828
  call void @llvm.experimental.noalias.scope.decl(metadata !21829)
  call void @llvm.experimental.noalias.scope.decl(metadata !21830)
  call void @llvm.experimental.noalias.scope.decl(metadata !21831)
  call void @llvm.experimental.noalias.scope.decl(metadata !21832)
  call void @llvm.experimental.noalias.scope.decl(metadata !21833)
  call void @llvm.experimental.noalias.scope.decl(metadata !21834)
  %i.my = load i8, ptr %i.mv, align 8, !range !31, !alias.scope !21835, !noalias !21836, !noundef !28
  switch i8 %i.my, label %bb.dr [
    i8 1, label %bb.ds
    i8 4, label %bb.dt
    i8 12, label %bb.du
    i8 13, label %bb.ea
    i8 14, label %bb.eg
    i8 15, label %bb.eh
  ], !prof !57

bb.dr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mz = invoke fastcc noundef nonnull align 8 ptr @"_ZN5serde7private2de7content31ContentRefDeserializer$LT$E$GT$12invalid_type17h0ad7ba5e0b52770aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mv, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198)
          to label %.noexc.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17ha5fc9926f631e9bcE.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", !noalias !21837

.noexc.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.dr
  store ptr %i.mz, ptr %i.kd, align 8, !alias.scope !21838, !noalias !21828
  store i8 1, ptr %i.d, align 8, !alias.scope !21838, !noalias !21828
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8f370d0d6e679b20E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !alias.scope !21835, !noalias !21836, !noundef !28
  %i.nc = call i8 @llvm.umin.i8(i8 %i.nb, i8 4)
  store i8 %i.nc, ptr %i.kc, align 1, !alias.scope !21839, !noalias !21828
  store i8 0, ptr %i.d, align 8, !alias.scope !21839, !noalias !21828
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8f370d0d6e679b20E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.dt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !21835, !noalias !21836, !noundef !28
  %.sink1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ne, i64 4)
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i8
  store i8 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.kc, align 1, !alias.scope !21840, !noalias !21828
  store i8 0, ptr %i.d, align 8, !alias.scope !21840, !noalias !21828
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8f370d0d6e679b20E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !alias.scope !21835, !noalias !21836, !nonnull !28, !noundef !28 ; 8 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.ni = load i64, ptr %i.nh, align 8, !alias.scope !21835, !noalias !21836, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !21841)
  switch i64 %i.ni, label %bb.dz [
    i64 20, label %bb.dv
    i64 9, label %bb.dw
    i64 11, label %bb.dx
  ]

bb.dv:                                            ; preds = %bb.du
  %i.nj = load i128, ptr %i.ng, align 1
  %i.nk = xor i128 %i.nj, 109570108011245425704405345881261961839
  %i.nl = getelementptr i8, ptr %i.ng, i64 16
  %i.nm = load i32, ptr %i.nl, align 1
  %i.nn = zext i32 %i.nm to i128
  %i.no = xor i128 %i.nn, 1701277281
  %i.np = or i128 %i.nk, %i.no
  %i.nq = icmp ne i128 %i.np, 0
  %i.nr = zext i1 %i.nq to i32
  %i.ns = icmp eq i32 %i.nr, 0
  br i1 %i.ns, label %"_ZN167_$LT$lsp_types.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..LocationLink$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcba1cf296912163bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dy

bb.dw:                                            ; preds = %bb.du
  %i.nt = load i64, ptr %i.ng, align 1
  %i.nu = xor i64 %i.nt, 8238619072220258676
  %i.nv = getelementptr i8, ptr %i.ng, i64 8
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = zext i8 %i.nw to i64
  %i.ny = xor i64 %i.nx, 105
  %i.nz = or i64 %i.nu, %i.ny
  %i.oa = icmp ne i64 %i.nz, 0
  %i.ob = zext i1 %i.oa to i32
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %"_ZN167_$LT$lsp_types.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..LocationLink$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcba1cf296912163bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dz

bb.dx:                                            ; preds = %bb.du
  %i.od = load i64, ptr %i.ng, align 1
  %i.oe = xor i64 %i.od, 7012795548645351796
  %i.of = getelementptr i8, ptr %i.ng, i64 3
  %i.og = load i64, ptr %i.of, align 1
  %i.oh = xor i64 %i.og, 7306930284706162023
  %i.oi = or i64 %i.oe, %i.oh
  %i.oj = icmp ne i64 %i.oi, 0
  %i.ok = zext i1 %i.oj to i32
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %"_ZN167_$LT$lsp_types.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..LocationLink$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcba1cf296912163bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dz

bb.dy:                                            ; preds = %bb.dv
  %i.om = load i128, ptr %i.ng, align 1
  %i.on = xor i128 %i.om, 109570108011245425704405352461152444788
  %i.oo = getelementptr i8, ptr %i.ng, i64 16
  %i.op = load i32, ptr %i.oo, align 1
  %i.oq = zext i32 %i.op to i128
  %i.or = xor i128 %i.oq, 1701277281
  %i.os = or i128 %i.on, %i.or
  %i.ot = icmp ne i128 %i.os, 0
  %i.ou = zext i1 %i.ot to i32
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %"_ZN167_$LT$lsp_types.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..LocationLink$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcba1cf296912163bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.du
  br label %"_ZN167_$LT$lsp_types.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..LocationLink$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcba1cf296912163bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN167_$LT$lsp_types.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lsp_types..LocationLink$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hcba1cf296912163bE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv
  %.sink.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ 2, %bb.dx ], [ 4, %bb.dz ], [ 1, %bb.dw ], [ 3, %bb.dy ], [ 0, %bb.dv ]
  store i8 %.sink.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.kc, align 1, !alias.scope !21842, !noalias !21828
  store i8 0, ptr %i.d, align 8, !alias.scope !21842, !noalias !21828
  br label %"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h8f370d0d6e679b20E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ea:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !alias.scope !21835, !noalias !21836, !nonnull !28, !align !37, !noundef !28 ; 8 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !21835, !noalias !21836, !noundef !28
  call void @llvm.experimental.noalias.scope.decl(metadata !21843)
  call void @llvm.experimental.noalias.scope.decl(metadata !21844)
  switch i64 %i.oz, label %bb.ef [
    i64 20, label %bb.eb
    i64 9, label %bb.ec
    i64 11, label %bb.ed
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.pa = load i128, ptr %i.ox, align 1
  %i.pb = xor i128 %i.pa, 109570108011245425704405345881261961839
  %i.pc = getelementptr i8, ptr %i.ox, i64 16
  %i.pd = load i32, ptr %i.pc, align 1
  %i.pe = zext i32 %i.pd to i128
  %i.pf = xor i128 %i.pe, 1701277281
  %i.pg = or i128 %i.pb, %i.pf
  %i.ph = icmp ne i128 %i.pg, 0
  %i.pi = zext i1 %i.ph to i32
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha28714772cb6b16dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ee

bb.ec:                                            ; preds = %bb.ea
  %i.pk = load i64, ptr %i.ox, align 1
  %i.pl = xor i64 %i.pk, 8238619072220258676
  %i.pm = getelementptr i8, ptr %i.ox, i64 8
  %i.pn = load i8, ptr %i.pm, align 1
  %i.po = zext i8 %i.pn to i64
  %i.pp = xor i64 %i.po, 105
  %i.pq = or i64 %i.pl, %i.pp
  %i.pr = icmp ne i64 %i.pq, 0
  %i.ps = zext i1 %i.pr to i32
  %i.pt = icmp eq i32 %i.ps, 0
  br i1 %i.pt, label %_ZN10serde_core2de7Visitor18visit_borrowed_str17ha28714772cb6b16dE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ef

bb.ed:                                            ; preds = %bb.ea
  %i.pu = load i64, ptr %i.ox, align 1
end_hunk_1
